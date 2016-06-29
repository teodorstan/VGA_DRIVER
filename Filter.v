`timescale 1ns / 1ps
module LPFilter #(parameter dim = 10)
(input [dim : 0] in,
output reg [dim : 0] out
    );
	 

parameter highVal = 500;

always@(in)begin
if(in < highVal)
out = in;
else out = 2**(dim+1) - 1;
end

endmodule
