module cla_32bit(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum,
    output cout
);

wire [31:0] p, g, c;

assign p = a ^ b; // Propagate
assign g = a & b; // Generate

assign c[0] = 0; // Carry-in is zero for the least significant bit
assign c[1] = g[0] | (p[0] & c[0]);

genvar i;
generate
    for (i = 2; i < 32; i = i + 1) begin : cla_gen
        assign c[i] = g[i-1] | (p[i-1] & c[i-1]);
    end
endgenerate

assign sum = p ^ c;
assign cout = g[31] | (p[31] & c[31]);

endmodule
    
