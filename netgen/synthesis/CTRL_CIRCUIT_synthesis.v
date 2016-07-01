////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: CTRL_CIRCUIT_synthesis.v
// /___/   /\     Timestamp: Fri Jul  1 14:08:41 2016
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
  HS, RST_IN, VS, CLKIN_IN, Blue, Green, Red, PIX_DATA
);
  output HS;
  input RST_IN;
  output VS;
  input CLKIN_IN;
  output [1 : 0] Blue;
  output [2 : 0] Green;
  output [2 : 0] Red;
  input [7 : 0] PIX_DATA;
  wire Blue_0_OBUF_2;
  wire Blue_1_OBUF_3;
  wire CLKIN_IN_IBUFG_5;
  wire Green_0_OBUF_9;
  wire Green_1_OBUF_10;
  wire Green_2_OBUF_11;
  wire HS_OBUF_13;
  wire N0;
  wire N1;
  wire N5;
  wire PIX_CLK;
  wire RST_IN_IBUF_27;
  wire Red_0_OBUF_31;
  wire Red_1_OBUF_32;
  wire Red_2_OBUF_33;
  wire \Result<0>1 ;
  wire \Result<10>1 ;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \Result<6>1 ;
  wire \Result<7>1 ;
  wire \Result<8>1 ;
  wire \Result<9>1 ;
  wire VS_OBUF_57;
  wire \cntHoriz/CNT_or0000 ;
  wire \cntHoriz/CNT_or000014_70 ;
  wire \cntHoriz/CNT_or00007 ;
  wire \cntHoriz/CNT_or000071_72 ;
  wire \cntHoriz/Mcount_CNT_cy<1>_rt_75 ;
  wire \cntHoriz/Mcount_CNT_cy<2>_rt_77 ;
  wire \cntHoriz/Mcount_CNT_cy<3>_rt_79 ;
  wire \cntHoriz/Mcount_CNT_cy<4>_rt_81 ;
  wire \cntHoriz/Mcount_CNT_cy<5>_rt_83 ;
  wire \cntHoriz/Mcount_CNT_cy<6>_rt_85 ;
  wire \cntHoriz/Mcount_CNT_cy<7>_rt_87 ;
  wire \cntHoriz/Mcount_CNT_cy<8>_rt_89 ;
  wire \cntHoriz/Mcount_CNT_cy<9>_rt_91 ;
  wire \cntHoriz/Mcount_CNT_xor<10>_rt_93 ;
  wire \cntVert/CNT_or0000 ;
  wire \cntVert/CNT_or000010_106 ;
  wire \cntVert/CNT_or000032 ;
  wire \cntVert/CNT_or00004_108 ;
  wire \cntVert/Mcount_CNT_cy<1>_rt_111 ;
  wire \cntVert/Mcount_CNT_cy<2>_rt_113 ;
  wire \cntVert/Mcount_CNT_cy<3>_rt_115 ;
  wire \cntVert/Mcount_CNT_cy<4>_rt_117 ;
  wire \cntVert/Mcount_CNT_cy<5>_rt_119 ;
  wire \cntVert/Mcount_CNT_cy<6>_rt_121 ;
  wire \cntVert/Mcount_CNT_cy<7>_rt_123 ;
  wire \cntVert/Mcount_CNT_cy<8>_rt_125 ;
  wire \cntVert/Mcount_CNT_cy<9>_rt_127 ;
  wire \cntVert/Mcount_CNT_xor<10>_rt_129 ;
  wire \latchHoriz/q_130 ;
  wire \latchVert/q_131 ;
  wire latch_reset_h;
  wire latch_reset_v;
  wire latch_set_h;
  wire latch_set_v;
  wire \multiplier/CLK0_BUF ;
  wire \multiplier/CLKFB_IN ;
  wire \multiplier/CLKFX_BUF ;
  wire \syncDetectHoriz/out112_139 ;
  wire \syncDetectHoriz/out130 ;
  wire \syncDetectHoriz/out1301_141 ;
  wire \syncDetectVert/out112_142 ;
  wire \syncDetectVert/out130_143 ;
  wire \NLW_multiplier/DCM_SP_INST_CLK90_UNCONNECTED ;
  wire \NLW_multiplier/DCM_SP_INST_CLK180_UNCONNECTED ;
  wire \NLW_multiplier/DCM_SP_INST_CLK270_UNCONNECTED ;
  wire \NLW_multiplier/DCM_SP_INST_CLK2X_UNCONNECTED ;
  wire \NLW_multiplier/DCM_SP_INST_CLK2X180_UNCONNECTED ;
  wire \NLW_multiplier/DCM_SP_INST_CLKDV_UNCONNECTED ;
  wire \NLW_multiplier/DCM_SP_INST_CLKFX180_UNCONNECTED ;
  wire \NLW_multiplier/DCM_SP_INST_LOCKED_UNCONNECTED ;
  wire \NLW_multiplier/DCM_SP_INST_PSDONE_UNCONNECTED ;
  wire \NLW_multiplier/DCM_SP_INST_STATUS<7>_UNCONNECTED ;
  wire \NLW_multiplier/DCM_SP_INST_STATUS<6>_UNCONNECTED ;
  wire \NLW_multiplier/DCM_SP_INST_STATUS<5>_UNCONNECTED ;
  wire \NLW_multiplier/DCM_SP_INST_STATUS<4>_UNCONNECTED ;
  wire \NLW_multiplier/DCM_SP_INST_STATUS<3>_UNCONNECTED ;
  wire \NLW_multiplier/DCM_SP_INST_STATUS<2>_UNCONNECTED ;
  wire \NLW_multiplier/DCM_SP_INST_STATUS<1>_UNCONNECTED ;
  wire \NLW_multiplier/DCM_SP_INST_STATUS<0>_UNCONNECTED ;
  wire [10 : 0] Result;
  wire [10 : 0] \cntHoriz/CNT ;
  wire [9 : 0] \cntHoriz/Mcount_CNT_cy ;
  wire [0 : 0] \cntHoriz/Mcount_CNT_lut ;
  wire [10 : 0] \cntVert/CNT ;
  wire [9 : 0] \cntVert/Mcount_CNT_cy ;
  wire [0 : 0] \cntVert/Mcount_CNT_lut ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  LDC   \latchVert/q  (
    .CLR(latch_set_v),
    .D(N1),
    .G(latch_reset_v),
    .Q(\latchVert/q_131 )
  );
  LDC   \latchHoriz/q  (
    .CLR(latch_set_h),
    .D(N1),
    .G(latch_reset_h),
    .Q(\latchHoriz/q_130 )
  );
  FDR   \cntVert/CNT_0  (
    .C(\latchHoriz/q_130 ),
    .D(Result[0]),
    .R(\cntVert/CNT_or0000 ),
    .Q(\cntVert/CNT [0])
  );
  FDR   \cntVert/CNT_1  (
    .C(\latchHoriz/q_130 ),
    .D(Result[1]),
    .R(\cntVert/CNT_or0000 ),
    .Q(\cntVert/CNT [1])
  );
  FDR   \cntVert/CNT_2  (
    .C(\latchHoriz/q_130 ),
    .D(Result[2]),
    .R(\cntVert/CNT_or0000 ),
    .Q(\cntVert/CNT [2])
  );
  FDR   \cntVert/CNT_3  (
    .C(\latchHoriz/q_130 ),
    .D(Result[3]),
    .R(\cntVert/CNT_or0000 ),
    .Q(\cntVert/CNT [3])
  );
  FDR   \cntVert/CNT_4  (
    .C(\latchHoriz/q_130 ),
    .D(Result[4]),
    .R(\cntVert/CNT_or0000 ),
    .Q(\cntVert/CNT [4])
  );
  FDR   \cntVert/CNT_5  (
    .C(\latchHoriz/q_130 ),
    .D(Result[5]),
    .R(\cntVert/CNT_or0000 ),
    .Q(\cntVert/CNT [5])
  );
  FDR   \cntVert/CNT_6  (
    .C(\latchHoriz/q_130 ),
    .D(Result[6]),
    .R(\cntVert/CNT_or0000 ),
    .Q(\cntVert/CNT [6])
  );
  FDR   \cntVert/CNT_7  (
    .C(\latchHoriz/q_130 ),
    .D(Result[7]),
    .R(\cntVert/CNT_or0000 ),
    .Q(\cntVert/CNT [7])
  );
  FDR   \cntVert/CNT_8  (
    .C(\latchHoriz/q_130 ),
    .D(Result[8]),
    .R(\cntVert/CNT_or0000 ),
    .Q(\cntVert/CNT [8])
  );
  FDR   \cntVert/CNT_9  (
    .C(\latchHoriz/q_130 ),
    .D(Result[9]),
    .R(\cntVert/CNT_or0000 ),
    .Q(\cntVert/CNT [9])
  );
  FDR   \cntVert/CNT_10  (
    .C(\latchHoriz/q_130 ),
    .D(Result[10]),
    .R(\cntVert/CNT_or0000 ),
    .Q(\cntVert/CNT [10])
  );
  FDR   \cntHoriz/CNT_0  (
    .C(PIX_CLK),
    .D(\Result<0>1 ),
    .R(\cntHoriz/CNT_or0000 ),
    .Q(\cntHoriz/CNT [0])
  );
  FDR   \cntHoriz/CNT_1  (
    .C(PIX_CLK),
    .D(\Result<1>1 ),
    .R(\cntHoriz/CNT_or0000 ),
    .Q(\cntHoriz/CNT [1])
  );
  FDR   \cntHoriz/CNT_2  (
    .C(PIX_CLK),
    .D(\Result<2>1 ),
    .R(\cntHoriz/CNT_or0000 ),
    .Q(\cntHoriz/CNT [2])
  );
  FDR   \cntHoriz/CNT_3  (
    .C(PIX_CLK),
    .D(\Result<3>1 ),
    .R(\cntHoriz/CNT_or0000 ),
    .Q(\cntHoriz/CNT [3])
  );
  FDR   \cntHoriz/CNT_4  (
    .C(PIX_CLK),
    .D(\Result<4>1 ),
    .R(\cntHoriz/CNT_or0000 ),
    .Q(\cntHoriz/CNT [4])
  );
  FDR   \cntHoriz/CNT_5  (
    .C(PIX_CLK),
    .D(\Result<5>1 ),
    .R(\cntHoriz/CNT_or0000 ),
    .Q(\cntHoriz/CNT [5])
  );
  FDR   \cntHoriz/CNT_6  (
    .C(PIX_CLK),
    .D(\Result<6>1 ),
    .R(\cntHoriz/CNT_or0000 ),
    .Q(\cntHoriz/CNT [6])
  );
  FDR   \cntHoriz/CNT_7  (
    .C(PIX_CLK),
    .D(\Result<7>1 ),
    .R(\cntHoriz/CNT_or0000 ),
    .Q(\cntHoriz/CNT [7])
  );
  FDR   \cntHoriz/CNT_8  (
    .C(PIX_CLK),
    .D(\Result<8>1 ),
    .R(\cntHoriz/CNT_or0000 ),
    .Q(\cntHoriz/CNT [8])
  );
  FDR   \cntHoriz/CNT_9  (
    .C(PIX_CLK),
    .D(\Result<9>1 ),
    .R(\cntHoriz/CNT_or0000 ),
    .Q(\cntHoriz/CNT [9])
  );
  FDR   \cntHoriz/CNT_10  (
    .C(PIX_CLK),
    .D(\Result<10>1 ),
    .R(\cntHoriz/CNT_or0000 ),
    .Q(\cntHoriz/CNT [10])
  );
  MUXCY   \cntHoriz/Mcount_CNT_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\cntHoriz/Mcount_CNT_lut [0]),
    .O(\cntHoriz/Mcount_CNT_cy [0])
  );
  XORCY   \cntHoriz/Mcount_CNT_xor<0>  (
    .CI(N0),
    .LI(\cntHoriz/Mcount_CNT_lut [0]),
    .O(\Result<0>1 )
  );
  MUXCY   \cntHoriz/Mcount_CNT_cy<1>  (
    .CI(\cntHoriz/Mcount_CNT_cy [0]),
    .DI(N0),
    .S(\cntHoriz/Mcount_CNT_cy<1>_rt_75 ),
    .O(\cntHoriz/Mcount_CNT_cy [1])
  );
  XORCY   \cntHoriz/Mcount_CNT_xor<1>  (
    .CI(\cntHoriz/Mcount_CNT_cy [0]),
    .LI(\cntHoriz/Mcount_CNT_cy<1>_rt_75 ),
    .O(\Result<1>1 )
  );
  MUXCY   \cntHoriz/Mcount_CNT_cy<2>  (
    .CI(\cntHoriz/Mcount_CNT_cy [1]),
    .DI(N0),
    .S(\cntHoriz/Mcount_CNT_cy<2>_rt_77 ),
    .O(\cntHoriz/Mcount_CNT_cy [2])
  );
  XORCY   \cntHoriz/Mcount_CNT_xor<2>  (
    .CI(\cntHoriz/Mcount_CNT_cy [1]),
    .LI(\cntHoriz/Mcount_CNT_cy<2>_rt_77 ),
    .O(\Result<2>1 )
  );
  MUXCY   \cntHoriz/Mcount_CNT_cy<3>  (
    .CI(\cntHoriz/Mcount_CNT_cy [2]),
    .DI(N0),
    .S(\cntHoriz/Mcount_CNT_cy<3>_rt_79 ),
    .O(\cntHoriz/Mcount_CNT_cy [3])
  );
  XORCY   \cntHoriz/Mcount_CNT_xor<3>  (
    .CI(\cntHoriz/Mcount_CNT_cy [2]),
    .LI(\cntHoriz/Mcount_CNT_cy<3>_rt_79 ),
    .O(\Result<3>1 )
  );
  MUXCY   \cntHoriz/Mcount_CNT_cy<4>  (
    .CI(\cntHoriz/Mcount_CNT_cy [3]),
    .DI(N0),
    .S(\cntHoriz/Mcount_CNT_cy<4>_rt_81 ),
    .O(\cntHoriz/Mcount_CNT_cy [4])
  );
  XORCY   \cntHoriz/Mcount_CNT_xor<4>  (
    .CI(\cntHoriz/Mcount_CNT_cy [3]),
    .LI(\cntHoriz/Mcount_CNT_cy<4>_rt_81 ),
    .O(\Result<4>1 )
  );
  MUXCY   \cntHoriz/Mcount_CNT_cy<5>  (
    .CI(\cntHoriz/Mcount_CNT_cy [4]),
    .DI(N0),
    .S(\cntHoriz/Mcount_CNT_cy<5>_rt_83 ),
    .O(\cntHoriz/Mcount_CNT_cy [5])
  );
  XORCY   \cntHoriz/Mcount_CNT_xor<5>  (
    .CI(\cntHoriz/Mcount_CNT_cy [4]),
    .LI(\cntHoriz/Mcount_CNT_cy<5>_rt_83 ),
    .O(\Result<5>1 )
  );
  MUXCY   \cntHoriz/Mcount_CNT_cy<6>  (
    .CI(\cntHoriz/Mcount_CNT_cy [5]),
    .DI(N0),
    .S(\cntHoriz/Mcount_CNT_cy<6>_rt_85 ),
    .O(\cntHoriz/Mcount_CNT_cy [6])
  );
  XORCY   \cntHoriz/Mcount_CNT_xor<6>  (
    .CI(\cntHoriz/Mcount_CNT_cy [5]),
    .LI(\cntHoriz/Mcount_CNT_cy<6>_rt_85 ),
    .O(\Result<6>1 )
  );
  MUXCY   \cntHoriz/Mcount_CNT_cy<7>  (
    .CI(\cntHoriz/Mcount_CNT_cy [6]),
    .DI(N0),
    .S(\cntHoriz/Mcount_CNT_cy<7>_rt_87 ),
    .O(\cntHoriz/Mcount_CNT_cy [7])
  );
  XORCY   \cntHoriz/Mcount_CNT_xor<7>  (
    .CI(\cntHoriz/Mcount_CNT_cy [6]),
    .LI(\cntHoriz/Mcount_CNT_cy<7>_rt_87 ),
    .O(\Result<7>1 )
  );
  MUXCY   \cntHoriz/Mcount_CNT_cy<8>  (
    .CI(\cntHoriz/Mcount_CNT_cy [7]),
    .DI(N0),
    .S(\cntHoriz/Mcount_CNT_cy<8>_rt_89 ),
    .O(\cntHoriz/Mcount_CNT_cy [8])
  );
  XORCY   \cntHoriz/Mcount_CNT_xor<8>  (
    .CI(\cntHoriz/Mcount_CNT_cy [7]),
    .LI(\cntHoriz/Mcount_CNT_cy<8>_rt_89 ),
    .O(\Result<8>1 )
  );
  MUXCY   \cntHoriz/Mcount_CNT_cy<9>  (
    .CI(\cntHoriz/Mcount_CNT_cy [8]),
    .DI(N0),
    .S(\cntHoriz/Mcount_CNT_cy<9>_rt_91 ),
    .O(\cntHoriz/Mcount_CNT_cy [9])
  );
  XORCY   \cntHoriz/Mcount_CNT_xor<9>  (
    .CI(\cntHoriz/Mcount_CNT_cy [8]),
    .LI(\cntHoriz/Mcount_CNT_cy<9>_rt_91 ),
    .O(\Result<9>1 )
  );
  XORCY   \cntHoriz/Mcount_CNT_xor<10>  (
    .CI(\cntHoriz/Mcount_CNT_cy [9]),
    .LI(\cntHoriz/Mcount_CNT_xor<10>_rt_93 ),
    .O(\Result<10>1 )
  );
  MUXCY   \cntVert/Mcount_CNT_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\cntVert/Mcount_CNT_lut [0]),
    .O(\cntVert/Mcount_CNT_cy [0])
  );
  XORCY   \cntVert/Mcount_CNT_xor<0>  (
    .CI(N0),
    .LI(\cntVert/Mcount_CNT_lut [0]),
    .O(Result[0])
  );
  MUXCY   \cntVert/Mcount_CNT_cy<1>  (
    .CI(\cntVert/Mcount_CNT_cy [0]),
    .DI(N0),
    .S(\cntVert/Mcount_CNT_cy<1>_rt_111 ),
    .O(\cntVert/Mcount_CNT_cy [1])
  );
  XORCY   \cntVert/Mcount_CNT_xor<1>  (
    .CI(\cntVert/Mcount_CNT_cy [0]),
    .LI(\cntVert/Mcount_CNT_cy<1>_rt_111 ),
    .O(Result[1])
  );
  MUXCY   \cntVert/Mcount_CNT_cy<2>  (
    .CI(\cntVert/Mcount_CNT_cy [1]),
    .DI(N0),
    .S(\cntVert/Mcount_CNT_cy<2>_rt_113 ),
    .O(\cntVert/Mcount_CNT_cy [2])
  );
  XORCY   \cntVert/Mcount_CNT_xor<2>  (
    .CI(\cntVert/Mcount_CNT_cy [1]),
    .LI(\cntVert/Mcount_CNT_cy<2>_rt_113 ),
    .O(Result[2])
  );
  MUXCY   \cntVert/Mcount_CNT_cy<3>  (
    .CI(\cntVert/Mcount_CNT_cy [2]),
    .DI(N0),
    .S(\cntVert/Mcount_CNT_cy<3>_rt_115 ),
    .O(\cntVert/Mcount_CNT_cy [3])
  );
  XORCY   \cntVert/Mcount_CNT_xor<3>  (
    .CI(\cntVert/Mcount_CNT_cy [2]),
    .LI(\cntVert/Mcount_CNT_cy<3>_rt_115 ),
    .O(Result[3])
  );
  MUXCY   \cntVert/Mcount_CNT_cy<4>  (
    .CI(\cntVert/Mcount_CNT_cy [3]),
    .DI(N0),
    .S(\cntVert/Mcount_CNT_cy<4>_rt_117 ),
    .O(\cntVert/Mcount_CNT_cy [4])
  );
  XORCY   \cntVert/Mcount_CNT_xor<4>  (
    .CI(\cntVert/Mcount_CNT_cy [3]),
    .LI(\cntVert/Mcount_CNT_cy<4>_rt_117 ),
    .O(Result[4])
  );
  MUXCY   \cntVert/Mcount_CNT_cy<5>  (
    .CI(\cntVert/Mcount_CNT_cy [4]),
    .DI(N0),
    .S(\cntVert/Mcount_CNT_cy<5>_rt_119 ),
    .O(\cntVert/Mcount_CNT_cy [5])
  );
  XORCY   \cntVert/Mcount_CNT_xor<5>  (
    .CI(\cntVert/Mcount_CNT_cy [4]),
    .LI(\cntVert/Mcount_CNT_cy<5>_rt_119 ),
    .O(Result[5])
  );
  MUXCY   \cntVert/Mcount_CNT_cy<6>  (
    .CI(\cntVert/Mcount_CNT_cy [5]),
    .DI(N0),
    .S(\cntVert/Mcount_CNT_cy<6>_rt_121 ),
    .O(\cntVert/Mcount_CNT_cy [6])
  );
  XORCY   \cntVert/Mcount_CNT_xor<6>  (
    .CI(\cntVert/Mcount_CNT_cy [5]),
    .LI(\cntVert/Mcount_CNT_cy<6>_rt_121 ),
    .O(Result[6])
  );
  MUXCY   \cntVert/Mcount_CNT_cy<7>  (
    .CI(\cntVert/Mcount_CNT_cy [6]),
    .DI(N0),
    .S(\cntVert/Mcount_CNT_cy<7>_rt_123 ),
    .O(\cntVert/Mcount_CNT_cy [7])
  );
  XORCY   \cntVert/Mcount_CNT_xor<7>  (
    .CI(\cntVert/Mcount_CNT_cy [6]),
    .LI(\cntVert/Mcount_CNT_cy<7>_rt_123 ),
    .O(Result[7])
  );
  MUXCY   \cntVert/Mcount_CNT_cy<8>  (
    .CI(\cntVert/Mcount_CNT_cy [7]),
    .DI(N0),
    .S(\cntVert/Mcount_CNT_cy<8>_rt_125 ),
    .O(\cntVert/Mcount_CNT_cy [8])
  );
  XORCY   \cntVert/Mcount_CNT_xor<8>  (
    .CI(\cntVert/Mcount_CNT_cy [7]),
    .LI(\cntVert/Mcount_CNT_cy<8>_rt_125 ),
    .O(Result[8])
  );
  MUXCY   \cntVert/Mcount_CNT_cy<9>  (
    .CI(\cntVert/Mcount_CNT_cy [8]),
    .DI(N0),
    .S(\cntVert/Mcount_CNT_cy<9>_rt_127 ),
    .O(\cntVert/Mcount_CNT_cy [9])
  );
  XORCY   \cntVert/Mcount_CNT_xor<9>  (
    .CI(\cntVert/Mcount_CNT_cy [8]),
    .LI(\cntVert/Mcount_CNT_cy<9>_rt_127 ),
    .O(Result[9])
  );
  XORCY   \cntVert/Mcount_CNT_xor<10>  (
    .CI(\cntVert/Mcount_CNT_cy [9]),
    .LI(\cntVert/Mcount_CNT_xor<10>_rt_129 ),
    .O(Result[10])
  );
  DCM_SP #(
    .CLKDV_DIVIDE ( 2.000000 ),
    .CLKFX_DIVIDE ( 10 ),
    .CLKFX_MULTIPLY ( 27 ),
    .CLKIN_DIVIDE_BY_2 ( "FALSE" ),
    .CLKIN_PERIOD ( 20.000000 ),
    .CLKOUT_PHASE_SHIFT ( "NONE" ),
    .CLK_FEEDBACK ( "1X" ),
    .DESKEW_ADJUST ( "SYSTEM_SYNCHRONOUS" ),
    .DFS_FREQUENCY_MODE ( "LOW" ),
    .DLL_FREQUENCY_MODE ( "LOW" ),
    .DSS_MODE ( "NONE" ),
    .DUTY_CYCLE_CORRECTION ( "TRUE" ),
    .PHASE_SHIFT ( 0 ),
    .STARTUP_WAIT ( "FALSE" ),
    .FACTORY_JF ( 16'hC080 ))
  \multiplier/DCM_SP_INST  (
    .CLKIN(CLKIN_IN_IBUFG_5),
    .CLKFB(\multiplier/CLKFB_IN ),
    .RST(RST_IN_IBUF_27),
    .DSSEN(N0),
    .PSINCDEC(N0),
    .PSEN(N0),
    .PSCLK(N0),
    .CLK0(\multiplier/CLK0_BUF ),
    .CLK90(\NLW_multiplier/DCM_SP_INST_CLK90_UNCONNECTED ),
    .CLK180(\NLW_multiplier/DCM_SP_INST_CLK180_UNCONNECTED ),
    .CLK270(\NLW_multiplier/DCM_SP_INST_CLK270_UNCONNECTED ),
    .CLK2X(\NLW_multiplier/DCM_SP_INST_CLK2X_UNCONNECTED ),
    .CLK2X180(\NLW_multiplier/DCM_SP_INST_CLK2X180_UNCONNECTED ),
    .CLKDV(\NLW_multiplier/DCM_SP_INST_CLKDV_UNCONNECTED ),
    .CLKFX(\multiplier/CLKFX_BUF ),
    .CLKFX180(\NLW_multiplier/DCM_SP_INST_CLKFX180_UNCONNECTED ),
    .LOCKED(\NLW_multiplier/DCM_SP_INST_LOCKED_UNCONNECTED ),
    .PSDONE(\NLW_multiplier/DCM_SP_INST_PSDONE_UNCONNECTED ),
    .STATUS({\NLW_multiplier/DCM_SP_INST_STATUS<7>_UNCONNECTED , \NLW_multiplier/DCM_SP_INST_STATUS<6>_UNCONNECTED , 
\NLW_multiplier/DCM_SP_INST_STATUS<5>_UNCONNECTED , \NLW_multiplier/DCM_SP_INST_STATUS<4>_UNCONNECTED , 
\NLW_multiplier/DCM_SP_INST_STATUS<3>_UNCONNECTED , \NLW_multiplier/DCM_SP_INST_STATUS<2>_UNCONNECTED , 
\NLW_multiplier/DCM_SP_INST_STATUS<1>_UNCONNECTED , \NLW_multiplier/DCM_SP_INST_STATUS<0>_UNCONNECTED })
  );
  BUFG   \multiplier/CLK0_BUFG_INST  (
    .I(\multiplier/CLK0_BUF ),
    .O(\multiplier/CLKFB_IN )
  );
  BUFG   \multiplier/CLKFX_BUFG_INST  (
    .I(\multiplier/CLKFX_BUF ),
    .O(PIX_CLK)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \syncDetectHoriz/out112  (
    .I0(\cntHoriz/CNT [3]),
    .I1(\cntHoriz/CNT [4]),
    .I2(\cntHoriz/CNT [5]),
    .I3(\cntHoriz/CNT [6]),
    .O(\syncDetectHoriz/out112_139 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \syncDetectVert/out112  (
    .I0(\cntVert/CNT [9]),
    .I1(\cntVert/CNT [8]),
    .I2(\cntVert/CNT [7]),
    .I3(\cntVert/CNT [6]),
    .O(\syncDetectVert/out112_142 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \cntVert/CNT_or00004  (
    .I0(\cntVert/CNT [9]),
    .I1(\cntVert/CNT [7]),
    .I2(\cntVert/CNT [8]),
    .I3(\cntVert/CNT [6]),
    .O(\cntVert/CNT_or00004_108 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \cntVert/CNT_or000010  (
    .I0(\cntVert/CNT [3]),
    .I1(\cntVert/CNT [1]),
    .I2(\cntVert/CNT [2]),
    .I3(\cntVert/CNT [4]),
    .O(\cntVert/CNT_or000010_106 )
  );
  LUT4 #(
    .INIT ( 16'hFAEA ))
  \cntHoriz/CNT_or000024  (
    .I0(RST_IN_IBUF_27),
    .I1(\cntHoriz/CNT [8]),
    .I2(\cntHoriz/CNT_or000014_70 ),
    .I3(\cntHoriz/CNT_or00007 ),
    .O(\cntHoriz/CNT_or0000 )
  );
  IBUFG   CLKIN_IN_IBUFG (
    .I(CLKIN_IN),
    .O(CLKIN_IN_IBUFG_5)
  );
  IBUF   RST_IN_IBUF (
    .I(RST_IN),
    .O(RST_IN_IBUF_27)
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
    .O(Green_2_OBUF_11)
  );
  IBUF   PIX_DATA_4_IBUF (
    .I(PIX_DATA[4]),
    .O(Green_1_OBUF_10)
  );
  IBUF   PIX_DATA_3_IBUF (
    .I(PIX_DATA[3]),
    .O(Green_0_OBUF_9)
  );
  IBUF   PIX_DATA_2_IBUF (
    .I(PIX_DATA[2]),
    .O(Red_2_OBUF_33)
  );
  IBUF   PIX_DATA_1_IBUF (
    .I(PIX_DATA[1]),
    .O(Red_1_OBUF_32)
  );
  IBUF   PIX_DATA_0_IBUF (
    .I(PIX_DATA[0]),
    .O(Red_0_OBUF_31)
  );
  OBUF   HS_OBUF (
    .I(HS_OBUF_13),
    .O(HS)
  );
  OBUF   VS_OBUF (
    .I(VS_OBUF_57),
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
    .I(Green_2_OBUF_11),
    .O(Green[2])
  );
  OBUF   Green_1_OBUF (
    .I(Green_1_OBUF_10),
    .O(Green[1])
  );
  OBUF   Green_0_OBUF (
    .I(Green_0_OBUF_9),
    .O(Green[0])
  );
  OBUF   Red_2_OBUF (
    .I(Red_2_OBUF_33),
    .O(Red[2])
  );
  OBUF   Red_1_OBUF (
    .I(Red_1_OBUF_32),
    .O(Red[1])
  );
  OBUF   Red_0_OBUF (
    .I(Red_0_OBUF_31),
    .O(Red[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cntHoriz/Mcount_CNT_cy<1>_rt  (
    .I0(\cntHoriz/CNT [1]),
    .O(\cntHoriz/Mcount_CNT_cy<1>_rt_75 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cntHoriz/Mcount_CNT_cy<2>_rt  (
    .I0(\cntHoriz/CNT [2]),
    .O(\cntHoriz/Mcount_CNT_cy<2>_rt_77 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cntHoriz/Mcount_CNT_cy<3>_rt  (
    .I0(\cntHoriz/CNT [3]),
    .O(\cntHoriz/Mcount_CNT_cy<3>_rt_79 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cntHoriz/Mcount_CNT_cy<4>_rt  (
    .I0(\cntHoriz/CNT [4]),
    .O(\cntHoriz/Mcount_CNT_cy<4>_rt_81 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cntHoriz/Mcount_CNT_cy<5>_rt  (
    .I0(\cntHoriz/CNT [5]),
    .O(\cntHoriz/Mcount_CNT_cy<5>_rt_83 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cntHoriz/Mcount_CNT_cy<6>_rt  (
    .I0(\cntHoriz/CNT [6]),
    .O(\cntHoriz/Mcount_CNT_cy<6>_rt_85 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cntHoriz/Mcount_CNT_cy<7>_rt  (
    .I0(\cntHoriz/CNT [7]),
    .O(\cntHoriz/Mcount_CNT_cy<7>_rt_87 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cntHoriz/Mcount_CNT_cy<8>_rt  (
    .I0(\cntHoriz/CNT [8]),
    .O(\cntHoriz/Mcount_CNT_cy<8>_rt_89 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cntHoriz/Mcount_CNT_cy<9>_rt  (
    .I0(\cntHoriz/CNT [9]),
    .O(\cntHoriz/Mcount_CNT_cy<9>_rt_91 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cntVert/Mcount_CNT_cy<1>_rt  (
    .I0(\cntVert/CNT [1]),
    .O(\cntVert/Mcount_CNT_cy<1>_rt_111 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cntVert/Mcount_CNT_cy<2>_rt  (
    .I0(\cntVert/CNT [2]),
    .O(\cntVert/Mcount_CNT_cy<2>_rt_113 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cntVert/Mcount_CNT_cy<3>_rt  (
    .I0(\cntVert/CNT [3]),
    .O(\cntVert/Mcount_CNT_cy<3>_rt_115 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cntVert/Mcount_CNT_cy<4>_rt  (
    .I0(\cntVert/CNT [4]),
    .O(\cntVert/Mcount_CNT_cy<4>_rt_117 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cntVert/Mcount_CNT_cy<5>_rt  (
    .I0(\cntVert/CNT [5]),
    .O(\cntVert/Mcount_CNT_cy<5>_rt_119 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cntVert/Mcount_CNT_cy<6>_rt  (
    .I0(\cntVert/CNT [6]),
    .O(\cntVert/Mcount_CNT_cy<6>_rt_121 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cntVert/Mcount_CNT_cy<7>_rt  (
    .I0(\cntVert/CNT [7]),
    .O(\cntVert/Mcount_CNT_cy<7>_rt_123 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cntVert/Mcount_CNT_cy<8>_rt  (
    .I0(\cntVert/CNT [8]),
    .O(\cntVert/Mcount_CNT_cy<8>_rt_125 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cntVert/Mcount_CNT_cy<9>_rt  (
    .I0(\cntVert/CNT [9]),
    .O(\cntVert/Mcount_CNT_cy<9>_rt_127 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cntHoriz/Mcount_CNT_xor<10>_rt  (
    .I0(\cntHoriz/CNT [10]),
    .O(\cntHoriz/Mcount_CNT_xor<10>_rt_93 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \cntVert/Mcount_CNT_xor<10>_rt  (
    .I0(\cntVert/CNT [10]),
    .O(\cntVert/Mcount_CNT_xor<10>_rt_129 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \syncDetectVert/out130_SW0  (
    .I0(\cntVert/CNT [3]),
    .I1(\cntVert/CNT [4]),
    .I2(\cntVert/CNT [5]),
    .O(N5)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \syncDetectVert/out130  (
    .I0(\cntVert/CNT [0]),
    .I1(\cntVert/CNT [1]),
    .I2(\cntVert/CNT [2]),
    .I3(N5),
    .O(\syncDetectVert/out130_143 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \zeroDetectVert/out1  (
    .I0(\syncDetectVert/out130_143 ),
    .I1(\syncDetectVert/out112_142 ),
    .I2(\cntVert/CNT [10]),
    .O(latch_set_v)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \syncDetectVert/out2  (
    .I0(\cntVert/CNT [10]),
    .I1(\syncDetectVert/out112_142 ),
    .I2(\syncDetectVert/out130_143 ),
    .O(latch_reset_v)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \zeroDetectHoriz/out1  (
    .I0(\cntHoriz/CNT [8]),
    .I1(\cntHoriz/CNT [10]),
    .I2(\syncDetectHoriz/out112_139 ),
    .I3(\syncDetectHoriz/out130 ),
    .O(latch_set_h)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \syncDetectHoriz/out2  (
    .I0(\syncDetectHoriz/out112_139 ),
    .I1(\syncDetectHoriz/out130 ),
    .I2(\cntHoriz/CNT [8]),
    .I3(\cntHoriz/CNT [10]),
    .O(latch_reset_h)
  );
  INV   \cntHoriz/Mcount_CNT_lut<0>_INV_0  (
    .I(\cntHoriz/CNT [0]),
    .O(\cntHoriz/Mcount_CNT_lut [0])
  );
  INV   \cntVert/Mcount_CNT_lut<0>_INV_0  (
    .I(\cntVert/CNT [0]),
    .O(\cntVert/Mcount_CNT_lut [0])
  );
  INV   VS1_INV_0 (
    .I(\latchVert/q_131 ),
    .O(VS_OBUF_57)
  );
  INV   HS1_INV_0 (
    .I(\latchHoriz/q_130 ),
    .O(HS_OBUF_13)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \syncDetectHoriz/out1301  (
    .I0(\cntHoriz/CNT [7]),
    .I1(\cntHoriz/CNT [0]),
    .I2(\cntHoriz/CNT [1]),
    .I3(\cntHoriz/CNT [2]),
    .O(\syncDetectHoriz/out1301_141 )
  );
  MUXF5   \syncDetectHoriz/out130_f5  (
    .I0(\syncDetectHoriz/out1301_141 ),
    .I1(N0),
    .S(\cntHoriz/CNT [9]),
    .O(\syncDetectHoriz/out130 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \cntVert/CNT_or0000321  (
    .I0(\cntVert/CNT [10]),
    .I1(\cntVert/CNT [5]),
    .I2(\cntVert/CNT_or000010_106 ),
    .I3(\cntVert/CNT_or00004_108 ),
    .O(\cntVert/CNT_or000032 )
  );
  MUXF5   \cntVert/CNT_or000032_f5  (
    .I0(\cntVert/CNT_or000032 ),
    .I1(N1),
    .S(RST_IN_IBUF_27),
    .O(\cntVert/CNT_or0000 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \cntHoriz/CNT_or000071  (
    .I0(\cntHoriz/CNT [6]),
    .I1(\cntHoriz/CNT [4]),
    .I2(\cntHoriz/CNT [3]),
    .I3(\cntHoriz/CNT [5]),
    .O(\cntHoriz/CNT_or000071_72 )
  );
  MUXF5   \cntHoriz/CNT_or00007_f5  (
    .I0(N0),
    .I1(\cntHoriz/CNT_or000071_72 ),
    .S(\cntHoriz/CNT [7]),
    .O(\cntHoriz/CNT_or00007 )
  );
  LUT2_L #(
    .INIT ( 4'h8 ))
  \cntHoriz/CNT_or000014  (
    .I0(\cntHoriz/CNT [9]),
    .I1(\cntHoriz/CNT [10]),
    .LO(\cntHoriz/CNT_or000014_70 )
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

