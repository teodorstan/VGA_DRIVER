`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:57:03 06/29/2016
// Design Name:   CTRL_CIRCUIT
// Module Name:   /home/student/VGA_DRIVER/CTRLCIR_T.v
// Project Name:  VGA_DRIVER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CTRL_CIRCUIT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CTRLCIR_T;

	// Inputs
	reg PIX_CLK;

	// Outputs
	wire HS;
	wire VS;

	// Instantiate the Unit Under Test (UUT)
	CTRL_CIRCUIT uut (
		.PIX_CLK(PIX_CLK), 
		.HS(HS),
		.VS(VS)
	);
	
	initial begin 
	PIX_CLK = 0;
	forever #20 PIX_CLK = ~PIX_CLK;
	end
	
      
endmodule

