`timescale 1ns / 1ps

module CTRL_CIRCUIT(
	input PIX_CLK,
	input  [7:0] PIX_DATA,
	output [9:0] hc_o,
	output [9:0] vc_o,
	output HS,
	output VS,
	output [2:0] Red,
	output [2:0] Green,
	output [1:0] Blue
   );

parameter h_width = 119;//119
parameter v_width = 5;//5

wire [10 : 0] hc_w;
wire latch_set_h;
wire latch_reset_h;
wire HS_w;
wire [9 : 0] vc_w;
wire latch_set_v;
wire latch_reset_v;
wire [10:0] vc_w_c;
wire [10:0] hc_o_w;
wire [10:0] vc_o_w;

assign HS = HS_w;
assign vc_w_c = {1'b0 , vc_w};
assign hc_o = hc_o_w [9:0];
assign vc_o = vc_o_w [9:0];
assign Red = PIX_DATA [2:0];
assign Green = PIX_DATA [5:3];
assign Blue = PIX_DATA [7:6];

COUNTER horiz_counter (
  .clk(PIX_CLK),
  .q(hc_w) 
);

CMP zero_detect_hs (
	.in(hc_w),
	.out(latch_set_h)
);

CMP #( .toCompare(h_width)) hs_det
(
		.in(hc_w),
		.out(latch_reset_h)
);

LATCH hs_latch(
	.set(latch_set_h),
	.reset(latch_reset_h),
	.q(HS_w)
);



COUNTER2 vert_counter (
  .clk(PIX_CLK),
  .ce(~HS_w),
  .q(vc_w)
);



CMP zero_detect_vs(
	.in(vc_w_c),
	.out(latch_set_v)
	);
	
	
CMP #( .toCompare(v_width)) vs_det
(
		.in(vc_w_c),
		.out(latch_reset_v)
);

LATCH vc_latch(
	.set(latch_set_v),
	.reset(latch_reset_v),
	.q(VS)
);

LPFilter hc_link (
	.in(hc_w),
	.out(hc_o_w)
	);

LPFilter vc_link (
	.in(vc_w),
	.out(vc_o_w)
	);
		
	
endmodule
