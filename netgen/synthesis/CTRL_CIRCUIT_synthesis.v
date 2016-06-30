////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: CTRL_CIRCUIT_synthesis.v
// /___/   /\     Timestamp: Thu Jun 30 11:59:02 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim CTRL_CIRCUIT.ngc CTRL_CIRCUIT_synthesis.v 
// Device	: xc3s500e-5-fg320
// Input file	: CTRL_CIRCUIT.ngc
// Output file	: /home/student/VGA_DRIVER/netgen/synthesis/CTRL_CIRCUIT_synthesis.v
// # of Modules	: 1
// Design Name	: CTRL_CIRCUIT
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module CTRL_CIRCUIT (
  PIX_CLK, HS, VS, Blue, Green, hc_o, vc_o, Red, PIX_DATA
)/* synthesis syn_black_box syn_noprune=1 */;
  input PIX_CLK;
  output HS;
  output VS;
  output [1 : 0] Blue;
  output [2 : 0] Green;
  output [9 : 0] hc_o;
  output [9 : 0] vc_o;
  output [2 : 0] Red;
  input [7 : 0] PIX_DATA;
  
  // synthesis translate_off
  
  wire Blue_0_OBUF_2;
  wire Blue_1_OBUF_3;
  wire Green_0_OBUF_7;
  wire Green_1_OBUF_8;
  wire Green_2_OBUF_9;
  wire HS_OBUF_11;
  wire N2;
  wire N4;
  wire PIX_CLK_BUFGP_15;
  wire Red_0_OBUF_27;
  wire Red_1_OBUF_28;
  wire Red_2_OBUF_29;
  wire VS_OBUF_31;
  wire \hc_link/out_cmp_lt0000 ;
  wire \hc_link/out_cmp_lt0000221_33 ;
  wire hc_o_0_OBUF_44;
  wire hc_o_1_OBUF_45;
  wire hc_o_2_OBUF_46;
  wire hc_o_3_OBUF_47;
  wire hc_o_4_OBUF_48;
  wire hc_o_5_OBUF_49;
  wire hc_o_6_OBUF_50;
  wire hc_o_7_OBUF_51;
  wire hc_o_8_OBUF_52;
  wire hc_o_9_OBUF_53;
  wire \hs_latch/q12_65 ;
  wire \hs_latch/q4_66 ;
  wire \hs_latch/q7_67 ;
  wire \vc_latch/q10_68 ;
  wire \vc_link/out_cmp_lt0000112_69 ;
  wire \vc_link/out_cmp_lt0000121_70 ;
  wire vc_o_0_OBUF_81;
  wire vc_o_1_OBUF_82;
  wire vc_o_2_OBUF_83;
  wire vc_o_3_OBUF_84;
  wire vc_o_4_OBUF_85;
  wire vc_o_5_OBUF_86;
  wire vc_o_6_OBUF_87;
  wire vc_o_7_OBUF_88;
  wire vc_o_8_OBUF_89;
  wire vc_o_9_OBUF_90;
  wire vert_counter_not0000;
  wire vert_counter_not000012_102;
  wire vert_counter_not000021_103;
  wire vert_counter_not000044_104;
  wire [10 : 0] hc_w;
  wire [9 : 0] vc_w;
  LUT2 #(
    .INIT ( 4'hE ))
  \vc_link/out<8>1  (
    .I0(vc_w[9]),
    .I1(vc_w[8]),
    .O(vc_o_8_OBUF_89)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \vc_link/out<7>1  (
    .I0(vc_w[9]),
    .I1(vc_w[7]),
    .O(vc_o_7_OBUF_88)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \vc_link/out<6>1  (
    .I0(vc_w[9]),
    .I1(vc_w[6]),
    .O(vc_o_6_OBUF_87)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \vc_latch/q10  (
    .I0(vc_w[5]),
    .I1(vc_w[4]),
    .I2(vc_w[3]),
    .I3(vc_w[2]),
    .O(\vc_latch/q10_68 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \hs_latch/q4  (
    .I0(hc_w[10]),
    .I1(hc_w[9]),
    .I2(hc_w[8]),
    .I3(hc_w[7]),
    .O(\hs_latch/q4_66 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \hs_latch/q7  (
    .I0(hc_w[6]),
    .I1(hc_w[1]),
    .I2(hc_w[0]),
    .O(\hs_latch/q7_67 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \hs_latch/q12  (
    .I0(hc_w[5]),
    .I1(hc_w[4]),
    .I2(hc_w[3]),
    .I3(hc_w[2]),
    .O(\hs_latch/q12_65 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \hs_latch/q20  (
    .I0(\hs_latch/q4_66 ),
    .I1(\hs_latch/q7_67 ),
    .I2(\hs_latch/q12_65 ),
    .O(HS_OBUF_11)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  vert_counter_not000012 (
    .I0(hc_w[5]),
    .I1(hc_w[4]),
    .I2(hc_w[3]),
    .I3(hc_w[2]),
    .O(vert_counter_not000012_102)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  vert_counter_not000044 (
    .I0(hc_w[9]),
    .I1(hc_w[8]),
    .I2(hc_w[7]),
    .I3(hc_w[6]),
    .O(vert_counter_not000044_104)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  vert_counter_not000046 (
    .I0(vert_counter_not000021_103),
    .I1(vert_counter_not000012_102),
    .I2(vert_counter_not000044_104),
    .O(vert_counter_not0000)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hc_link/out<8>1  (
    .I0(\hc_link/out_cmp_lt0000 ),
    .I1(hc_w[8]),
    .O(hc_o_8_OBUF_52)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hc_link/out<7>1  (
    .I0(\hc_link/out_cmp_lt0000 ),
    .I1(hc_w[7]),
    .O(hc_o_7_OBUF_51)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hc_link/out<6>1  (
    .I0(\hc_link/out_cmp_lt0000 ),
    .I1(hc_w[6]),
    .O(hc_o_6_OBUF_50)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hc_link/out<5>1  (
    .I0(\hc_link/out_cmp_lt0000 ),
    .I1(hc_w[5]),
    .O(hc_o_5_OBUF_49)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hc_link/out<4>1  (
    .I0(\hc_link/out_cmp_lt0000 ),
    .I1(hc_w[4]),
    .O(hc_o_4_OBUF_48)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hc_link/out<3>1  (
    .I0(\hc_link/out_cmp_lt0000 ),
    .I1(hc_w[3]),
    .O(hc_o_3_OBUF_47)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hc_link/out<2>1  (
    .I0(\hc_link/out_cmp_lt0000 ),
    .I1(hc_w[2]),
    .O(hc_o_2_OBUF_46)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hc_link/out<1>1  (
    .I0(\hc_link/out_cmp_lt0000 ),
    .I1(hc_w[1]),
    .O(hc_o_1_OBUF_45)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hc_link/out<0>1  (
    .I0(\hc_link/out_cmp_lt0000 ),
    .I1(hc_w[0]),
    .O(hc_o_0_OBUF_44)
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \vc_link/out_cmp_lt0000112  (
    .I0(vc_w[6]),
    .I1(vc_w[7]),
    .I2(vc_w[8]),
    .I3(vc_w[5]),
    .O(\vc_link/out_cmp_lt0000112_69 )
  );
  LUT3 #(
    .INIT ( 8'h57 ))
  \vc_link/out_cmp_lt0000121  (
    .I0(vc_w[4]),
    .I1(vc_w[2]),
    .I2(vc_w[3]),
    .O(\vc_link/out_cmp_lt0000121_70 )
  );
  LUT3 #(
    .INIT ( 8'h57 ))
  \hc_link/out_cmp_lt0000221  (
    .I0(hc_w[4]),
    .I1(hc_w[2]),
    .I2(hc_w[3]),
    .O(\hc_link/out_cmp_lt0000221_33 )
  );
  IBUF   PIX_DATA_7_IBUF (
    .I(PIX_DATA[7]),
    .O(Blue_1_OBUF_3)
  );
  IBUF   PIX_DATA_6_IBUF (
    .I(PIX_DATA[6]),
    .O(Blue_0_OBUF_2)
  );
  IBUF   PIX_DATA_5_IBUF (
    .I(PIX_DATA[5]),
    .O(Green_2_OBUF_9)
  );
  IBUF   PIX_DATA_4_IBUF (
    .I(PIX_DATA[4]),
    .O(Green_1_OBUF_8)
  );
  IBUF   PIX_DATA_3_IBUF (
    .I(PIX_DATA[3]),
    .O(Green_0_OBUF_7)
  );
  IBUF   PIX_DATA_2_IBUF (
    .I(PIX_DATA[2]),
    .O(Red_2_OBUF_29)
  );
  IBUF   PIX_DATA_1_IBUF (
    .I(PIX_DATA[1]),
    .O(Red_1_OBUF_28)
  );
  IBUF   PIX_DATA_0_IBUF (
    .I(PIX_DATA[0]),
    .O(Red_0_OBUF_27)
  );
  OBUF   HS_OBUF (
    .I(HS_OBUF_11),
    .O(HS)
  );
  OBUF   VS_OBUF (
    .I(VS_OBUF_31),
    .O(VS)
  );
  OBUF   Blue_1_OBUF (
    .I(Blue_1_OBUF_3),
    .O(Blue[1])
  );
  OBUF   Blue_0_OBUF (
    .I(Blue_0_OBUF_2),
    .O(Blue[0])
  );
  OBUF   Green_2_OBUF (
    .I(Green_2_OBUF_9),
    .O(Green[2])
  );
  OBUF   Green_1_OBUF (
    .I(Green_1_OBUF_8),
    .O(Green[1])
  );
  OBUF   Green_0_OBUF (
    .I(Green_0_OBUF_7),
    .O(Green[0])
  );
  OBUF   hc_o_9_OBUF (
    .I(hc_o_9_OBUF_53),
    .O(hc_o[9])
  );
  OBUF   hc_o_8_OBUF (
    .I(hc_o_8_OBUF_52),
    .O(hc_o[8])
  );
  OBUF   hc_o_7_OBUF (
    .I(hc_o_7_OBUF_51),
    .O(hc_o[7])
  );
  OBUF   hc_o_6_OBUF (
    .I(hc_o_6_OBUF_50),
    .O(hc_o[6])
  );
  OBUF   hc_o_5_OBUF (
    .I(hc_o_5_OBUF_49),
    .O(hc_o[5])
  );
  OBUF   hc_o_4_OBUF (
    .I(hc_o_4_OBUF_48),
    .O(hc_o[4])
  );
  OBUF   hc_o_3_OBUF (
    .I(hc_o_3_OBUF_47),
    .O(hc_o[3])
  );
  OBUF   hc_o_2_OBUF (
    .I(hc_o_2_OBUF_46),
    .O(hc_o[2])
  );
  OBUF   hc_o_1_OBUF (
    .I(hc_o_1_OBUF_45),
    .O(hc_o[1])
  );
  OBUF   hc_o_0_OBUF (
    .I(hc_o_0_OBUF_44),
    .O(hc_o[0])
  );
  OBUF   vc_o_9_OBUF (
    .I(vc_o_9_OBUF_90),
    .O(vc_o[9])
  );
  OBUF   vc_o_8_OBUF (
    .I(vc_o_8_OBUF_89),
    .O(vc_o[8])
  );
  OBUF   vc_o_7_OBUF (
    .I(vc_o_7_OBUF_88),
    .O(vc_o[7])
  );
  OBUF   vc_o_6_OBUF (
    .I(vc_o_6_OBUF_87),
    .O(vc_o[6])
  );
  OBUF   vc_o_5_OBUF (
    .I(vc_o_5_OBUF_86),
    .O(vc_o[5])
  );
  OBUF   vc_o_4_OBUF (
    .I(vc_o_4_OBUF_85),
    .O(vc_o[4])
  );
  OBUF   vc_o_3_OBUF (
    .I(vc_o_3_OBUF_84),
    .O(vc_o[3])
  );
  OBUF   vc_o_2_OBUF (
    .I(vc_o_2_OBUF_83),
    .O(vc_o[2])
  );
  OBUF   vc_o_1_OBUF (
    .I(vc_o_1_OBUF_82),
    .O(vc_o[1])
  );
  OBUF   vc_o_0_OBUF (
    .I(vc_o_0_OBUF_81),
    .O(vc_o[0])
  );
  OBUF   Red_2_OBUF (
    .I(Red_2_OBUF_29),
    .O(Red[2])
  );
  OBUF   Red_1_OBUF (
    .I(Red_1_OBUF_28),
    .O(Red[1])
  );
  OBUF   Red_0_OBUF (
    .I(Red_0_OBUF_27),
    .O(Red[0])
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \vc_latch/q17_SW0  (
    .I0(vc_w[6]),
    .I1(vc_w[7]),
    .I2(vc_w[8]),
    .I3(vc_w[9]),
    .O(N2)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \vc_latch/q17  (
    .I0(\vc_latch/q10_68 ),
    .I1(vc_w[0]),
    .I2(vc_w[1]),
    .I3(N2),
    .O(VS_OBUF_31)
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \hc_link/out_cmp_lt0000237_SW0  (
    .I0(hc_w[5]),
    .I1(hc_w[6]),
    .I2(hc_w[7]),
    .I3(hc_w[8]),
    .O(N4)
  );
  LUT4 #(
    .INIT ( 16'h1110 ))
  \hc_link/out_cmp_lt0000237  (
    .I0(hc_w[10]),
    .I1(hc_w[9]),
    .I2(\hc_link/out_cmp_lt0000221_33 ),
    .I3(N4),
    .O(\hc_link/out_cmp_lt0000 )
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \vc_link/out<9>1  (
    .I0(\vc_link/out_cmp_lt0000121_70 ),
    .I1(\vc_link/out_cmp_lt0000112_69 ),
    .I2(vc_w[9]),
    .O(vc_o_9_OBUF_90)
  );
  LUT4 #(
    .INIT ( 16'hFFF1 ))
  \vc_link/out<3>1  (
    .I0(\vc_link/out_cmp_lt0000121_70 ),
    .I1(\vc_link/out_cmp_lt0000112_69 ),
    .I2(vc_w[9]),
    .I3(vc_w[3]),
    .O(vc_o_3_OBUF_84)
  );
  LUT4 #(
    .INIT ( 16'hFFF1 ))
  \vc_link/out<2>1  (
    .I0(\vc_link/out_cmp_lt0000121_70 ),
    .I1(\vc_link/out_cmp_lt0000112_69 ),
    .I2(vc_w[9]),
    .I3(vc_w[2]),
    .O(vc_o_2_OBUF_83)
  );
  LUT4 #(
    .INIT ( 16'hFFF1 ))
  \vc_link/out<1>1  (
    .I0(\vc_link/out_cmp_lt0000121_70 ),
    .I1(\vc_link/out_cmp_lt0000112_69 ),
    .I2(vc_w[9]),
    .I3(vc_w[1]),
    .O(vc_o_1_OBUF_82)
  );
  LUT4 #(
    .INIT ( 16'hFFF1 ))
  \vc_link/out<0>1  (
    .I0(\vc_link/out_cmp_lt0000121_70 ),
    .I1(\vc_link/out_cmp_lt0000112_69 ),
    .I2(vc_w[9]),
    .I3(vc_w[0]),
    .O(vc_o_0_OBUF_81)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \vc_link/out<5>1  (
    .I0(vc_w[5]),
    .I1(vc_w[9]),
    .O(vc_o_5_OBUF_86)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \vc_link/out<4>1  (
    .I0(vc_w[4]),
    .I1(vc_w[9]),
    .O(vc_o_4_OBUF_85)
  );
  LUT4 #(
    .INIT ( 16'hFFF1 ))
  \hc_link/out<9>1  (
    .I0(\hc_link/out_cmp_lt0000221_33 ),
    .I1(N4),
    .I2(hc_w[10]),
    .I3(hc_w[9]),
    .O(hc_o_9_OBUF_53)
  );
  BUFGP   PIX_CLK_BUFGP (
    .I(PIX_CLK),
    .O(PIX_CLK_BUFGP_15)
  );
  LUT3_L #(
    .INIT ( 8'h01 ))
  vert_counter_not000021 (
    .I0(hc_w[1]),
    .I1(hc_w[0]),
    .I2(hc_w[10]),
    .LO(vert_counter_not000021_103)
  );
  COUNTER   horiz_counter (
    .clk(PIX_CLK_BUFGP_15),
    .q({hc_w[10], hc_w[9], hc_w[8], hc_w[7], hc_w[6], hc_w[5], hc_w[4], hc_w[3], hc_w[2], hc_w[1], hc_w[0]})
  );
  COUNTER2   vert_counter (
    .clk(PIX_CLK_BUFGP_15),
    .ce(vert_counter_not0000),
    .q({vc_w[9], vc_w[8], vc_w[7], vc_w[6], vc_w[5], vc_w[4], vc_w[3], vc_w[2], vc_w[1], vc_w[0]})
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
