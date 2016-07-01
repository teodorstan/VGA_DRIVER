`timescale 1ns / 1ps

module CNT#(
parameter pixWidth = 1600,
parameter  bitDim = 15
)
(
	input CLK,
	input RST,
	output [bitDim - 1:0] out
    );
	 
	reg [bitDim - 1 : 0] CNT = 0;
	 
always@(posedge CLK) begin
	if(RST) begin 
		CNT <= 0;
	end else begin 
	if (CNT >= pixWidth - 1) CNT <= 0;
	else CNT <= CNT + 1;
	end
end

assign out = CNT;


endmodule
