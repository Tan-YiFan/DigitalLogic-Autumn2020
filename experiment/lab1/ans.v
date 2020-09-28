// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Sep 28 09:21:54 2020
// Host        : LAPTOP-N51EE4NF running 64-bit major release  (build 9200)
// Command     : write_verilog D:/2020Autumn/DigitalLogic/DigitalLogic-Autumn2020/experiment/lab1/project_ans.v
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
    ans4);
  input [3:0]in1;
  input [4:0]in2;
  input [15:0]in3;
  input [15:0]in4;
  output [15:0]ans1;
  output [31:0]ans2;
  output [3:0]ans3;
  output [3:0]ans4;

  wire [15:0]ans1;
  wire [31:0]ans2;
  wire [3:0]ans3;
  wire \ans3[0]_INST_0_i_1_n_0 ;
  wire \ans3[0]_INST_0_i_2_n_0 ;
  wire \ans3[0]_INST_0_i_3_n_0 ;
  wire \ans3[0]_INST_0_i_4_n_0 ;
  wire \ans3[0]_INST_0_i_5_n_0 ;
  wire \ans3[1]_INST_0_i_1_n_0 ;
  wire \ans3[1]_INST_0_i_2_n_0 ;
  wire \ans3[1]_INST_0_i_3_n_0 ;
  wire \ans3[2]_INST_0_i_1_n_0 ;
  wire \ans3[3]_INST_0_i_1_n_0 ;
  wire [3:0]ans4;
  wire \ans4[0]_INST_0_i_1_n_0 ;
  wire \ans4[0]_INST_0_i_2_n_0 ;
  wire \ans4[0]_INST_0_i_3_n_0 ;
  wire \ans4[0]_INST_0_i_4_n_0 ;
  wire \ans4[0]_INST_0_i_5_n_0 ;
  wire \ans4[1]_INST_0_i_1_n_0 ;
  wire \ans4[1]_INST_0_i_2_n_0 ;
  wire \ans4[1]_INST_0_i_3_n_0 ;
  wire \ans4[2]_INST_0_i_1_n_0 ;
  wire \ans4[3]_INST_0_i_1_n_0 ;
  wire [3:0]in1;
  wire [4:0]in2;
  wire [15:0]in3;
  wire [15:0]in4;

  LUT6 #(
    .INIT(64'h00000000EEEEEEFE)) 
    \ans3[0]_INST_0 
       (.I0(\ans3[0]_INST_0_i_1_n_0 ),
        .I1(\ans3[0]_INST_0_i_2_n_0 ),
        .I2(\ans3[0]_INST_0_i_3_n_0 ),
        .I3(\ans3[0]_INST_0_i_4_n_0 ),
        .I4(\ans3[1]_INST_0_i_3_n_0 ),
        .I5(\ans3[0]_INST_0_i_5_n_0 ),
        .O(ans3[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ans3[0]_INST_0_i_1 
       (.I0(in3[10]),
        .I1(in3[11]),
        .I2(in3[12]),
        .I3(in3[13]),
        .I4(in3[15]),
        .I5(in3[14]),
        .O(\ans3[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \ans3[0]_INST_0_i_2 
       (.I0(in3[9]),
        .I1(in3[8]),
        .I2(in3[7]),
        .O(\ans3[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \ans3[0]_INST_0_i_3 
       (.I0(in3[5]),
        .I1(in3[4]),
        .I2(in3[3]),
        .I3(in3[2]),
        .I4(in3[1]),
        .O(\ans3[0]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ans3[0]_INST_0_i_4 
       (.I0(in3[6]),
        .I1(in3[7]),
        .O(\ans3[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2322232323222322)) 
    \ans3[0]_INST_0_i_5 
       (.I0(in3[14]),
        .I1(in3[15]),
        .I2(in3[13]),
        .I3(in3[12]),
        .I4(in3[11]),
        .I5(in3[10]),
        .O(\ans3[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFEE00EEFFEE0F)) 
    \ans3[1]_INST_0 
       (.I0(in3[14]),
        .I1(in3[15]),
        .I2(\ans3[1]_INST_0_i_1_n_0 ),
        .I3(\ans3[3]_INST_0_i_1_n_0 ),
        .I4(\ans3[1]_INST_0_i_2_n_0 ),
        .I5(\ans3[1]_INST_0_i_3_n_0 ),
        .O(ans3[1]));
  LUT6 #(
    .INIT(64'h000000000000EEEF)) 
    \ans3[1]_INST_0_i_1 
       (.I0(in3[5]),
        .I1(in3[4]),
        .I2(in3[2]),
        .I3(in3[3]),
        .I4(in3[7]),
        .I5(in3[6]),
        .O(\ans3[1]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ans3[1]_INST_0_i_2 
       (.I0(in3[11]),
        .I1(in3[10]),
        .O(\ans3[1]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ans3[1]_INST_0_i_3 
       (.I0(in3[9]),
        .I1(in3[8]),
        .O(\ans3[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCD)) 
    \ans3[2]_INST_0 
       (.I0(\ans3[2]_INST_0_i_1_n_0 ),
        .I1(\ans3[3]_INST_0_i_1_n_0 ),
        .I2(in3[11]),
        .I3(in3[10]),
        .I4(in3[8]),
        .I5(in3[9]),
        .O(ans3[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \ans3[2]_INST_0_i_1 
       (.I0(in3[4]),
        .I1(in3[5]),
        .I2(in3[7]),
        .I3(in3[6]),
        .O(\ans3[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ans3[3]_INST_0 
       (.I0(in3[9]),
        .I1(in3[8]),
        .I2(in3[10]),
        .I3(in3[11]),
        .I4(\ans3[3]_INST_0_i_1_n_0 ),
        .O(ans3[3]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ans3[3]_INST_0_i_1 
       (.I0(in3[14]),
        .I1(in3[15]),
        .I2(in3[13]),
        .I3(in3[12]),
        .O(\ans3[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEEEEFE)) 
    \ans4[0]_INST_0 
       (.I0(\ans4[0]_INST_0_i_1_n_0 ),
        .I1(\ans4[0]_INST_0_i_2_n_0 ),
        .I2(\ans4[0]_INST_0_i_3_n_0 ),
        .I3(\ans4[0]_INST_0_i_4_n_0 ),
        .I4(\ans4[1]_INST_0_i_3_n_0 ),
        .I5(\ans4[0]_INST_0_i_5_n_0 ),
        .O(ans4[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ans4[0]_INST_0_i_1 
       (.I0(in4[10]),
        .I1(in4[11]),
        .I2(in4[12]),
        .I3(in4[13]),
        .I4(in4[15]),
        .I5(in4[14]),
        .O(\ans4[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \ans4[0]_INST_0_i_2 
       (.I0(in4[9]),
        .I1(in4[8]),
        .I2(in4[7]),
        .O(\ans4[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \ans4[0]_INST_0_i_3 
       (.I0(in4[5]),
        .I1(in4[4]),
        .I2(in4[3]),
        .I3(in4[2]),
        .I4(in4[1]),
        .O(\ans4[0]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ans4[0]_INST_0_i_4 
       (.I0(in4[6]),
        .I1(in4[7]),
        .O(\ans4[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2322232323222322)) 
    \ans4[0]_INST_0_i_5 
       (.I0(in4[14]),
        .I1(in4[15]),
        .I2(in4[13]),
        .I3(in4[12]),
        .I4(in4[11]),
        .I5(in4[10]),
        .O(\ans4[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFEE00EEFFEE0F)) 
    \ans4[1]_INST_0 
       (.I0(in4[14]),
        .I1(in4[15]),
        .I2(\ans4[1]_INST_0_i_1_n_0 ),
        .I3(\ans4[3]_INST_0_i_1_n_0 ),
        .I4(\ans4[1]_INST_0_i_2_n_0 ),
        .I5(\ans4[1]_INST_0_i_3_n_0 ),
        .O(ans4[1]));
  LUT6 #(
    .INIT(64'h000000000000EEEF)) 
    \ans4[1]_INST_0_i_1 
       (.I0(in4[5]),
        .I1(in4[4]),
        .I2(in4[2]),
        .I3(in4[3]),
        .I4(in4[7]),
        .I5(in4[6]),
        .O(\ans4[1]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ans4[1]_INST_0_i_2 
       (.I0(in4[11]),
        .I1(in4[10]),
        .O(\ans4[1]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ans4[1]_INST_0_i_3 
       (.I0(in4[9]),
        .I1(in4[8]),
        .O(\ans4[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCD)) 
    \ans4[2]_INST_0 
       (.I0(\ans4[2]_INST_0_i_1_n_0 ),
        .I1(\ans4[3]_INST_0_i_1_n_0 ),
        .I2(in4[11]),
        .I3(in4[10]),
        .I4(in4[8]),
        .I5(in4[9]),
        .O(ans4[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \ans4[2]_INST_0_i_1 
       (.I0(in4[4]),
        .I1(in4[5]),
        .I2(in4[7]),
        .I3(in4[6]),
        .O(\ans4[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ans4[3]_INST_0 
       (.I0(in4[9]),
        .I1(in4[8]),
        .I2(in4[10]),
        .I3(in4[11]),
        .I4(\ans4[3]_INST_0_i_1_n_0 ),
        .O(ans4[3]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ans4[3]_INST_0_i_1 
       (.I0(in4[14]),
        .I1(in4[15]),
        .I2(in4[13]),
        .I3(in4[12]),
        .O(\ans4[3]_INST_0_i_1_n_0 ));
  ans_decoder4_16 ans_sim1
       (.ans1(ans1),
        .in1(in1));
  ans_decoder5_32 ans_sim2
       (.ans2(ans2),
        .in2(in2));
endmodule

module ans_decoder4_16
   (ans1,
    in1);
  output [15:0]ans1;
  input [3:0]in1;

  wire [15:0]ans1;
  wire [3:0]in1;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \ans1[0]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(ans1[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \ans1[10]_INST_0 
       (.I0(in1[3]),
        .I1(in1[2]),
        .I2(in1[1]),
        .I3(in1[0]),
        .O(ans1[10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \ans1[11]_INST_0 
       (.I0(in1[3]),
        .I1(in1[2]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(ans1[11]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \ans1[12]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(ans1[12]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \ans1[13]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(ans1[13]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \ans1[14]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[1]),
        .I3(in1[0]),
        .O(ans1[14]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \ans1[15]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(ans1[15]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \ans1[1]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(ans1[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \ans1[2]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[1]),
        .I3(in1[0]),
        .O(ans1[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \ans1[3]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(ans1[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \ans1[4]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(ans1[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \ans1[5]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(ans1[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \ans1[6]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[1]),
        .I3(in1[0]),
        .O(ans1[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \ans1[7]_INST_0 
       (.I0(in1[2]),
        .I1(in1[3]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(ans1[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \ans1[8]_INST_0 
       (.I0(in1[3]),
        .I1(in1[2]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(ans1[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \ans1[9]_INST_0 
       (.I0(in1[3]),
        .I1(in1[2]),
        .I2(in1[0]),
        .I3(in1[1]),
        .O(ans1[9]));
endmodule

module ans_decoder5_32
   (ans2,
    in2);
  output [31:0]ans2;
  input [4:0]in2;

  wire [31:0]ans2;
  wire [4:0]in2;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \ans2[0]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \ans2[10]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[10]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \ans2[11]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \ans2[12]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \ans2[13]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[0]),
        .I3(in2[1]),
        .I4(in2[2]),
        .O(ans2[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \ans2[14]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \ans2[15]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \ans2[16]_INST_0 
       (.I0(in2[4]),
        .I1(in2[3]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[16]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \ans2[17]_INST_0 
       (.I0(in2[4]),
        .I1(in2[3]),
        .I2(in2[0]),
        .I3(in2[1]),
        .I4(in2[2]),
        .O(ans2[17]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \ans2[18]_INST_0 
       (.I0(in2[4]),
        .I1(in2[3]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[18]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \ans2[19]_INST_0 
       (.I0(in2[4]),
        .I1(in2[3]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[19]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \ans2[1]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[0]),
        .I3(in2[1]),
        .I4(in2[2]),
        .O(ans2[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \ans2[20]_INST_0 
       (.I0(in2[4]),
        .I1(in2[3]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[20]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \ans2[21]_INST_0 
       (.I0(in2[4]),
        .I1(in2[3]),
        .I2(in2[0]),
        .I3(in2[1]),
        .I4(in2[2]),
        .O(ans2[21]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \ans2[22]_INST_0 
       (.I0(in2[4]),
        .I1(in2[3]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[22]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \ans2[23]_INST_0 
       (.I0(in2[4]),
        .I1(in2[3]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[23]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \ans2[24]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[24]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \ans2[25]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[0]),
        .I3(in2[1]),
        .I4(in2[2]),
        .O(ans2[25]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \ans2[26]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[26]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \ans2[27]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[27]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \ans2[28]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[28]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \ans2[29]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[0]),
        .I3(in2[1]),
        .I4(in2[2]),
        .O(ans2[29]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \ans2[2]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \ans2[30]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[30]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \ans2[31]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[31]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \ans2[3]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \ans2[4]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \ans2[5]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[0]),
        .I3(in2[1]),
        .I4(in2[2]),
        .O(ans2[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \ans2[6]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \ans2[7]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \ans2[8]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[1]),
        .I3(in2[0]),
        .I4(in2[2]),
        .O(ans2[8]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \ans2[9]_INST_0 
       (.I0(in2[3]),
        .I1(in2[4]),
        .I2(in2[0]),
        .I3(in2[1]),
        .I4(in2[2]),
        .O(ans2[9]));
endmodule
