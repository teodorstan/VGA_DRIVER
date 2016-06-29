////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: COUNTER.v
// /___/   /\     Timestamp: Wed Jun 29 15:27:02 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/student/VGA_DRIVER/ipcore_dir/tmp/_cg/COUNTER.ngc /home/student/VGA_DRIVER/ipcore_dir/tmp/_cg/COUNTER.v 
// Device	: 3s500efg320-5
// Input file	: /home/student/VGA_DRIVER/ipcore_dir/tmp/_cg/COUNTER.ngc
// Output file	: /home/student/VGA_DRIVER/ipcore_dir/tmp/_cg/COUNTER.v
// # of Modules	: 1
// Design Name	: COUNTER
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

module COUNTER (
  clk, q
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  output [10 : 0] q;
  
  // synthesis translate_off
  
  wire \blk00000001/sig0000003e ;
  wire \blk00000001/sig0000003d ;
  wire \blk00000001/sig0000003c ;
  wire \blk00000001/sig0000003b ;
  wire \blk00000001/sig0000003a ;
  wire \blk00000001/sig00000039 ;
  wire \blk00000001/sig00000038 ;
  wire \blk00000001/sig00000037 ;
  wire \blk00000001/sig00000036 ;
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
  wire \blk00000001/sig00000022 ;
  wire \blk00000001/sig00000021 ;
  wire \blk00000001/sig00000020 ;
  wire \blk00000001/sig0000001f ;
  wire \blk00000001/sig0000001e ;
  wire \blk00000001/sig0000001d ;
  wire \blk00000001/sig0000001c ;
  wire \blk00000001/sig0000001b ;
  wire \blk00000001/sig0000001a ;
  wire \blk00000001/sig00000019 ;
  wire \blk00000001/sig00000018 ;
  wire \blk00000001/sig00000017 ;
  wire \blk00000001/sig00000016 ;
  wire \blk00000001/sig00000015 ;
  wire \blk00000001/sig00000014 ;
  wire \blk00000001/sig00000013 ;
  wire \blk00000001/sig00000012 ;
  wire \blk00000001/sig00000011 ;
  wire \blk00000001/sig00000010 ;
  wire \blk00000001/sig0000000f ;
  wire \blk00000001/sig0000000e ;
  wire \blk00000001/sig0000000d ;
  wire \blk00000001/sig0000000c ;
  wire \blk00000001/sig0000000b ;
  wire \blk00000001/sig00000004 ;
  wire \blk00000001/sig00000003 ;
  wire \blk00000001/sig00000002 ;
  wire [10 : 0] NlwRenamedSig_OI_q;
  assign
    q[10] = NlwRenamedSig_OI_q[10],
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
  LUT3_D #(
    .INIT ( 8'h80 ))
  \blk00000001/blk0000003d  (
    .I0(\blk00000001/sig00000022 ),
    .I1(\blk00000001/sig0000001a ),
    .I2(\blk00000001/sig0000001b ),
    .LO(\blk00000001/sig00000004 ),
    .O(\blk00000001/sig0000000c )
  );
  INV   \blk00000001/blk0000003c  (
    .I(NlwRenamedSig_OI_q[9]),
    .O(\blk00000001/sig0000003a )
  );
  LUT3 #(
    .INIT ( 8'h78 ))
  \blk00000001/blk0000003b  (
    .I0(\blk00000001/sig0000001f ),
    .I1(\blk00000001/sig00000037 ),
    .I2(\blk00000001/sig00000014 ),
    .O(\blk00000001/sig00000033 )
  );
  LUT4 #(
    .INIT ( 16'h8008 ))
  \blk00000001/blk0000003a  (
    .I0(\blk00000001/sig0000001a ),
    .I1(\blk00000001/sig0000001b ),
    .I2(NlwRenamedSig_OI_q[9]),
    .I3(\blk00000001/sig00000003 ),
    .O(\blk00000001/sig0000002e )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \blk00000001/blk00000039  (
    .I0(\blk00000001/sig00000022 ),
    .I1(NlwRenamedSig_OI_q[6]),
    .I2(NlwRenamedSig_OI_q[7]),
    .I3(NlwRenamedSig_OI_q[8]),
    .O(\blk00000001/sig00000003 )
  );
  LUT4 #(
    .INIT ( 16'h8008 ))
  \blk00000001/blk00000038  (
    .I0(\blk00000001/sig0000001a ),
    .I1(\blk00000001/sig0000001b ),
    .I2(NlwRenamedSig_OI_q[8]),
    .I3(\blk00000001/sig00000002 ),
    .O(\blk00000001/sig0000002d )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \blk00000001/blk00000037  (
    .I0(\blk00000001/sig00000022 ),
    .I1(NlwRenamedSig_OI_q[6]),
    .I2(NlwRenamedSig_OI_q[7]),
    .O(\blk00000001/sig00000002 )
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \blk00000001/blk00000036  (
    .I0(\blk00000001/sig00000020 ),
    .I1(\blk00000001/sig0000001f ),
    .I2(\blk00000001/sig00000037 ),
    .I3(\blk00000001/sig00000014 ),
    .O(\blk00000001/sig00000034 )
  );
  LUT4 #(
    .INIT ( 16'h4888 ))
  \blk00000001/blk00000035  (
    .I0(\blk00000001/sig0000001e ),
    .I1(\blk00000001/sig00000037 ),
    .I2(\blk00000001/sig0000001d ),
    .I3(\blk00000001/sig0000001c ),
    .O(\blk00000001/sig00000032 )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \blk00000001/blk00000034  (
    .I0(\blk00000001/sig00000037 ),
    .I1(\blk00000001/sig0000001c ),
    .I2(\blk00000001/sig0000001d ),
    .O(\blk00000001/sig00000031 )
  );
  LUT4 #(
    .INIT ( 16'h4080 ))
  \blk00000001/blk00000033  (
    .I0(\blk00000001/sig00000022 ),
    .I1(\blk00000001/sig0000001b ),
    .I2(\blk00000001/sig0000001a ),
    .I3(NlwRenamedSig_OI_q[6]),
    .O(\blk00000001/sig0000002b )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \blk00000001/blk00000032  (
    .I0(NlwRenamedSig_OI_q[8]),
    .I1(NlwRenamedSig_OI_q[7]),
    .I2(NlwRenamedSig_OI_q[6]),
    .I3(\blk00000001/sig00000004 ),
    .O(\blk00000001/sig0000000d )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \blk00000001/blk00000031  (
    .I0(NlwRenamedSig_OI_q[9]),
    .I1(\blk00000001/sig0000001b ),
    .I2(\blk00000001/sig0000001a ),
    .O(\blk00000001/sig00000011 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \blk00000001/blk00000030  (
    .I0(NlwRenamedSig_OI_q[10]),
    .I1(\blk00000001/sig0000001b ),
    .I2(\blk00000001/sig0000001a ),
    .O(\blk00000001/sig00000012 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \blk00000001/blk0000002f  (
    .I0(\blk00000001/sig00000028 ),
    .I1(\blk00000001/sig0000001b ),
    .I2(\blk00000001/sig0000001a ),
    .O(\blk00000001/sig00000013 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \blk00000001/blk0000002e  (
    .I0(\blk00000001/sig0000001e ),
    .I1(\blk00000001/sig0000001d ),
    .I2(\blk00000001/sig0000001c ),
    .I3(\blk00000001/sig00000037 ),
    .O(\blk00000001/sig00000014 )
  );
  LUT4 #(
    .INIT ( 16'h7888 ))
  \blk00000001/blk0000002d  (
    .I0(NlwRenamedSig_OI_q[10]),
    .I1(\blk00000001/sig0000002a ),
    .I2(\blk00000001/sig00000011 ),
    .I3(\blk00000001/sig0000000d ),
    .O(\blk00000001/sig0000002f )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \blk00000001/blk0000002c  (
    .I0(NlwRenamedSig_OI_q[6]),
    .I1(\blk00000001/sig0000001b ),
    .I2(\blk00000001/sig0000001a ),
    .O(\blk00000001/sig0000000f )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \blk00000001/blk0000002b  (
    .I0(NlwRenamedSig_OI_q[7]),
    .I1(\blk00000001/sig0000001b ),
    .I2(\blk00000001/sig0000001a ),
    .O(\blk00000001/sig00000010 )
  );
  FDR #(
    .INIT ( 1'b1 ))
  \blk00000001/blk0000002a  (
    .C(clk),
    .D(\blk00000001/sig0000003a ),
    .R(NlwRenamedSig_OI_q[8]),
    .Q(\blk00000001/sig0000003d )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \blk00000001/blk00000029  (
    .I0(NlwRenamedSig_OI_q[4]),
    .I1(NlwRenamedSig_OI_q[7]),
    .I2(NlwRenamedSig_OI_q[6]),
    .O(\blk00000001/sig00000039 )
  );
  FDR #(
    .INIT ( 1'b1 ))
  \blk00000001/blk00000028  (
    .C(clk),
    .D(\blk00000001/sig00000039 ),
    .R(NlwRenamedSig_OI_q[5]),
    .Q(\blk00000001/sig0000003c )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \blk00000001/blk00000027  (
    .I0(NlwRenamedSig_OI_q[0]),
    .I1(NlwRenamedSig_OI_q[3]),
    .I2(NlwRenamedSig_OI_q[2]),
    .O(\blk00000001/sig00000038 )
  );
  FDR #(
    .INIT ( 1'b1 ))
  \blk00000001/blk00000026  (
    .C(clk),
    .D(\blk00000001/sig00000038 ),
    .R(NlwRenamedSig_OI_q[1]),
    .Q(\blk00000001/sig0000003b )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \blk00000001/blk00000025  (
    .I0(\blk00000001/sig00000012 ),
    .I1(\blk00000001/sig00000013 ),
    .I2(\blk00000001/sig00000011 ),
    .I3(\blk00000001/sig0000000d ),
    .O(\blk00000001/sig00000030 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \blk00000001/blk00000024  (
    .I0(\blk00000001/sig00000013 ),
    .I1(\blk00000001/sig00000012 ),
    .I2(\blk00000001/sig00000011 ),
    .I3(\blk00000001/sig0000000d ),
    .O(\blk00000001/sig0000000e )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk00000023  (
    .I0(\blk00000001/sig0000001b ),
    .I1(\blk00000001/sig0000001a ),
    .O(\blk00000001/sig0000002a )
  );
  LUT4 #(
    .INIT ( 16'h78F0 ))
  \blk00000001/blk00000022  (
    .I0(\blk00000001/sig00000018 ),
    .I1(\blk00000001/sig00000017 ),
    .I2(\blk00000001/sig00000019 ),
    .I3(\blk00000001/sig00000014 ),
    .O(\blk00000001/sig00000035 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \blk00000001/blk00000021  (
    .I0(\blk00000001/sig00000019 ),
    .I1(\blk00000001/sig00000018 ),
    .I2(\blk00000001/sig00000017 ),
    .I3(\blk00000001/sig00000014 ),
    .O(\blk00000001/sig00000015 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \blk00000001/blk00000020  (
    .I0(\blk00000001/sig00000010 ),
    .I1(\blk00000001/sig0000000c ),
    .I2(\blk00000001/sig0000000f ),
    .O(\blk00000001/sig0000002c )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000001/blk0000001f  (
    .I0(\blk00000001/sig00000037 ),
    .I1(\blk00000001/sig0000001c ),
    .O(\blk00000001/sig00000016 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk0000001e  (
    .I0(\blk00000001/sig00000037 ),
    .I1(\blk00000001/sig0000001f ),
    .O(\blk00000001/sig00000017 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk0000001d  (
    .I0(\blk00000001/sig00000037 ),
    .I1(\blk00000001/sig00000020 ),
    .O(\blk00000001/sig00000018 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk0000001c  (
    .I0(\blk00000001/sig00000021 ),
    .I1(\blk00000001/sig00000037 ),
    .O(\blk00000001/sig00000019 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \blk00000001/blk0000001b  (
    .I0(\blk00000001/sig0000003e ),
    .I1(\blk00000001/sig0000003d ),
    .I2(\blk00000001/sig0000003c ),
    .I3(\blk00000001/sig0000003b ),
    .O(\blk00000001/sig00000036 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001a  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig0000001c ),
    .Q(NlwRenamedSig_OI_q[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000019  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig0000001d ),
    .Q(NlwRenamedSig_OI_q[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000018  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig0000001e ),
    .Q(NlwRenamedSig_OI_q[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000017  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig0000001f ),
    .Q(NlwRenamedSig_OI_q[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000016  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig00000020 ),
    .Q(NlwRenamedSig_OI_q[4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000015  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig00000021 ),
    .Q(NlwRenamedSig_OI_q[5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000014  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig00000016 ),
    .Q(\blk00000001/sig0000001c )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000013  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig00000031 ),
    .Q(\blk00000001/sig0000001d )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000012  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig00000032 ),
    .Q(\blk00000001/sig0000001e )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000011  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig00000033 ),
    .Q(\blk00000001/sig0000001f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000010  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig00000034 ),
    .Q(\blk00000001/sig00000020 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000f  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig00000035 ),
    .Q(\blk00000001/sig00000021 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000e  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig00000015 ),
    .Q(\blk00000001/sig00000022 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000d  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig0000002b ),
    .Q(NlwRenamedSig_OI_q[6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000c  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig0000002c ),
    .Q(NlwRenamedSig_OI_q[7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000b  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig0000002d ),
    .Q(NlwRenamedSig_OI_q[8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000a  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig0000002e ),
    .Q(NlwRenamedSig_OI_q[9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000009  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig0000002f ),
    .Q(NlwRenamedSig_OI_q[10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000008  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig00000030 ),
    .Q(\blk00000001/sig00000028 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000007  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig0000000e ),
    .Q(\blk00000001/sig00000029 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000006  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig00000037 ),
    .Q(\blk00000001/sig0000001a )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000005  (
    .C(clk),
    .CE(\blk00000001/sig0000000b ),
    .D(\blk00000001/sig0000000b ),
    .Q(\blk00000001/sig0000001b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000004  (
    .C(clk),
    .D(\blk00000001/sig00000036 ),
    .Q(\blk00000001/sig00000037 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \blk00000001/blk00000003  (
    .C(clk),
    .D(NlwRenamedSig_OI_q[10]),
    .Q(\blk00000001/sig0000003e )
  );
  VCC   \blk00000001/blk00000002  (
    .P(\blk00000001/sig0000000b )
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
