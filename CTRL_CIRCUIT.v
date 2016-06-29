`timescale 1ns / 1ps

module CTRL_CIRCUIT(
	input PIX_CLK,
	output HS,
	output VS
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

assign HS = HS_w;

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

assign vc_w_c = {1'b0 , vc_w};

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

endmodule
