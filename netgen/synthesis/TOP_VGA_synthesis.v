////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: TOP_VGA_synthesis.v
// /___/   /\     Timestamp: Thu Jun 30 15:32:24 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim TOP_VGA.ngc TOP_VGA_synthesis.v 
// Device	: xc3s500e-5-fg320
// Input file	: TOP_VGA.ngc
// Output file	: /home/student/VGA_DRIVER/netgen/synthesis/TOP_VGA_synthesis.v
// # of Modules	: 1
// Design Name	: TOP_VGA
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

module TOP_VGA (
  VSYNC, PIX_CLK, HSYNC, Blue, Green, Red, PIX_POS_X, PIX_POS_Y, PIX_COLOR_i
);
  output VSYNC;
  input PIX_CLK;
  output HSYNC;
  output [1 : 0] Blue;
  output [2 : 0] Green;
  output [2 : 0] Red;
  input [9 : 0] PIX_POS_X;
  input [9 : 0] PIX_POS_Y;
  input [7 : 0] PIX_COLOR_i;
  wire N0;
  wire N1;
  wire N10;
  wire N12;
  wire N13;
  wire N16;
  wire N4;
  wire N6;
  wire N8;
  wire PIX_CLK_BUFGP_16;
  wire \main1/N4 ;
  wire \main1/Result<0>1 ;
  wire \main1/Result<1>1 ;
  wire \main1/Result<2>1 ;
  wire \main1/Result<3>1 ;
  wire \main1/Result<4>1 ;
  wire \main1/Result<5>1 ;
  wire \main1/Result<6>1 ;
  wire \main1/Result<7>1 ;
  wire \main1/Result<8>1 ;
  wire \main1/Result<9>1 ;
  wire \main1/horiz_counter/CNT_cmp_gt0000 ;
  wire \main1/horiz_counter/Mcount_CNT_cy<1>_rt_57 ;
  wire \main1/horiz_counter/Mcount_CNT_cy<2>_rt_59 ;
  wire \main1/horiz_counter/Mcount_CNT_cy<3>_rt_61 ;
  wire \main1/horiz_counter/Mcount_CNT_cy<4>_rt_63 ;
  wire \main1/horiz_counter/Mcount_CNT_cy<5>_rt_65 ;
  wire \main1/horiz_counter/Mcount_CNT_cy<6>_rt_67 ;
  wire \main1/horiz_counter/Mcount_CNT_cy<7>_rt_69 ;
  wire \main1/horiz_counter/Mcount_CNT_cy<8>_rt_71 ;
  wire \main1/horiz_counter/Mcount_CNT_cy<9>_rt_73 ;
  wire \main1/horiz_counter/Mcount_CNT_xor<10>_rt_75 ;
  wire \main1/hs_latch/q_76 ;
  wire \main1/hs_latch/q_1_77 ;
  wire \main1/latch_reset_h_78 ;
  wire \main1/latch_reset_h1 ;
  wire \main1/latch_reset_v ;
  wire \main1/latch_reset_v112_81 ;
  wire \main1/latch_reset_v125_82 ;
  wire \main1/latch_set_h_83 ;
  wire \main1/latch_set_v ;
  wire \main1/vc_latch/q_85 ;
  wire \main1/vert_counter/CNT_cmp_gt0000 ;
  wire \main1/vert_counter/Mcount_CNT_cy<1>_rt_99 ;
  wire \main1/vert_counter/Mcount_CNT_cy<2>_rt_101 ;
  wire \main1/vert_counter/Mcount_CNT_cy<3>_rt_103 ;
  wire \main1/vert_counter/Mcount_CNT_cy<4>_rt_105 ;
  wire \main1/vert_counter/Mcount_CNT_cy<5>_rt_107 ;
  wire \main1/vert_counter/Mcount_CNT_cy<6>_rt_109 ;
  wire \main1/vert_counter/Mcount_CNT_cy<7>_rt_111 ;
  wire \main1/vert_counter/Mcount_CNT_cy<8>_rt_113 ;
  wire \main1/vert_counter/Mcount_CNT_xor<9>_rt_115 ;
  wire [10 : 0] \main1/Result ;
  wire [10 : 0] \main1/horiz_counter/CNT ;
  wire [9 : 0] \main1/horiz_counter/Mcount_CNT_cy ;
  wire [0 : 0] \main1/horiz_counter/Mcount_CNT_lut ;
  wire [9 : 0] \main1/vert_counter/CNT ;
  wire [8 : 0] \main1/vert_counter/Mcount_CNT_cy ;
  wire [0 : 0] \main1/vert_counter/Mcount_CNT_lut ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  XORCY   \main1/vert_counter/Mcount_CNT_xor<9>  (
    .CI(\main1/vert_counter/Mcount_CNT_cy [8]),
    .LI(\main1/vert_counter/Mcount_CNT_xor<9>_rt_115 ),
    .O(\main1/Result<9>1 )
  );
  XORCY   \main1/vert_counter/Mcount_CNT_xor<8>  (
    .CI(\main1/vert_counter/Mcount_CNT_cy [7]),
    .LI(\main1/vert_counter/Mcount_CNT_cy<8>_rt_113 ),
    .O(\main1/Result<8>1 )
  );
  MUXCY   \main1/vert_counter/Mcount_CNT_cy<8>  (
    .CI(\main1/vert_counter/Mcount_CNT_cy [7]),
    .DI(N0),
    .S(\main1/vert_counter/Mcount_CNT_cy<8>_rt_113 ),
    .O(\main1/vert_counter/Mcount_CNT_cy [8])
  );
  XORCY   \main1/vert_counter/Mcount_CNT_xor<7>  (
    .CI(\main1/vert_counter/Mcount_CNT_cy [6]),
    .LI(\main1/vert_counter/Mcount_CNT_cy<7>_rt_111 ),
    .O(\main1/Result<7>1 )
  );
  MUXCY   \main1/vert_counter/Mcount_CNT_cy<7>  (
    .CI(\main1/vert_counter/Mcount_CNT_cy [6]),
    .DI(N0),
    .S(\main1/vert_counter/Mcount_CNT_cy<7>_rt_111 ),
    .O(\main1/vert_counter/Mcount_CNT_cy [7])
  );
  XORCY   \main1/vert_counter/Mcount_CNT_xor<6>  (
    .CI(\main1/vert_counter/Mcount_CNT_cy [5]),
    .LI(\main1/vert_counter/Mcount_CNT_cy<6>_rt_109 ),
    .O(\main1/Result<6>1 )
  );
  MUXCY   \main1/vert_counter/Mcount_CNT_cy<6>  (
    .CI(\main1/vert_counter/Mcount_CNT_cy [5]),
    .DI(N0),
    .S(\main1/vert_counter/Mcount_CNT_cy<6>_rt_109 ),
    .O(\main1/vert_counter/Mcount_CNT_cy [6])
  );
  XORCY   \main1/vert_counter/Mcount_CNT_xor<5>  (
    .CI(\main1/vert_counter/Mcount_CNT_cy [4]),
    .LI(\main1/vert_counter/Mcount_CNT_cy<5>_rt_107 ),
    .O(\main1/Result<5>1 )
  );
  MUXCY   \main1/vert_counter/Mcount_CNT_cy<5>  (
    .CI(\main1/vert_counter/Mcount_CNT_cy [4]),
    .DI(N0),
    .S(\main1/vert_counter/Mcount_CNT_cy<5>_rt_107 ),
    .O(\main1/vert_counter/Mcount_CNT_cy [5])
  );
  XORCY   \main1/vert_counter/Mcount_CNT_xor<4>  (
    .CI(\main1/vert_counter/Mcount_CNT_cy [3]),
    .LI(\main1/vert_counter/Mcount_CNT_cy<4>_rt_105 ),
    .O(\main1/Result<4>1 )
  );
  MUXCY   \main1/vert_counter/Mcount_CNT_cy<4>  (
    .CI(\main1/vert_counter/Mcount_CNT_cy [3]),
    .DI(N0),
    .S(\main1/vert_counter/Mcount_CNT_cy<4>_rt_105 ),
    .O(\main1/vert_counter/Mcount_CNT_cy [4])
  );
  XORCY   \main1/vert_counter/Mcount_CNT_xor<3>  (
    .CI(\main1/vert_counter/Mcount_CNT_cy [2]),
    .LI(\main1/vert_counter/Mcount_CNT_cy<3>_rt_103 ),
    .O(\main1/Result<3>1 )
  );
  MUXCY   \main1/vert_counter/Mcount_CNT_cy<3>  (
    .CI(\main1/vert_counter/Mcount_CNT_cy [2]),
    .DI(N0),
    .S(\main1/vert_counter/Mcount_CNT_cy<3>_rt_103 ),
    .O(\main1/vert_counter/Mcount_CNT_cy [3])
  );
  XORCY   \main1/vert_counter/Mcount_CNT_xor<2>  (
    .CI(\main1/vert_counter/Mcount_CNT_cy [1]),
    .LI(\main1/vert_counter/Mcount_CNT_cy<2>_rt_101 ),
    .O(\main1/Result<2>1 )
  );
  MUXCY   \main1/vert_counter/Mcount_CNT_cy<2>  (
    .CI(\main1/vert_counter/Mcount_CNT_cy [1]),
    .DI(N0),
    .S(\main1/vert_counter/Mcount_CNT_cy<2>_rt_101 ),
    .O(\main1/vert_counter/Mcount_CNT_cy [2])
  );
  XORCY   \main1/vert_counter/Mcount_CNT_xor<1>  (
    .CI(\main1/vert_counter/Mcount_CNT_cy [0]),
    .LI(\main1/vert_counter/Mcount_CNT_cy<1>_rt_99 ),
    .O(\main1/Result<1>1 )
  );
  MUXCY   \main1/vert_counter/Mcount_CNT_cy<1>  (
    .CI(\main1/vert_counter/Mcount_CNT_cy [0]),
    .DI(N0),
    .S(\main1/vert_counter/Mcount_CNT_cy<1>_rt_99 ),
    .O(\main1/vert_counter/Mcount_CNT_cy [1])
  );
  XORCY   \main1/vert_counter/Mcount_CNT_xor<0>  (
    .CI(N0),
    .LI(\main1/vert_counter/Mcount_CNT_lut [0]),
    .O(\main1/Result<0>1 )
  );
  MUXCY   \main1/vert_counter/Mcount_CNT_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\main1/vert_counter/Mcount_CNT_lut [0]),
    .O(\main1/vert_counter/Mcount_CNT_cy [0])
  );
  XORCY   \main1/horiz_counter/Mcount_CNT_xor<10>  (
    .CI(\main1/horiz_counter/Mcount_CNT_cy [9]),
    .LI(\main1/horiz_counter/Mcount_CNT_xor<10>_rt_75 ),
    .O(\main1/Result [10])
  );
  XORCY   \main1/horiz_counter/Mcount_CNT_xor<9>  (
    .CI(\main1/horiz_counter/Mcount_CNT_cy [8]),
    .LI(\main1/horiz_counter/Mcount_CNT_cy<9>_rt_73 ),
    .O(\main1/Result [9])
  );
  MUXCY   \main1/horiz_counter/Mcount_CNT_cy<9>  (
    .CI(\main1/horiz_counter/Mcount_CNT_cy [8]),
    .DI(N0),
    .S(\main1/horiz_counter/Mcount_CNT_cy<9>_rt_73 ),
    .O(\main1/horiz_counter/Mcount_CNT_cy [9])
  );
  XORCY   \main1/horiz_counter/Mcount_CNT_xor<8>  (
    .CI(\main1/horiz_counter/Mcount_CNT_cy [7]),
    .LI(\main1/horiz_counter/Mcount_CNT_cy<8>_rt_71 ),
    .O(\main1/Result [8])
  );
  MUXCY   \main1/horiz_counter/Mcount_CNT_cy<8>  (
    .CI(\main1/horiz_counter/Mcount_CNT_cy [7]),
    .DI(N0),
    .S(\main1/horiz_counter/Mcount_CNT_cy<8>_rt_71 ),
    .O(\main1/horiz_counter/Mcount_CNT_cy [8])
  );
  XORCY   \main1/horiz_counter/Mcount_CNT_xor<7>  (
    .CI(\main1/horiz_counter/Mcount_CNT_cy [6]),
    .LI(\main1/horiz_counter/Mcount_CNT_cy<7>_rt_69 ),
    .O(\main1/Result [7])
  );
  MUXCY   \main1/horiz_counter/Mcount_CNT_cy<7>  (
    .CI(\main1/horiz_counter/Mcount_CNT_cy [6]),
    .DI(N0),
    .S(\main1/horiz_counter/Mcount_CNT_cy<7>_rt_69 ),
    .O(\main1/horiz_counter/Mcount_CNT_cy [7])
  );
  XORCY   \main1/horiz_counter/Mcount_CNT_xor<6>  (
    .CI(\main1/horiz_counter/Mcount_CNT_cy [5]),
    .LI(\main1/horiz_counter/Mcount_CNT_cy<6>_rt_67 ),
    .O(\main1/Result [6])
  );
  MUXCY   \main1/horiz_counter/Mcount_CNT_cy<6>  (
    .CI(\main1/horiz_counter/Mcount_CNT_cy [5]),
    .DI(N0),
    .S(\main1/horiz_counter/Mcount_CNT_cy<6>_rt_67 ),
    .O(\main1/horiz_counter/Mcount_CNT_cy [6])
  );
  XORCY   \main1/horiz_counter/Mcount_CNT_xor<5>  (
    .CI(\main1/horiz_counter/Mcount_CNT_cy [4]),
    .LI(\main1/horiz_counter/Mcount_CNT_cy<5>_rt_65 ),
    .O(\main1/Result [5])
  );
  MUXCY   \main1/horiz_counter/Mcount_CNT_cy<5>  (
    .CI(\main1/horiz_counter/Mcount_CNT_cy [4]),
    .DI(N0),
    .S(\main1/horiz_counter/Mcount_CNT_cy<5>_rt_65 ),
    .O(\main1/horiz_counter/Mcount_CNT_cy [5])
  );
  XORCY   \main1/horiz_counter/Mcount_CNT_xor<4>  (
    .CI(\main1/horiz_counter/Mcount_CNT_cy [3]),
    .LI(\main1/horiz_counter/Mcount_CNT_cy<4>_rt_63 ),
    .O(\main1/Result [4])
  );
  MUXCY   \main1/horiz_counter/Mcount_CNT_cy<4>  (
    .CI(\main1/horiz_counter/Mcount_CNT_cy [3]),
    .DI(N0),
    .S(\main1/horiz_counter/Mcount_CNT_cy<4>_rt_63 ),
    .O(\main1/horiz_counter/Mcount_CNT_cy [4])
  );
  XORCY   \main1/horiz_counter/Mcount_CNT_xor<3>  (
    .CI(\main1/horiz_counter/Mcount_CNT_cy [2]),
    .LI(\main1/horiz_counter/Mcount_CNT_cy<3>_rt_61 ),
    .O(\main1/Result [3])
  );
  MUXCY   \main1/horiz_counter/Mcount_CNT_cy<3>  (
    .CI(\main1/horiz_counter/Mcount_CNT_cy [2]),
    .DI(N0),
    .S(\main1/horiz_counter/Mcount_CNT_cy<3>_rt_61 ),
    .O(\main1/horiz_counter/Mcount_CNT_cy [3])
  );
  XORCY   \main1/horiz_counter/Mcount_CNT_xor<2>  (
    .CI(\main1/horiz_counter/Mcount_CNT_cy [1]),
    .LI(\main1/horiz_counter/Mcount_CNT_cy<2>_rt_59 ),
    .O(\main1/Result [2])
  );
  MUXCY   \main1/horiz_counter/Mcount_CNT_cy<2>  (
    .CI(\main1/horiz_counter/Mcount_CNT_cy [1]),
    .DI(N0),
    .S(\main1/horiz_counter/Mcount_CNT_cy<2>_rt_59 ),
    .O(\main1/horiz_counter/Mcount_CNT_cy [2])
  );
  XORCY   \main1/horiz_counter/Mcount_CNT_xor<1>  (
    .CI(\main1/horiz_counter/Mcount_CNT_cy [0]),
    .LI(\main1/horiz_counter/Mcount_CNT_cy<1>_rt_57 ),
    .O(\main1/Result [1])
  );
  MUXCY   \main1/horiz_counter/Mcount_CNT_cy<1>  (
    .CI(\main1/horiz_counter/Mcount_CNT_cy [0]),
    .DI(N0),
    .S(\main1/horiz_counter/Mcount_CNT_cy<1>_rt_57 ),
    .O(\main1/horiz_counter/Mcount_CNT_cy [1])
  );
  XORCY   \main1/horiz_counter/Mcount_CNT_xor<0>  (
    .CI(N0),
    .LI(\main1/horiz_counter/Mcount_CNT_lut [0]),
    .O(\main1/Result [0])
  );
  MUXCY   \main1/horiz_counter/Mcount_CNT_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\main1/horiz_counter/Mcount_CNT_lut [0]),
    .O(\main1/horiz_counter/Mcount_CNT_cy [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \main1/vert_counter/CNT_9  (
    .C(\main1/hs_latch/q_76 ),
    .D(\main1/Result<9>1 ),
    .R(\main1/vert_counter/CNT_cmp_gt0000 ),
    .Q(\main1/vert_counter/CNT [9])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \main1/vert_counter/CNT_8  (
    .C(\main1/hs_latch/q_76 ),
    .D(\main1/Result<8>1 ),
    .R(\main1/vert_counter/CNT_cmp_gt0000 ),
    .Q(\main1/vert_counter/CNT [8])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \main1/vert_counter/CNT_7  (
    .C(\main1/hs_latch/q_76 ),
    .D(\main1/Result<7>1 ),
    .R(\main1/vert_counter/CNT_cmp_gt0000 ),
    .Q(\main1/vert_counter/CNT [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \main1/vert_counter/CNT_6  (
    .C(\main1/hs_latch/q_76 ),
    .D(\main1/Result<6>1 ),
    .R(\main1/vert_counter/CNT_cmp_gt0000 ),
    .Q(\main1/vert_counter/CNT [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \main1/vert_counter/CNT_5  (
    .C(\main1/hs_latch/q_76 ),
    .D(\main1/Result<5>1 ),
    .R(\main1/vert_counter/CNT_cmp_gt0000 ),
    .Q(\main1/vert_counter/CNT [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \main1/vert_counter/CNT_4  (
    .C(\main1/hs_latch/q_76 ),
    .D(\main1/Result<4>1 ),
    .R(\main1/vert_counter/CNT_cmp_gt0000 ),
    .Q(\main1/vert_counter/CNT [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \main1/vert_counter/CNT_3  (
    .C(\main1/hs_latch/q_76 ),
    .D(\main1/Result<3>1 ),
    .R(\main1/vert_counter/CNT_cmp_gt0000 ),
    .Q(\main1/vert_counter/CNT [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \main1/vert_counter/CNT_2  (
    .C(\main1/hs_latch/q_76 ),
    .D(\main1/Result<2>1 ),
    .R(\main1/vert_counter/CNT_cmp_gt0000 ),
    .Q(\main1/vert_counter/CNT [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \main1/vert_counter/CNT_1  (
    .C(\main1/hs_latch/q_76 ),
    .D(\main1/Result<1>1 ),
    .R(\main1/vert_counter/CNT_cmp_gt0000 ),
    .Q(\main1/vert_counter/CNT [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \main1/vert_counter/CNT_0  (
    .C(\main1/hs_latch/q_76 ),
    .D(\main1/Result<0>1 ),
    .R(\main1/vert_counter/CNT_cmp_gt0000 ),
    .Q(\main1/vert_counter/CNT [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \main1/horiz_counter/CNT_10  (
    .C(PIX_CLK_BUFGP_16),
    .D(\main1/Result [10]),
    .R(\main1/horiz_counter/CNT_cmp_gt0000 ),
    .Q(\main1/horiz_counter/CNT [10])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \main1/horiz_counter/CNT_9  (
    .C(PIX_CLK_BUFGP_16),
    .D(\main1/Result [9]),
    .R(\main1/horiz_counter/CNT_cmp_gt0000 ),
    .Q(\main1/horiz_counter/CNT [9])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \main1/horiz_counter/CNT_8  (
    .C(PIX_CLK_BUFGP_16),
    .D(\main1/Result [8]),
    .R(\main1/horiz_counter/CNT_cmp_gt0000 ),
    .Q(\main1/horiz_counter/CNT [8])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \main1/horiz_counter/CNT_7  (
    .C(PIX_CLK_BUFGP_16),
    .D(\main1/Result [7]),
    .R(\main1/horiz_counter/CNT_cmp_gt0000 ),
    .Q(\main1/horiz_counter/CNT [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \main1/horiz_counter/CNT_6  (
    .C(PIX_CLK_BUFGP_16),
    .D(\main1/Result [6]),
    .R(\main1/horiz_counter/CNT_cmp_gt0000 ),
    .Q(\main1/horiz_counter/CNT [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \main1/horiz_counter/CNT_5  (
    .C(PIX_CLK_BUFGP_16),
    .D(\main1/Result [5]),
    .R(\main1/horiz_counter/CNT_cmp_gt0000 ),
    .Q(\main1/horiz_counter/CNT [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \main1/horiz_counter/CNT_4  (
    .C(PIX_CLK_BUFGP_16),
    .D(\main1/Result [4]),
    .R(\main1/horiz_counter/CNT_cmp_gt0000 ),
    .Q(\main1/horiz_counter/CNT [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \main1/horiz_counter/CNT_3  (
    .C(PIX_CLK_BUFGP_16),
    .D(\main1/Result [3]),
    .R(\main1/horiz_counter/CNT_cmp_gt0000 ),
    .Q(\main1/horiz_counter/CNT [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \main1/horiz_counter/CNT_2  (
    .C(PIX_CLK_BUFGP_16),
    .D(\main1/Result [2]),
    .R(\main1/horiz_counter/CNT_cmp_gt0000 ),
    .Q(\main1/horiz_counter/CNT [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \main1/horiz_counter/CNT_1  (
    .C(PIX_CLK_BUFGP_16),
    .D(\main1/Result [1]),
    .R(\main1/horiz_counter/CNT_cmp_gt0000 ),
    .Q(\main1/horiz_counter/CNT [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \main1/horiz_counter/CNT_0  (
    .C(PIX_CLK_BUFGP_16),
    .D(\main1/Result [0]),
    .R(\main1/horiz_counter/CNT_cmp_gt0000 ),
    .Q(\main1/horiz_counter/CNT [0])
  );
  LDC   \main1/hs_latch/q  (
    .CLR(\main1/latch_set_h_83 ),
    .D(N1),
    .G(\main1/latch_reset_h_78 ),
    .Q(\main1/hs_latch/q_76 )
  );
  LDC   \main1/vc_latch/q  (
    .CLR(\main1/latch_set_v ),
    .D(N1),
    .G(\main1/latch_reset_v ),
    .Q(\main1/vc_latch/q_85 )
  );
  LUT4 #(
    .INIT ( 16'hFFEF ))
  \main1/latch_set_h_SW0  (
    .I0(\main1/horiz_counter/CNT [2]),
    .I1(\main1/horiz_counter/CNT [1]),
    .I2(\main1/N4 ),
    .I3(\main1/horiz_counter/CNT [4]),
    .O(N4)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \main1/latch_set_h  (
    .I0(\main1/horiz_counter/CNT [0]),
    .I1(\main1/horiz_counter/CNT [6]),
    .I2(\main1/horiz_counter/CNT [5]),
    .I3(N4),
    .O(\main1/latch_set_h_83 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \main1/latch_reset_h_SW0  (
    .I0(\main1/horiz_counter/CNT [4]),
    .I1(\main1/horiz_counter/CNT [1]),
    .I2(\main1/horiz_counter/CNT [2]),
    .I3(\main1/N4 ),
    .O(N6)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \main1/latch_reset_h  (
    .I0(\main1/horiz_counter/CNT [0]),
    .I1(\main1/horiz_counter/CNT [6]),
    .I2(\main1/horiz_counter/CNT [5]),
    .I3(N6),
    .O(\main1/latch_reset_h_78 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \main1/latch_reset_v112  (
    .I0(\main1/vert_counter/CNT [8]),
    .I1(\main1/vert_counter/CNT [7]),
    .I2(\main1/vert_counter/CNT [5]),
    .I3(\main1/vert_counter/CNT [6]),
    .O(\main1/latch_reset_v112_81 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \main1/latch_reset_v125  (
    .I0(\main1/vert_counter/CNT [4]),
    .I1(\main1/vert_counter/CNT [3]),
    .I2(\main1/vert_counter/CNT [1]),
    .I3(\main1/vert_counter/CNT [9]),
    .O(\main1/latch_reset_v125_82 )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \main1/horiz_counter/CNT_cmp_gt00001  (
    .I0(\main1/horiz_counter/CNT [10]),
    .I1(\main1/horiz_counter/CNT [7]),
    .I2(\main1/horiz_counter/CNT [6]),
    .I3(N8),
    .O(\main1/horiz_counter/CNT_cmp_gt0000 )
  );
  OBUF   VSYNC_OBUF (
    .I(\main1/vc_latch/q_85 ),
    .O(VSYNC)
  );
  OBUF   HSYNC_OBUF (
    .I(\main1/hs_latch/q_1_77 ),
    .O(HSYNC)
  );
  OBUF   Blue_1_OBUF (
    .I(N0),
    .O(Blue[1])
  );
  OBUF   Blue_0_OBUF (
    .I(N0),
    .O(Blue[0])
  );
  OBUF   Green_2_OBUF (
    .I(N0),
    .O(Green[2])
  );
  OBUF   Green_1_OBUF (
    .I(N0),
    .O(Green[1])
  );
  OBUF   Green_0_OBUF (
    .I(N0),
    .O(Green[0])
  );
  OBUF   Red_2_OBUF (
    .I(N1),
    .O(Red[2])
  );
  OBUF   Red_1_OBUF (
    .I(N1),
    .O(Red[1])
  );
  OBUF   Red_0_OBUF (
    .I(N1),
    .O(Red[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \main1/vert_counter/Mcount_CNT_cy<8>_rt  (
    .I0(\main1/vert_counter/CNT [8]),
    .O(\main1/vert_counter/Mcount_CNT_cy<8>_rt_113 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \main1/vert_counter/Mcount_CNT_cy<7>_rt  (
    .I0(\main1/vert_counter/CNT [7]),
    .O(\main1/vert_counter/Mcount_CNT_cy<7>_rt_111 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \main1/vert_counter/Mcount_CNT_cy<6>_rt  (
    .I0(\main1/vert_counter/CNT [6]),
    .O(\main1/vert_counter/Mcount_CNT_cy<6>_rt_109 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \main1/vert_counter/Mcount_CNT_cy<5>_rt  (
    .I0(\main1/vert_counter/CNT [5]),
    .O(\main1/vert_counter/Mcount_CNT_cy<5>_rt_107 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \main1/vert_counter/Mcount_CNT_cy<4>_rt  (
    .I0(\main1/vert_counter/CNT [4]),
    .O(\main1/vert_counter/Mcount_CNT_cy<4>_rt_105 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \main1/vert_counter/Mcount_CNT_cy<3>_rt  (
    .I0(\main1/vert_counter/CNT [3]),
    .O(\main1/vert_counter/Mcount_CNT_cy<3>_rt_103 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \main1/vert_counter/Mcount_CNT_cy<2>_rt  (
    .I0(\main1/vert_counter/CNT [2]),
    .O(\main1/vert_counter/Mcount_CNT_cy<2>_rt_101 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \main1/vert_counter/Mcount_CNT_cy<1>_rt  (
    .I0(\main1/vert_counter/CNT [1]),
    .O(\main1/vert_counter/Mcount_CNT_cy<1>_rt_99 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \main1/horiz_counter/Mcount_CNT_cy<9>_rt  (
    .I0(\main1/horiz_counter/CNT [9]),
    .O(\main1/horiz_counter/Mcount_CNT_cy<9>_rt_73 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \main1/horiz_counter/Mcount_CNT_cy<8>_rt  (
    .I0(\main1/horiz_counter/CNT [8]),
    .O(\main1/horiz_counter/Mcount_CNT_cy<8>_rt_71 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \main1/horiz_counter/Mcount_CNT_cy<7>_rt  (
    .I0(\main1/horiz_counter/CNT [7]),
    .O(\main1/horiz_counter/Mcount_CNT_cy<7>_rt_69 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \main1/horiz_counter/Mcount_CNT_cy<6>_rt  (
    .I0(\main1/horiz_counter/CNT [6]),
    .O(\main1/horiz_counter/Mcount_CNT_cy<6>_rt_67 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \main1/horiz_counter/Mcount_CNT_cy<5>_rt  (
    .I0(\main1/horiz_counter/CNT [5]),
    .O(\main1/horiz_counter/Mcount_CNT_cy<5>_rt_65 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \main1/horiz_counter/Mcount_CNT_cy<4>_rt  (
    .I0(\main1/horiz_counter/CNT [4]),
    .O(\main1/horiz_counter/Mcount_CNT_cy<4>_rt_63 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \main1/horiz_counter/Mcount_CNT_cy<3>_rt  (
    .I0(\main1/horiz_counter/CNT [3]),
    .O(\main1/horiz_counter/Mcount_CNT_cy<3>_rt_61 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \main1/horiz_counter/Mcount_CNT_cy<2>_rt  (
    .I0(\main1/horiz_counter/CNT [2]),
    .O(\main1/horiz_counter/Mcount_CNT_cy<2>_rt_59 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \main1/horiz_counter/Mcount_CNT_cy<1>_rt  (
    .I0(\main1/horiz_counter/CNT [1]),
    .O(\main1/horiz_counter/Mcount_CNT_cy<1>_rt_57 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \main1/vert_counter/Mcount_CNT_xor<9>_rt  (
    .I0(\main1/vert_counter/CNT [9]),
    .O(\main1/vert_counter/Mcount_CNT_xor<9>_rt_115 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \main1/horiz_counter/Mcount_CNT_xor<10>_rt  (
    .I0(\main1/horiz_counter/CNT [10]),
    .O(\main1/horiz_counter/Mcount_CNT_xor<10>_rt_75 )
  );
  LUT3 #(
    .INIT ( 8'hC8 ))
  \main1/vert_counter/CNT_cmp_gt000028_SW0  (
    .I0(\main1/vert_counter/CNT [1]),
    .I1(\main1/vert_counter/CNT [3]),
    .I2(\main1/vert_counter/CNT [2]),
    .O(N10)
  );
  LUT4 #(
    .INIT ( 16'hDF80 ))
  \main1/vert_counter/CNT_cmp_gt0000226  (
    .I0(\main1/vert_counter/CNT [4]),
    .I1(N13),
    .I2(N10),
    .I3(N12),
    .O(\main1/vert_counter/CNT_cmp_gt0000 )
  );
  MUXF5   \main1/vert_counter/CNT_cmp_gt000028_SW1  (
    .I0(N0),
    .I1(N16),
    .S(\main1/vert_counter/CNT [9]),
    .O(N12)
  );
  LUT4 #(
    .INIT ( 16'hFEF0 ))
  \main1/vert_counter/CNT_cmp_gt000028_SW1_G  (
    .I0(\main1/vert_counter/CNT [5]),
    .I1(\main1/vert_counter/CNT [6]),
    .I2(\main1/vert_counter/CNT [8]),
    .I3(\main1/vert_counter/CNT [7]),
    .O(N16)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \main1/latch_set_v1  (
    .I0(\main1/vert_counter/CNT [2]),
    .I1(\main1/vert_counter/CNT [0]),
    .I2(\main1/latch_reset_v112_81 ),
    .I3(\main1/latch_reset_v125_82 ),
    .O(\main1/latch_set_v )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \main1/latch_reset_v2  (
    .I0(\main1/latch_reset_v112_81 ),
    .I1(\main1/latch_reset_v125_82 ),
    .I2(\main1/vert_counter/CNT [2]),
    .I3(\main1/vert_counter/CNT [0]),
    .O(\main1/latch_reset_v )
  );
  BUFGP   PIX_CLK_BUFGP (
    .I(PIX_CLK),
    .O(PIX_CLK_BUFGP_16)
  );
  INV   \main1/vert_counter/Mcount_CNT_lut<0>_INV_0  (
    .I(\main1/vert_counter/CNT [0]),
    .O(\main1/vert_counter/Mcount_CNT_lut [0])
  );
  INV   \main1/horiz_counter/Mcount_CNT_lut<0>_INV_0  (
    .I(\main1/horiz_counter/CNT [0]),
    .O(\main1/horiz_counter/Mcount_CNT_lut [0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \main1/latch_reset_h11  (
    .I0(\main1/horiz_counter/CNT [8]),
    .I1(\main1/horiz_counter/CNT [7]),
    .I2(\main1/horiz_counter/CNT [3]),
    .I3(\main1/horiz_counter/CNT [10]),
    .O(\main1/latch_reset_h1 )
  );
  MUXF5   \main1/latch_reset_h1_f5  (
    .I0(\main1/latch_reset_h1 ),
    .I1(N0),
    .S(\main1/horiz_counter/CNT [9]),
    .O(\main1/N4 )
  );
  LUT4_L #(
    .INIT ( 16'hFFFE ))
  \main1/horiz_counter/CNT_cmp_gt00001_SW0  (
    .I0(\main1/horiz_counter/CNT [8]),
    .I1(\main1/horiz_counter/CNT [9]),
    .I2(\main1/horiz_counter/CNT [4]),
    .I3(\main1/horiz_counter/CNT [5]),
    .LO(N8)
  );
  LUT3_L #(
    .INIT ( 8'hC8 ))
  \main1/vert_counter/CNT_cmp_gt000028_SW2  (
    .I0(\main1/vert_counter/CNT [7]),
    .I1(\main1/vert_counter/CNT [9]),
    .I2(\main1/vert_counter/CNT [8]),
    .LO(N13)
  );
  LDC   \main1/hs_latch/q_1  (
    .CLR(\main1/latch_set_h_83 ),
    .D(N1),
    .G(\main1/latch_reset_h_78 ),
    .Q(\main1/hs_latch/q_1_77 )
  );
endmodule


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

