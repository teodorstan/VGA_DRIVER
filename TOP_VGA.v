`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:17:08 06/30/2016 
// Design Name: 
// Module Name:    TOP_VGA 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module TOP_VGA(input PIX_CLK,
					input [9:0] PIX_POS_X,
					input [9:0] PIX_POS_Y,
					input [7:0] PIX_COLOR,
					output HSYNC,
					output VSYNC,
					output [2:0] Red,
					output [2:0] Green,
					output [1:0] Blue					
    );
	 
	 wire [7:0] PIX_DATA;
	 wire [9:0] FRAMEBUFX, FRAMEBUFY;
	
	 CTRL_CIRCUIT main1 (
		.PIX_CLK(PIX_CLK),
		.PIX_DATA(PIX_DATA),
		.HS(HSYNC),
		.VS(VSYNC),
		.Red(Red),
		.Green(Green),
		.Blue(Blue),
		.hc_o(FRAMEBUFX),
		.vc_o(FRAMEBUFY)
	 );
	 
	 FRAMEBUFFER main2 (
		.PIXEL_CLK(PIX_CLK),
		.PIX_HORIZONTAL(PIX_POS_X),
		.PIX_VERTICAL(PIX_POS_Y),
		.PIX_COLOR(PIX_COLOR),
		.HC_I(FRAMEBUFX),
		.VC_I(FRAMEBUFY),
		.PIXEL_DATA(PIX_DATA)
		);

endmodule