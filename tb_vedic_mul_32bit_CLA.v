module tb_vedic_mul_cla;

    // Inputs
    reg [31:0] a;
    reg [31:0] b;
    
    // Outputs
    wire [63:0] c;
    
    // Instantiate the Unit Under Test (UUT)
    vedic_mul_cla uut (
        .a(a), 
        .b(b), 
        .c(c)
    );
    
        initial begin
        // Initialize Inputs
        a = 32'd0;
        b = 32'd14;
        #100;

        a = 32'd13;
        b = 32'd37;
        #100;

        a = 32'd116;
        b = 32'd63;
        #100;

        a = 32'd16777210;
        b = 32'd1048531;
        #100;

        a = 32'd67;
        b = 32'd49;
        #100;

        a = 32'd119;
        b = 32'd8;
        #100;

        a = 32'd8;
        b = 32'd9;
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
