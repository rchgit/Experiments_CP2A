////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.70d
//  \   \         Application: netgen
//  /   /         Filename: DRAP_Ifetch_synthesis.v
// /___/   /\     Timestamp: Wed Jan 22 11:05:12 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim DRAP_Ifetch.ngc DRAP_Ifetch_synthesis.v 
// Device	: xc3s500e-4-fg320
// Input file	: DRAP_Ifetch.ngc
// Output file	: C:\LBYCP2A EQ1\MIPS_Archi\netgen\synthesis\DRAP_Ifetch_synthesis.v
// # of Modules	: 1
// Design Name	: DRAP_Ifetch
// Xilinx        : C:\Xilinx\12.3\ISE_DS\ISE\
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

module DRAP_Ifetch (
  clk, rst, Br_in, Zero_in, jmp, PC_out, sign_ext_in, instruction
);
  input clk;
  input rst;
  input Br_in;
  input Zero_in;
  input jmp;
  output [31 : 0] PC_out;
  input [29 : 0] sign_ext_in;
  input [25 : 0] instruction;
  wire Br_in_IBUF_1;
  wire \M2/Madd_sum_cy<10>_rt_33 ;
  wire \M2/Madd_sum_cy<11>_rt_35 ;
  wire \M2/Madd_sum_cy<12>_rt_37 ;
  wire \M2/Madd_sum_cy<13>_rt_39 ;
  wire \M2/Madd_sum_cy<14>_rt_41 ;
  wire \M2/Madd_sum_cy<15>_rt_43 ;
  wire \M2/Madd_sum_cy<16>_rt_45 ;
  wire \M2/Madd_sum_cy<17>_rt_47 ;
  wire \M2/Madd_sum_cy<18>_rt_49 ;
  wire \M2/Madd_sum_cy<19>_rt_51 ;
  wire \M2/Madd_sum_cy<20>_rt_53 ;
  wire \M2/Madd_sum_cy<21>_rt_55 ;
  wire \M2/Madd_sum_cy<22>_rt_57 ;
  wire \M2/Madd_sum_cy<23>_rt_59 ;
  wire \M2/Madd_sum_cy<24>_rt_61 ;
  wire \M2/Madd_sum_cy<25>_rt_63 ;
  wire \M2/Madd_sum_cy<26>_rt_65 ;
  wire \M2/Madd_sum_cy<27>_rt_67 ;
  wire \M2/Madd_sum_cy<28>_rt_69 ;
  wire \M2/Madd_sum_cy<29>_rt_71 ;
  wire \M2/Madd_sum_cy<30>_rt_74 ;
  wire \M2/Madd_sum_cy<3>_rt_76 ;
  wire \M2/Madd_sum_cy<4>_rt_78 ;
  wire \M2/Madd_sum_cy<5>_rt_80 ;
  wire \M2/Madd_sum_cy<6>_rt_82 ;
  wire \M2/Madd_sum_cy<7>_rt_84 ;
  wire \M2/Madd_sum_cy<8>_rt_86 ;
  wire \M2/Madd_sum_cy<9>_rt_88 ;
  wire \M2/Madd_sum_xor<31>_rt_90 ;
  wire \M8/tmp<2>28 ;
  wire \M8/tmp<3>281 ;
  wire \M8/tmp<4>281 ;
  wire \M8/tmp<5>281 ;
  wire \M8/tmp<6>281 ;
  wire \M8/tmp<7>281 ;
  wire \M8/tmp<8>281 ;
  wire \M8/tmp<9>281 ;
  wire N0;
  wire N01;
  wire N1;
  wire N100;
  wire N101;
  wire N102;
  wire N103;
  wire N104;
  wire N105;
  wire N106;
  wire N107;
  wire N108;
  wire N109;
  wire N11;
  wire N110;
  wire N111;
  wire N112;
  wire N113;
  wire N114;
  wire N115;
  wire N116;
  wire N117;
  wire N118;
  wire N119;
  wire N12;
  wire N120;
  wire N121;
  wire N122;
  wire N123;
  wire N124;
  wire N125;
  wire N126;
  wire N127;
  wire N14;
  wire N15;
  wire N17;
  wire N18;
  wire N2;
  wire N20;
  wire N21;
  wire N23;
  wire N24;
  wire N26;
  wire N27;
  wire N29;
  wire N3;
  wire N30;
  wire N32;
  wire N33;
  wire N35;
  wire N36;
  wire N38;
  wire N39;
  wire N41;
  wire N42;
  wire N44;
  wire N45;
  wire N47;
  wire N48;
  wire N5;
  wire N50;
  wire N51;
  wire N53;
  wire N54;
  wire N56;
  wire N57;
  wire N58;
  wire N59;
  wire N6;
  wire N60;
  wire N61;
  wire N62;
  wire N63;
  wire N64;
  wire N65;
  wire N66;
  wire N67;
  wire N68;
  wire N69;
  wire N70;
  wire N71;
  wire N72;
  wire N73;
  wire N74;
  wire N75;
  wire N76;
  wire N77;
  wire N78;
  wire N79;
  wire N8;
  wire N80;
  wire N81;
  wire N82;
  wire N83;
  wire N84;
  wire N85;
  wire N86;
  wire N87;
  wire N88;
  wire N89;
  wire N9;
  wire N90;
  wire N91;
  wire N92;
  wire N93;
  wire N94;
  wire N95;
  wire N96;
  wire N97;
  wire N98;
  wire N99;
  wire Zero_in_IBUF_302;
  wire clk_BUFGP_304;
  wire instruction_0_IBUF_361;
  wire instruction_10_IBUF_362;
  wire instruction_11_IBUF_363;
  wire instruction_12_IBUF_364;
  wire instruction_13_IBUF_365;
  wire instruction_14_IBUF_366;
  wire instruction_15_IBUF_367;
  wire instruction_16_IBUF_368;
  wire instruction_17_IBUF_369;
  wire instruction_18_IBUF_370;
  wire instruction_19_IBUF_371;
  wire instruction_1_IBUF_372;
  wire instruction_20_IBUF_373;
  wire instruction_21_IBUF_374;
  wire instruction_22_IBUF_375;
  wire instruction_23_IBUF_376;
  wire instruction_24_IBUF_377;
  wire instruction_25_IBUF_378;
  wire instruction_2_IBUF_379;
  wire instruction_3_IBUF_380;
  wire instruction_4_IBUF_381;
  wire instruction_5_IBUF_382;
  wire instruction_6_IBUF_383;
  wire instruction_7_IBUF_384;
  wire instruction_8_IBUF_385;
  wire instruction_9_IBUF_386;
  wire jmp_IBUF_388;
  wire rst_IBUF_420;
  wire sign_ext_in_0_IBUF_451;
  wire sign_ext_in_10_IBUF_452;
  wire sign_ext_in_11_IBUF_453;
  wire sign_ext_in_12_IBUF_454;
  wire sign_ext_in_13_IBUF_455;
  wire sign_ext_in_14_IBUF_456;
  wire sign_ext_in_15_IBUF_457;
  wire sign_ext_in_16_IBUF_458;
  wire sign_ext_in_17_IBUF_459;
  wire sign_ext_in_18_IBUF_460;
  wire sign_ext_in_19_IBUF_461;
  wire sign_ext_in_1_IBUF_462;
  wire sign_ext_in_20_IBUF_463;
  wire sign_ext_in_21_IBUF_464;
  wire sign_ext_in_22_IBUF_465;
  wire sign_ext_in_23_IBUF_466;
  wire sign_ext_in_24_IBUF_467;
  wire sign_ext_in_25_IBUF_468;
  wire sign_ext_in_26_IBUF_469;
  wire sign_ext_in_27_IBUF_470;
  wire sign_ext_in_28_IBUF_471;
  wire sign_ext_in_29_IBUF_472;
  wire sign_ext_in_2_IBUF_473;
  wire sign_ext_in_3_IBUF_474;
  wire sign_ext_in_4_IBUF_475;
  wire sign_ext_in_5_IBUF_476;
  wire sign_ext_in_6_IBUF_477;
  wire sign_ext_in_7_IBUF_478;
  wire sign_ext_in_8_IBUF_479;
  wire sign_ext_in_9_IBUF_480;
  wire [31 : 2] \M1/tmp ;
  wire [30 : 2] \M2/Madd_sum_cy ;
  wire [2 : 2] \M2/Madd_sum_lut ;
  wire [30 : 2] \M4/Madd_sum_cy ;
  wire [31 : 2] \M4/Madd_sum_lut ;
  wire [31 : 2] cond_br;
  wire [31 : 2] pcplus4;
  wire [31 : 2] tmp2;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  MUXCY   \M2/Madd_sum_cy<2>  (
    .CI(N0),
    .DI(N1),
    .S(\M2/Madd_sum_lut [2]),
    .O(\M2/Madd_sum_cy [2])
  );
  XORCY   \M2/Madd_sum_xor<2>  (
    .CI(N0),
    .LI(\M2/Madd_sum_lut [2]),
    .O(pcplus4[2])
  );
  MUXCY   \M2/Madd_sum_cy<3>  (
    .CI(\M2/Madd_sum_cy [2]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<3>_rt_76 ),
    .O(\M2/Madd_sum_cy [3])
  );
  XORCY   \M2/Madd_sum_xor<3>  (
    .CI(\M2/Madd_sum_cy [2]),
    .LI(\M2/Madd_sum_cy<3>_rt_76 ),
    .O(pcplus4[3])
  );
  MUXCY   \M2/Madd_sum_cy<4>  (
    .CI(\M2/Madd_sum_cy [3]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<4>_rt_78 ),
    .O(\M2/Madd_sum_cy [4])
  );
  XORCY   \M2/Madd_sum_xor<4>  (
    .CI(\M2/Madd_sum_cy [3]),
    .LI(\M2/Madd_sum_cy<4>_rt_78 ),
    .O(pcplus4[4])
  );
  MUXCY   \M2/Madd_sum_cy<5>  (
    .CI(\M2/Madd_sum_cy [4]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<5>_rt_80 ),
    .O(\M2/Madd_sum_cy [5])
  );
  XORCY   \M2/Madd_sum_xor<5>  (
    .CI(\M2/Madd_sum_cy [4]),
    .LI(\M2/Madd_sum_cy<5>_rt_80 ),
    .O(pcplus4[5])
  );
  MUXCY   \M2/Madd_sum_cy<6>  (
    .CI(\M2/Madd_sum_cy [5]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<6>_rt_82 ),
    .O(\M2/Madd_sum_cy [6])
  );
  XORCY   \M2/Madd_sum_xor<6>  (
    .CI(\M2/Madd_sum_cy [5]),
    .LI(\M2/Madd_sum_cy<6>_rt_82 ),
    .O(pcplus4[6])
  );
  MUXCY   \M2/Madd_sum_cy<7>  (
    .CI(\M2/Madd_sum_cy [6]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<7>_rt_84 ),
    .O(\M2/Madd_sum_cy [7])
  );
  XORCY   \M2/Madd_sum_xor<7>  (
    .CI(\M2/Madd_sum_cy [6]),
    .LI(\M2/Madd_sum_cy<7>_rt_84 ),
    .O(pcplus4[7])
  );
  MUXCY   \M2/Madd_sum_cy<8>  (
    .CI(\M2/Madd_sum_cy [7]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<8>_rt_86 ),
    .O(\M2/Madd_sum_cy [8])
  );
  XORCY   \M2/Madd_sum_xor<8>  (
    .CI(\M2/Madd_sum_cy [7]),
    .LI(\M2/Madd_sum_cy<8>_rt_86 ),
    .O(pcplus4[8])
  );
  MUXCY   \M2/Madd_sum_cy<9>  (
    .CI(\M2/Madd_sum_cy [8]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<9>_rt_88 ),
    .O(\M2/Madd_sum_cy [9])
  );
  XORCY   \M2/Madd_sum_xor<9>  (
    .CI(\M2/Madd_sum_cy [8]),
    .LI(\M2/Madd_sum_cy<9>_rt_88 ),
    .O(pcplus4[9])
  );
  MUXCY   \M2/Madd_sum_cy<10>  (
    .CI(\M2/Madd_sum_cy [9]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<10>_rt_33 ),
    .O(\M2/Madd_sum_cy [10])
  );
  XORCY   \M2/Madd_sum_xor<10>  (
    .CI(\M2/Madd_sum_cy [9]),
    .LI(\M2/Madd_sum_cy<10>_rt_33 ),
    .O(pcplus4[10])
  );
  MUXCY   \M2/Madd_sum_cy<11>  (
    .CI(\M2/Madd_sum_cy [10]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<11>_rt_35 ),
    .O(\M2/Madd_sum_cy [11])
  );
  XORCY   \M2/Madd_sum_xor<11>  (
    .CI(\M2/Madd_sum_cy [10]),
    .LI(\M2/Madd_sum_cy<11>_rt_35 ),
    .O(pcplus4[11])
  );
  MUXCY   \M2/Madd_sum_cy<12>  (
    .CI(\M2/Madd_sum_cy [11]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<12>_rt_37 ),
    .O(\M2/Madd_sum_cy [12])
  );
  XORCY   \M2/Madd_sum_xor<12>  (
    .CI(\M2/Madd_sum_cy [11]),
    .LI(\M2/Madd_sum_cy<12>_rt_37 ),
    .O(pcplus4[12])
  );
  MUXCY   \M2/Madd_sum_cy<13>  (
    .CI(\M2/Madd_sum_cy [12]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<13>_rt_39 ),
    .O(\M2/Madd_sum_cy [13])
  );
  XORCY   \M2/Madd_sum_xor<13>  (
    .CI(\M2/Madd_sum_cy [12]),
    .LI(\M2/Madd_sum_cy<13>_rt_39 ),
    .O(pcplus4[13])
  );
  MUXCY   \M2/Madd_sum_cy<14>  (
    .CI(\M2/Madd_sum_cy [13]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<14>_rt_41 ),
    .O(\M2/Madd_sum_cy [14])
  );
  XORCY   \M2/Madd_sum_xor<14>  (
    .CI(\M2/Madd_sum_cy [13]),
    .LI(\M2/Madd_sum_cy<14>_rt_41 ),
    .O(pcplus4[14])
  );
  MUXCY   \M2/Madd_sum_cy<15>  (
    .CI(\M2/Madd_sum_cy [14]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<15>_rt_43 ),
    .O(\M2/Madd_sum_cy [15])
  );
  XORCY   \M2/Madd_sum_xor<15>  (
    .CI(\M2/Madd_sum_cy [14]),
    .LI(\M2/Madd_sum_cy<15>_rt_43 ),
    .O(pcplus4[15])
  );
  MUXCY   \M2/Madd_sum_cy<16>  (
    .CI(\M2/Madd_sum_cy [15]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<16>_rt_45 ),
    .O(\M2/Madd_sum_cy [16])
  );
  XORCY   \M2/Madd_sum_xor<16>  (
    .CI(\M2/Madd_sum_cy [15]),
    .LI(\M2/Madd_sum_cy<16>_rt_45 ),
    .O(pcplus4[16])
  );
  MUXCY   \M2/Madd_sum_cy<17>  (
    .CI(\M2/Madd_sum_cy [16]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<17>_rt_47 ),
    .O(\M2/Madd_sum_cy [17])
  );
  XORCY   \M2/Madd_sum_xor<17>  (
    .CI(\M2/Madd_sum_cy [16]),
    .LI(\M2/Madd_sum_cy<17>_rt_47 ),
    .O(pcplus4[17])
  );
  MUXCY   \M2/Madd_sum_cy<18>  (
    .CI(\M2/Madd_sum_cy [17]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<18>_rt_49 ),
    .O(\M2/Madd_sum_cy [18])
  );
  XORCY   \M2/Madd_sum_xor<18>  (
    .CI(\M2/Madd_sum_cy [17]),
    .LI(\M2/Madd_sum_cy<18>_rt_49 ),
    .O(pcplus4[18])
  );
  MUXCY   \M2/Madd_sum_cy<19>  (
    .CI(\M2/Madd_sum_cy [18]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<19>_rt_51 ),
    .O(\M2/Madd_sum_cy [19])
  );
  XORCY   \M2/Madd_sum_xor<19>  (
    .CI(\M2/Madd_sum_cy [18]),
    .LI(\M2/Madd_sum_cy<19>_rt_51 ),
    .O(pcplus4[19])
  );
  MUXCY   \M2/Madd_sum_cy<20>  (
    .CI(\M2/Madd_sum_cy [19]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<20>_rt_53 ),
    .O(\M2/Madd_sum_cy [20])
  );
  XORCY   \M2/Madd_sum_xor<20>  (
    .CI(\M2/Madd_sum_cy [19]),
    .LI(\M2/Madd_sum_cy<20>_rt_53 ),
    .O(pcplus4[20])
  );
  MUXCY   \M2/Madd_sum_cy<21>  (
    .CI(\M2/Madd_sum_cy [20]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<21>_rt_55 ),
    .O(\M2/Madd_sum_cy [21])
  );
  XORCY   \M2/Madd_sum_xor<21>  (
    .CI(\M2/Madd_sum_cy [20]),
    .LI(\M2/Madd_sum_cy<21>_rt_55 ),
    .O(pcplus4[21])
  );
  MUXCY   \M2/Madd_sum_cy<22>  (
    .CI(\M2/Madd_sum_cy [21]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<22>_rt_57 ),
    .O(\M2/Madd_sum_cy [22])
  );
  XORCY   \M2/Madd_sum_xor<22>  (
    .CI(\M2/Madd_sum_cy [21]),
    .LI(\M2/Madd_sum_cy<22>_rt_57 ),
    .O(pcplus4[22])
  );
  MUXCY   \M2/Madd_sum_cy<23>  (
    .CI(\M2/Madd_sum_cy [22]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<23>_rt_59 ),
    .O(\M2/Madd_sum_cy [23])
  );
  XORCY   \M2/Madd_sum_xor<23>  (
    .CI(\M2/Madd_sum_cy [22]),
    .LI(\M2/Madd_sum_cy<23>_rt_59 ),
    .O(pcplus4[23])
  );
  MUXCY   \M2/Madd_sum_cy<24>  (
    .CI(\M2/Madd_sum_cy [23]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<24>_rt_61 ),
    .O(\M2/Madd_sum_cy [24])
  );
  XORCY   \M2/Madd_sum_xor<24>  (
    .CI(\M2/Madd_sum_cy [23]),
    .LI(\M2/Madd_sum_cy<24>_rt_61 ),
    .O(pcplus4[24])
  );
  MUXCY   \M2/Madd_sum_cy<25>  (
    .CI(\M2/Madd_sum_cy [24]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<25>_rt_63 ),
    .O(\M2/Madd_sum_cy [25])
  );
  XORCY   \M2/Madd_sum_xor<25>  (
    .CI(\M2/Madd_sum_cy [24]),
    .LI(\M2/Madd_sum_cy<25>_rt_63 ),
    .O(pcplus4[25])
  );
  MUXCY   \M2/Madd_sum_cy<26>  (
    .CI(\M2/Madd_sum_cy [25]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<26>_rt_65 ),
    .O(\M2/Madd_sum_cy [26])
  );
  XORCY   \M2/Madd_sum_xor<26>  (
    .CI(\M2/Madd_sum_cy [25]),
    .LI(\M2/Madd_sum_cy<26>_rt_65 ),
    .O(pcplus4[26])
  );
  MUXCY   \M2/Madd_sum_cy<27>  (
    .CI(\M2/Madd_sum_cy [26]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<27>_rt_67 ),
    .O(\M2/Madd_sum_cy [27])
  );
  XORCY   \M2/Madd_sum_xor<27>  (
    .CI(\M2/Madd_sum_cy [26]),
    .LI(\M2/Madd_sum_cy<27>_rt_67 ),
    .O(pcplus4[27])
  );
  MUXCY   \M2/Madd_sum_cy<28>  (
    .CI(\M2/Madd_sum_cy [27]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<28>_rt_69 ),
    .O(\M2/Madd_sum_cy [28])
  );
  XORCY   \M2/Madd_sum_xor<28>  (
    .CI(\M2/Madd_sum_cy [27]),
    .LI(\M2/Madd_sum_cy<28>_rt_69 ),
    .O(pcplus4[28])
  );
  MUXCY   \M2/Madd_sum_cy<29>  (
    .CI(\M2/Madd_sum_cy [28]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<29>_rt_71 ),
    .O(\M2/Madd_sum_cy [29])
  );
  XORCY   \M2/Madd_sum_xor<29>  (
    .CI(\M2/Madd_sum_cy [28]),
    .LI(\M2/Madd_sum_cy<29>_rt_71 ),
    .O(pcplus4[29])
  );
  MUXCY   \M2/Madd_sum_cy<30>  (
    .CI(\M2/Madd_sum_cy [29]),
    .DI(N0),
    .S(\M2/Madd_sum_cy<30>_rt_74 ),
    .O(\M2/Madd_sum_cy [30])
  );
  XORCY   \M2/Madd_sum_xor<30>  (
    .CI(\M2/Madd_sum_cy [29]),
    .LI(\M2/Madd_sum_cy<30>_rt_74 ),
    .O(pcplus4[30])
  );
  XORCY   \M2/Madd_sum_xor<31>  (
    .CI(\M2/Madd_sum_cy [30]),
    .LI(\M2/Madd_sum_xor<31>_rt_90 ),
    .O(pcplus4[31])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<2>  (
    .I0(sign_ext_in_0_IBUF_451),
    .I1(pcplus4[2]),
    .O(\M4/Madd_sum_lut [2])
  );
  MUXCY   \M4/Madd_sum_cy<2>  (
    .CI(N0),
    .DI(pcplus4[2]),
    .S(\M4/Madd_sum_lut [2]),
    .O(\M4/Madd_sum_cy [2])
  );
  XORCY   \M4/Madd_sum_xor<2>  (
    .CI(N0),
    .LI(\M4/Madd_sum_lut [2]),
    .O(cond_br[2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<3>  (
    .I0(sign_ext_in_1_IBUF_462),
    .I1(pcplus4[3]),
    .O(\M4/Madd_sum_lut [3])
  );
  MUXCY   \M4/Madd_sum_cy<3>  (
    .CI(\M4/Madd_sum_cy [2]),
    .DI(pcplus4[3]),
    .S(\M4/Madd_sum_lut [3]),
    .O(\M4/Madd_sum_cy [3])
  );
  XORCY   \M4/Madd_sum_xor<3>  (
    .CI(\M4/Madd_sum_cy [2]),
    .LI(\M4/Madd_sum_lut [3]),
    .O(cond_br[3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<4>  (
    .I0(sign_ext_in_2_IBUF_473),
    .I1(pcplus4[4]),
    .O(\M4/Madd_sum_lut [4])
  );
  MUXCY   \M4/Madd_sum_cy<4>  (
    .CI(\M4/Madd_sum_cy [3]),
    .DI(pcplus4[4]),
    .S(\M4/Madd_sum_lut [4]),
    .O(\M4/Madd_sum_cy [4])
  );
  XORCY   \M4/Madd_sum_xor<4>  (
    .CI(\M4/Madd_sum_cy [3]),
    .LI(\M4/Madd_sum_lut [4]),
    .O(cond_br[4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<5>  (
    .I0(sign_ext_in_3_IBUF_474),
    .I1(pcplus4[5]),
    .O(\M4/Madd_sum_lut [5])
  );
  MUXCY   \M4/Madd_sum_cy<5>  (
    .CI(\M4/Madd_sum_cy [4]),
    .DI(pcplus4[5]),
    .S(\M4/Madd_sum_lut [5]),
    .O(\M4/Madd_sum_cy [5])
  );
  XORCY   \M4/Madd_sum_xor<5>  (
    .CI(\M4/Madd_sum_cy [4]),
    .LI(\M4/Madd_sum_lut [5]),
    .O(cond_br[5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<6>  (
    .I0(sign_ext_in_4_IBUF_475),
    .I1(pcplus4[6]),
    .O(\M4/Madd_sum_lut [6])
  );
  MUXCY   \M4/Madd_sum_cy<6>  (
    .CI(\M4/Madd_sum_cy [5]),
    .DI(pcplus4[6]),
    .S(\M4/Madd_sum_lut [6]),
    .O(\M4/Madd_sum_cy [6])
  );
  XORCY   \M4/Madd_sum_xor<6>  (
    .CI(\M4/Madd_sum_cy [5]),
    .LI(\M4/Madd_sum_lut [6]),
    .O(cond_br[6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<7>  (
    .I0(sign_ext_in_5_IBUF_476),
    .I1(pcplus4[7]),
    .O(\M4/Madd_sum_lut [7])
  );
  MUXCY   \M4/Madd_sum_cy<7>  (
    .CI(\M4/Madd_sum_cy [6]),
    .DI(pcplus4[7]),
    .S(\M4/Madd_sum_lut [7]),
    .O(\M4/Madd_sum_cy [7])
  );
  XORCY   \M4/Madd_sum_xor<7>  (
    .CI(\M4/Madd_sum_cy [6]),
    .LI(\M4/Madd_sum_lut [7]),
    .O(cond_br[7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<8>  (
    .I0(sign_ext_in_6_IBUF_477),
    .I1(pcplus4[8]),
    .O(\M4/Madd_sum_lut [8])
  );
  MUXCY   \M4/Madd_sum_cy<8>  (
    .CI(\M4/Madd_sum_cy [7]),
    .DI(pcplus4[8]),
    .S(\M4/Madd_sum_lut [8]),
    .O(\M4/Madd_sum_cy [8])
  );
  XORCY   \M4/Madd_sum_xor<8>  (
    .CI(\M4/Madd_sum_cy [7]),
    .LI(\M4/Madd_sum_lut [8]),
    .O(cond_br[8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<9>  (
    .I0(sign_ext_in_7_IBUF_478),
    .I1(pcplus4[9]),
    .O(\M4/Madd_sum_lut [9])
  );
  MUXCY   \M4/Madd_sum_cy<9>  (
    .CI(\M4/Madd_sum_cy [8]),
    .DI(pcplus4[9]),
    .S(\M4/Madd_sum_lut [9]),
    .O(\M4/Madd_sum_cy [9])
  );
  XORCY   \M4/Madd_sum_xor<9>  (
    .CI(\M4/Madd_sum_cy [8]),
    .LI(\M4/Madd_sum_lut [9]),
    .O(cond_br[9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<10>  (
    .I0(sign_ext_in_8_IBUF_479),
    .I1(pcplus4[10]),
    .O(\M4/Madd_sum_lut [10])
  );
  MUXCY   \M4/Madd_sum_cy<10>  (
    .CI(\M4/Madd_sum_cy [9]),
    .DI(pcplus4[10]),
    .S(\M4/Madd_sum_lut [10]),
    .O(\M4/Madd_sum_cy [10])
  );
  XORCY   \M4/Madd_sum_xor<10>  (
    .CI(\M4/Madd_sum_cy [9]),
    .LI(\M4/Madd_sum_lut [10]),
    .O(cond_br[10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<11>  (
    .I0(sign_ext_in_9_IBUF_480),
    .I1(pcplus4[11]),
    .O(\M4/Madd_sum_lut [11])
  );
  MUXCY   \M4/Madd_sum_cy<11>  (
    .CI(\M4/Madd_sum_cy [10]),
    .DI(pcplus4[11]),
    .S(\M4/Madd_sum_lut [11]),
    .O(\M4/Madd_sum_cy [11])
  );
  XORCY   \M4/Madd_sum_xor<11>  (
    .CI(\M4/Madd_sum_cy [10]),
    .LI(\M4/Madd_sum_lut [11]),
    .O(cond_br[11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<12>  (
    .I0(sign_ext_in_10_IBUF_452),
    .I1(pcplus4[12]),
    .O(\M4/Madd_sum_lut [12])
  );
  MUXCY   \M4/Madd_sum_cy<12>  (
    .CI(\M4/Madd_sum_cy [11]),
    .DI(pcplus4[12]),
    .S(\M4/Madd_sum_lut [12]),
    .O(\M4/Madd_sum_cy [12])
  );
  XORCY   \M4/Madd_sum_xor<12>  (
    .CI(\M4/Madd_sum_cy [11]),
    .LI(\M4/Madd_sum_lut [12]),
    .O(cond_br[12])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<13>  (
    .I0(sign_ext_in_11_IBUF_453),
    .I1(pcplus4[13]),
    .O(\M4/Madd_sum_lut [13])
  );
  MUXCY   \M4/Madd_sum_cy<13>  (
    .CI(\M4/Madd_sum_cy [12]),
    .DI(pcplus4[13]),
    .S(\M4/Madd_sum_lut [13]),
    .O(\M4/Madd_sum_cy [13])
  );
  XORCY   \M4/Madd_sum_xor<13>  (
    .CI(\M4/Madd_sum_cy [12]),
    .LI(\M4/Madd_sum_lut [13]),
    .O(cond_br[13])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<14>  (
    .I0(sign_ext_in_12_IBUF_454),
    .I1(pcplus4[14]),
    .O(\M4/Madd_sum_lut [14])
  );
  MUXCY   \M4/Madd_sum_cy<14>  (
    .CI(\M4/Madd_sum_cy [13]),
    .DI(pcplus4[14]),
    .S(\M4/Madd_sum_lut [14]),
    .O(\M4/Madd_sum_cy [14])
  );
  XORCY   \M4/Madd_sum_xor<14>  (
    .CI(\M4/Madd_sum_cy [13]),
    .LI(\M4/Madd_sum_lut [14]),
    .O(cond_br[14])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<15>  (
    .I0(sign_ext_in_13_IBUF_455),
    .I1(pcplus4[15]),
    .O(\M4/Madd_sum_lut [15])
  );
  MUXCY   \M4/Madd_sum_cy<15>  (
    .CI(\M4/Madd_sum_cy [14]),
    .DI(pcplus4[15]),
    .S(\M4/Madd_sum_lut [15]),
    .O(\M4/Madd_sum_cy [15])
  );
  XORCY   \M4/Madd_sum_xor<15>  (
    .CI(\M4/Madd_sum_cy [14]),
    .LI(\M4/Madd_sum_lut [15]),
    .O(cond_br[15])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<16>  (
    .I0(sign_ext_in_14_IBUF_456),
    .I1(pcplus4[16]),
    .O(\M4/Madd_sum_lut [16])
  );
  MUXCY   \M4/Madd_sum_cy<16>  (
    .CI(\M4/Madd_sum_cy [15]),
    .DI(pcplus4[16]),
    .S(\M4/Madd_sum_lut [16]),
    .O(\M4/Madd_sum_cy [16])
  );
  XORCY   \M4/Madd_sum_xor<16>  (
    .CI(\M4/Madd_sum_cy [15]),
    .LI(\M4/Madd_sum_lut [16]),
    .O(cond_br[16])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<17>  (
    .I0(sign_ext_in_15_IBUF_457),
    .I1(pcplus4[17]),
    .O(\M4/Madd_sum_lut [17])
  );
  MUXCY   \M4/Madd_sum_cy<17>  (
    .CI(\M4/Madd_sum_cy [16]),
    .DI(pcplus4[17]),
    .S(\M4/Madd_sum_lut [17]),
    .O(\M4/Madd_sum_cy [17])
  );
  XORCY   \M4/Madd_sum_xor<17>  (
    .CI(\M4/Madd_sum_cy [16]),
    .LI(\M4/Madd_sum_lut [17]),
    .O(cond_br[17])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<18>  (
    .I0(sign_ext_in_16_IBUF_458),
    .I1(pcplus4[18]),
    .O(\M4/Madd_sum_lut [18])
  );
  MUXCY   \M4/Madd_sum_cy<18>  (
    .CI(\M4/Madd_sum_cy [17]),
    .DI(pcplus4[18]),
    .S(\M4/Madd_sum_lut [18]),
    .O(\M4/Madd_sum_cy [18])
  );
  XORCY   \M4/Madd_sum_xor<18>  (
    .CI(\M4/Madd_sum_cy [17]),
    .LI(\M4/Madd_sum_lut [18]),
    .O(cond_br[18])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<19>  (
    .I0(sign_ext_in_17_IBUF_459),
    .I1(pcplus4[19]),
    .O(\M4/Madd_sum_lut [19])
  );
  MUXCY   \M4/Madd_sum_cy<19>  (
    .CI(\M4/Madd_sum_cy [18]),
    .DI(pcplus4[19]),
    .S(\M4/Madd_sum_lut [19]),
    .O(\M4/Madd_sum_cy [19])
  );
  XORCY   \M4/Madd_sum_xor<19>  (
    .CI(\M4/Madd_sum_cy [18]),
    .LI(\M4/Madd_sum_lut [19]),
    .O(cond_br[19])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<20>  (
    .I0(sign_ext_in_18_IBUF_460),
    .I1(pcplus4[20]),
    .O(\M4/Madd_sum_lut [20])
  );
  MUXCY   \M4/Madd_sum_cy<20>  (
    .CI(\M4/Madd_sum_cy [19]),
    .DI(pcplus4[20]),
    .S(\M4/Madd_sum_lut [20]),
    .O(\M4/Madd_sum_cy [20])
  );
  XORCY   \M4/Madd_sum_xor<20>  (
    .CI(\M4/Madd_sum_cy [19]),
    .LI(\M4/Madd_sum_lut [20]),
    .O(cond_br[20])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<21>  (
    .I0(sign_ext_in_19_IBUF_461),
    .I1(pcplus4[21]),
    .O(\M4/Madd_sum_lut [21])
  );
  MUXCY   \M4/Madd_sum_cy<21>  (
    .CI(\M4/Madd_sum_cy [20]),
    .DI(pcplus4[21]),
    .S(\M4/Madd_sum_lut [21]),
    .O(\M4/Madd_sum_cy [21])
  );
  XORCY   \M4/Madd_sum_xor<21>  (
    .CI(\M4/Madd_sum_cy [20]),
    .LI(\M4/Madd_sum_lut [21]),
    .O(cond_br[21])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<22>  (
    .I0(sign_ext_in_20_IBUF_463),
    .I1(pcplus4[22]),
    .O(\M4/Madd_sum_lut [22])
  );
  MUXCY   \M4/Madd_sum_cy<22>  (
    .CI(\M4/Madd_sum_cy [21]),
    .DI(pcplus4[22]),
    .S(\M4/Madd_sum_lut [22]),
    .O(\M4/Madd_sum_cy [22])
  );
  XORCY   \M4/Madd_sum_xor<22>  (
    .CI(\M4/Madd_sum_cy [21]),
    .LI(\M4/Madd_sum_lut [22]),
    .O(cond_br[22])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<23>  (
    .I0(sign_ext_in_21_IBUF_464),
    .I1(pcplus4[23]),
    .O(\M4/Madd_sum_lut [23])
  );
  MUXCY   \M4/Madd_sum_cy<23>  (
    .CI(\M4/Madd_sum_cy [22]),
    .DI(pcplus4[23]),
    .S(\M4/Madd_sum_lut [23]),
    .O(\M4/Madd_sum_cy [23])
  );
  XORCY   \M4/Madd_sum_xor<23>  (
    .CI(\M4/Madd_sum_cy [22]),
    .LI(\M4/Madd_sum_lut [23]),
    .O(cond_br[23])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<24>  (
    .I0(sign_ext_in_22_IBUF_465),
    .I1(pcplus4[24]),
    .O(\M4/Madd_sum_lut [24])
  );
  MUXCY   \M4/Madd_sum_cy<24>  (
    .CI(\M4/Madd_sum_cy [23]),
    .DI(pcplus4[24]),
    .S(\M4/Madd_sum_lut [24]),
    .O(\M4/Madd_sum_cy [24])
  );
  XORCY   \M4/Madd_sum_xor<24>  (
    .CI(\M4/Madd_sum_cy [23]),
    .LI(\M4/Madd_sum_lut [24]),
    .O(cond_br[24])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<25>  (
    .I0(sign_ext_in_23_IBUF_466),
    .I1(pcplus4[25]),
    .O(\M4/Madd_sum_lut [25])
  );
  MUXCY   \M4/Madd_sum_cy<25>  (
    .CI(\M4/Madd_sum_cy [24]),
    .DI(pcplus4[25]),
    .S(\M4/Madd_sum_lut [25]),
    .O(\M4/Madd_sum_cy [25])
  );
  XORCY   \M4/Madd_sum_xor<25>  (
    .CI(\M4/Madd_sum_cy [24]),
    .LI(\M4/Madd_sum_lut [25]),
    .O(cond_br[25])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<26>  (
    .I0(sign_ext_in_24_IBUF_467),
    .I1(pcplus4[26]),
    .O(\M4/Madd_sum_lut [26])
  );
  MUXCY   \M4/Madd_sum_cy<26>  (
    .CI(\M4/Madd_sum_cy [25]),
    .DI(pcplus4[26]),
    .S(\M4/Madd_sum_lut [26]),
    .O(\M4/Madd_sum_cy [26])
  );
  XORCY   \M4/Madd_sum_xor<26>  (
    .CI(\M4/Madd_sum_cy [25]),
    .LI(\M4/Madd_sum_lut [26]),
    .O(cond_br[26])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<27>  (
    .I0(sign_ext_in_25_IBUF_468),
    .I1(pcplus4[27]),
    .O(\M4/Madd_sum_lut [27])
  );
  MUXCY   \M4/Madd_sum_cy<27>  (
    .CI(\M4/Madd_sum_cy [26]),
    .DI(pcplus4[27]),
    .S(\M4/Madd_sum_lut [27]),
    .O(\M4/Madd_sum_cy [27])
  );
  XORCY   \M4/Madd_sum_xor<27>  (
    .CI(\M4/Madd_sum_cy [26]),
    .LI(\M4/Madd_sum_lut [27]),
    .O(cond_br[27])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<28>  (
    .I0(sign_ext_in_26_IBUF_469),
    .I1(pcplus4[28]),
    .O(\M4/Madd_sum_lut [28])
  );
  MUXCY   \M4/Madd_sum_cy<28>  (
    .CI(\M4/Madd_sum_cy [27]),
    .DI(pcplus4[28]),
    .S(\M4/Madd_sum_lut [28]),
    .O(\M4/Madd_sum_cy [28])
  );
  XORCY   \M4/Madd_sum_xor<28>  (
    .CI(\M4/Madd_sum_cy [27]),
    .LI(\M4/Madd_sum_lut [28]),
    .O(cond_br[28])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<29>  (
    .I0(sign_ext_in_27_IBUF_470),
    .I1(pcplus4[29]),
    .O(\M4/Madd_sum_lut [29])
  );
  MUXCY   \M4/Madd_sum_cy<29>  (
    .CI(\M4/Madd_sum_cy [28]),
    .DI(pcplus4[29]),
    .S(\M4/Madd_sum_lut [29]),
    .O(\M4/Madd_sum_cy [29])
  );
  XORCY   \M4/Madd_sum_xor<29>  (
    .CI(\M4/Madd_sum_cy [28]),
    .LI(\M4/Madd_sum_lut [29]),
    .O(cond_br[29])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<30>  (
    .I0(sign_ext_in_28_IBUF_471),
    .I1(pcplus4[30]),
    .O(\M4/Madd_sum_lut [30])
  );
  MUXCY   \M4/Madd_sum_cy<30>  (
    .CI(\M4/Madd_sum_cy [29]),
    .DI(pcplus4[30]),
    .S(\M4/Madd_sum_lut [30]),
    .O(\M4/Madd_sum_cy [30])
  );
  XORCY   \M4/Madd_sum_xor<30>  (
    .CI(\M4/Madd_sum_cy [29]),
    .LI(\M4/Madd_sum_lut [30]),
    .O(cond_br[30])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M4/Madd_sum_lut<31>  (
    .I0(sign_ext_in_29_IBUF_472),
    .I1(pcplus4[31]),
    .O(\M4/Madd_sum_lut [31])
  );
  XORCY   \M4/Madd_sum_xor<31>  (
    .CI(\M4/Madd_sum_cy [30]),
    .LI(\M4/Madd_sum_lut [31]),
    .O(cond_br[31])
  );
  FDC   \M1/tmp_31  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[31]),
    .Q(\M1/tmp [31])
  );
  FDC   \M1/tmp_30  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[30]),
    .Q(\M1/tmp [30])
  );
  FDC   \M1/tmp_29  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[29]),
    .Q(\M1/tmp [29])
  );
  FDC   \M1/tmp_28  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[28]),
    .Q(\M1/tmp [28])
  );
  FDC   \M1/tmp_27  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[27]),
    .Q(\M1/tmp [27])
  );
  FDC   \M1/tmp_26  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[26]),
    .Q(\M1/tmp [26])
  );
  FDC   \M1/tmp_25  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[25]),
    .Q(\M1/tmp [25])
  );
  FDC   \M1/tmp_24  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[24]),
    .Q(\M1/tmp [24])
  );
  FDC   \M1/tmp_23  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[23]),
    .Q(\M1/tmp [23])
  );
  FDC   \M1/tmp_22  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[22]),
    .Q(\M1/tmp [22])
  );
  FDC   \M1/tmp_21  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[21]),
    .Q(\M1/tmp [21])
  );
  FDC   \M1/tmp_20  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[20]),
    .Q(\M1/tmp [20])
  );
  FDC   \M1/tmp_19  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[19]),
    .Q(\M1/tmp [19])
  );
  FDC   \M1/tmp_18  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[18]),
    .Q(\M1/tmp [18])
  );
  FDC   \M1/tmp_17  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[17]),
    .Q(\M1/tmp [17])
  );
  FDC   \M1/tmp_16  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[16]),
    .Q(\M1/tmp [16])
  );
  FDC   \M1/tmp_15  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[15]),
    .Q(\M1/tmp [15])
  );
  FDC   \M1/tmp_14  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[14]),
    .Q(\M1/tmp [14])
  );
  FDC   \M1/tmp_13  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[13]),
    .Q(\M1/tmp [13])
  );
  FDC   \M1/tmp_12  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[12]),
    .Q(\M1/tmp [12])
  );
  FDC   \M1/tmp_11  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[11]),
    .Q(\M1/tmp [11])
  );
  FDC   \M1/tmp_10  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[10]),
    .Q(\M1/tmp [10])
  );
  FDC   \M1/tmp_9  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[9]),
    .Q(\M1/tmp [9])
  );
  FDC   \M1/tmp_8  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[8]),
    .Q(\M1/tmp [8])
  );
  FDC   \M1/tmp_7  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[7]),
    .Q(\M1/tmp [7])
  );
  FDC   \M1/tmp_6  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[6]),
    .Q(\M1/tmp [6])
  );
  FDC   \M1/tmp_5  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[5]),
    .Q(\M1/tmp [5])
  );
  FDC   \M1/tmp_4  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[4]),
    .Q(\M1/tmp [4])
  );
  FDC   \M1/tmp_3  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[3]),
    .Q(\M1/tmp [3])
  );
  FDC   \M1/tmp_2  (
    .C(clk_BUFGP_304),
    .CLR(rst_IBUF_420),
    .D(tmp2[2]),
    .Q(\M1/tmp [2])
  );
  LUT3 #(
    .INIT ( 8'hDF ))
  \M8/tmp<28>11  (
    .I0(Zero_in_IBUF_302),
    .I1(jmp_IBUF_388),
    .I2(Br_in_IBUF_1),
    .O(N01)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \M8/tmp<28>1  (
    .I0(N01),
    .I1(pcplus4[28]),
    .I2(cond_br[28]),
    .O(tmp2[28])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \M8/tmp<29>1  (
    .I0(N01),
    .I1(pcplus4[29]),
    .I2(cond_br[29]),
    .O(tmp2[29])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \M8/tmp<30>1  (
    .I0(N01),
    .I1(pcplus4[30]),
    .I2(cond_br[30]),
    .O(tmp2[30])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \M8/tmp<31>1  (
    .I0(N01),
    .I1(pcplus4[31]),
    .I2(cond_br[31]),
    .O(tmp2[31])
  );
  IBUF   rst_IBUF (
    .I(rst),
    .O(rst_IBUF_420)
  );
  IBUF   Br_in_IBUF (
    .I(Br_in),
    .O(Br_in_IBUF_1)
  );
  IBUF   Zero_in_IBUF (
    .I(Zero_in),
    .O(Zero_in_IBUF_302)
  );
  IBUF   jmp_IBUF (
    .I(jmp),
    .O(jmp_IBUF_388)
  );
  IBUF   sign_ext_in_29_IBUF (
    .I(sign_ext_in[29]),
    .O(sign_ext_in_29_IBUF_472)
  );
  IBUF   sign_ext_in_28_IBUF (
    .I(sign_ext_in[28]),
    .O(sign_ext_in_28_IBUF_471)
  );
  IBUF   sign_ext_in_27_IBUF (
    .I(sign_ext_in[27]),
    .O(sign_ext_in_27_IBUF_470)
  );
  IBUF   sign_ext_in_26_IBUF (
    .I(sign_ext_in[26]),
    .O(sign_ext_in_26_IBUF_469)
  );
  IBUF   sign_ext_in_25_IBUF (
    .I(sign_ext_in[25]),
    .O(sign_ext_in_25_IBUF_468)
  );
  IBUF   sign_ext_in_24_IBUF (
    .I(sign_ext_in[24]),
    .O(sign_ext_in_24_IBUF_467)
  );
  IBUF   sign_ext_in_23_IBUF (
    .I(sign_ext_in[23]),
    .O(sign_ext_in_23_IBUF_466)
  );
  IBUF   sign_ext_in_22_IBUF (
    .I(sign_ext_in[22]),
    .O(sign_ext_in_22_IBUF_465)
  );
  IBUF   sign_ext_in_21_IBUF (
    .I(sign_ext_in[21]),
    .O(sign_ext_in_21_IBUF_464)
  );
  IBUF   sign_ext_in_20_IBUF (
    .I(sign_ext_in[20]),
    .O(sign_ext_in_20_IBUF_463)
  );
  IBUF   sign_ext_in_19_IBUF (
    .I(sign_ext_in[19]),
    .O(sign_ext_in_19_IBUF_461)
  );
  IBUF   sign_ext_in_18_IBUF (
    .I(sign_ext_in[18]),
    .O(sign_ext_in_18_IBUF_460)
  );
  IBUF   sign_ext_in_17_IBUF (
    .I(sign_ext_in[17]),
    .O(sign_ext_in_17_IBUF_459)
  );
  IBUF   sign_ext_in_16_IBUF (
    .I(sign_ext_in[16]),
    .O(sign_ext_in_16_IBUF_458)
  );
  IBUF   sign_ext_in_15_IBUF (
    .I(sign_ext_in[15]),
    .O(sign_ext_in_15_IBUF_457)
  );
  IBUF   sign_ext_in_14_IBUF (
    .I(sign_ext_in[14]),
    .O(sign_ext_in_14_IBUF_456)
  );
  IBUF   sign_ext_in_13_IBUF (
    .I(sign_ext_in[13]),
    .O(sign_ext_in_13_IBUF_455)
  );
  IBUF   sign_ext_in_12_IBUF (
    .I(sign_ext_in[12]),
    .O(sign_ext_in_12_IBUF_454)
  );
  IBUF   sign_ext_in_11_IBUF (
    .I(sign_ext_in[11]),
    .O(sign_ext_in_11_IBUF_453)
  );
  IBUF   sign_ext_in_10_IBUF (
    .I(sign_ext_in[10]),
    .O(sign_ext_in_10_IBUF_452)
  );
  IBUF   sign_ext_in_9_IBUF (
    .I(sign_ext_in[9]),
    .O(sign_ext_in_9_IBUF_480)
  );
  IBUF   sign_ext_in_8_IBUF (
    .I(sign_ext_in[8]),
    .O(sign_ext_in_8_IBUF_479)
  );
  IBUF   sign_ext_in_7_IBUF (
    .I(sign_ext_in[7]),
    .O(sign_ext_in_7_IBUF_478)
  );
  IBUF   sign_ext_in_6_IBUF (
    .I(sign_ext_in[6]),
    .O(sign_ext_in_6_IBUF_477)
  );
  IBUF   sign_ext_in_5_IBUF (
    .I(sign_ext_in[5]),
    .O(sign_ext_in_5_IBUF_476)
  );
  IBUF   sign_ext_in_4_IBUF (
    .I(sign_ext_in[4]),
    .O(sign_ext_in_4_IBUF_475)
  );
  IBUF   sign_ext_in_3_IBUF (
    .I(sign_ext_in[3]),
    .O(sign_ext_in_3_IBUF_474)
  );
  IBUF   sign_ext_in_2_IBUF (
    .I(sign_ext_in[2]),
    .O(sign_ext_in_2_IBUF_473)
  );
  IBUF   sign_ext_in_1_IBUF (
    .I(sign_ext_in[1]),
    .O(sign_ext_in_1_IBUF_462)
  );
  IBUF   sign_ext_in_0_IBUF (
    .I(sign_ext_in[0]),
    .O(sign_ext_in_0_IBUF_451)
  );
  IBUF   instruction_25_IBUF (
    .I(instruction[25]),
    .O(instruction_25_IBUF_378)
  );
  IBUF   instruction_24_IBUF (
    .I(instruction[24]),
    .O(instruction_24_IBUF_377)
  );
  IBUF   instruction_23_IBUF (
    .I(instruction[23]),
    .O(instruction_23_IBUF_376)
  );
  IBUF   instruction_22_IBUF (
    .I(instruction[22]),
    .O(instruction_22_IBUF_375)
  );
  IBUF   instruction_21_IBUF (
    .I(instruction[21]),
    .O(instruction_21_IBUF_374)
  );
  IBUF   instruction_20_IBUF (
    .I(instruction[20]),
    .O(instruction_20_IBUF_373)
  );
  IBUF   instruction_19_IBUF (
    .I(instruction[19]),
    .O(instruction_19_IBUF_371)
  );
  IBUF   instruction_18_IBUF (
    .I(instruction[18]),
    .O(instruction_18_IBUF_370)
  );
  IBUF   instruction_17_IBUF (
    .I(instruction[17]),
    .O(instruction_17_IBUF_369)
  );
  IBUF   instruction_16_IBUF (
    .I(instruction[16]),
    .O(instruction_16_IBUF_368)
  );
  IBUF   instruction_15_IBUF (
    .I(instruction[15]),
    .O(instruction_15_IBUF_367)
  );
  IBUF   instruction_14_IBUF (
    .I(instruction[14]),
    .O(instruction_14_IBUF_366)
  );
  IBUF   instruction_13_IBUF (
    .I(instruction[13]),
    .O(instruction_13_IBUF_365)
  );
  IBUF   instruction_12_IBUF (
    .I(instruction[12]),
    .O(instruction_12_IBUF_364)
  );
  IBUF   instruction_11_IBUF (
    .I(instruction[11]),
    .O(instruction_11_IBUF_363)
  );
  IBUF   instruction_10_IBUF (
    .I(instruction[10]),
    .O(instruction_10_IBUF_362)
  );
  IBUF   instruction_9_IBUF (
    .I(instruction[9]),
    .O(instruction_9_IBUF_386)
  );
  IBUF   instruction_8_IBUF (
    .I(instruction[8]),
    .O(instruction_8_IBUF_385)
  );
  IBUF   instruction_7_IBUF (
    .I(instruction[7]),
    .O(instruction_7_IBUF_384)
  );
  IBUF   instruction_6_IBUF (
    .I(instruction[6]),
    .O(instruction_6_IBUF_383)
  );
  IBUF   instruction_5_IBUF (
    .I(instruction[5]),
    .O(instruction_5_IBUF_382)
  );
  IBUF   instruction_4_IBUF (
    .I(instruction[4]),
    .O(instruction_4_IBUF_381)
  );
  IBUF   instruction_3_IBUF (
    .I(instruction[3]),
    .O(instruction_3_IBUF_380)
  );
  IBUF   instruction_2_IBUF (
    .I(instruction[2]),
    .O(instruction_2_IBUF_379)
  );
  IBUF   instruction_1_IBUF (
    .I(instruction[1]),
    .O(instruction_1_IBUF_372)
  );
  IBUF   instruction_0_IBUF (
    .I(instruction[0]),
    .O(instruction_0_IBUF_361)
  );
  OBUF   PC_out_31_OBUF (
    .I(\M1/tmp [31]),
    .O(PC_out[31])
  );
  OBUF   PC_out_30_OBUF (
    .I(\M1/tmp [30]),
    .O(PC_out[30])
  );
  OBUF   PC_out_29_OBUF (
    .I(\M1/tmp [29]),
    .O(PC_out[29])
  );
  OBUF   PC_out_28_OBUF (
    .I(\M1/tmp [28]),
    .O(PC_out[28])
  );
  OBUF   PC_out_27_OBUF (
    .I(\M1/tmp [27]),
    .O(PC_out[27])
  );
  OBUF   PC_out_26_OBUF (
    .I(\M1/tmp [26]),
    .O(PC_out[26])
  );
  OBUF   PC_out_25_OBUF (
    .I(\M1/tmp [25]),
    .O(PC_out[25])
  );
  OBUF   PC_out_24_OBUF (
    .I(\M1/tmp [24]),
    .O(PC_out[24])
  );
  OBUF   PC_out_23_OBUF (
    .I(\M1/tmp [23]),
    .O(PC_out[23])
  );
  OBUF   PC_out_22_OBUF (
    .I(\M1/tmp [22]),
    .O(PC_out[22])
  );
  OBUF   PC_out_21_OBUF (
    .I(\M1/tmp [21]),
    .O(PC_out[21])
  );
  OBUF   PC_out_20_OBUF (
    .I(\M1/tmp [20]),
    .O(PC_out[20])
  );
  OBUF   PC_out_19_OBUF (
    .I(\M1/tmp [19]),
    .O(PC_out[19])
  );
  OBUF   PC_out_18_OBUF (
    .I(\M1/tmp [18]),
    .O(PC_out[18])
  );
  OBUF   PC_out_17_OBUF (
    .I(\M1/tmp [17]),
    .O(PC_out[17])
  );
  OBUF   PC_out_16_OBUF (
    .I(\M1/tmp [16]),
    .O(PC_out[16])
  );
  OBUF   PC_out_15_OBUF (
    .I(\M1/tmp [15]),
    .O(PC_out[15])
  );
  OBUF   PC_out_14_OBUF (
    .I(\M1/tmp [14]),
    .O(PC_out[14])
  );
  OBUF   PC_out_13_OBUF (
    .I(\M1/tmp [13]),
    .O(PC_out[13])
  );
  OBUF   PC_out_12_OBUF (
    .I(\M1/tmp [12]),
    .O(PC_out[12])
  );
  OBUF   PC_out_11_OBUF (
    .I(\M1/tmp [11]),
    .O(PC_out[11])
  );
  OBUF   PC_out_10_OBUF (
    .I(\M1/tmp [10]),
    .O(PC_out[10])
  );
  OBUF   PC_out_9_OBUF (
    .I(\M1/tmp [9]),
    .O(PC_out[9])
  );
  OBUF   PC_out_8_OBUF (
    .I(\M1/tmp [8]),
    .O(PC_out[8])
  );
  OBUF   PC_out_7_OBUF (
    .I(\M1/tmp [7]),
    .O(PC_out[7])
  );
  OBUF   PC_out_6_OBUF (
    .I(\M1/tmp [6]),
    .O(PC_out[6])
  );
  OBUF   PC_out_5_OBUF (
    .I(\M1/tmp [5]),
    .O(PC_out[5])
  );
  OBUF   PC_out_4_OBUF (
    .I(\M1/tmp [4]),
    .O(PC_out[4])
  );
  OBUF   PC_out_3_OBUF (
    .I(\M1/tmp [3]),
    .O(PC_out[3])
  );
  OBUF   PC_out_2_OBUF (
    .I(\M1/tmp [2]),
    .O(PC_out[2])
  );
  OBUF   PC_out_1_OBUF (
    .I(N0),
    .O(PC_out[1])
  );
  OBUF   PC_out_0_OBUF (
    .I(N0),
    .O(PC_out[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<3>_rt  (
    .I0(\M1/tmp [3]),
    .O(\M2/Madd_sum_cy<3>_rt_76 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<4>_rt  (
    .I0(\M1/tmp [4]),
    .O(\M2/Madd_sum_cy<4>_rt_78 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<5>_rt  (
    .I0(\M1/tmp [5]),
    .O(\M2/Madd_sum_cy<5>_rt_80 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<6>_rt  (
    .I0(\M1/tmp [6]),
    .O(\M2/Madd_sum_cy<6>_rt_82 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<7>_rt  (
    .I0(\M1/tmp [7]),
    .O(\M2/Madd_sum_cy<7>_rt_84 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<8>_rt  (
    .I0(\M1/tmp [8]),
    .O(\M2/Madd_sum_cy<8>_rt_86 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<9>_rt  (
    .I0(\M1/tmp [9]),
    .O(\M2/Madd_sum_cy<9>_rt_88 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<10>_rt  (
    .I0(\M1/tmp [10]),
    .O(\M2/Madd_sum_cy<10>_rt_33 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<11>_rt  (
    .I0(\M1/tmp [11]),
    .O(\M2/Madd_sum_cy<11>_rt_35 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<12>_rt  (
    .I0(\M1/tmp [12]),
    .O(\M2/Madd_sum_cy<12>_rt_37 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<13>_rt  (
    .I0(\M1/tmp [13]),
    .O(\M2/Madd_sum_cy<13>_rt_39 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<14>_rt  (
    .I0(\M1/tmp [14]),
    .O(\M2/Madd_sum_cy<14>_rt_41 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<15>_rt  (
    .I0(\M1/tmp [15]),
    .O(\M2/Madd_sum_cy<15>_rt_43 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<16>_rt  (
    .I0(\M1/tmp [16]),
    .O(\M2/Madd_sum_cy<16>_rt_45 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<17>_rt  (
    .I0(\M1/tmp [17]),
    .O(\M2/Madd_sum_cy<17>_rt_47 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<18>_rt  (
    .I0(\M1/tmp [18]),
    .O(\M2/Madd_sum_cy<18>_rt_49 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<19>_rt  (
    .I0(\M1/tmp [19]),
    .O(\M2/Madd_sum_cy<19>_rt_51 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<20>_rt  (
    .I0(\M1/tmp [20]),
    .O(\M2/Madd_sum_cy<20>_rt_53 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<21>_rt  (
    .I0(\M1/tmp [21]),
    .O(\M2/Madd_sum_cy<21>_rt_55 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<22>_rt  (
    .I0(\M1/tmp [22]),
    .O(\M2/Madd_sum_cy<22>_rt_57 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<23>_rt  (
    .I0(\M1/tmp [23]),
    .O(\M2/Madd_sum_cy<23>_rt_59 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<24>_rt  (
    .I0(\M1/tmp [24]),
    .O(\M2/Madd_sum_cy<24>_rt_61 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<25>_rt  (
    .I0(\M1/tmp [25]),
    .O(\M2/Madd_sum_cy<25>_rt_63 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<26>_rt  (
    .I0(\M1/tmp [26]),
    .O(\M2/Madd_sum_cy<26>_rt_65 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<27>_rt  (
    .I0(\M1/tmp [27]),
    .O(\M2/Madd_sum_cy<27>_rt_67 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<28>_rt  (
    .I0(\M1/tmp [28]),
    .O(\M2/Madd_sum_cy<28>_rt_69 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<29>_rt  (
    .I0(\M1/tmp [29]),
    .O(\M2/Madd_sum_cy<29>_rt_71 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_cy<30>_rt  (
    .I0(\M1/tmp [30]),
    .O(\M2/Madd_sum_cy<30>_rt_74 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \M2/Madd_sum_xor<31>_rt  (
    .I0(\M1/tmp [31]),
    .O(\M2/Madd_sum_xor<31>_rt_90 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \M8/tmp<27>28  (
    .I0(N3),
    .I1(N2),
    .I2(cond_br[27]),
    .O(tmp2[27])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \M8/tmp<26>28  (
    .I0(N6),
    .I1(N5),
    .I2(cond_br[26]),
    .O(tmp2[26])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \M8/tmp<25>28  (
    .I0(N9),
    .I1(N8),
    .I2(cond_br[25]),
    .O(tmp2[25])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \M8/tmp<24>28  (
    .I0(N12),
    .I1(N11),
    .I2(cond_br[24]),
    .O(tmp2[24])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \M8/tmp<23>28  (
    .I0(N15),
    .I1(N14),
    .I2(cond_br[23]),
    .O(tmp2[23])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \M8/tmp<22>28  (
    .I0(N18),
    .I1(N17),
    .I2(cond_br[22]),
    .O(tmp2[22])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \M8/tmp<21>28  (
    .I0(N21),
    .I1(N20),
    .I2(cond_br[21]),
    .O(tmp2[21])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \M8/tmp<20>28  (
    .I0(N24),
    .I1(N23),
    .I2(cond_br[20]),
    .O(tmp2[20])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \M8/tmp<19>28  (
    .I0(N27),
    .I1(N26),
    .I2(cond_br[19]),
    .O(tmp2[19])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \M8/tmp<18>28  (
    .I0(N30),
    .I1(N29),
    .I2(cond_br[18]),
    .O(tmp2[18])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \M8/tmp<17>28  (
    .I0(N33),
    .I1(N32),
    .I2(cond_br[17]),
    .O(tmp2[17])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \M8/tmp<16>28  (
    .I0(N36),
    .I1(N35),
    .I2(cond_br[16]),
    .O(tmp2[16])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \M8/tmp<15>28  (
    .I0(N39),
    .I1(N38),
    .I2(cond_br[15]),
    .O(tmp2[15])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \M8/tmp<14>28  (
    .I0(N42),
    .I1(N41),
    .I2(cond_br[14]),
    .O(tmp2[14])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \M8/tmp<13>28  (
    .I0(N45),
    .I1(N44),
    .I2(cond_br[13]),
    .O(tmp2[13])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \M8/tmp<12>28  (
    .I0(N48),
    .I1(N47),
    .I2(cond_br[12]),
    .O(tmp2[12])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \M8/tmp<11>28  (
    .I0(N51),
    .I1(N50),
    .I2(cond_br[11]),
    .O(tmp2[11])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \M8/tmp<10>28  (
    .I0(N54),
    .I1(N53),
    .I2(cond_br[10]),
    .O(tmp2[10])
  );
  MUXF5   \M8/tmp<27>16_SW0  (
    .I0(N56),
    .I1(N57),
    .S(pcplus4[27]),
    .O(N2)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \M8/tmp<27>16_SW0_F  (
    .I0(jmp_IBUF_388),
    .I1(instruction_25_IBUF_378),
    .O(N56)
  );
  LUT4 #(
    .INIT ( 16'hBF15 ))
  \M8/tmp<27>16_SW0_G  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_25_IBUF_378),
    .O(N57)
  );
  MUXF5   \M8/tmp<27>16_SW1  (
    .I0(N58),
    .I1(N59),
    .S(pcplus4[27]),
    .O(N3)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \M8/tmp<27>16_SW1_F  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_25_IBUF_378),
    .O(N58)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \M8/tmp<27>16_SW1_G  (
    .I0(instruction_25_IBUF_378),
    .I1(jmp_IBUF_388),
    .O(N59)
  );
  MUXF5   \M8/tmp<26>16_SW0  (
    .I0(N60),
    .I1(N61),
    .S(pcplus4[26]),
    .O(N5)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \M8/tmp<26>16_SW0_F  (
    .I0(jmp_IBUF_388),
    .I1(instruction_24_IBUF_377),
    .O(N60)
  );
  LUT4 #(
    .INIT ( 16'hBF15 ))
  \M8/tmp<26>16_SW0_G  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_24_IBUF_377),
    .O(N61)
  );
  MUXF5   \M8/tmp<26>16_SW1  (
    .I0(N62),
    .I1(N63),
    .S(pcplus4[26]),
    .O(N6)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \M8/tmp<26>16_SW1_F  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_24_IBUF_377),
    .O(N62)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \M8/tmp<26>16_SW1_G  (
    .I0(instruction_24_IBUF_377),
    .I1(jmp_IBUF_388),
    .O(N63)
  );
  MUXF5   \M8/tmp<25>16_SW0  (
    .I0(N64),
    .I1(N65),
    .S(pcplus4[25]),
    .O(N8)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \M8/tmp<25>16_SW0_F  (
    .I0(jmp_IBUF_388),
    .I1(instruction_23_IBUF_376),
    .O(N64)
  );
  LUT4 #(
    .INIT ( 16'hBF15 ))
  \M8/tmp<25>16_SW0_G  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_23_IBUF_376),
    .O(N65)
  );
  MUXF5   \M8/tmp<25>16_SW1  (
    .I0(N66),
    .I1(N67),
    .S(pcplus4[25]),
    .O(N9)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \M8/tmp<25>16_SW1_F  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_23_IBUF_376),
    .O(N66)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \M8/tmp<25>16_SW1_G  (
    .I0(instruction_23_IBUF_376),
    .I1(jmp_IBUF_388),
    .O(N67)
  );
  MUXF5   \M8/tmp<24>16_SW0  (
    .I0(N68),
    .I1(N69),
    .S(pcplus4[24]),
    .O(N11)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \M8/tmp<24>16_SW0_F  (
    .I0(jmp_IBUF_388),
    .I1(instruction_22_IBUF_375),
    .O(N68)
  );
  LUT4 #(
    .INIT ( 16'hBF15 ))
  \M8/tmp<24>16_SW0_G  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_22_IBUF_375),
    .O(N69)
  );
  MUXF5   \M8/tmp<24>16_SW1  (
    .I0(N70),
    .I1(N71),
    .S(pcplus4[24]),
    .O(N12)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \M8/tmp<24>16_SW1_F  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_22_IBUF_375),
    .O(N70)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \M8/tmp<24>16_SW1_G  (
    .I0(instruction_22_IBUF_375),
    .I1(jmp_IBUF_388),
    .O(N71)
  );
  MUXF5   \M8/tmp<23>16_SW0  (
    .I0(N72),
    .I1(N73),
    .S(pcplus4[23]),
    .O(N14)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \M8/tmp<23>16_SW0_F  (
    .I0(jmp_IBUF_388),
    .I1(instruction_21_IBUF_374),
    .O(N72)
  );
  LUT4 #(
    .INIT ( 16'hBF15 ))
  \M8/tmp<23>16_SW0_G  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_21_IBUF_374),
    .O(N73)
  );
  MUXF5   \M8/tmp<23>16_SW1  (
    .I0(N74),
    .I1(N75),
    .S(pcplus4[23]),
    .O(N15)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \M8/tmp<23>16_SW1_F  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_21_IBUF_374),
    .O(N74)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \M8/tmp<23>16_SW1_G  (
    .I0(instruction_21_IBUF_374),
    .I1(jmp_IBUF_388),
    .O(N75)
  );
  MUXF5   \M8/tmp<22>16_SW0  (
    .I0(N76),
    .I1(N77),
    .S(pcplus4[22]),
    .O(N17)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \M8/tmp<22>16_SW0_F  (
    .I0(jmp_IBUF_388),
    .I1(instruction_20_IBUF_373),
    .O(N76)
  );
  LUT4 #(
    .INIT ( 16'hBF15 ))
  \M8/tmp<22>16_SW0_G  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_20_IBUF_373),
    .O(N77)
  );
  MUXF5   \M8/tmp<22>16_SW1  (
    .I0(N78),
    .I1(N79),
    .S(pcplus4[22]),
    .O(N18)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \M8/tmp<22>16_SW1_F  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_20_IBUF_373),
    .O(N78)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \M8/tmp<22>16_SW1_G  (
    .I0(instruction_20_IBUF_373),
    .I1(jmp_IBUF_388),
    .O(N79)
  );
  MUXF5   \M8/tmp<21>16_SW0  (
    .I0(N80),
    .I1(N81),
    .S(pcplus4[21]),
    .O(N20)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \M8/tmp<21>16_SW0_F  (
    .I0(jmp_IBUF_388),
    .I1(instruction_19_IBUF_371),
    .O(N80)
  );
  LUT4 #(
    .INIT ( 16'hBF15 ))
  \M8/tmp<21>16_SW0_G  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_19_IBUF_371),
    .O(N81)
  );
  MUXF5   \M8/tmp<21>16_SW1  (
    .I0(N82),
    .I1(N83),
    .S(pcplus4[21]),
    .O(N21)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \M8/tmp<21>16_SW1_F  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_19_IBUF_371),
    .O(N82)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \M8/tmp<21>16_SW1_G  (
    .I0(instruction_19_IBUF_371),
    .I1(jmp_IBUF_388),
    .O(N83)
  );
  MUXF5   \M8/tmp<20>16_SW0  (
    .I0(N84),
    .I1(N85),
    .S(pcplus4[20]),
    .O(N23)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \M8/tmp<20>16_SW0_F  (
    .I0(jmp_IBUF_388),
    .I1(instruction_18_IBUF_370),
    .O(N84)
  );
  LUT4 #(
    .INIT ( 16'hBF15 ))
  \M8/tmp<20>16_SW0_G  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_18_IBUF_370),
    .O(N85)
  );
  MUXF5   \M8/tmp<20>16_SW1  (
    .I0(N86),
    .I1(N87),
    .S(pcplus4[20]),
    .O(N24)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \M8/tmp<20>16_SW1_F  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_18_IBUF_370),
    .O(N86)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \M8/tmp<20>16_SW1_G  (
    .I0(instruction_18_IBUF_370),
    .I1(jmp_IBUF_388),
    .O(N87)
  );
  MUXF5   \M8/tmp<19>16_SW0  (
    .I0(N88),
    .I1(N89),
    .S(pcplus4[19]),
    .O(N26)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \M8/tmp<19>16_SW0_F  (
    .I0(jmp_IBUF_388),
    .I1(instruction_17_IBUF_369),
    .O(N88)
  );
  LUT4 #(
    .INIT ( 16'hBF15 ))
  \M8/tmp<19>16_SW0_G  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_17_IBUF_369),
    .O(N89)
  );
  MUXF5   \M8/tmp<19>16_SW1  (
    .I0(N90),
    .I1(N91),
    .S(pcplus4[19]),
    .O(N27)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \M8/tmp<19>16_SW1_F  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_17_IBUF_369),
    .O(N90)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \M8/tmp<19>16_SW1_G  (
    .I0(instruction_17_IBUF_369),
    .I1(jmp_IBUF_388),
    .O(N91)
  );
  MUXF5   \M8/tmp<18>16_SW0  (
    .I0(N92),
    .I1(N93),
    .S(pcplus4[18]),
    .O(N29)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \M8/tmp<18>16_SW0_F  (
    .I0(jmp_IBUF_388),
    .I1(instruction_16_IBUF_368),
    .O(N92)
  );
  LUT4 #(
    .INIT ( 16'hBF15 ))
  \M8/tmp<18>16_SW0_G  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_16_IBUF_368),
    .O(N93)
  );
  MUXF5   \M8/tmp<18>16_SW1  (
    .I0(N94),
    .I1(N95),
    .S(pcplus4[18]),
    .O(N30)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \M8/tmp<18>16_SW1_F  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_16_IBUF_368),
    .O(N94)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \M8/tmp<18>16_SW1_G  (
    .I0(instruction_16_IBUF_368),
    .I1(jmp_IBUF_388),
    .O(N95)
  );
  MUXF5   \M8/tmp<17>16_SW0  (
    .I0(N96),
    .I1(N97),
    .S(pcplus4[17]),
    .O(N32)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \M8/tmp<17>16_SW0_F  (
    .I0(jmp_IBUF_388),
    .I1(instruction_15_IBUF_367),
    .O(N96)
  );
  LUT4 #(
    .INIT ( 16'hBF15 ))
  \M8/tmp<17>16_SW0_G  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_15_IBUF_367),
    .O(N97)
  );
  MUXF5   \M8/tmp<17>16_SW1  (
    .I0(N98),
    .I1(N99),
    .S(pcplus4[17]),
    .O(N33)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \M8/tmp<17>16_SW1_F  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_15_IBUF_367),
    .O(N98)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \M8/tmp<17>16_SW1_G  (
    .I0(instruction_15_IBUF_367),
    .I1(jmp_IBUF_388),
    .O(N99)
  );
  MUXF5   \M8/tmp<16>16_SW0  (
    .I0(N100),
    .I1(N101),
    .S(pcplus4[16]),
    .O(N35)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \M8/tmp<16>16_SW0_F  (
    .I0(jmp_IBUF_388),
    .I1(instruction_14_IBUF_366),
    .O(N100)
  );
  LUT4 #(
    .INIT ( 16'hBF15 ))
  \M8/tmp<16>16_SW0_G  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_14_IBUF_366),
    .O(N101)
  );
  MUXF5   \M8/tmp<16>16_SW1  (
    .I0(N102),
    .I1(N103),
    .S(pcplus4[16]),
    .O(N36)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \M8/tmp<16>16_SW1_F  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_14_IBUF_366),
    .O(N102)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \M8/tmp<16>16_SW1_G  (
    .I0(instruction_14_IBUF_366),
    .I1(jmp_IBUF_388),
    .O(N103)
  );
  MUXF5   \M8/tmp<15>16_SW0  (
    .I0(N104),
    .I1(N105),
    .S(pcplus4[15]),
    .O(N38)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \M8/tmp<15>16_SW0_F  (
    .I0(jmp_IBUF_388),
    .I1(instruction_13_IBUF_365),
    .O(N104)
  );
  LUT4 #(
    .INIT ( 16'hBF15 ))
  \M8/tmp<15>16_SW0_G  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_13_IBUF_365),
    .O(N105)
  );
  MUXF5   \M8/tmp<15>16_SW1  (
    .I0(N106),
    .I1(N107),
    .S(pcplus4[15]),
    .O(N39)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \M8/tmp<15>16_SW1_F  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_13_IBUF_365),
    .O(N106)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \M8/tmp<15>16_SW1_G  (
    .I0(instruction_13_IBUF_365),
    .I1(jmp_IBUF_388),
    .O(N107)
  );
  MUXF5   \M8/tmp<14>16_SW0  (
    .I0(N108),
    .I1(N109),
    .S(pcplus4[14]),
    .O(N41)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \M8/tmp<14>16_SW0_F  (
    .I0(jmp_IBUF_388),
    .I1(instruction_12_IBUF_364),
    .O(N108)
  );
  LUT4 #(
    .INIT ( 16'hBF15 ))
  \M8/tmp<14>16_SW0_G  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_12_IBUF_364),
    .O(N109)
  );
  MUXF5   \M8/tmp<14>16_SW1  (
    .I0(N110),
    .I1(N111),
    .S(pcplus4[14]),
    .O(N42)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \M8/tmp<14>16_SW1_F  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_12_IBUF_364),
    .O(N110)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \M8/tmp<14>16_SW1_G  (
    .I0(instruction_12_IBUF_364),
    .I1(jmp_IBUF_388),
    .O(N111)
  );
  MUXF5   \M8/tmp<13>16_SW0  (
    .I0(N112),
    .I1(N113),
    .S(pcplus4[13]),
    .O(N44)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \M8/tmp<13>16_SW0_F  (
    .I0(jmp_IBUF_388),
    .I1(instruction_11_IBUF_363),
    .O(N112)
  );
  LUT4 #(
    .INIT ( 16'hBF15 ))
  \M8/tmp<13>16_SW0_G  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_11_IBUF_363),
    .O(N113)
  );
  MUXF5   \M8/tmp<13>16_SW1  (
    .I0(N114),
    .I1(N115),
    .S(pcplus4[13]),
    .O(N45)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \M8/tmp<13>16_SW1_F  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_11_IBUF_363),
    .O(N114)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \M8/tmp<13>16_SW1_G  (
    .I0(instruction_11_IBUF_363),
    .I1(jmp_IBUF_388),
    .O(N115)
  );
  MUXF5   \M8/tmp<12>16_SW0  (
    .I0(N116),
    .I1(N117),
    .S(pcplus4[12]),
    .O(N47)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \M8/tmp<12>16_SW0_F  (
    .I0(jmp_IBUF_388),
    .I1(instruction_10_IBUF_362),
    .O(N116)
  );
  LUT4 #(
    .INIT ( 16'hBF15 ))
  \M8/tmp<12>16_SW0_G  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_10_IBUF_362),
    .O(N117)
  );
  MUXF5   \M8/tmp<12>16_SW1  (
    .I0(N118),
    .I1(N119),
    .S(pcplus4[12]),
    .O(N48)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \M8/tmp<12>16_SW1_F  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_10_IBUF_362),
    .O(N118)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \M8/tmp<12>16_SW1_G  (
    .I0(instruction_10_IBUF_362),
    .I1(jmp_IBUF_388),
    .O(N119)
  );
  MUXF5   \M8/tmp<11>16_SW0  (
    .I0(N120),
    .I1(N121),
    .S(pcplus4[11]),
    .O(N50)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \M8/tmp<11>16_SW0_F  (
    .I0(jmp_IBUF_388),
    .I1(instruction_9_IBUF_386),
    .O(N120)
  );
  LUT4 #(
    .INIT ( 16'hBF15 ))
  \M8/tmp<11>16_SW0_G  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_9_IBUF_386),
    .O(N121)
  );
  MUXF5   \M8/tmp<11>16_SW1  (
    .I0(N122),
    .I1(N123),
    .S(pcplus4[11]),
    .O(N51)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \M8/tmp<11>16_SW1_F  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_9_IBUF_386),
    .O(N122)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \M8/tmp<11>16_SW1_G  (
    .I0(instruction_9_IBUF_386),
    .I1(jmp_IBUF_388),
    .O(N123)
  );
  MUXF5   \M8/tmp<10>16_SW0  (
    .I0(N124),
    .I1(N125),
    .S(pcplus4[10]),
    .O(N53)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \M8/tmp<10>16_SW0_F  (
    .I0(jmp_IBUF_388),
    .I1(instruction_8_IBUF_385),
    .O(N124)
  );
  LUT4 #(
    .INIT ( 16'hBF15 ))
  \M8/tmp<10>16_SW0_G  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_8_IBUF_385),
    .O(N125)
  );
  MUXF5   \M8/tmp<10>16_SW1  (
    .I0(N126),
    .I1(N127),
    .S(pcplus4[10]),
    .O(N54)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \M8/tmp<10>16_SW1_F  (
    .I0(jmp_IBUF_388),
    .I1(Zero_in_IBUF_302),
    .I2(Br_in_IBUF_1),
    .I3(instruction_8_IBUF_385),
    .O(N126)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \M8/tmp<10>16_SW1_G  (
    .I0(instruction_8_IBUF_385),
    .I1(jmp_IBUF_388),
    .O(N127)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_304)
  );
  INV   \M2/Madd_sum_lut<2>_INV_0  (
    .I(\M1/tmp [2]),
    .O(\M2/Madd_sum_lut [2])
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \M8/tmp<2>281  (
    .I0(pcplus4[2]),
    .I1(Br_in_IBUF_1),
    .I2(Zero_in_IBUF_302),
    .I3(cond_br[2]),
    .O(\M8/tmp<2>28 )
  );
  MUXF5   \M8/tmp<2>28_f5  (
    .I0(\M8/tmp<2>28 ),
    .I1(instruction_0_IBUF_361),
    .S(jmp_IBUF_388),
    .O(tmp2[2])
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \M8/tmp<9>2811  (
    .I0(pcplus4[9]),
    .I1(Br_in_IBUF_1),
    .I2(Zero_in_IBUF_302),
    .I3(cond_br[9]),
    .O(\M8/tmp<9>281 )
  );
  MUXF5   \M8/tmp<9>281_f5  (
    .I0(\M8/tmp<9>281 ),
    .I1(instruction_7_IBUF_384),
    .S(jmp_IBUF_388),
    .O(tmp2[9])
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \M8/tmp<8>2811  (
    .I0(pcplus4[8]),
    .I1(Br_in_IBUF_1),
    .I2(Zero_in_IBUF_302),
    .I3(cond_br[8]),
    .O(\M8/tmp<8>281 )
  );
  MUXF5   \M8/tmp<8>281_f5  (
    .I0(\M8/tmp<8>281 ),
    .I1(instruction_6_IBUF_383),
    .S(jmp_IBUF_388),
    .O(tmp2[8])
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \M8/tmp<7>2811  (
    .I0(pcplus4[7]),
    .I1(Br_in_IBUF_1),
    .I2(Zero_in_IBUF_302),
    .I3(cond_br[7]),
    .O(\M8/tmp<7>281 )
  );
  MUXF5   \M8/tmp<7>281_f5  (
    .I0(\M8/tmp<7>281 ),
    .I1(instruction_5_IBUF_382),
    .S(jmp_IBUF_388),
    .O(tmp2[7])
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \M8/tmp<6>2811  (
    .I0(pcplus4[6]),
    .I1(Br_in_IBUF_1),
    .I2(Zero_in_IBUF_302),
    .I3(cond_br[6]),
    .O(\M8/tmp<6>281 )
  );
  MUXF5   \M8/tmp<6>281_f5  (
    .I0(\M8/tmp<6>281 ),
    .I1(instruction_4_IBUF_381),
    .S(jmp_IBUF_388),
    .O(tmp2[6])
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \M8/tmp<5>2811  (
    .I0(pcplus4[5]),
    .I1(Br_in_IBUF_1),
    .I2(Zero_in_IBUF_302),
    .I3(cond_br[5]),
    .O(\M8/tmp<5>281 )
  );
  MUXF5   \M8/tmp<5>281_f5  (
    .I0(\M8/tmp<5>281 ),
    .I1(instruction_3_IBUF_380),
    .S(jmp_IBUF_388),
    .O(tmp2[5])
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \M8/tmp<4>2811  (
    .I0(pcplus4[4]),
    .I1(Br_in_IBUF_1),
    .I2(Zero_in_IBUF_302),
    .I3(cond_br[4]),
    .O(\M8/tmp<4>281 )
  );
  MUXF5   \M8/tmp<4>281_f5  (
    .I0(\M8/tmp<4>281 ),
    .I1(instruction_2_IBUF_379),
    .S(jmp_IBUF_388),
    .O(tmp2[4])
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \M8/tmp<3>2811  (
    .I0(pcplus4[3]),
    .I1(Br_in_IBUF_1),
    .I2(Zero_in_IBUF_302),
    .I3(cond_br[3]),
    .O(\M8/tmp<3>281 )
  );
  MUXF5   \M8/tmp<3>281_f5  (
    .I0(\M8/tmp<3>281 ),
    .I1(instruction_1_IBUF_372),
    .S(jmp_IBUF_388),
    .O(tmp2[3])
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

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

