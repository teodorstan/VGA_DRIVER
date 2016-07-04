`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:20:02 07/04/2016 
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
	input clk,
	input [7:0] in,
	output reg [7:0] out
    );

always@(posedge clk) begin
	out <= in;
end

endmodule
