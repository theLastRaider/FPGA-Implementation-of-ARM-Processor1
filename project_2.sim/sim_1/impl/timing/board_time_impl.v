// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Sat Apr 28 10:16:33 2018
// Host        : pranav-HP-Pavilion-Notebook running 64-bit Ubuntu 17.10
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/pranav/Downloads/project_2_LAB5new/project_2_LAB5/project_2.sim/sim_1/impl/timing/board_time_impl.v
// Design      : board
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM128X1D_UNIQ_BASE_
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000041),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000041),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3795
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000001),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000001),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3796
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000001),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000001),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3797
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h00000000000000A0),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h00000000000000A0),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3798
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h00000000000000C0),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h00000000000000C0),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3799
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h00000000000000C8),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h00000000000000C8),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3800
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000080),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000080),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3801
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000020),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000020),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3802
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3803
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3804
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3805
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h00000000000000A0),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h00000000000000A0),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3806
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000026),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000026),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3807
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h00000000000000C9),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h00000000000000C9),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3808
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000004),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000004),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3809
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h00000000000000CB),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h00000000000000CB),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3810
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h00000000000000DF),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h00000000000000DF),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3811
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000055),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000055),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3812
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000002),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000002),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3813
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000010),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000010),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3814
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000020),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000020),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3815
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h00000000000000DF),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h00000000000000DF),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3816
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h00000000000000C0),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h00000000000000C0),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3817
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h00000000000000D7),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h00000000000000D7),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3818
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h00000000000000FF),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h00000000000000FF),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3819
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000081),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000081),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3820
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000001),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000001),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3821
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3822
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3823
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3824
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3825
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000001),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000001000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000001),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3857
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3858
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3859
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3860
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3861
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3862
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3863
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3864
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3865
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3866
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3867
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3868
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3869
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3870
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3871
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3872
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3873
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3874
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3875
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3876
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3877
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3878
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3879
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3880
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3881
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3882
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3883
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3884
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3885
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3886
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3887
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3888
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3889
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3890
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3891
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3892
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3893
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3894
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3895
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3896
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3897
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3898
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3899
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3900
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3901
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3902
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3903
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3904
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3905
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3906
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3907
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3908
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3909
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3910
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3911
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3912
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3913
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3914
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3915
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3916
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3917
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3918
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3919
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3920
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3921
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3922
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3923
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3924
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3925
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3926
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3927
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3928
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3929
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3930
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3931
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3932
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3933
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3934
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3935
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3936
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3937
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3938
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3939
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3940
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3941
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3942
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3943
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3944
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3945
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3946
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3947
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3948
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3949
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3950
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3951
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3952
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3953
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3954
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3955
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3956
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3957
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3958
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3959
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3960
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3961
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3962
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3963
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3964
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3965
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3966
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3967
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3968
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3969
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3970
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3971
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3972
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3973
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3974
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3975
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3976
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3977
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3978
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3979
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3980
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3981
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3982
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3983
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3984
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3985
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3986
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3987
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3988
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3989
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3990
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3991
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3992
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3993
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3994
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3995
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3996
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3997
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3998
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD3999
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4000
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4001
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4002
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4003
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4004
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4005
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4006
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4007
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4008
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4009
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4010
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4011
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4012
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4013
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4014
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4015
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4016
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4017
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4018
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4019
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4020
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4021
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4022
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4023
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4024
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4025
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4026
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4027
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4028
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4029
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4030
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4031
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4032
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4033
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4034
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4035
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4036
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4037
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4038
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4039
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4040
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4041
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4042
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4043
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4044
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4045
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4046
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4047
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4048
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4049
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4050
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4051
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4052
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4053
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4054
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4055
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4056
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4057
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4058
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4059
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4060
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4061
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4062
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4063
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4064
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4065
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4066
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4067
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4068
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4069
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4070
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4071
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4072
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4073
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4074
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4075
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4076
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4077
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4078
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4079
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4080
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4081
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4082
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4083
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4084
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4085
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4086
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4087
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4088
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4089
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4090
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4091
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4092
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4093
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4094
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4095
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4096
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4097
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4098
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4099
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4100
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4101
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4102
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4103
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4104
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4105
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4106
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4107
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4108
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4109
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4110
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4111
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4112
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4113
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4114
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4115
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4116
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4117
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4118
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4119
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4120
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4121
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4122
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4123
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4124
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4125
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4126
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \SP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(SPO1),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \SP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(SPO0),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .RADR5(A5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_SP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
endmodule

module RAM128X1D_HD4127
   (DPO,
    SPO,
    A,
    D,
    DPRA,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input [6:0]A;
  input D;
  input [6:0]DPRA;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire DPO;
  wire DPO0;
  wire DPO1;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire DPRA5;
  wire DPRA6;
  wire SPO;
  wire SPO0;
  wire SPO1;
  wire WCLK;
  wire WE;
  wire \NLW_DP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_DP.LOW_WADR7_UNCONNECTED ;
  wire \NLW_SP.HIGH_WADR7_UNCONNECTED ;
  wire \NLW_SP.LOW_WADR7_UNCONNECTED ;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign DPRA0 = DPRA[0];
  assign DPRA1 = DPRA[1];
  assign DPRA2 = DPRA[2];
  assign DPRA3 = DPRA[3];
  assign DPRA4 = DPRA[4];
  assign DPRA5 = DPRA[5];
  assign DPRA6 = DPRA[6];
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    \DP.HIGH 
       (.CLK(WCLK),
        .I(D),
        .O(DPO1),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.HIGH_WADR7_UNCONNECTED ),
        .WE(WE));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    \DP.LOW 
       (.CLK(WCLK),
        .I(D),
        .O(DPO0),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .RADR5(DPRA5),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WADR5(A5),
        .WADR6(A6),
        .WADR7(\NLW_DP.LOW_WADR7_UNCONNECTED ),
        .WE(WE));
  MUXF7 \F7.DP 
       (.I0(DPO0),
        .I1(DPO1),
        .O(DPO),
        .S(DPRA6));
  MUXF7 \F7.SP 
       (.I0(SPO0),
        .I1(SPO1),
        .O(SPO),
        .S(A6));
  RAMD64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    \SP.HIGH 

