`timescale 1ns / 1ps



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

