module tb_vedic_32x32;

    // Inputs
    reg [31:0] a;
    reg [31:0] b;

    // Outputs
    wire [63:0] y;

    // Instantiate the Unit Under Test (UUT)
    vedic_32x32 uut (
        .a(a), 
        .b(b), 
        .y(y)
    );

    initial begin
        // Initialize Inputs
        a = 32'd1;
        b = 32'd3;
        #100;

        a = 32'd85;
        b = 32'd102;
        #100;

        a = 32'd238;
        b = 32'd119;
        #100;

        a = 32'd255;
        b = 32'd85;
        #100;

        a = 32'd204;
        b = 32'd221;
        #100;

        a = 32'd170;
        b = 32'd170;
        #100;

        a = 32'd85;
        b = 32'd221;
        #100;

        // Add more test cases as needed

        // End simulation
        $finish;
    end

    initial begin
        // Monitor changes
        //$monitor("At time %t, a = %b, b = %b, y = %b", $time, a, b, y);
    end
                    
endmodule
