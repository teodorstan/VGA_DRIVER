`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:22:54 07/01/2016
// Design Name:   TestDCMWRAP
// Module Name:   /home/student/VGA_DRIVER/TEST.v
// Project Name:  VGA_DRIVER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TestDCMWRAP
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST;

	// Inputs
	reg CLKIN_IN;
	reg RST_IN;

	// Outputs
	wire CLKFX_OUT;
	wire CLK0_OUT;
	wire LOCKED_OUT;

	// Instantiate the Unit Under Test (UUT)
	TestDCMWRAP uut (
		.CLKIN_IN(CLKIN_IN), 
		.RST_IN(RST_IN), 
		.CLKFX_OUT(CLKFX_OUT), 
		.CLK0_OUT(CLK0_OUT), 
		.LOCKED_OUT(LOCKED_OUT)
	);

	initial begin
			CLKIN_IN = 0;
			forever #10 CLKIN_IN = ~CLKIN_IN;
			end


	initial begin


		RST_IN = 0;

		#100 RST_IN = 1;
		#100 RST_IN = 0;


	end
      
endmodule

