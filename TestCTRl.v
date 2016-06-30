`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:05:40 06/30/2016
// Design Name:   CTRL_CIRCUIT
// Module Name:   /home/student/VGA_DRIVER/TestCTRl.v
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

module TestCTRl;

	// Inputs
	reg PIX_CLK;
	reg [7:0] PIX_DATA;

	// Outputs
	wire [9:0] hc_o;
	wire [9:0] vc_o;
	wire HS;
	wire VS;
	wire [2:0] Red;
	wire [2:0] Green;
	wire [1:0] Blue;

	// Instantiate the Unit Under Test (UUT)
	CTRL_CIRCUIT uut (
		.PIX_CLK(PIX_CLK), 
		.PIX_DATA(PIX_DATA), 
//		.hc_o(hc_o), 
//		.vc_o(vc_o), 
		.HS(HS), 
		.VS(VS), 
		.Red(Red), 
		.Green(Green), 
		.Blue(Blue)
	);

	initial begin
	PIX_CLK = 0;
	forever #10 PIX_CLK = ~PIX_CLK;
	end

	initial begin
	PIX_DATA = 69;	
	end

      
endmodule

