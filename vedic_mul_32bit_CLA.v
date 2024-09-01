module vedic_mul_cla(
    input [31:0] a,
    input [31:0] b,
    output [63:0] c
    );
    
    wire [31:0] s1,s2,s3,s4,s5,s6;
    wire [32:0] res1, res2, res3;
    
vedic_16x16 a1(a[15:0], b[15:0], s1);
vedic_16x16 a2(a[15:0], b[31:16], s2);
vedic_16x16 a3(a[31:16], b[15:0], s3);
vedic_16x16 a4(a[31:16], b[31:16], s4);

cla_32bit x1(s2[31:0], s3[31:0], res1);


assign s5[15:0] = s1[31:16] ;
assign s5[31:16] = 16'b0;

cla_32bit x2(s5[31:0], res1[31:0], res2);

assign res1[32] = s2[31] && s3[31];
assign res2[32] = s5[31] && res1[31];

assign s6[16] = res1[32] + res2[32];

//assign s6[16] = res1[32] ^ res2[32];


assign s6[31:17] = 15'b0;
//assign s6[31:17] = 15'b0;

assign s6[15:0] = res2[31:16];

cla_32bit x3(s6[31:0], s4[31:0], res3);

assign  c[15:0] = s1[15:0] ;
assign  c[31:16] = res2[15:0];
assign  c[63:32]  = res3[31:0];
//assign  c[46:32] = res3[15:0];
endmodule
