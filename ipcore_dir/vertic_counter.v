////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: vertic_counter.v
// /___/   /\     Timestamp: Wed Jun 29 15:31:20 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/student/VGA_DRIVER/ipcore_dir/tmp/_cg/vertic_counter.ngc /home/student/VGA_DRIVER/ipcore_dir/tmp/_cg/vertic_counter.v 
// Device	: 3s500efg320-5
// Input file	: /home/student/VGA_DRIVER/ipcore_dir/tmp/_cg/vertic_counter.ngc
// Output file	: /home/student/VGA_DRIVER/ipcore_dir/tmp/_cg/vertic_counter.v
// # of Modules	: 1
// Design Name	: vertic_counter
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

module vertic_counter (
  clk, ce, q
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  output [9 : 0] q;
  
  // synthesis translate_off
  
  wire \blk00000001/sig00000035 ;
  wire \blk00000001/sig00000034 ;
  wire \blk00000001/sig00000033 ;
  wire \blk00000001/sig00000032 ;
  wire \blk00000001/sig00000031 ;
  wire \blk00000001/sig00000030 ;
  wire \blk00000001/sig0000002f ;
  wire \blk00000001/sig0000002e ;
  wire \blk00000001/sig0000002d ;
  wire \blk00000001/sig0000002c ;
  wire \blk00000001/sig0000002b ;
  wire \blk00000001/sig0000002a ;
  wire \blk00000001/sig00000029 ;
  wire \blk00000001/sig00000028 ;
  wire \blk00000001/sig00000027 ;
  wire \blk00000001/sig00000026 ;
  wire \blk00000001/sig00000025 ;
  wire \blk00000001/sig00000024 ;
  wire \blk00000001/sig00000023 ;
  wire \blk00000001/sig00000022 ;
  wire \blk00000001/sig00000021 ;
  wire \blk00000001/sig00000020 ;
  wire \blk00000001/sig0000001f ;
  wire \blk00000001/sig0000001e ;
  wire \blk00000001/sig0000001d ;
  wire \blk00000001/sig0000001c ;
  wire \blk00000001/sig0000001b ;
  wire \blk00000001/sig0000001a ;
  wire \blk00000001/sig00000010 ;
  wire \blk00000001/sig0000000e ;
  wire \blk00000001/sig0000000d ;
  wire \blk00000001/sig0000000c ;
  wire \blk00000001/sig0000000b ;
  wire \blk00000001/sig0000000a ;
  wire \blk00000001/sig00000009 ;
  wire \blk00000001/sig00000008 ;
  wire \blk00000001/sig00000007 ;
  wire \blk00000001/sig00000006 ;
  wire \blk00000001/sig00000005 ;
  wire \blk00000001/sig00000004 ;
  wire \blk00000001/sig00000003 ;
  wire [9 : 0] NlwRenamedSig_OI_q;
  assign
    q[9] = NlwRenamedSig_OI_q[9],
    q[8] = NlwRenamedSig_OI_q[8],
    q[7] = NlwRenamedSig_OI_q[7],
    q[6] = NlwRenamedSig_OI_q[6],
    q[5] = NlwRenamedSig_OI_q[5],
    q[4] = NlwRenamedSig_OI_q[4],
    q[3] = NlwRenamedSig_OI_q[3],
    q[2] = NlwRenamedSig_OI_q[2],
    q[1] = NlwRenamedSig_OI_q[1],
    q[0] = NlwRenamedSig_OI_q[0];
  INV   \blk00000001/blk00000034  (
    .I(NlwRenamedSig_OI_q[8]),
    .O(\blk00000001/sig00000030 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000001/blk00000033  (
    .I0(NlwRenamedSig_OI_q[0]),
    .I1(\blk00000001/sig00000031 ),
    .O(\blk00000001/sig0000000e )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk00000032  (
    .I0(NlwRenamedSig_OI_q[1]),
    .I1(\blk00000001/sig00000031 ),
    .O(\blk00000001/sig0000001b )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk00000031  (
    .I0(NlwRenamedSig_OI_q[2]),
    .I1(\blk00000001/sig00000031 ),
    .O(\blk00000001/sig0000001c )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk00000030  (
    .I0(NlwRenamedSig_OI_q[3]),
    .I1(\blk00000001/sig00000031 ),
    .O(\blk00000001/sig0000001d )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk0000002f  (
    .I0(NlwRenamedSig_OI_q[4]),
    .I1(\blk00000001/sig00000031 ),
    .O(\blk00000001/sig0000001e )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk0000002e  (
    .I0(NlwRenamedSig_OI_q[5]),
    .I1(\blk00000001/sig00000031 ),
    .O(\blk00000001/sig0000001f )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk0000002d  (
    .I0(NlwRenamedSig_OI_q[6]),
    .I1(\blk00000001/sig00000031 ),
    .O(\blk00000001/sig00000020 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk0000002c  (
    .I0(NlwRenamedSig_OI_q[7]),
    .I1(\blk00000001/sig00000031 ),
    .O(\blk00000001/sig00000021 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk0000002b  (
    .I0(NlwRenamedSig_OI_q[8]),
    .I1(\blk00000001/sig00000031 ),
    .O(\blk00000001/sig00000022 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk0000002a  (
    .I0(\blk00000001/sig00000031 ),
    .I1(NlwRenamedSig_OI_q[9]),
    .O(\blk00000001/sig0000001a )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \blk00000001/blk00000029  (
    .I0(\blk00000001/sig00000035 ),
    .I1(\blk00000001/sig00000034 ),
    .I2(\blk00000001/sig00000033 ),
    .I3(\blk00000001/sig00000032 ),
    .O(\blk00000001/sig0000002d )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \blk00000001/blk00000028  (
    .I0(NlwRenamedSig_OI_q[1]),
    .I1(NlwRenamedSig_OI_q[0]),
    .I2(NlwRenamedSig_OI_q[3]),
    .I3(NlwRenamedSig_OI_q[2]),
    .O(\blk00000001/sig0000002e )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \blk00000001/blk00000027  (
    .I0(NlwRenamedSig_OI_q[5]),
    .I1(NlwRenamedSig_OI_q[4]),
    .I2(NlwRenamedSig_OI_q[7]),
    .I3(NlwRenamedSig_OI_q[6]),
    .O(\blk00000001/sig0000002f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000026  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000024 ),
    .Q(NlwRenamedSig_OI_q[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000025  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000025 ),
    .Q(NlwRenamedSig_OI_q[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000024  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000026 ),
    .Q(NlwRenamedSig_OI_q[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000023  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000027 ),
    .Q(NlwRenamedSig_OI_q[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000022  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000028 ),
    .Q(NlwRenamedSig_OI_q[4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000021  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000029 ),
    .Q(NlwRenamedSig_OI_q[5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000020  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000002a ),
    .Q(NlwRenamedSig_OI_q[6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000002b ),
    .Q(NlwRenamedSig_OI_q[7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000002c ),
    .Q(NlwRenamedSig_OI_q[8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000023 ),
    .Q(NlwRenamedSig_OI_q[9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000004 ),
    .Q(\blk00000001/sig00000010 )
  );
  XORCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig0000000d ),
    .LI(\blk00000001/sig0000001a ),
    .O(\blk00000001/sig00000023 )
  );
  MUXCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig0000000d ),
    .DI(\blk00000001/sig00000003 ),
    .S(\blk00000001/sig0000001a ),
    .O(\blk00000001/sig00000004 )
  );
  XORCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig0000000c ),
    .LI(\blk00000001/sig00000022 ),
    .O(\blk00000001/sig0000002c )
  );
  MUXCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig0000000c ),
    .DI(\blk00000001/sig00000003 ),
    .S(\blk00000001/sig00000022 ),
    .O(\blk00000001/sig0000000d )
  );
  XORCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig0000000b ),
    .LI(\blk00000001/sig00000021 ),
    .O(\blk00000001/sig0000002b )
  );
  MUXCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig0000000b ),
    .DI(\blk00000001/sig00000003 ),
    .S(\blk00000001/sig00000021 ),
    .O(\blk00000001/sig0000000c )
  );
  XORCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig0000000a ),
    .LI(\blk00000001/sig00000020 ),
    .O(\blk00000001/sig0000002a )
  );
  MUXCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig0000000a ),
    .DI(\blk00000001/sig00000003 ),
    .S(\blk00000001/sig00000020 ),
    .O(\blk00000001/sig0000000b )
  );
  XORCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig00000009 ),
    .LI(\blk00000001/sig0000001f ),
    .O(\blk00000001/sig00000029 )
  );
  MUXCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig00000009 ),
    .DI(\blk00000001/sig00000003 ),
    .S(\blk00000001/sig0000001f ),
    .O(\blk00000001/sig0000000a )
  );
  XORCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig00000008 ),
    .LI(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig00000028 )
  );
  MUXCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig00000008 ),
    .DI(\blk00000001/sig00000003 ),
    .S(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig00000009 )
  );
  XORCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig00000007 ),
    .LI(\blk00000001/sig0000001d ),
    .O(\blk00000001/sig00000027 )
  );
  MUXCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig00000007 ),
    .DI(\blk00000001/sig00000003 ),
    .S(\blk00000001/sig0000001d ),
    .O(\blk00000001/sig00000008 )
  );
  XORCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig00000006 ),
    .LI(\blk00000001/sig0000001c ),
    .O(\blk00000001/sig00000026 )
  );
  MUXCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig00000006 ),
    .DI(\blk00000001/sig00000003 ),
    .S(\blk00000001/sig0000001c ),
    .O(\blk00000001/sig00000007 )
  );
  XORCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig00000005 ),
    .LI(\blk00000001/sig0000001b ),
    .O(\blk00000001/sig00000025 )
  );
  MUXCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig00000005 ),
    .DI(\blk00000001/sig00000003 ),
    .S(\blk00000001/sig0000001b ),
    .O(\blk00000001/sig00000006 )
  );
  XORCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig00000003 ),
    .LI(\blk00000001/sig0000000e ),
    .O(\blk00000001/sig00000024 )
  );
  MUXCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig00000003 ),
    .DI(\blk00000001/sig00000031 ),
    .S(\blk00000001/sig0000000e ),
    .O(\blk00000001/sig00000005 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000007  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000002d ),
    .Q(\blk00000001/sig00000031 )
  );
  FDE #(
    .INIT ( 1'b1 ))
  \blk00000001/blk00000006  (
    .C(clk),
    .CE(ce),
    .D(NlwRenamedSig_OI_q[9]),
    .Q(\blk00000001/sig00000035 )
  );
  FDE #(
    .INIT ( 1'b1 ))
  \blk00000001/blk00000005  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000030 ),
    .Q(\blk00000001/sig00000034 )
  );
  FDE #(
    .INIT ( 1'b1 ))
  \blk00000001/blk00000004  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000002f ),
    .Q(\blk00000001/sig00000033 )
  );
  FDE #(
    .INIT ( 1'b1 ))
  \blk00000001/blk00000003  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000002e ),
    .Q(\blk00000001/sig00000032 )
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig00000003 )
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
