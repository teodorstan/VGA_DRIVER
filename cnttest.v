`timescale 1ns / 1ps


module cnttest;

	// Inputs
	reg CLK;
	reg RST;

	// Outputs
	wire [14:0] CNT;

	// Instantiate the Unit Under Test (UUT)
	CNT uut (
		.CLK(CLK), 
		.RST(RST), 
		.CNT(CNT)
	);

	initial begin
		// Initialize Inputs
		RST = 0;


		#500 RST = 1;
		#500 RST = 0;
        
		// Add stimulus here

	end
      
endmodule

