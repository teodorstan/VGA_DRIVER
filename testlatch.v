`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:49:03 06/29/2016
// Design Name:   LATCH
// Module Name:   /home/student/VGA_DRIVER/testlatch.v
// Project Name:  VGA_DRIVER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LATCH
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testlatch;

	// Inputs
	reg reset;
	reg set;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	LATCH uut (
		.reset(reset), 
		.set(set), 
		.q(q)
	);

	initial begin
			
			reset = 0;
			set   = 1;
		
		 	#50 reset = 0;
				 set   = 1;
		 	#50 reset = 1;
		       set   = 0;
			#50 reset = 0;
				 set   = 1;
			
 
				 
			#50 $stop();

	end
      
endmodule

