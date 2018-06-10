////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: GET_INST_synthesis.v
// /___/   /\     Timestamp: Sun Jun 10 12:53:53 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim GET_INST.ngc GET_INST_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: GET_INST.ngc
// Output file	: D:\workplace\verilog\E8-R_CPU\netgen\synthesis\GET_INST_synthesis.v
// # of Modules	: 1
// Design Name	: GET_INST
// Xilinx        : D:\Xilinx\14.7\ISE_DS\ISE\
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

module GET_INST (
  clka, rsta, douta
)/* synthesis syn_black_box syn_noprune=1 */;
  input clka;
  input rsta;
  output [31 : 0] douta;
  
  // synthesis translate_off
  
  wire clka_BUFGP_0;
  wire rsta_IBUF_1;
  wire clkn;
  wire douta_31_OBUF_3;
  wire douta_30_OBUF_4;
  wire douta_29_OBUF_5;
  wire douta_28_OBUF_6;
  wire douta_27_OBUF_7;
  wire douta_26_OBUF_8;
  wire douta_25_OBUF_9;
  wire douta_24_OBUF_10;
  wire douta_23_OBUF_11;
  wire douta_22_OBUF_12;
  wire douta_21_OBUF_13;
  wire douta_20_OBUF_14;
  wire douta_19_OBUF_15;
  wire douta_18_OBUF_16;
  wire douta_17_OBUF_17;
  wire douta_16_OBUF_18;
  wire douta_15_OBUF_19;
  wire douta_14_OBUF_20;
  wire douta_13_OBUF_21;
  wire douta_12_OBUF_22;
  wire douta_11_OBUF_23;
  wire douta_10_OBUF_24;
  wire douta_9_OBUF_25;
  wire douta_8_OBUF_26;
  wire douta_7_OBUF_27;
  wire douta_6_OBUF_28;
  wire douta_5_OBUF_29;
  wire douta_4_OBUF_30;
  wire douta_3_OBUF_31;
  wire douta_2_OBUF_32;
  wire douta_1_OBUF_33;
  wire douta_0_OBUF_34;
  wire N0;
  wire N1;
  wire \P_C/Maccum_douta_cy<3>_rt_89 ;
  wire \P_C/Maccum_douta_cy<4>_rt_90 ;
  wire \P_C/Maccum_douta_cy<5>_rt_91 ;
  wire \P_C/Maccum_douta_cy<6>_rt_92 ;
  wire \NLW_Inst_Mem_dina<31>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<30>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<29>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<28>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<27>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<26>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<25>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<24>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<23>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<22>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<21>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<20>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<19>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<18>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<17>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<16>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<15>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<14>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<13>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<12>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<11>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<10>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<9>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<8>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<7>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<6>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<5>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<4>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<3>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<2>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<1>_UNCONNECTED ;
  wire \NLW_Inst_Mem_dina<0>_UNCONNECTED ;
  wire [7 : 2] \P_C/douta ;
  wire [7 : 2] Result;
  wire [2 : 2] \P_C/Maccum_douta_lut ;
  wire [6 : 2] \P_C/Maccum_douta_cy ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(N1)
  );
  FDC #(
    .INIT ( 1'b0 ))
  \P_C/douta_2  (
    .C(clkn),
    .CLR(rsta_IBUF_1),
    .D(Result[2]),
    .Q(\P_C/douta [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \P_C/douta_3  (
    .C(clkn),
    .CLR(rsta_IBUF_1),
    .D(Result[3]),
    .Q(\P_C/douta [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \P_C/douta_4  (
    .C(clkn),
    .CLR(rsta_IBUF_1),
    .D(Result[4]),
    .Q(\P_C/douta [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \P_C/douta_5  (
    .C(clkn),
    .CLR(rsta_IBUF_1),
    .D(Result[5]),
    .Q(\P_C/douta [5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \P_C/douta_6  (
    .C(clkn),
    .CLR(rsta_IBUF_1),
    .D(Result[6]),
    .Q(\P_C/douta [6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \P_C/douta_7  (
    .C(clkn),
    .CLR(rsta_IBUF_1),
    .D(Result[7]),
    .Q(\P_C/douta [7])
  );
  MUXCY   \P_C/Maccum_douta_cy<2>  (
    .CI(N1),
    .DI(N0),
    .S(\P_C/Maccum_douta_lut [2]),
    .O(\P_C/Maccum_douta_cy [2])
  );
  XORCY   \P_C/Maccum_douta_xor<2>  (
    .CI(N1),
    .LI(\P_C/Maccum_douta_lut [2]),
    .O(Result[2])
  );
  MUXCY   \P_C/Maccum_douta_cy<3>  (
    .CI(\P_C/Maccum_douta_cy [2]),
    .DI(N1),
    .S(\P_C/Maccum_douta_cy<3>_rt_89 ),
    .O(\P_C/Maccum_douta_cy [3])
  );
  XORCY   \P_C/Maccum_douta_xor<3>  (
    .CI(\P_C/Maccum_douta_cy [2]),
    .LI(\P_C/Maccum_douta_cy<3>_rt_89 ),
    .O(Result[3])
  );
  MUXCY   \P_C/Maccum_douta_cy<4>  (
    .CI(\P_C/Maccum_douta_cy [3]),
    .DI(N1),
    .S(\P_C/Maccum_douta_cy<4>_rt_90 ),
    .O(\P_C/Maccum_douta_cy [4])
  );
  XORCY   \P_C/Maccum_douta_xor<4>  (
    .CI(\P_C/Maccum_douta_cy [3]),
    .LI(\P_C/Maccum_douta_cy<4>_rt_90 ),
    .O(Result[4])
  );
  MUXCY   \P_C/Maccum_douta_cy<5>  (
    .CI(\P_C/Maccum_douta_cy [4]),
    .DI(N1),
    .S(\P_C/Maccum_douta_cy<5>_rt_91 ),
    .O(\P_C/Maccum_douta_cy [5])
  );
  XORCY   \P_C/Maccum_douta_xor<5>  (
    .CI(\P_C/Maccum_douta_cy [4]),
    .LI(\P_C/Maccum_douta_cy<5>_rt_91 ),
    .O(Result[5])
  );
  MUXCY   \P_C/Maccum_douta_cy<6>  (
    .CI(\P_C/Maccum_douta_cy [5]),
    .DI(N1),
    .S(\P_C/Maccum_douta_cy<6>_rt_92 ),
    .O(\P_C/Maccum_douta_cy [6])
  );
  XORCY   \P_C/Maccum_douta_xor<6>  (
    .CI(\P_C/Maccum_douta_cy [5]),
    .LI(\P_C/Maccum_douta_cy<6>_rt_92 ),
    .O(Result[6])
  );
  XORCY   \P_C/Maccum_douta_xor<7>  (
    .CI(\P_C/Maccum_douta_cy [6]),
    .LI(\P_C/douta [7]),
    .O(Result[7])
  );
  IBUF   rsta_IBUF (
    .I(rsta),
    .O(rsta_IBUF_1)
  );
  OBUF   douta_31_OBUF (
    .I(douta_31_OBUF_3),
    .O(douta[31])
  );
  OBUF   douta_30_OBUF (
    .I(douta_30_OBUF_4),
    .O(douta[30])
  );
  OBUF   douta_29_OBUF (
    .I(douta_29_OBUF_5),
    .O(douta[29])
  );
  OBUF   douta_28_OBUF (
    .I(douta_28_OBUF_6),
    .O(douta[28])
  );
  OBUF   douta_27_OBUF (
    .I(douta_27_OBUF_7),
    .O(douta[27])
  );
  OBUF   douta_26_OBUF (
    .I(douta_26_OBUF_8),
    .O(douta[26])
  );
  OBUF   douta_25_OBUF (
    .I(douta_25_OBUF_9),
    .O(douta[25])
  );
  OBUF   douta_24_OBUF (
    .I(douta_24_OBUF_10),
    .O(douta[24])
  );
  OBUF   douta_23_OBUF (
    .I(douta_23_OBUF_11),
    .O(douta[23])
  );
  OBUF   douta_22_OBUF (
    .I(douta_22_OBUF_12),
    .O(douta[22])
  );
  OBUF   douta_21_OBUF (
    .I(douta_21_OBUF_13),
    .O(douta[21])
  );
  OBUF   douta_20_OBUF (
    .I(douta_20_OBUF_14),
    .O(douta[20])
  );
  OBUF   douta_19_OBUF (
    .I(douta_19_OBUF_15),
    .O(douta[19])
  );
  OBUF   douta_18_OBUF (
    .I(douta_18_OBUF_16),
    .O(douta[18])
  );
  OBUF   douta_17_OBUF (
    .I(douta_17_OBUF_17),
    .O(douta[17])
  );
  OBUF   douta_16_OBUF (
    .I(douta_16_OBUF_18),
    .O(douta[16])
  );
  OBUF   douta_15_OBUF (
    .I(douta_15_OBUF_19),
    .O(douta[15])
  );
  OBUF   douta_14_OBUF (
    .I(douta_14_OBUF_20),
    .O(douta[14])
  );
  OBUF   douta_13_OBUF (
    .I(douta_13_OBUF_21),
    .O(douta[13])
  );
  OBUF   douta_12_OBUF (
    .I(douta_12_OBUF_22),
    .O(douta[12])
  );
  OBUF   douta_11_OBUF (
    .I(douta_11_OBUF_23),
    .O(douta[11])
  );
  OBUF   douta_10_OBUF (
    .I(douta_10_OBUF_24),
    .O(douta[10])
  );
  OBUF   douta_9_OBUF (
    .I(douta_9_OBUF_25),
    .O(douta[9])
  );
  OBUF   douta_8_OBUF (
    .I(douta_8_OBUF_26),
    .O(douta[8])
  );
  OBUF   douta_7_OBUF (
    .I(douta_7_OBUF_27),
    .O(douta[7])
  );
  OBUF   douta_6_OBUF (
    .I(douta_6_OBUF_28),
    .O(douta[6])
  );
  OBUF   douta_5_OBUF (
    .I(douta_5_OBUF_29),
    .O(douta[5])
  );
  OBUF   douta_4_OBUF (
    .I(douta_4_OBUF_30),
    .O(douta[4])
  );
  OBUF   douta_3_OBUF (
    .I(douta_3_OBUF_31),
    .O(douta[3])
  );
  OBUF   douta_2_OBUF (
    .I(douta_2_OBUF_32),
    .O(douta[2])
  );
  OBUF   douta_1_OBUF (
    .I(douta_1_OBUF_33),
    .O(douta[1])
  );
  OBUF   douta_0_OBUF (
    .I(douta_0_OBUF_34),
    .O(douta[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \P_C/Maccum_douta_cy<3>_rt  (
    .I0(\P_C/douta [3]),
    .O(\P_C/Maccum_douta_cy<3>_rt_89 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \P_C/Maccum_douta_cy<4>_rt  (
    .I0(\P_C/douta [4]),
    .O(\P_C/Maccum_douta_cy<4>_rt_90 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \P_C/Maccum_douta_cy<5>_rt  (
    .I0(\P_C/douta [5]),
    .O(\P_C/Maccum_douta_cy<5>_rt_91 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \P_C/Maccum_douta_cy<6>_rt  (
    .I0(\P_C/douta [6]),
    .O(\P_C/Maccum_douta_cy<6>_rt_92 )
  );
  BUFGP   clka_BUFGP (
    .I(clka),
    .O(clka_BUFGP_0)
  );
  INV   \P_C/Maccum_douta_lut<2>_INV_0  (
    .I(\P_C/douta [2]),
    .O(\P_C/Maccum_douta_lut [2])
  );
  INV   clkn1_INV_0 (
    .I(clka_BUFGP_0),
    .O(clkn)
  );
  RAM_B   Inst_Mem (
    .clka(clka_BUFGP_0),
    .wea({N1}),
    .addra({\P_C/douta [7], \P_C/douta [6], \P_C/douta [5], \P_C/douta [4], \P_C/douta [3], \P_C/douta [2]}),
    .dina({\NLW_Inst_Mem_dina<31>_UNCONNECTED , \NLW_Inst_Mem_dina<30>_UNCONNECTED , \NLW_Inst_Mem_dina<29>_UNCONNECTED , 
\NLW_Inst_Mem_dina<28>_UNCONNECTED , \NLW_Inst_Mem_dina<27>_UNCONNECTED , \NLW_Inst_Mem_dina<26>_UNCONNECTED , \NLW_Inst_Mem_dina<25>_UNCONNECTED , 
\NLW_Inst_Mem_dina<24>_UNCONNECTED , \NLW_Inst_Mem_dina<23>_UNCONNECTED , \NLW_Inst_Mem_dina<22>_UNCONNECTED , \NLW_Inst_Mem_dina<21>_UNCONNECTED , 
\NLW_Inst_Mem_dina<20>_UNCONNECTED , \NLW_Inst_Mem_dina<19>_UNCONNECTED , \NLW_Inst_Mem_dina<18>_UNCONNECTED , \NLW_Inst_Mem_dina<17>_UNCONNECTED , 
\NLW_Inst_Mem_dina<16>_UNCONNECTED , \NLW_Inst_Mem_dina<15>_UNCONNECTED , \NLW_Inst_Mem_dina<14>_UNCONNECTED , \NLW_Inst_Mem_dina<13>_UNCONNECTED , 
\NLW_Inst_Mem_dina<12>_UNCONNECTED , \NLW_Inst_Mem_dina<11>_UNCONNECTED , \NLW_Inst_Mem_dina<10>_UNCONNECTED , \NLW_Inst_Mem_dina<9>_UNCONNECTED , 
\NLW_Inst_Mem_dina<8>_UNCONNECTED , \NLW_Inst_Mem_dina<7>_UNCONNECTED , \NLW_Inst_Mem_dina<6>_UNCONNECTED , \NLW_Inst_Mem_dina<5>_UNCONNECTED , 
\NLW_Inst_Mem_dina<4>_UNCONNECTED , \NLW_Inst_Mem_dina<3>_UNCONNECTED , \NLW_Inst_Mem_dina<2>_UNCONNECTED , \NLW_Inst_Mem_dina<1>_UNCONNECTED , 
\NLW_Inst_Mem_dina<0>_UNCONNECTED }),
    .douta({douta_31_OBUF_3, douta_30_OBUF_4, douta_29_OBUF_5, douta_28_OBUF_6, douta_27_OBUF_7, douta_26_OBUF_8, douta_25_OBUF_9, douta_24_OBUF_10, 
douta_23_OBUF_11, douta_22_OBUF_12, douta_21_OBUF_13, douta_20_OBUF_14, douta_19_OBUF_15, douta_18_OBUF_16, douta_17_OBUF_17, douta_16_OBUF_18, 
douta_15_OBUF_19, douta_14_OBUF_20, douta_13_OBUF_21, douta_12_OBUF_22, douta_11_OBUF_23, douta_10_OBUF_24, douta_9_OBUF_25, douta_8_OBUF_26, 
douta_7_OBUF_27, douta_6_OBUF_28, douta_5_OBUF_29, douta_4_OBUF_30, douta_3_OBUF_31, douta_2_OBUF_32, douta_1_OBUF_33, douta_0_OBUF_34})
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
