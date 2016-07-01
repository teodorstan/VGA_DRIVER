`timescale 1ns / 1ps


module TEST_VGA;

	// Inputs
	reg CLKIN_IN;
	reg [7:0] PIX_DATA;
	reg RST_IN;

	// Outputs
	wire HS;
	wire VS;
	wire [2:0] Red;
	wire [2:0] Green;
	wire [1:0] Blue;

	// Instantiate the Unit Under Test (UUT)
	CTRL_CIRCUIT uut (
		.CLKIN_IN(CLKIN_IN), 
		.PIX_DATA(PIX_DATA), 
		.RST_IN(RST_IN), 
		.HS(HS), 
		.VS(VS), 
		.Red(Red), 
		.Green(Green), 
		.Blue(Blue)
	);

	initial begin
	CLKIN_IN = 0;
	forever #10 CLKIN_IN = ~CLKIN_IN;
	end

	initial begin

		PIX_DATA = 5;
		RST_IN = 0;
		#2000 RST_IN = 1;
		#300 RST_IN = 0;

	end
      
endmodule

