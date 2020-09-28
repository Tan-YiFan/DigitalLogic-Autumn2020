// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Sep 28 17:26:48 2020
// Host        : LAPTOP-N51EE4NF running 64-bit major release  (build 9200)
// Command     : write_verilog D:/2020Autumn/DigitalLogic/DigitalLogic-Autumn2020/experiment/lab1/ans.v
// Design      : ans
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* keep = "true" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module ans
   (in1,
    in2,
    in3,
    in4,
    ans1,
    ans2,
    ans3,
    ans4,
    en);
  input [3:0]in1;
  input [4:0]in2;
  input [15:0]in3;
  input [15:0]in4;
  output [15:0]ans1;
  output [31:0]ans2;
  output [3:0]ans3;
  output [3:0]ans4;
  input en;

  wire [15:0]ans1;
  wire [15:0]ans1_OBUF;
  wire [31:0]ans2;
  wire [31:0]ans2_OBUF;
  wire [3:0]ans3;
  wire [3:0]ans3_OBUF;
  wire \ans3_OBUF[0]_inst_i_2_n_0 ;
  wire \ans3_OBUF[0]_inst_i_3_n_0 ;
  wire \ans3_OBUF[0]_inst_i_4_n_0 ;
  wire \ans3_OBUF[0]_inst_i_5_n_0 ;
  wire \ans3_OBUF[0]_inst_i_6_n_0 ;
  wire \ans3_OBUF[1]_inst_i_2_n_0 ;
  wire \ans3_OBUF[1]_inst_i_3_n_0 ;
  wire \ans3_OBUF[1]_inst_i_4_n_0 ;
  wire \ans3_OBUF[2]_inst_i_2_n_0 ;
  wire \ans3_OBUF[3]_inst_i_2_n_0 ;
  wire [3:0]ans4;
  wire [3:0]ans4_OBUF;
  wire \ans4_OBUF[0]_inst_i_2_n_0 ;
  wire \ans4_OBUF[0]_inst_i_3_n_0 ;
  wire \ans4_OBUF[0]_inst_i_4_n_0 ;
  wire \ans4_OBUF[0]_inst_i_5_n_0 ;
  wire \ans4_OBUF[0]_inst_i_6_n_0 ;
  wire \ans4_OBUF[1]_inst_i_2_n_0 ;
  wire \ans4_OBUF[1]_inst_i_3_n_0 ;
  wire \ans4_OBUF[1]_inst_i_4_n_0 ;
  wire \ans4_OBUF[2]_inst_i_2_n_0 ;
  wire \ans4_OBUF[3]_inst_i_2_n_0 ;
  wire en;
  wire en_IBUF;
  wire [3:0]in1;
  wire [3:0]in1_IBUF;
  wire [4:0]in2;
  wire [4:0]in2_IBUF;
  wire [15:0]in3;
  wire [15:1]in3_IBUF;
  wire [15:0]in4;
  wire [15:1]in4_IBUF;

  OBUF \ans1_OBUF[0]_inst 
       (.I(ans1_OBUF[0]),
        .O(ans1[0]));
  OBUF \ans1_OBUF[10]_inst 
       (.I(ans1_OBUF[10]),
        .O(ans1[10]));
  OBUF \ans1_OBUF[11]_inst 
       (.I(ans1_OBUF[11]),
        .O(ans1[11]));
  OBUF \ans1_OBUF[12]_inst 
       (.I(ans1_OBUF[12]),
        .O(ans1[12]));
  OBUF \ans1_OBUF[13]_inst 
       (.I(ans1_OBUF[13]),
        .O(ans1[13]));
  OBUF \ans1_OBUF[14]_inst 
       (.I(ans1_OBUF[14]),
        .O(ans1[14]));
  OBUF \ans1_OBUF[15]_inst 
       (.I(ans1_OBUF[15]),
        .O(ans1[15]));
  OBUF \ans1_OBUF[1]_inst 
       (.I(ans1_OBUF[1]),
        .O(ans1[1]));
  OBUF \ans1_OBUF[2]_inst 
       (.I(ans1_OBUF[2]),
        .O(ans1[2]));
  OBUF \ans1_OBUF[3]_inst 
       (.I(ans1_OBUF[3]),
        .O(ans1[3]));
  OBUF \ans1_OBUF[4]_inst 
       (.I(ans1_OBUF[4]),
        .O(ans1[4]));
  OBUF \ans1_OBUF[5]_inst 
       (.I(ans1_OBUF[5]),
        .O(ans1[5]));
  OBUF \ans1_OBUF[6]_inst 
       (.I(ans1_OBUF[6]),
        .O(ans1[6]));
  OBUF \ans1_OBUF[7]_inst 
       (.I(ans1_OBUF[7]),
        .O(ans1[7]));
  OBUF \ans1_OBUF[8]_inst 
       (.I(ans1_OBUF[8]),
        .O(ans1[8]));
  OBUF \ans1_OBUF[9]_inst 
       (.I(ans1_OBUF[9]),
        .O(ans1[9]));
  OBUF \ans2_OBUF[0]_inst 
       (.I(ans2_OBUF[0]),
        .O(ans2[0]));
  OBUF \ans2_OBUF[10]_inst 
       (.I(ans2_OBUF[10]),
        .O(ans2[10]));
  OBUF \ans2_OBUF[11]_inst 
       (.I(ans2_OBUF[11]),
        .O(ans2[11]));
  OBUF \ans2_OBUF[12]_inst 
       (.I(ans2_OBUF[12]),
        .O(ans2[12]));
  OBUF \ans2_OBUF[13]_inst 
       (.I(ans2_OBUF[13]),
        .O(ans2[13]));
  OBUF \ans2_OBUF[14]_inst 
       (.I(ans2_OBUF[14]),
        .O(ans2[14]));
  OBUF \ans2_OBUF[15]_inst 
       (.I(ans2_OBUF[15]),
        .O(ans2[15]));
  OBUF \ans2_OBUF[16]_inst 
       (.I(ans2_OBUF[16]),
        .O(ans2[16]));
  OBUF \ans2_OBUF[17]_inst 
       (.I(ans2_OBUF[17]),
        .O(ans2[17]));
  OBUF \ans2_OBUF[18]_inst 
       (.I(ans2_OBUF[18]),
        .O(ans2[18]));
  OBUF \ans2_OBUF[19]_inst 
       (.I(ans2_OBUF[19]),
        .O(ans2[19]));
  OBUF \ans2_OBUF[1]_inst 
       (.I(ans2_OBUF[1]),
        .O(ans2[1]));
  OBUF \ans2_OBUF[20]_inst 
       (.I(ans2_OBUF[20]),
        .O(ans2[20]));
  OBUF \ans2_OBUF[21]_inst 
       (.I(ans2_OBUF[21]),
        .O(ans2[21]));
  OBUF \ans2_OBUF[22]_inst 
       (.I(ans2_OBUF[22]),
        .O(ans2[22]));
  OBUF \ans2_OBUF[23]_inst 
       (.I(ans2_OBUF[23]),
        .O(ans2[23]));
  OBUF \ans2_OBUF[24]_inst 
       (.I(ans2_OBUF[24]),
        .O(ans2[24]));
  OBUF \ans2_OBUF[25]_inst 
       (.I(ans2_OBUF[25]),
        .O(ans2[25]));
  OBUF \ans2_OBUF[26]_inst 
       (.I(ans2_OBUF[26]),
        .O(ans2[26]));
  OBUF \ans2_OBUF[27]_inst 
       (.I(ans2_OBUF[27]),
        .O(ans2[27]));
  OBUF \ans2_OBUF[28]_inst 
       (.I(ans2_OBUF[28]),
        .O(ans2[28]));
  OBUF \ans2_OBUF[29]_inst 
       (.I(ans2_OBUF[29]),
        .O(ans2[29]));
  OBUF \ans2_OBUF[2]_inst 
       (.I(ans2_OBUF[2]),
        .O(ans2[2]));
  OBUF \ans2_OBUF[30]_inst 
       (.I(ans2_OBUF[30]),
        .O(ans2[30]));
  OBUF \ans2_OBUF[31]_inst 
       (.I(ans2_OBUF[31]),
        .O(ans2[31]));
  OBUF \ans2_OBUF[3]_inst 
       (.I(ans2_OBUF[3]),
        .O(ans2[3]));
  OBUF \ans2_OBUF[4]_inst 
       (.I(ans2_OBUF[4]),
        .O(ans2[4]));
  OBUF \ans2_OBUF[5]_inst 
       (.I(ans2_OBUF[5]),
        .O(ans2[5]));
  OBUF \ans2_OBUF[6]_inst 
       (.I(ans2_OBUF[6]),
        .O(ans2[6]));
  OBUF \ans2_OBUF[7]_inst 
       (.I(ans2_OBUF[7]),
        .O(ans2[7]));
  OBUF \ans2_OBUF[8]_inst 
       (.I(ans2_OBUF[8]),
        .O(ans2[8]));
  OBUF \ans2_OBUF[9]_inst 
       (.I(ans2_OBUF[9]),
        .O(ans2[9]));
  OBUF \ans3_OBUF[0]_inst 
       (.I(ans3_OBUF[0]),
        .O(ans3[0]));
  LUT6 #(
    .INIT(64'h00000000EEEEEEFE)) 
    \ans3_OBUF[0]_inst_i_1 
       (.I0(\ans3_OBUF[0]_inst_i_2_n_0 ),
        .I1(\ans3_OBUF[0]_inst_i_3_n_0 ),
        .I2(\ans3_OBUF[0]_inst_i_4_n_0 ),
        .I3(\ans3_OBUF[0]_inst_i_5_n_0 ),
        .I4(\ans3_OBUF[1]_inst_i_4_n_0 ),
        .I5(\ans3_OBUF[0]_inst_i_6_n_0 ),
        .O(ans3_OBUF[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ans3_OBUF[0]_inst_i_2 
       (.I0(in3_IBUF[10]),
        .I1(in3_IBUF[11]),
        .I2(in3_IBUF[12]),
        .I3(in3_IBUF[13]),
        .I4(in3_IBUF[15]),
        .I5(in3_IBUF[14]),
        .O(\ans3_OBUF[0]_inst_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \ans3_OBUF[0]_inst_i_3 
       (.I0(in3_IBUF[9]),
        .I1(in3_IBUF[8]),
        .I2(in3_IBUF[7]),
        .O(\ans3_OBUF[0]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \ans3_OBUF[0]_inst_i_4 
       (.I0(in3_IBUF[5]),
        .I1(in3_IBUF[4]),
        .I2(in3_IBUF[3]),
        .I3(in3_IBUF[2]),
        .I4(in3_IBUF[1]),
        .O(\ans3_OBUF[0]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ans3_OBUF[0]_inst_i_5 
       (.I0(in3_IBUF[6]),
        .I1(in3_IBUF[7]),
        .O(\ans3_OBUF[0]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2322232323222322)) 
    \ans3_OBUF[0]_inst_i_6 
       (.I0(in3_IBUF[14]),
        .I1(in3_IBUF[15]),
        .I2(in3_IBUF[13]),
        .I3(in3_IBUF[12]),
        .I4(in3_IBUF[11]),
        .I5(in3_IBUF[10]),
        .O(\ans3_OBUF[0]_inst_i_6_n_0 ));
  OBUF \ans3_OBUF[1]_inst 
       (.I(ans3_OBUF[1]),
        .O(ans3[1]));
  LUT6 #(
    .INIT(64'hEEFFEE00EEFFEE0F)) 
    \ans3_OBUF[1]_inst_i_1 
       (.I0(in3_IBUF[14]),
        .I1(in3_IBUF[15]),
        .I2(\ans3_OBUF[1]_inst_i_2_n_0 ),
        .I3(\ans3_OBUF[3]_inst_i_2_n_0 ),
        .I4(\ans3_OBUF[1]_inst_i_3_n_0 ),
        .I5(\ans3_OBUF[1]_inst_i_4_n_0 ),
        .O(ans3_OBUF[1]));
  LUT6 #(
    .INIT(64'h000000000000EEEF)) 
    \ans3_OBUF[1]_inst_i_2 
       (.I0(in3_IBUF[5]),
        .I1(in3_IBUF[4]),
        .I2(in3_IBUF[2]),
        .I3(in3_IBUF[3]),
        .I4(in3_IBUF[7]),
        .I5(in3_IBUF[6]),
        .O(\ans3_OBUF[1]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ans3_OBUF[1]_inst_i_3 
       (.I0(in3_IBUF[11]),
        .I1(in3_IBUF[10]),
        .O(\ans3_OBUF[1]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ans3_OBUF[1]_inst_i_4 
       (.I0(in3_IBUF[9]),
        .I1(in3_IBUF[8]),
        .O(\ans3_OBUF[1]_inst_i_4_n_0 ));
  OBUF \ans3_OBUF[2]_inst 
       (.I(ans3_OBUF[2]),
        .O(ans3[2]));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCD)) 
    \ans3_OBUF[2]_inst_i_1 
       (.I0(\ans3_OBUF[2]_inst_i_2_n_0 ),
        .I1(\ans3_OBUF[3]_inst_i_2_n_0 ),
        .I2(in3_IBUF[11]),
        .I3(in3_IBUF[10]),
        .I4(in3_IBUF[8]),
        .I5(in3_IBUF[9]),
        .O(ans3_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \ans3_OBUF[2]_inst_i_2 
       (.I0(in3_IBUF[4]),
        .I1(in3_IBUF[5]),
        .I2(in3_IBUF[7]),
        .I3(in3_IBUF[6]),
        .O(\ans3_OBUF[2]_inst_i_2_n_0 ));
  OBUF \ans3_OBUF[3]_inst 
       (.I(ans3_OBUF[3]),
        .O(ans3[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ans3_OBUF[3]_inst_i_1 
       (.I0(in3_IBUF[9]),
        .I1(in3_IBUF[8]),
        .I2(in3_IBUF[10]),
        .I3(in3_IBUF[11]),
        .I4(\ans3_OBUF[3]_inst_i_2_n_0 ),
        .O(ans3_OBUF[3]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ans3_OBUF[3]_inst_i_2 
       (.I0(in3_IBUF[14]),
        .I1(in3_IBUF[15]),
        .I2(in3_IBUF[13]),
        .I3(in3_IBUF[12]),
        .O(\ans3_OBUF[3]_inst_i_2_n_0 ));
  OBUF \ans4_OBUF[0]_inst 
       (.I(ans4_OBUF[0]),
        .O(ans4[0]));
  LUT6 #(
    .INIT(64'h00000000EEEEEEFE)) 
    \ans4_OBUF[0]_inst_i_1 
       (.I0(\ans4_OBUF[0]_inst_i_2_n_0 ),
        .I1(\ans4_OBUF[0]_inst_i_3_n_0 ),
        .I2(\ans4_OBUF[0]_inst_i_4_n_0 ),
        .I3(\ans4_OBUF[0]_inst_i_5_n_0 ),
        .I4(\ans4_OBUF[1]_inst_i_4_n_0 ),
        .I5(\ans4_OBUF[0]_inst_i_6_n_0 ),
        .O(ans4_OBUF[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ans4_OBUF[0]_inst_i_2 
       (.I0(in4_IBUF[10]),
        .I1(in4_IBUF[11]),
        .I2(in4_IBUF[12]),
        .I3(in4_IBUF[13]),
        .I4(in4_IBUF[15]),
        .I5(in4_IBUF[14]),
        .O(\ans4_OBUF[0]_inst_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \ans4_OBUF[0]_inst_i_3 
       (.I0(in4_IBUF[9]),
        .I1(in4_IBUF[8]),
        .I2(in4_IBUF[7]),
        .O(\ans4_OBUF[0]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \ans4_OBUF[0]_inst_i_4 
       (.I0(in4_IBUF[5]),
        .I1(in4_IBUF[4]),
        .I2(in4_IBUF[3]),
        .I3(in4_IBUF[2]),
        .I4(in4_IBUF[1]),
        .O(\ans4_OBUF[0]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ans4_OBUF[0]_inst_i_5 
       (.I0(in4_IBUF[6]),
        .I1(in4_IBUF[7]),
        .O(\ans4_OBUF[0]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2322232323222322)) 
    \ans4_OBUF[0]_inst_i_6 
       (.I0(in4_IBUF[14]),
        .I1(in4_IBUF[15]),
        .I2(in4_IBUF[13]),
        .I3(in4_IBUF[12]),
        .I4(in4_IBUF[11]),
        .I5(in4_IBUF[10]),
        .O(\ans4_OBUF[0]_inst_i_6_n_0 ));
  OBUF \ans4_OBUF[1]_inst 
       (.I(ans4_OBUF[1]),
        .O(ans4[1]));
  LUT6 #(
    .INIT(64'hEEFFEE00EEFFEE0F)) 
    \ans4_OBUF[1]_inst_i_1 
       (.I0(in4_IBUF[14]),
        .I1(in4_IBUF[15]),
        .I2(\ans4_OBUF[1]_inst_i_2_n_0 ),
        .I3(\ans4_OBUF[3]_inst_i_2_n_0 ),
        .I4(\ans4_OBUF[1]_inst_i_3_n_0 ),
        .I5(\ans4_OBUF[1]_inst_i_4_n_0 ),
        .O(ans4_OBUF[1]));
  LUT6 #(
    .INIT(64'h000000000000EEEF)) 
    \ans4_OBUF[1]_inst_i_2 
       (.I0(in4_IBUF[5]),
        .I1(in4_IBUF[4]),
        .I2(in4_IBUF[2]),
        .I3(in4_IBUF[3]),
        .I4(in4_IBUF[7]),
        .I5(in4_IBUF[6]),
        .O(\ans4_OBUF[1]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ans4_OBUF[1]_inst_i_3 
       (.I0(in4_IBUF[11]),
        .I1(in4_IBUF[10]),
        .O(\ans4_OBUF[1]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ans4_OBUF[1]_inst_i_4 
       (.I0(in4_IBUF[9]),
        .I1(in4_IBUF[8]),
        .O(\ans4_OBUF[1]_inst_i_4_n_0 ));
  OBUF \ans4_OBUF[2]_inst 
       (.I(ans4_OBUF[2]),
        .O(ans4[2]));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCD)) 
    \ans4_OBUF[2]_inst_i_1 
       (.I0(\ans4_OBUF[2]_inst_i_2_n_0 ),
        .I1(\ans4_OBUF[3]_inst_i_2_n_0 ),
        .I2(in4_IBUF[11]),
        .I3(in4_IBUF[10]),
        .I4(in4_IBUF[8]),
        .I5(in4_IBUF[9]),
        .O(ans4_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \ans4_OBUF[2]_inst_i_2 
       (.I0(in4_IBUF[4]),
        .I1(in4_IBUF[5]),
        .I2(in4_IBUF[7]),
        .I3(in4_IBUF[6]),
        .O(\ans4_OBUF[2]_inst_i_2_n_0 ));
  OBUF \ans4_OBUF[3]_inst 
       (.I(ans4_OBUF[3]),
        .O(ans4[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ans4_OBUF[3]_inst_i_1 
       (.I0(in4_IBUF[9]),
        .I1(in4_IBUF[8]),
        .I2(in4_IBUF[10]),
        .I3(in4_IBUF[11]),
        .I4(\ans4_OBUF[3]_inst_i_2_n_0 ),
        .O(ans4_OBUF[3]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ans4_OBUF[3]_inst_i_2 
       (.I0(in4_IBUF[14]),
        .I1(in4_IBUF[15]),
        .I2(in4_IBUF[13]),
        .I3(in4_IBUF[12]),
        .O(\ans4_OBUF[3]_inst_i_2_n_0 ));
  ans_decoder4_16 ans_sim1
       (.ans1_OBUF(ans1_OBUF),
        .en_IBUF(en_IBUF),
        .in1_IBUF(in1_IBUF));
  ans_decoder5_32 ans_sim2
       (.ans2_OBUF(ans2_OBUF),
        .in2_IBUF(in2_IBUF));
  IBUF en_IBUF_inst
       (.I(en),
        .O(en_IBUF));
  IBUF \in1_IBUF[0]_inst 
       (.I(in1[0]),
        .O(in1_IBUF[0]));
  IBUF \in1_IBUF[1]_inst 
       (.I(in1[1]),
        .O(in1_IBUF[1]));
  IBUF \in1_IBUF[2]_inst 
       (.I(in1[2]),
        .O(in1_IBUF[2]));
  IBUF \in1_IBUF[3]_inst 
       (.I(in1[3]),
        .O(in1_IBUF[3]));
  IBUF \in2_IBUF[0]_inst 
       (.I(in2[0]),
        .O(in2_IBUF[0]));
  IBUF \in2_IBUF[1]_inst 
       (.I(in2[1]),
        .O(in2_IBUF[1]));
  IBUF \in2_IBUF[2]_inst 
       (.I(in2[2]),
        .O(in2_IBUF[2]));
  IBUF \in2_IBUF[3]_inst 
       (.I(in2[3]),
        .O(in2_IBUF[3]));
  IBUF \in2_IBUF[4]_inst 
       (.I(in2[4]),
        .O(in2_IBUF[4]));
  IBUF \in3_IBUF[10]_inst 
       (.I(in3[10]),
        .O(in3_IBUF[10]));
  IBUF \in3_IBUF[11]_inst 
       (.I(in3[11]),
        .O(in3_IBUF[11]));
  IBUF \in3_IBUF[12]_inst 
       (.I(in3[12]),
        .O(in3_IBUF[12]));
  IBUF \in3_IBUF[13]_inst 
       (.I(in3[13]),
        .O(in3_IBUF[13]));
  IBUF \in3_IBUF[14]_inst 
       (.I(in3[14]),
        .O(in3_IBUF[14]));
  IBUF \in3_IBUF[15]_inst 
       (.I(in3[15]),
        .O(in3_IBUF[15]));
  IBUF \in3_IBUF[1]_inst 
       (.I(in3[1]),
        .O(in3_IBUF[1]));
  IBUF \in3_IBUF[2]_inst 
       (.I(in3[2]),
        .O(in3_IBUF[2]));
  IBUF \in3_IBUF[3]_inst 
       (.I(in3[3]),
        .O(in3_IBUF[3]));
  IBUF \in3_IBUF[4]_inst 
       (.I(in3[4]),
        .O(in3_IBUF[4]));
  IBUF \in3_IBUF[5]_inst 
       (.I(in3[5]),
        .O(in3_IBUF[5]));
  IBUF \in3_IBUF[6]_inst 
       (.I(in3[6]),
        .O(in3_IBUF[6]));
  IBUF \in3_IBUF[7]_inst 
       (.I(in3[7]),
        .O(in3_IBUF[7]));
  IBUF \in3_IBUF[8]_inst 
       (.I(in3[8]),
        .O(in3_IBUF[8]));
  IBUF \in3_IBUF[9]_inst 
       (.I(in3[9]),
        .O(in3_IBUF[9]));
  IBUF \in4_IBUF[10]_inst 
       (.I(in4[10]),
        .O(in4_IBUF[10]));
  IBUF \in4_IBUF[11]_inst 
       (.I(in4[11]),
        .O(in4_IBUF[11]));
  IBUF \in4_IBUF[12]_inst 
       (.I(in4[12]),
        .O(in4_IBUF[12]));
  IBUF \in4_IBUF[13]_inst 
       (.I(in4[13]),
        .O(in4_IBUF[13]));
  IBUF \in4_IBUF[14]_inst 
       (.I(in4[14]),
        .O(in4_IBUF[14]));
  IBUF \in4_IBUF[15]_inst 
       (.I(in4[15]),
        .O(in4_IBUF[15]));
  IBUF \in4_IBUF[1]_inst 
       (.I(in4[1]),
        .O(in4_IBUF[1]));
  IBUF \in4_IBUF[2]_inst 
       (.I(in4[2]),
        .O(in4_IBUF[2]));
  IBUF \in4_IBUF[3]_inst 
       (.I(in4[3]),
        .O(in4_IBUF[3]));
  IBUF \in4_IBUF[4]_inst 
       (.I(in4[4]),
        .O(in4_IBUF[4]));
  IBUF \in4_IBUF[5]_inst 
       (.I(in4[5]),
        .O(in4_IBUF[5]));
  IBUF \in4_IBUF[6]_inst 
       (.I(in4[6]),
        .O(in4_IBUF[6]));
  IBUF \in4_IBUF[7]_inst 
       (.I(in4[7]),
        .O(in4_IBUF[7]));
  IBUF \in4_IBUF[8]_inst 
       (.I(in4[8]),
        .O(in4_IBUF[8]));
  IBUF \in4_IBUF[9]_inst 
       (.I(in4[9]),
        .O(in4_IBUF[9]));
endmodule

module ans_decoder4_16
   (ans1_OBUF,
    in1_IBUF,
    en_IBUF);
  output [15:0]ans1_OBUF;
  input [3:0]in1_IBUF;
  input en_IBUF;

  wire [15:0]ans1_OBUF;
  wire en_IBUF;
  wire [3:0]in1_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \ans1_OBUF[0]_inst_i_1 
       (.I0(in1_IBUF[1]),
        .I1(in1_IBUF[0]),
        .I2(in1_IBUF[3]),
        .I3(in1_IBUF[2]),
        .I4(en_IBUF),
        .O(ans1_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \ans1_OBUF[10]_inst_i_1 
       (.I0(in1_IBUF[0]),
        .I1(in1_IBUF[1]),
        .I2(in1_IBUF[2]),
        .I3(in1_IBUF[3]),
        .I4(en_IBUF),
        .O(ans1_OBUF[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \ans1_OBUF[11]_inst_i_1 
       (.I0(in1_IBUF[1]),
        .I1(in1_IBUF[0]),
        .I2(in1_IBUF[2]),
        .I3(in1_IBUF[3]),
        .I4(en_IBUF),
        .O(ans1_OBUF[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \ans1_OBUF[12]_inst_i_1 
       (.I0(in1_IBUF[1]),
        .I1(in1_IBUF[0]),
        .I2(in1_IBUF[3]),
        .I3(in1_IBUF[2]),
        .I4(en_IBUF),
        .O(ans1_OBUF[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \ans1_OBUF[13]_inst_i_1 
       (.I0(in1_IBUF[1]),
        .I1(in1_IBUF[0]),
        .I2(in1_IBUF[3]),
        .I3(in1_IBUF[2]),
        .I4(en_IBUF),
        .O(ans1_OBUF[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \ans1_OBUF[14]_inst_i_1 
       (.I0(in1_IBUF[0]),
        .I1(in1_IBUF[1]),
        .I2(in1_IBUF[3]),
        .I3(in1_IBUF[2]),
        .I4(en_IBUF),
        .O(ans1_OBUF[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \ans1_OBUF[15]_inst_i_1 
       (.I0(in1_IBUF[1]),
        .I1(in1_IBUF[0]),
        .I2(in1_IBUF[3]),
        .I3(in1_IBUF[2]),
        .I4(en_IBUF),
        .O(ans1_OBUF[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \ans1_OBUF[1]_inst_i_1 
       (.I0(in1_IBUF[1]),
        .I1(in1_IBUF[0]),
        .I2(in1_IBUF[3]),
        .I3(in1_IBUF[2]),
        .I4(en_IBUF),
        .O(ans1_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \ans1_OBUF[2]_inst_i_1 
       (.I0(in1_IBUF[0]),
        .I1(in1_IBUF[1]),
        .I2(in1_IBUF[3]),
        .I3(in1_IBUF[2]),
        .I4(en_IBUF),
        .O(ans1_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \ans1_OBUF[3]_inst_i_1 
       (.I0(in1_IBUF[1]),
        .I1(in1_IBUF[0]),
        .I2(in1_IBUF[3]),
        .I3(in1_IBUF[2]),
        .I4(en_IBUF),
        .O(ans1_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \ans1_OBUF[4]_inst_i_1 
       (.I0(in1_IBUF[1]),
        .I1(in1_IBUF[0]),
        .I2(in1_IBUF[3]),
        .I3(in1_IBUF[2]),
        .I4(en_IBUF),
        .O(ans1_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \ans1_OBUF[5]_inst_i_1 
       (.I0(in1_IBUF[1]),
        .I1(in1_IBUF[0]),
        .I2(in1_IBUF[3]),
        .I3(in1_IBUF[2]),
        .I4(en_IBUF),
        .O(ans1_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \ans1_OBUF[6]_inst_i_1 
       (.I0(in1_IBUF[0]),
        .I1(in1_IBUF[1]),
        .I2(in1_IBUF[3]),
        .I3(in1_IBUF[2]),
        .I4(en_IBUF),
        .O(ans1_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \ans1_OBUF[7]_inst_i_1 
       (.I0(in1_IBUF[1]),
        .I1(in1_IBUF[0]),
        .I2(in1_IBUF[3]),
        .I3(in1_IBUF[2]),
        .I4(en_IBUF),
        .O(ans1_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \ans1_OBUF[8]_inst_i_1 
       (.I0(in1_IBUF[1]),
        .I1(in1_IBUF[0]),
        .I2(in1_IBUF[2]),
        .I3(in1_IBUF[3]),
        .I4(en_IBUF),
        .O(ans1_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \ans1_OBUF[9]_inst_i_1 
       (.I0(in1_IBUF[1]),
        .I1(in1_IBUF[0]),
        .I2(in1_IBUF[2]),
        .I3(in1_IBUF[3]),
        .I4(en_IBUF),
        .O(ans1_OBUF[9]));
endmodule

module ans_decoder5_32
   (ans2_OBUF,
    in2_IBUF);
  output [31:0]ans2_OBUF;
  input [4:0]in2_IBUF;

  wire [31:0]ans2_OBUF;
  wire [4:0]in2_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \ans2_OBUF[0]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \ans2_OBUF[10]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[10]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \ans2_OBUF[11]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \ans2_OBUF[12]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \ans2_OBUF[13]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[0]),
        .I3(in2_IBUF[1]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \ans2_OBUF[14]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \ans2_OBUF[15]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \ans2_OBUF[16]_inst_i_1 
       (.I0(in2_IBUF[4]),
        .I1(in2_IBUF[3]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[16]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \ans2_OBUF[17]_inst_i_1 
       (.I0(in2_IBUF[4]),
        .I1(in2_IBUF[3]),
        .I2(in2_IBUF[0]),
        .I3(in2_IBUF[1]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[17]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \ans2_OBUF[18]_inst_i_1 
       (.I0(in2_IBUF[4]),
        .I1(in2_IBUF[3]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[18]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \ans2_OBUF[19]_inst_i_1 
       (.I0(in2_IBUF[4]),
        .I1(in2_IBUF[3]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[19]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \ans2_OBUF[1]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[0]),
        .I3(in2_IBUF[1]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \ans2_OBUF[20]_inst_i_1 
       (.I0(in2_IBUF[4]),
        .I1(in2_IBUF[3]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[20]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \ans2_OBUF[21]_inst_i_1 
       (.I0(in2_IBUF[4]),
        .I1(in2_IBUF[3]),
        .I2(in2_IBUF[0]),
        .I3(in2_IBUF[1]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[21]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \ans2_OBUF[22]_inst_i_1 
       (.I0(in2_IBUF[4]),
        .I1(in2_IBUF[3]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[22]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \ans2_OBUF[23]_inst_i_1 
       (.I0(in2_IBUF[4]),
        .I1(in2_IBUF[3]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[23]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \ans2_OBUF[24]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[24]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \ans2_OBUF[25]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[0]),
        .I3(in2_IBUF[1]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[25]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \ans2_OBUF[26]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[26]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \ans2_OBUF[27]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[27]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \ans2_OBUF[28]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[28]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \ans2_OBUF[29]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[0]),
        .I3(in2_IBUF[1]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[29]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \ans2_OBUF[2]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \ans2_OBUF[30]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[30]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \ans2_OBUF[31]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[31]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \ans2_OBUF[3]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \ans2_OBUF[4]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \ans2_OBUF[5]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[0]),
        .I3(in2_IBUF[1]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \ans2_OBUF[6]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \ans2_OBUF[7]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \ans2_OBUF[8]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[1]),
        .I3(in2_IBUF[0]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \ans2_OBUF[9]_inst_i_1 
       (.I0(in2_IBUF[3]),
        .I1(in2_IBUF[4]),
        .I2(in2_IBUF[0]),
        .I3(in2_IBUF[1]),
        .I4(in2_IBUF[2]),
        .O(ans2_OBUF[9]));
endmodule
