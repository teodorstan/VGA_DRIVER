`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:20:40 06/30/2016 
// Design Name: 
// Module Name:    FRAMEBUFFER 
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
module FRAMEBUFFER(
	input PIXEL_CLK,
	input [9:0] PIX_HORIZONTAL,
	input [9:0] PIX_VERTICAL, 
	input [9:0] HC_I,
	input [9:0] VC_I, 
	input [7:0] PIX_COLOR,
	output reg [7:0] PIXEL_DATA
    );
	 
parameter HSIZE = 800;
parameter VSIZE = 600;

reg [7:0] VRAM [0:HSIZE*VSIZE-1];

always@(posedge PIXEL_CLK) begin
	if (HC_I > 799 || VC_I > 599) 
		PIXEL_DATA <= 0;
	else 
		PIXEL_DATA <= VRAM[VC_I * HSIZE + HC_I];
end

always@(posedge PIXEL_CLK) begin 
	VRAM[PIX_VERTICAL * HSIZE + PIX_HORIZONTAL] <= PIX_COLOR;
end
endmodule
