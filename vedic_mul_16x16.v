module vedic_16x16(
    input [15:0] a,
    input [15:0] b,
    output [31:0] y
);

wire [15:0] z0, z1, z2, z3;
wire [31:0] temp1, temp2, temp3;

vedic_8bit u1(a[7:0], b[7:0], z0);
vedic_8bit u2(a[15:8], b[7:0], z1);
vedic_8bit u3(a[7:0], b[15:8], z2);
vedic_8bit u4(a[15:8], b[15:8], z3);

assign temp1 = {z1, 8'b00000000} + z0;
assign temp2 = {z3, 8'b00000000} + z2;
assign temp3 = {temp2, 8'b00000000} + temp1;

assign y = temp3;

endmodule
