`timescale 1ns / 1ps

module CounterWrap(input clk,
					output [10 : 0] q
    );
	 
COUNTER wrapper (
  .clk(clk),
  .q(q) 
);


endmodule
