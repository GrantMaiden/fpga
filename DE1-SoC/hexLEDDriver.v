module hexLEDDriver(input [7:0] value, output [6:0] out);

    reg [6:0] segments;

    always @(value)
        begin
            case (value)
                8'h0:   segments = 7'h3F;
                8'h1:   segments = 7'h06;
                8'h2:   segments = 7'h5B;
                8'h3:   segments = 7'h4F;
                8'h4:   segments = 7'h66;
                8'h5:   segments = 7'h6D;
                8'h6:   segments = 7'h7D;
                8'h7:   segments = 7'h07;
                8'h8:   segments = 7'h7F;
                8'h9:   segments = 7'h67;
                8'hA:   segments = 7'h77;
                8'hB:   segments = 7'h7C;
                8'hC:   segments = 7'h39;
                8'hD:   segments = 7'h5E;
                8'hE:   segments = 7'h79;
                8'hF:   segments = 7'h71;
                default: segments = ~0;
            endcase
       end
       
    assign out = ~segments;
endmodule


module hexdisplay(input [31:0] in, output [41:0] hexleds);
    hexLEDDriver segment0(.value((in & 32'h0000_000F)),       .out(hexleds[6:0]));
    hexLEDDriver segment1(.value((in & 32'h0000_00F0) >> 4),  .out(hexleds[13:7]));
    hexLEDDriver segment2(.value((in & 32'h0000_0F00) >> 8),  .out(hexleds[20:14]));
    hexLEDDriver segment3(.value((in & 32'h0000_F000) >> 12), .out(hexleds[27:21]));
    hexLEDDriver segment4(.value((in & 32'h000F_0000) >> 16), .out(hexleds[34:28]));
    hexLEDDriver segment5(.value((in & 32'h00F0_0000) >> 20), .out(hexleds[41:35]));
endmodule