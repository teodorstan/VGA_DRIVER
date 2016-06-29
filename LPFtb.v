`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:13:58 06/30/2016
// Design Name:   LPFilter
// Module Name:   /home/g1ndac/Workplace/Verilog/VGA_DRIVER/LPFtb.v
// Project Name:  VGA_DRIVER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LPFilter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module LPFtb;

	// Inputs
	reg [10:0] in;

	// Outputs
	wire [10:0] out;

	// Instantiate the Unit Under Test (UUT)
	LPFilter uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 499;

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
      
endmodule

