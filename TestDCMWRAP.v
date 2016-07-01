`timescale 1ns / 1ps

module TestDCMWRAP(input CLKIN_IN,
						 input RST_IN,
						 output CLKFX_OUT,
						 output CLK0_OUT,
						 output LOCKED_OUT
    );
	 
	 DCM75M instance_name (
    .CLKIN_IN(CLKIN_IN), 
    .RST_IN(RST_IN), 
    .CLKFX_OUT(CLKFX_OUT), 
    .CLK0_OUT(CLK0_OUT), 
    .LOCKED_OUT(LOCKED_OUT)
    );


endmodule
