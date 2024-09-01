module vedic_4x4(
    input [3:0] a,
    input [3:0] b,
    output [7:0] y
    );
    

wire [3:0] z0, z1, z2, z3;
wire [7:0] temp1, temp2, temp3;

vedic_2x2 u1(a[1:0], b[1:0], z0);
vedic_2x2 u2(a[3:2], b[1:0], z1);
vedic_2x2 u3(a[1:0], b[3:2], z2);
vedic_2x2 u4(a[3:2], b[3:2], z3);

assign temp1 = {z1, 2'b00} + z0;
assign temp2 = {z3, 2'b00} + z2;
assign temp3 = {temp2, 2'b00} + temp1;

assign y = temp3;


endmodule
