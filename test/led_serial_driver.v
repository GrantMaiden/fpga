
`define BIT_BANG_CLOCK 1

module led_serial_driver(
   CLOCK_5, 
   reset, 
   enable, 
   in, 
   sdi, 
   sclk, 
   latch,
   n_output_enable);

input  wire				CLOCK_5;
input  wire          reset;
input  wire          enable;
input  wire	[3:0] 	in;

output wire		    	sdi;
output wire          sclk;
output wire		    	latch;
output wire          n_output_enable;

reg [3:0] bits;
// signals
reg sclk_enable   = 1'b0;
reg sdi_enable    = 1'b0;
//reg sdi_done      = 1'b0;


// Main state machine
localparam state_idle                  = 8'b00;
localparam state_enabled               = 8'b01;
reg [7:0] main_state = state_idle;

// SCLK state machine       
localparam state_sclk_idle             = 8'b00;
localparam state_sclk_enabled          = 8'b01;
reg [7:0] sclk_state = state_sclk_idle;

// SDI state machine       
localparam state_sdi_idle              = 8'b000;
localparam state_sdi_shifting          = 8'b001;
localparam state_sdi_latching          = 8'b010;
localparam state_sdi_done_latching     = 8'b011;
localparam state_sdi_brightness_delay  = 8'b100;
localparam state_sdi_clock_high        = 8'b101;
localparam state_sdi_clock_low         = 8'b110;
localparam state_sdi_clock_setup       = 8'b111;
reg [7:0] sdi_state = state_sdi_idle;



// Main state machine
always @(posedge CLOCK_5, posedge reset)
   begin
//      if (reset)
//         begin
//            main_state <= state_idle;
//            sdi_enable  = 1'b0;
//            //sdi_done    = 1'b0;
//         end
   
      case (main_state)
         state_idle:
           if (enable) 
            begin
              main_state <= state_enabled;
            end
         
         state_enabled:
            begin
               bits <= in;
               sdi_enable <= 1'b1;

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
reg         sdi_clock     = 1'b0;
reg         latch_enable  = 1'b0;
reg         output_enable = 1'b0;

always @(posedge CLOCK_5)
   begin
//      if (sdi_enable)
//         sdi_state <= state_sdi_shifting;
//      else 
//         sdi_state <= state_sdi_idle;
   
      case (sdi_state)
         state_sdi_idle:
            begin
               //pos          <= 8'b0;
               //data          <= 1'b0;
               //latch_enable <= 1'b0;
               output_enable <= 1'b1;
               
               if (sdi_enable)
                  sdi_state <= state_sdi_shifting;
               else
                  sdi_state <= state_sdi_idle;
            end
         
         state_sdi_shifting:
            begin
`ifdef BIT_BANG_CLOCK
               sclk_enable <= 1'b0;
`else
               sclk_enable <= 1'b1;
`endif            

               latch_enable <= 1'b0;
/////               latch_enable <= 1'b1;   // TEST TEST: datasheet indicates LE may need to be high while shifting

               pos <= pos + 1;
               //data <= 1'b1;
               //data <= !data;
               data <= in[pos];
            
`ifdef BIT_BANG_CLOCK               
               if (pos < 8'd8)
                  begin
                  sdi_state <= state_sdi_clock_setup;
                  end
               else
                  begin
                     pos <= 0;
                     data <= 1'b0;
                     latch_enable <= 1'b1;
                     sdi_state <= state_sdi_latching;
                  end
`else
               if (pos == 7'd7)
                  begin
                     pos <= 0;
                     sdi_state <= state_sdi_latching;
                  end
`endif                  
            end

            
         state_sdi_clock_setup:
            begin
               sdi_state <= state_sdi_clock_high;
            end
            
         state_sdi_clock_high:
            begin
               sclk_enable <= 1'b1;
               sdi_state <= state_sdi_clock_low;
            end
            
         state_sdi_clock_low:
            begin
               sclk_enable <= 1'b0;
               sdi_state <= state_sdi_shifting;
            end
       
         state_sdi_latching:
            begin
               data <= 1'b0;
               sclk_enable <= 1'b1;
               latch_enable <= 1'b1;
               sdi_state <= state_sdi_done_latching;
            end
            
         state_sdi_done_latching:
            begin
               latch_enable  <= 1'b0;
               output_enable <= 1'b0;
               sdi_state     <= state_sdi_brightness_delay;
            end
            
         state_sdi_brightness_delay:
            begin
               //output_enable <= 1'b0;
               
               // TEST:
               sclk_enable <= 1'b0;

               delay_ticks <= delay_ticks + 1;
               if (delay_ticks == 32'h30D40) // 40 ms @ 5MHz
//               if (delay_ticks == 32'h61A80) // 80 ms @ 5MHz
                  begin
                     delay_ticks <= 0;
                     output_enable <= 1'b1;

                     // TEST:
                     sclk_enable <= 1'b0;

                     sdi_state <= state_sdi_idle;
                  end
            end
            
         default:
            sdi_state <= state_sdi_idle;
      endcase 
   end
 
   assign sclk             = CLOCK_5 & sclk_enable;
`ifdef BIT_BANG_CLOCK
   assign sdi              = data;
`else
   assign sdi              = data & sclk;
`endif   
   assign latch            = latch_enable & sclk;
//   assign n_output_enable  = output_enable;

   // TEST:
//   assign latch            = latch_enable;
   assign n_output_enable  = 0;


endmodule
