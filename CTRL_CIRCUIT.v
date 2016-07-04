`timescale 1ns / 1ps


module CTRL_CIRCUIT #(
parameter visibleAreaHoriz = 1280,
parameter frontPorchHoriz = 16,
parameter syncHoriz = 144,
parameter backPorchHoriz = 248,
parameter bitDimHoriz = 11,

parameter visibleAreaVert = 1024,
parameter frontPorchVert = 1,
parameter syncVert = 3,
parameter backPorchVert = 38,
parameter bitDimVert = 11,

parameter polarity = 1,

parameter fullAreaHoriz = visibleAreaHoriz + frontPorchHoriz + backPorchHoriz + syncHoriz,
parameter fullAreaVert = visibleAreaVert + frontPorchVert + backPorchVert + syncVert)
(	 input CLKIN_IN,
	 input [7:0] PIX_DATA,
	 input RST_IN,
	output HS,
	output VS,
	output [2:0] Red,
	output [2:0] Green,
	output [1:0] Blue,
	output disp_en,
	output [bitDimHoriz:0] posX,
	output [bitDimVert:0] posY
   );



wire PIX_CLK;
wire [7:0] PIX_DATA;
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
assign disp_en = VISIBLE_H & VISIBLE_V;

 
assign Red = (VISIBLE_H & VISIBLE_V) ? PIX_DATA [2:0] : 3'b000;
assign Green = (VISIBLE_H & VISIBLE_V) ? PIX_DATA [5:3] : 3'b000;
assign Blue = (VISIBLE_H & VISIBLE_V) ? PIX_DATA [7:6] : 3'b000;

assign posX = disp_en ? hCnt - syncHoriz - frontPorchHoriz : 0;
assign posY = disp_en ? vCnt -  syncVert - frontPorchVert  : 0;

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

CMP #(.toCmp(syncHoriz),
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

CMP #(.toCmp(syncVert),
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

//VISIBLE AREA SECTION

wire latch_set_viz_v;
wire latch_reset_viz_v;

wire latch_set_viz_h;
wire latch_reset_viz_h;

wire VISIBLE_H_w;
wire VISIBLE_V_w;
wire VISIBLE_H;
wire VISIBLE_V;

assign VISIBLE_H = ~VISIBLE_H_w;
assign VISIBLE_V = ~VISIBLE_V_w;




CMP #(.toCmp(syncHoriz + frontPorchHoriz),
	   .bitDim(bitDimHoriz)
) fpDetectHoriz (
	.in(hCnt),
	.out(latch_set_viz_h)
);

CMP #(.toCmp(syncHoriz + frontPorchHoriz + visibleAreaHoriz),
	   .bitDim(bitDimHoriz)
) visibleDetectHoriz (
	.in(hCnt),
	.out(latch_reset_viz_h)
);

LATCH latchVisibleHoriz(
	.set(latch_set_viz_h),
	.reset(latch_reset_viz_h),
	.q(VISIBLE_H_w)
);

CMP #(.toCmp(syncVert + frontPorchVert),
	   .bitDim(bitDimVert)
) fpDetectVert (
	.in(vCnt),
	.out(latch_set_viz_v)
);

CMP #(.toCmp(syncVert + frontPorchVert + visibleAreaVert),
	   .bitDim(bitDimVert)
) visibleDetectVert (
	.in(vCnt),
	.out(latch_reset_viz_v)
);

LATCH latchVisibleVert(
	.set(latch_set_viz_v),
	.reset(latch_reset_viz_v),
	.q(VISIBLE_V_w)
);


	
endmodule
