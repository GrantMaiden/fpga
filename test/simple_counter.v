//It has a single clock input and a 32-bit output port
module simple_counter (
   CLOCK_5,
   counter_out
);

	input  		  CLOCK_5;
	// WTF: why does the tutorial have us define both output and reg?  Which one wins? What's the dif? (memory?)
//	output [31:0] counter_out;
//	reg    [31:0] counter_out;
   output reg [31:0] counter_out;


	always @ (posedge CLOCK_5) // on positive clock edge
		begin
         counter_out <= counter_out + 1; // increment counter
		end

endmodule // end of module counter
