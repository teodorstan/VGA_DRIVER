`timescale 1ns / 1ps


module CTRL_CIRCUIT(
	 input CLKIN_IN,
	 input [7:0] PIX_DATA,
	 input RST_IN,
	output HS,
	output VS,
	output [2:0] Red,
	output [2:0] Green,
	output [1:0] Blue
   );

parameter visibleAreaHoriz = 1280;
parameter frontPorchHoriz = 16;
parameter syncHoriz = 144;
parameter backPorchHoriz = 248;
parameter bitDimHoriz = 11;

parameter visibleAreaVert = 1024;
parameter frontPorchVert = 1;
parameter syncVert = 3;
parameter backPorchVert = 38;
parameter bitDimVert = 11;

parameter polarity = 1;

parameter fullAreaHoriz = visibleAreaHoriz + frontPorchHoriz + backPorchHoriz + syncHoriz;
parameter fullAreaVert = visibleAreaVert + frontPorchVert + backPorchVert + syncVert;

wire PIX_CLK;
wire CLK0_OUT;
wire LOCKED_OUT;

wire [bitDimHoriz - 1 : 0] hCnt;   
wire [bitDimVert - 1 : 0] vCnt;

wire latch_set_h;
wire latch_reset_h;

wire HS_w;
wire VS_w;

wire latch_set_v;
wire latch_reset_v;

assign HS = polarity ? ~HS_w : HS_w;
assign VS = polarity ? ~VS_w : VS_w;
 
assign Red = PIX_DATA[2:0];
assign Green = PIX_DATA [5:3];
assign Blue = PIX_DATA [7:6];

DCM75M multiplier (
    .CLKIN_IN(CLKIN_IN), 
    .RST_IN(RST_IN), 
    .CLKFX_OUT(PIX_CLK), 
    .CLK0_OUT(CLK0_OUT), 
    .LOCKED_OUT(LOCKED_OUT)    
);

//HORIZONTAL SECTION

CNT #(.pixWidth(fullAreaHoriz),
		.bitDim(bitDimHoriz)
) cntHoriz (
	.RST(RST_IN),
   .CLK(PIX_CLK),
   .out(hCnt) 
);

CMP #(.toCmp(0),
		.bitDim(bitDimHoriz)
) zeroDetectHoriz (
	.in(hCnt),
	.out(latch_set_h)
);

CMP #(.toCmp(visibleAreaHoriz),
		.bitDim(bitDimHoriz)
) syncDetectHoriz (
	.in(hCnt),
	.out(latch_reset_h)
);

LATCH latchHoriz(
	.set(latch_set_h),
	.reset(latch_reset_h),
	.q(HS_w)
);

//VERTICAL SECTION

CNT #(.pixWidth(fullAreaVert),
		.bitDim(bitDimVert)
) cntVert (
	.RST(RST_IN),
   .CLK(HS_w),
   .out(vCnt) 
);

CMP #(.toCmp(0),
		.bitDim(bitDimVert)
) zeroDetectVert (
	.in(vCnt),
	.out(latch_set_v)
);

CMP #(.toCmp(visibleAreaVert),
	   .bitDim(bitDimVert)
) syncDetectVert (
	.in(vCnt),
	.out(latch_reset_v)
);

LATCH latchVert(
	.set(latch_set_v),
	.reset(latch_reset_v),
	.q(VS_w)
);
	
endmodule
