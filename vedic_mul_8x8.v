module vedic_8bit(
    input [7:0] a,
    input [7:0] b,
    output [15:0] y
);

wire [7:0] z0, z1, z2, z3;
wire [15:0] temp1, temp2, temp3;

vedic_4x4 u1(a[3:0], b[3:0], z0);
vedic_4x4 u2(a[7:4], b[3:0], z1);
vedic_4x4 u3(a[3:0], b[7:4], z2);
vedic_4x4 u4(a[7:4], b[7:4], z3);

assign temp1 = {z1, 4'b0000} + z0;
assign temp2 = {z3, 4'b0000} + z2;
assign temp3 = {temp2, 4'b0000} + temp1;

assign y = temp3;

endmodule
