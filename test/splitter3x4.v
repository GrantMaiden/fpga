
module splitter4(in, out1, out2, out3);

input  wire [3:0] in;
output wire [3:0] out1;
output wire [3:0] out2;
output wire [3:0] out3;

assign out1 = in;
assign out2 = in;
assign out3 = in;

endmodule
