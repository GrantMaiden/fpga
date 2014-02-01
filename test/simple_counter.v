//It has a single clock input and a 32-bit output port
module simple_counter (
   CLOCK_5,
   counter_out
);

	input             CLOCK_5;
   output reg [31:0] counter_out;


	always @ (posedge CLOCK_5)
		begin
         counter_out <= counter_out + 1;
		end

endmodule
