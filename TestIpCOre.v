`timescale 1ns / 1ps



module TestIpCOre;

	// Inputs
	reg clk;

	// Outputs
	wire [10:0] q;

	// Instantiate the Unit Under Test (UUT)
	COUNTER uut (
		.clk(clk), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

