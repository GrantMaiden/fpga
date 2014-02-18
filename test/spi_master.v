
`define BIT_BANG_CLOCK 1

module spi_master (
   CLOCK_5, 
   reset, 
   enable, 
   data_in, 
   sdo, 
   sclk, 
   n_cs);

input  wire				CLOCK_5;
input  wire          reset;
input  wire          enable;
input  wire	[7:0] 	data_in;

output wire		    	sdo;
output wire          sclk;
output wire          n_cs;

reg [7:0] data_in_reg;
reg sclk_enable   = 1'b0;
reg sdo_enable    = 1'b0;


// Main state machine
localparam state_idle                  = 8'b00;
localparam state_enabled               = 8'b01;
reg [7:0] main_state = state_idle;

// SCLK state machine       
localparam state_sclk_idle             = 8'b00;
localparam state_sclk_enabled          = 8'b01;
reg [7:0] sclk_state = state_sclk_idle;

// SDI state machine       
localparam state_sdo_idle              = 8'b0000;
localparam state_sdo_shifting          = 8'b0001;
localparam state_sdo_clock_high        = 8'b0010;
localparam state_sdo_clock_low         = 8'b0011;
localparam state_sdo_clock_setup       = 8'b0100;
localparam state_sdo_done_shifting     = 8'b0101;
reg [7:0] sdo_state = state_sdo_idle;



// Main state machine
always @(posedge CLOCK_5, posedge reset)
   begin
//      if (reset)
//         begin
//            main_state <= state_idle;
//            sdo_enable  = 1'b0;
//            //sdo_done    = 1'b0;
//         end
   
      case (main_state)
         state_idle:
           if (enable) 
            begin
              main_state <= state_enabled;
            end
         
         state_enabled:
            begin
               //data_in_reg <= data_in;   // TODO: latch on WE
               data_in_reg <= 8'hA5;
               sdo_enable  <= 1'b1;

//               if (!enable)
//                  main_state <= state_idle;
            end
         
         default:
            main_state <= state_idle;
      endcase;
   end
       

// SDI state machine
reg [31:0]  delay_ticks   = 32'b0;
reg [7:0] 	pos           = 8'b0;
reg         data          = 1'b0;
reg         slave_select  = 1'b0;

always @(posedge CLOCK_5)
   begin
      if (sdo_enable)
         sdo_state <= state_sdo_shifting;
      else 
         sdo_state <= state_sdo_idle;
   
      case (sdo_state)
         state_sdo_idle:
            begin
               slave_select  <= 1'b1;
               
               if (sdo_enable)
                  sdo_state <= state_sdo_shifting;
               else
                  sdo_state <= state_sdo_idle;
            end
         
         state_sdo_shifting:
            begin
`ifdef BIT_BANG_CLOCK
               sclk_enable    <= 1'b0;
`else
               sclk_enable    <= 1'b1;
`endif            
               data           <= data_in_reg[pos];
               pos            <= pos + 1;
            
`ifdef BIT_BANG_CLOCK               
               if (pos <= 8'd7)
                  begin
                     sdo_state <= state_sdo_clock_setup;
                  end
               else
                  begin
                     pos            <= 0;
                     data           <= 1'b0;
                     sdo_state      <= state_sdo_done_shifting;
                  end
`else
               if (pos == 7'd7)
                  begin
                     pos            <= 0;
                     sdo_state      <= state_sdo_done_shifting;
                  end
`endif                  
            end

            
         state_sdo_clock_setup:
            begin
               sdo_state            <= state_sdo_clock_high;
            end
            
         state_sdo_clock_high:
            begin
               sclk_enable          <= 1'b1;
               sdo_state            <= state_sdo_clock_low;
            end
            
         state_sdo_clock_low:
            begin
               sclk_enable          <= 1'b0;
               sdo_state            <= state_sdo_shifting;
            end
       
         state_sdo_done_shifting:
            begin
               delay_ticks <= delay_ticks + 1;
               if (delay_ticks == 32'h30D40) // 40 ms @ 5MHz
                  begin
                     delay_ticks    <= 0;
                     slave_select   <= 1'b1;
                     sdo_state      <= state_sdo_idle;
                  end
            end
            
         default:
            sdo_state <= state_sdo_idle;
      endcase 
   end
 
   assign sclk             = CLOCK_5 & sclk_enable;
`ifdef BIT_BANG_CLOCK
   assign sdo              = data;
`else
   assign sdo              = data & sclk;
`endif   
   assign n_cs             = slave_select;


endmodule
