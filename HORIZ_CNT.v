`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:26:56 06/30/2016 
// Design Name: 
// Module Name:    VERT_CNT 
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
module HORIZ_CNT(
	input CLK,
	output [10:0] out
    );
	 
	 reg [10:0] CNT = 0;
	 
always@(posedge CLK) begin
	if (CNT > 1039) CNT <= 0;
	else CNT <= CNT + 1;
end

assign out = CNT;

endmodule
