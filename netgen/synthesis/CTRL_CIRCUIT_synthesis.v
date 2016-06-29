////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: CTRL_CIRCUIT_synthesis.v
// /___/   /\     Timestamp: Wed Jun 29 16:19:52 2016
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
  PIX_CLK, HS, VS
)/* synthesis syn_black_box syn_noprune=1 */;
  input PIX_CLK;
  output HS;
  output VS;
  
  // synthesis translate_off
  
  wire HS_OBUF_1;
  wire N01;
  wire PIX_CLK_BUFGP_4;
  wire VS_OBUF_6;
  wire \hs_latch/q12_18 ;
  wire \hs_latch/q4_19 ;
  wire \hs_latch/q7_20 ;
  wire \vc_latch/q10_21 ;
  wire vert_counter_not0000;
  wire vert_counter_not000012_33;
  wire vert_counter_not000021_34;
  wire vert_counter_not000044_35;
  wire [10 : 0] hc_w;
  wire [9 : 0] vc_w;
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \vc_latch/q10  (
    .I0(vc_w[5]),
    .I1(vc_w[4]),
    .I2(vc_w[3]),
    .I3(vc_w[2]),
    .O(\vc_latch/q10_21 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \hs_latch/q4  (
    .I0(hc_w[3]),
    .I1(hc_w[4]),
    .I2(hc_w[5]),
    .I3(hc_w[0]),
    .O(\hs_latch/q4_19 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \hs_latch/q7  (
    .I0(hc_w[2]),
    .I1(hc_w[9]),
    .I2(hc_w[10]),
    .O(\hs_latch/q7_20 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \hs_latch/q12  (
    .I0(hc_w[1]),
    .I1(hc_w[6]),
    .I2(hc_w[7]),
    .I3(hc_w[8]),
    .O(\hs_latch/q12_18 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \hs_latch/q20  (
    .I0(\hs_latch/q4_19 ),
    .I1(\hs_latch/q7_20 ),
    .I2(\hs_latch/q12_18 ),
    .O(HS_OBUF_1)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  vert_counter_not000021 (
    .I0(hc_w[4]),
    .I1(hc_w[5]),
    .I2(hc_w[6]),
    .O(vert_counter_not000021_34)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  vert_counter_not000044 (
    .I0(hc_w[0]),
    .I1(hc_w[9]),
    .I2(hc_w[8]),
    .I3(hc_w[7]),
    .O(vert_counter_not000044_35)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  vert_counter_not000046 (
    .I0(vert_counter_not000012_33),
    .I1(vert_counter_not000021_34),
    .I2(vert_counter_not000044_35),
    .O(vert_counter_not0000)
  );
  OBUF   HS_OBUF (
    .I(HS_OBUF_1),
    .O(HS)
  );
  OBUF   VS_OBUF (
    .I(VS_OBUF_6),
    .O(VS)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \vc_latch/q17_SW0  (
    .I0(vc_w[6]),
    .I1(vc_w[7]),
    .I2(vc_w[8]),
    .I3(vc_w[9]),
    .O(N01)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \vc_latch/q17  (
    .I0(\vc_latch/q10_21 ),
    .I1(vc_w[0]),
    .I2(vc_w[1]),
    .I3(N01),
    .O(VS_OBUF_6)
  );
  BUFGP   PIX_CLK_BUFGP (
    .I(PIX_CLK),
    .O(PIX_CLK_BUFGP_4)
  );
  LUT4_L #(
    .INIT ( 16'h0001 ))
  vert_counter_not000012 (
    .I0(hc_w[1]),
    .I1(hc_w[10]),
    .I2(hc_w[2]),
    .I3(hc_w[3]),
    .LO(vert_counter_not000012_33)
  );
  COUNTER   horiz_counter (
    .clk(PIX_CLK_BUFGP_4),
    .q({hc_w[10], hc_w[9], hc_w[8], hc_w[7], hc_w[6], hc_w[5], hc_w[4], hc_w[3], hc_w[2], hc_w[1], hc_w[0]})
  );
  COUNTER2   vert_counter (
    .clk(PIX_CLK_BUFGP_4),
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
