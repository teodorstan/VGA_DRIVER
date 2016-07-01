`timescale 1ns / 1ps



module TEst;

	// Inputs
	reg clk;

	// Outputs
	wire [10:0] q;

	// Instantiate the Unit Under Test (UUT)
	COUNTER uut (
		.clk(clk),
		.sclr(
		.q(q)
	);

	initial begin
		clk = 0;
		forever #3.7 clk = ~clk;

	end
      
endmodule

