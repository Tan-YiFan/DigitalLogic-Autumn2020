// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Dec 21 09:08:36 2020
// Host        : LAPTOP-N51EE4NF running 64-bit major release  (build 9200)
// Command     : write_verilog D:/2020Autumn/DigitalLogic/DigitalLogic-Autumn2020/experiment/sup/project_top_routed.v
// Design      : top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module add_counter
   (SR,
    E,
    \counter_reg[0]_0 ,
    \counter_reg[3]_0 ,
    \counter_reg[0]_1 ,
    \counter_reg[11]_0 ,
    resetn_IBUF,
    \counter_reg[4]_0 ,
    \counter_reg[4]_1 ,
    \counter_reg[4]_2 ,
    \counter_reg[4]_3 ,
    \counter_reg[3]_1 ,
    Q,
    CLK);
  output [0:0]SR;
  output [0:0]E;
  output [0:0]\counter_reg[0]_0 ;
  output [0:0]\counter_reg[3]_0 ;
  output [0:0]\counter_reg[0]_1 ;
  output [0:0]\counter_reg[11]_0 ;
  input resetn_IBUF;
  input \counter_reg[4]_0 ;
  input \counter_reg[4]_1 ;
  input \counter_reg[4]_2 ;
  input \counter_reg[4]_3 ;
  input \counter_reg[3]_1 ;
  input [1:0]Q;
  input CLK;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [29:0]counter;
  wire \counter[29]_i_10_n_0 ;
  wire \counter[29]_i_4_n_0 ;
  wire \counter[29]_i_5_n_0 ;
  wire \counter[29]_i_6_n_0 ;
  wire \counter[29]_i_7_n_0 ;
  wire \counter[29]_i_8_n_0 ;
  wire \counter[29]_i_9_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[4]_i_6_n_0 ;
  wire [0:0]\counter_reg[0]_0 ;
  wire [0:0]\counter_reg[0]_1 ;
  wire [0:0]\counter_reg[11]_0 ;
  wire \counter_reg[12]_i_2_n_0 ;
  wire \counter_reg[12]_i_2_n_4 ;
  wire \counter_reg[12]_i_2_n_5 ;
  wire \counter_reg[12]_i_2_n_6 ;
  wire \counter_reg[12]_i_2_n_7 ;
  wire \counter_reg[16]_i_2_n_0 ;
  wire \counter_reg[16]_i_2_n_4 ;
  wire \counter_reg[16]_i_2_n_5 ;
  wire \counter_reg[16]_i_2_n_6 ;
  wire \counter_reg[16]_i_2_n_7 ;
  wire \counter_reg[20]_i_2_n_0 ;
  wire \counter_reg[20]_i_2_n_4 ;
  wire \counter_reg[20]_i_2_n_5 ;
  wire \counter_reg[20]_i_2_n_6 ;
  wire \counter_reg[20]_i_2_n_7 ;
  wire \counter_reg[24]_i_2_n_0 ;
  wire \counter_reg[24]_i_2_n_4 ;
  wire \counter_reg[24]_i_2_n_5 ;
  wire \counter_reg[24]_i_2_n_6 ;
  wire \counter_reg[24]_i_2_n_7 ;
  wire \counter_reg[28]_i_2_n_0 ;
  wire \counter_reg[28]_i_2_n_4 ;
  wire \counter_reg[28]_i_2_n_5 ;
  wire \counter_reg[28]_i_2_n_6 ;
  wire \counter_reg[28]_i_2_n_7 ;
  wire \counter_reg[29]_i_3_n_7 ;
  wire [0:0]\counter_reg[3]_0 ;
  wire \counter_reg[3]_1 ;
  wire \counter_reg[4]_0 ;
  wire \counter_reg[4]_1 ;
  wire \counter_reg[4]_2 ;
  wire \counter_reg[4]_3 ;
  wire \counter_reg[4]_i_2_n_0 ;
  wire \counter_reg[4]_i_2_n_4 ;
  wire \counter_reg[4]_i_2_n_5 ;
  wire \counter_reg[4]_i_2_n_6 ;
  wire \counter_reg[4]_i_2_n_7 ;
  wire \counter_reg[8]_i_2_n_0 ;
  wire \counter_reg[8]_i_2_n_4 ;
  wire \counter_reg[8]_i_2_n_5 ;
  wire \counter_reg[8]_i_2_n_6 ;
  wire \counter_reg[8]_i_2_n_7 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[18] ;
  wire \counter_reg_n_0_[19] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[20] ;
  wire \counter_reg_n_0_[21] ;
  wire \counter_reg_n_0_[22] ;
  wire \counter_reg_n_0_[23] ;
  wire \counter_reg_n_0_[24] ;
  wire \counter_reg_n_0_[25] ;
  wire \counter_reg_n_0_[26] ;
  wire \counter_reg_n_0_[27] ;
  wire \counter_reg_n_0_[28] ;
  wire \counter_reg_n_0_[29] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire resetn_IBUF;
  wire [3:0]\NLW_counter_reg[12]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[20]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[24]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[28]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[4]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[8]_i_2_CO_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .O(counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[10]_i_1 
       (.I0(\counter_reg[12]_i_2_n_6 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[10]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[11]_i_1 
       (.I0(\counter_reg[12]_i_2_n_5 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[11]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[12]_i_1 
       (.I0(\counter_reg[12]_i_2_n_4 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[12]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[13]_i_1 
       (.I0(\counter_reg[16]_i_2_n_7 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[13]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[14]_i_1 
       (.I0(\counter_reg[16]_i_2_n_6 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[14]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[15]_i_1 
       (.I0(\counter_reg[16]_i_2_n_5 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[15]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[16]_i_1 
       (.I0(\counter_reg[16]_i_2_n_4 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[16]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[17]_i_1 
       (.I0(\counter_reg[20]_i_2_n_7 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[17]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[18]_i_1 
       (.I0(\counter_reg[20]_i_2_n_6 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[18]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[19]_i_1 
       (.I0(\counter_reg[20]_i_2_n_5 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[19]));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[1]_i_1 
       (.I0(\counter_reg[4]_i_2_n_7 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[20]_i_1 
       (.I0(\counter_reg[20]_i_2_n_4 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[20]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[21]_i_1 
       (.I0(\counter_reg[24]_i_2_n_7 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[21]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[22]_i_1 
       (.I0(\counter_reg[24]_i_2_n_6 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[22]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[23]_i_1 
       (.I0(\counter_reg[24]_i_2_n_5 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[23]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[24]_i_1 
       (.I0(\counter_reg[24]_i_2_n_4 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[24]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[25]_i_1 
       (.I0(\counter_reg[28]_i_2_n_7 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[25]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[26]_i_1 
       (.I0(\counter_reg[28]_i_2_n_6 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[26]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[27]_i_1 
       (.I0(\counter_reg[28]_i_2_n_5 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[27]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[28]_i_1 
       (.I0(\counter_reg[28]_i_2_n_4 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[28]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[29]_i_1 
       (.I0(resetn_IBUF),
        .O(SR));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[29]_i_10 
       (.I0(\counter_reg_n_0_[26] ),
        .I1(\counter_reg_n_0_[23] ),
        .I2(\counter_reg_n_0_[13] ),
        .I3(\counter_reg_n_0_[29] ),
        .O(\counter[29]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[29]_i_2 
       (.I0(\counter_reg[29]_i_3_n_7 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[29]));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \counter[29]_i_4 
       (.I0(\counter[29]_i_7_n_0 ),
        .I1(\counter[29]_i_8_n_0 ),
        .I2(\counter_reg_n_0_[25] ),
        .I3(\counter_reg_n_0_[16] ),
        .I4(\counter_reg_n_0_[0] ),
        .I5(\counter_reg_n_0_[15] ),
        .O(\counter[29]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \counter[29]_i_5 
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\counter_reg_n_0_[21] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[9] ),
        .I4(\counter[29]_i_9_n_0 ),
        .O(\counter[29]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \counter[29]_i_6 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter_reg_n_0_[10] ),
        .I2(\counter_reg_n_0_[14] ),
        .I3(\counter_reg_n_0_[20] ),
        .I4(\counter[29]_i_10_n_0 ),
        .O(\counter[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \counter[29]_i_7 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[18] ),
        .I2(\counter_reg_n_0_[27] ),
        .I3(\counter_reg_n_0_[19] ),
        .I4(\counter_reg_n_0_[6] ),
        .I5(\counter_reg_n_0_[5] ),
        .O(\counter[29]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[29]_i_8 
       (.I0(\counter_reg_n_0_[17] ),
        .I1(\counter_reg_n_0_[8] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[24] ),
        .O(\counter[29]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \counter[29]_i_9 
       (.I0(\counter_reg_n_0_[28] ),
        .I1(\counter_reg_n_0_[22] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[12] ),
        .O(\counter[29]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[2]_i_1 
       (.I0(\counter_reg[4]_i_2_n_6 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[2]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \counter[3]_i_1 
       (.I0(\counter_reg[4]_2 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .I4(\counter_reg[4]_1 ),
        .I5(\counter_reg[4]_0 ),
        .O(\counter_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \counter[3]_i_1__0 
       (.I0(\counter_reg[4]_1 ),
        .I1(\counter[29]_i_6_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_4_n_0 ),
        .I4(\counter_reg[4]_2 ),
        .O(\counter_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \counter[3]_i_1__1 
       (.I0(\counter[29]_i_4_n_0 ),
        .I1(\counter[29]_i_5_n_0 ),
        .I2(\counter[29]_i_6_n_0 ),
        .I3(\counter_reg[3]_1 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\counter_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[3]_i_1__2 
       (.I0(\counter_reg[4]_i_2_n_5 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[3]));
  LUT3 #(
    .INIT(8'h04)) 
    \counter[3]_i_1__3 
       (.I0(\counter[29]_i_6_n_0 ),
        .I1(\counter[29]_i_5_n_0 ),
        .I2(\counter[29]_i_4_n_0 ),
        .O(\counter_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \counter[4]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(\counter_reg[4]_1 ),
        .I2(\counter[4]_i_3_n_0 ),
        .I3(\counter[29]_i_4_n_0 ),
        .I4(\counter_reg[4]_2 ),
        .I5(\counter_reg[4]_3 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[4]_i_1__0 
       (.I0(\counter_reg[4]_i_2_n_4 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[4]));
  LUT4 #(
    .INIT(16'h0004)) 
    \counter[4]_i_3 
       (.I0(\counter[29]_i_9_n_0 ),
        .I1(\counter[4]_i_5_n_0 ),
        .I2(\counter[29]_i_10_n_0 ),
        .I3(\counter[4]_i_6_n_0 ),
        .O(\counter[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \counter[4]_i_5 
       (.I0(\counter_reg_n_0_[9] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[21] ),
        .I3(\counter_reg_n_0_[7] ),
        .O(\counter[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[4]_i_6 
       (.I0(\counter_reg_n_0_[20] ),
        .I1(\counter_reg_n_0_[14] ),
        .I2(\counter_reg_n_0_[10] ),
        .I3(\counter_reg_n_0_[11] ),
        .O(\counter[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[5]_i_1 
       (.I0(\counter_reg[8]_i_2_n_7 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[6]_i_1 
       (.I0(\counter_reg[8]_i_2_n_6 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[7]_i_1 
       (.I0(\counter_reg[8]_i_2_n_5 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[8]_i_1 
       (.I0(\counter_reg[8]_i_2_n_4 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[9]_i_1 
       (.I0(\counter_reg[12]_i_2_n_7 ),
        .I1(\counter[29]_i_4_n_0 ),
        .I2(\counter[29]_i_5_n_0 ),
        .I3(\counter[29]_i_6_n_0 ),
        .O(counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[0]),
        .Q(\counter_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[10]),
        .Q(\counter_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[11]),
        .Q(\counter_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[12]),
        .Q(\counter_reg_n_0_[12] ),
        .R(SR));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \counter_reg[12]_i_2 
       (.CI(\counter_reg[8]_i_2_n_0 ),
        .CO({\counter_reg[12]_i_2_n_0 ,\NLW_counter_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[12]_i_2_n_4 ,\counter_reg[12]_i_2_n_5 ,\counter_reg[12]_i_2_n_6 ,\counter_reg[12]_i_2_n_7 }),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[13]),
        .Q(\counter_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[14]),
        .Q(\counter_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[15]),
        .Q(\counter_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[16]),
        .Q(\counter_reg_n_0_[16] ),
        .R(SR));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \counter_reg[16]_i_2 
       (.CI(\counter_reg[12]_i_2_n_0 ),
        .CO({\counter_reg[16]_i_2_n_0 ,\NLW_counter_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[16]_i_2_n_4 ,\counter_reg[16]_i_2_n_5 ,\counter_reg[16]_i_2_n_6 ,\counter_reg[16]_i_2_n_7 }),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[17]),
        .Q(\counter_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[18]),
        .Q(\counter_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[19]),
        .Q(\counter_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[1]),
        .Q(\counter_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[20]),
        .Q(\counter_reg_n_0_[20] ),
        .R(SR));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \counter_reg[20]_i_2 
       (.CI(\counter_reg[16]_i_2_n_0 ),
        .CO({\counter_reg[20]_i_2_n_0 ,\NLW_counter_reg[20]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[20]_i_2_n_4 ,\counter_reg[20]_i_2_n_5 ,\counter_reg[20]_i_2_n_6 ,\counter_reg[20]_i_2_n_7 }),
        .S({\counter_reg_n_0_[20] ,\counter_reg_n_0_[19] ,\counter_reg_n_0_[18] ,\counter_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[21]),
        .Q(\counter_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[22]),
        .Q(\counter_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[23]),
        .Q(\counter_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[24]),
        .Q(\counter_reg_n_0_[24] ),
        .R(SR));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \counter_reg[24]_i_2 
       (.CI(\counter_reg[20]_i_2_n_0 ),
        .CO({\counter_reg[24]_i_2_n_0 ,\NLW_counter_reg[24]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[24]_i_2_n_4 ,\counter_reg[24]_i_2_n_5 ,\counter_reg[24]_i_2_n_6 ,\counter_reg[24]_i_2_n_7 }),
        .S({\counter_reg_n_0_[24] ,\counter_reg_n_0_[23] ,\counter_reg_n_0_[22] ,\counter_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[25]),
        .Q(\counter_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[26]),
        .Q(\counter_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[27]),
        .Q(\counter_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[28]),
        .Q(\counter_reg_n_0_[28] ),
        .R(SR));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \counter_reg[28]_i_2 
       (.CI(\counter_reg[24]_i_2_n_0 ),
        .CO({\counter_reg[28]_i_2_n_0 ,\NLW_counter_reg[28]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[28]_i_2_n_4 ,\counter_reg[28]_i_2_n_5 ,\counter_reg[28]_i_2_n_6 ,\counter_reg[28]_i_2_n_7 }),
        .S({\counter_reg_n_0_[28] ,\counter_reg_n_0_[27] ,\counter_reg_n_0_[26] ,\counter_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[29]),
        .Q(\counter_reg_n_0_[29] ),
        .R(SR));
  CARRY4 \counter_reg[29]_i_3 
       (.CI(\counter_reg[28]_i_2_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\counter_reg[29]_i_3_n_7 ),
        .S({\<const0> ,\<const0> ,\<const0> ,\counter_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[2]),
        .Q(\counter_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[3]),
        .Q(\counter_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[4]),
        .Q(\counter_reg_n_0_[4] ),
        .R(SR));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \counter_reg[4]_i_2 
       (.CI(\<const0> ),
        .CO({\counter_reg[4]_i_2_n_0 ,\NLW_counter_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[4]_i_2_n_4 ,\counter_reg[4]_i_2_n_5 ,\counter_reg[4]_i_2_n_6 ,\counter_reg[4]_i_2_n_7 }),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[5]),
        .Q(\counter_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[6]),
        .Q(\counter_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[7]),
        .Q(\counter_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[8]),
        .Q(\counter_reg_n_0_[8] ),
        .R(SR));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \counter_reg[8]_i_2 
       (.CI(\counter_reg[4]_i_2_n_0 ),
        .CO({\counter_reg[8]_i_2_n_0 ,\NLW_counter_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[8]_i_2_n_4 ,\counter_reg[8]_i_2_n_5 ,\counter_reg[8]_i_2_n_6 ,\counter_reg[8]_i_2_n_7 }),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[9]),
        .Q(\counter_reg_n_0_[9] ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "add_counter" *) 
module add_counter__parameterized0
   (\counter_reg[13] ,
    \counter_reg[13]_0 ,
    \counter_reg[2]_0 ,
    \counter_reg[3]_0 ,
    \counter_reg[13]_1 ,
    \counter_reg[3]_1 ,
    \counter_reg[3]_2 ,
    \counter_reg[3]_3 ,
    p_0_in,
    \A2G_OBUF[0]_inst_i_3 ,
    \A2G_OBUF[5]_inst_i_1 ,
    \A2G_OBUF[3]_inst_i_4 ,
    SR,
    E,
    CLK);
  output \counter_reg[13] ;
  output \counter_reg[13]_0 ;
  output \counter_reg[2]_0 ;
  output \counter_reg[3]_0 ;
  output \counter_reg[13]_1 ;
  output \counter_reg[3]_1 ;
  output \counter_reg[3]_2 ;
  output \counter_reg[3]_3 ;
  input [0:0]p_0_in;
  input \A2G_OBUF[0]_inst_i_3 ;
  input \A2G_OBUF[5]_inst_i_1 ;
  input \A2G_OBUF[3]_inst_i_4 ;
  input [0:0]SR;
  input [0:0]E;
  input CLK;

  wire \A2G_OBUF[0]_inst_i_3 ;
  wire \A2G_OBUF[0]_inst_i_8_n_0 ;
  wire \A2G_OBUF[3]_inst_i_10_n_0 ;
  wire \A2G_OBUF[3]_inst_i_4 ;
  wire \A2G_OBUF[5]_inst_i_1 ;
  wire \A2G_OBUF[5]_inst_i_7_n_0 ;
  wire CLK;
  wire [0:0]E;
  wire [0:0]SR;
  wire \counter[0]_i_1__2_n_0 ;
  wire \counter[1]_i_1__2_n_0 ;
  wire \counter[2]_i_1__5_n_0 ;
  wire \counter[3]_i_2__0_n_0 ;
  wire \counter_reg[13] ;
  wire \counter_reg[13]_0 ;
  wire \counter_reg[13]_1 ;
  wire \counter_reg[2]_0 ;
  wire \counter_reg[3]_0 ;
  wire \counter_reg[3]_1 ;
  wire \counter_reg[3]_2 ;
  wire \counter_reg[3]_3 ;
  wire [0:0]p_0_in;
  wire [3:0]\raw_segs[2] ;

  MUXF7 \A2G_OBUF[0]_inst_i_5 
       (.I0(\A2G_OBUF[0]_inst_i_8_n_0 ),
        .I1(\A2G_OBUF[0]_inst_i_3 ),
        .O(\counter_reg[13] ),
        .S(p_0_in));
  LUT4 #(
    .INIT(16'hF67B)) 
    \A2G_OBUF[0]_inst_i_8 
       (.I0(\raw_segs[2] [3]),
        .I1(\raw_segs[2] [0]),
        .I2(\raw_segs[2] [1]),
        .I3(\raw_segs[2] [2]),
        .O(\A2G_OBUF[0]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9E80)) 
    \A2G_OBUF[1]_inst_i_5 
       (.I0(\raw_segs[2] [3]),
        .I1(\raw_segs[2] [1]),
        .I2(\raw_segs[2] [0]),
        .I3(\raw_segs[2] [2]),
        .O(\counter_reg[3]_2 ));
  LUT4 #(
    .INIT(16'h8098)) 
    \A2G_OBUF[2]_inst_i_5 
       (.I0(\raw_segs[2] [3]),
        .I1(\raw_segs[2] [2]),
        .I2(\raw_segs[2] [1]),
        .I3(\raw_segs[2] [0]),
        .O(\counter_reg[3]_3 ));
  LUT4 #(
    .INIT(16'h7B6D)) 
    \A2G_OBUF[3]_inst_i_10 
       (.I0(\raw_segs[2] [0]),
        .I1(\raw_segs[2] [1]),
        .I2(\raw_segs[2] [2]),
        .I3(\raw_segs[2] [3]),
        .O(\A2G_OBUF[3]_inst_i_10_n_0 ));
  MUXF7 \A2G_OBUF[3]_inst_i_7 
       (.I0(\A2G_OBUF[3]_inst_i_10_n_0 ),
        .I1(\A2G_OBUF[3]_inst_i_4 ),
        .O(\counter_reg[13]_1 ),
        .S(p_0_in));
  LUT4 #(
    .INIT(16'hA8FB)) 
    \A2G_OBUF[4]_inst_i_6 
       (.I0(\raw_segs[2] [3]),
        .I1(\raw_segs[2] [2]),
        .I2(\raw_segs[2] [1]),
        .I3(\raw_segs[2] [0]),
        .O(\counter_reg[3]_0 ));
  MUXF7 \A2G_OBUF[5]_inst_i_3 
       (.I0(\A2G_OBUF[5]_inst_i_7_n_0 ),
        .I1(\A2G_OBUF[5]_inst_i_1 ),
        .O(\counter_reg[13]_0 ),
        .S(p_0_in));
  LUT4 #(
    .INIT(16'hBF4D)) 
    \A2G_OBUF[5]_inst_i_7 
       (.I0(\raw_segs[2] [1]),
        .I1(\raw_segs[2] [2]),
        .I2(\raw_segs[2] [0]),
        .I3(\raw_segs[2] [3]),
        .O(\A2G_OBUF[5]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBDFA)) 
    \A2G_OBUF[6]_inst_i_9 
       (.I0(\raw_segs[2] [3]),
        .I1(\raw_segs[2] [0]),
        .I2(\raw_segs[2] [1]),
        .I3(\raw_segs[2] [2]),
        .O(\counter_reg[3]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__2 
       (.I0(\raw_segs[2] [0]),
        .O(\counter[0]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h0DF0)) 
    \counter[1]_i_1__2 
       (.I0(\raw_segs[2] [3]),
        .I1(\raw_segs[2] [2]),
        .I2(\raw_segs[2] [1]),
        .I3(\raw_segs[2] [0]),
        .O(\counter[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1__5 
       (.I0(\raw_segs[2] [2]),
        .I1(\raw_segs[2] [1]),
        .I2(\raw_segs[2] [0]),
        .O(\counter[2]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'h6F80)) 
    \counter[3]_i_2__0 
       (.I0(\raw_segs[2] [2]),
        .I1(\raw_segs[2] [1]),
        .I2(\raw_segs[2] [0]),
        .I3(\raw_segs[2] [3]),
        .O(\counter[3]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \counter[3]_i_3__1 
       (.I0(\raw_segs[2] [2]),
        .I1(\raw_segs[2] [1]),
        .I2(\raw_segs[2] [3]),
        .I3(\raw_segs[2] [0]),
        .O(\counter_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\counter[0]_i_1__2_n_0 ),
        .Q(\raw_segs[2] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\counter[1]_i_1__2_n_0 ),
        .Q(\raw_segs[2] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\counter[2]_i_1__5_n_0 ),
        .Q(\raw_segs[2] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\counter[3]_i_2__0_n_0 ),
        .Q(\raw_segs[2] [3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "add_counter" *) 
module add_counter__parameterized0_0
   (\counter_reg[14] ,
    Q,
    \counter_reg[14]_0 ,
    \counter_reg[15] ,
    \counter_reg[3]_0 ,
    \counter_reg[1]_0 ,
    \counter_reg[3]_1 ,
    \counter_reg[3]_2 ,
    A2G_OBUF,
    p_0_in,
    \A2G_OBUF[0]_inst_i_1 ,
    \A2G_OBUF[0]_inst_i_3_0 ,
    \A2G_OBUF[3]_inst_i_1 ,
    \A2G_OBUF[3]_inst_i_4_0 ,
    \A2G_OBUF[4]_inst_i_1_0 ,
    \A2G_OBUF[6]_inst_i_1 ,
    \A2G_OBUF[5]_inst_i_1_0 ,
    \A2G_OBUF[1]_inst_i_1 ,
    \A2G[4] ,
    \A2G[4]_0 ,
    \A2G[5] ,
    \A2G[5]_0 ,
    SR,
    E,
    CLK);
  output \counter_reg[14] ;
  output [1:0]Q;
  output \counter_reg[14]_0 ;
  output \counter_reg[15] ;
  output \counter_reg[3]_0 ;
  output \counter_reg[1]_0 ;
  output \counter_reg[3]_1 ;
  output \counter_reg[3]_2 ;
  output [1:0]A2G_OBUF;
  input [2:0]p_0_in;
  input \A2G_OBUF[0]_inst_i_1 ;
  input \A2G_OBUF[0]_inst_i_3_0 ;
  input \A2G_OBUF[3]_inst_i_1 ;
  input \A2G_OBUF[3]_inst_i_4_0 ;
  input \A2G_OBUF[4]_inst_i_1_0 ;
  input \A2G_OBUF[6]_inst_i_1 ;
  input \A2G_OBUF[5]_inst_i_1_0 ;
  input \A2G_OBUF[1]_inst_i_1 ;
  input \A2G[4] ;
  input \A2G[4]_0 ;
  input \A2G[5] ;
  input \A2G[5]_0 ;
  input [0:0]SR;
  input [0:0]E;
  input CLK;

  wire \A2G[4] ;
  wire \A2G[4]_0 ;
  wire \A2G[5] ;
  wire \A2G[5]_0 ;
  wire [1:0]A2G_OBUF;
  wire \A2G_OBUF[0]_inst_i_1 ;
  wire \A2G_OBUF[0]_inst_i_3_0 ;
  wire \A2G_OBUF[0]_inst_i_4_n_0 ;
  wire \A2G_OBUF[0]_inst_i_6_n_0 ;
  wire \A2G_OBUF[1]_inst_i_1 ;
  wire \A2G_OBUF[3]_inst_i_1 ;
  wire \A2G_OBUF[3]_inst_i_4_0 ;
  wire \A2G_OBUF[3]_inst_i_6_n_0 ;
  wire \A2G_OBUF[3]_inst_i_8_n_0 ;
  wire \A2G_OBUF[4]_inst_i_1_0 ;
  wire \A2G_OBUF[4]_inst_i_2_n_0 ;
  wire \A2G_OBUF[5]_inst_i_1_0 ;
  wire \A2G_OBUF[5]_inst_i_2_n_0 ;
  wire \A2G_OBUF[5]_inst_i_5_n_0 ;
  wire \A2G_OBUF[6]_inst_i_1 ;
  wire CLK;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \counter[2]_i_1__4_n_0 ;
  wire \counter_reg[14] ;
  wire \counter_reg[14]_0 ;
  wire \counter_reg[15] ;
  wire \counter_reg[1]_0 ;
  wire \counter_reg[3]_0 ;
  wire \counter_reg[3]_1 ;
  wire \counter_reg[3]_2 ;
  wire [2:0]p_0_in;
  wire [3:0]p_1_in__0;
  wire [2:1]\raw_segs[0] ;

  MUXF8 \A2G_OBUF[0]_inst_i_3 
       (.I0(\A2G_OBUF[0]_inst_i_4_n_0 ),
        .I1(\A2G_OBUF[0]_inst_i_1 ),
        .O(\counter_reg[14] ),
        .S(p_0_in[1]));
  MUXF7 \A2G_OBUF[0]_inst_i_4 
       (.I0(\A2G_OBUF[0]_inst_i_6_n_0 ),
        .I1(\A2G_OBUF[0]_inst_i_3_0 ),
        .O(\A2G_OBUF[0]_inst_i_4_n_0 ),
        .S(p_0_in[0]));
  LUT4 #(
    .INIT(16'hD6EF)) 
    \A2G_OBUF[0]_inst_i_6 
       (.I0(Q[1]),
        .I1(\raw_segs[0] [1]),
        .I2(\raw_segs[0] [2]),
        .I3(Q[0]),
        .O(\A2G_OBUF[0]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF82A88000)) 
    \A2G_OBUF[1]_inst_i_4 
       (.I0(\A2G_OBUF[6]_inst_i_1 ),
        .I1(Q[1]),
        .I2(\raw_segs[0] [1]),
        .I3(Q[0]),
        .I4(\raw_segs[0] [2]),
        .I5(\A2G_OBUF[1]_inst_i_1 ),
        .O(\counter_reg[3]_1 ));
  LUT4 #(
    .INIT(16'h7F67)) 
    \A2G_OBUF[2]_inst_i_6 
       (.I0(Q[1]),
        .I1(\raw_segs[0] [2]),
        .I2(\raw_segs[0] [1]),
        .I3(Q[0]),
        .O(\counter_reg[3]_2 ));
  MUXF8 \A2G_OBUF[3]_inst_i_4 
       (.I0(\A2G_OBUF[3]_inst_i_6_n_0 ),
        .I1(\A2G_OBUF[3]_inst_i_1 ),
        .O(\counter_reg[14]_0 ),
        .S(p_0_in[1]));
  MUXF7 \A2G_OBUF[3]_inst_i_6 
       (.I0(\A2G_OBUF[3]_inst_i_8_n_0 ),
        .I1(\A2G_OBUF[3]_inst_i_4_0 ),
        .O(\A2G_OBUF[3]_inst_i_6_n_0 ),
        .S(p_0_in[0]));
  LUT4 #(
    .INIT(16'h3EDB)) 
    \A2G_OBUF[3]_inst_i_8 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\raw_segs[0] [1]),
        .I3(\raw_segs[0] [2]),
        .O(\A2G_OBUF[3]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0F350035)) 
    \A2G_OBUF[4]_inst_i_1 
       (.I0(\A2G_OBUF[4]_inst_i_2_n_0 ),
        .I1(\A2G[4] ),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(\A2G[4]_0 ),
        .O(A2G_OBUF[0]));
  LUT6 #(
    .INIT(64'h00000000FEAAFFEF)) 
    \A2G_OBUF[4]_inst_i_2 
       (.I0(p_0_in[0]),
        .I1(\raw_segs[0] [1]),
        .I2(\raw_segs[0] [2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\A2G_OBUF[4]_inst_i_1_0 ),
        .O(\A2G_OBUF[4]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0F350035)) 
    \A2G_OBUF[5]_inst_i_1 
       (.I0(\A2G_OBUF[5]_inst_i_2_n_0 ),
        .I1(\A2G[5] ),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(\A2G[5]_0 ),
        .O(A2G_OBUF[1]));
  MUXF7 \A2G_OBUF[5]_inst_i_2 
       (.I0(\A2G_OBUF[5]_inst_i_5_n_0 ),
        .I1(\A2G_OBUF[5]_inst_i_1_0 ),
        .O(\A2G_OBUF[5]_inst_i_2_n_0 ),
        .S(p_0_in[0]));
  LUT4 #(
    .INIT(16'h9FAB)) 
    \A2G_OBUF[5]_inst_i_5 
       (.I0(Q[1]),
        .I1(\raw_segs[0] [1]),
        .I2(Q[0]),
        .I3(\raw_segs[0] [2]),
        .O(\A2G_OBUF[5]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAAEAAAAAAEAE)) 
    \A2G_OBUF[6]_inst_i_5 
       (.I0(p_0_in[2]),
        .I1(\A2G_OBUF[6]_inst_i_1 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\raw_segs[0] [1]),
        .I5(\raw_segs[0] [2]),
        .O(\counter_reg[15] ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(Q[0]),
        .O(p_1_in__0[0]));
  LUT4 #(
    .INIT(16'h0BF0)) 
    \counter[1]_i_1__0 
       (.I0(\raw_segs[0] [2]),
        .I1(Q[1]),
        .I2(\raw_segs[0] [1]),
        .I3(Q[0]),
        .O(p_1_in__0[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1__4 
       (.I0(\raw_segs[0] [2]),
        .I1(\raw_segs[0] [1]),
        .I2(Q[0]),
        .O(\counter[2]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'h6F80)) 
    \counter[3]_i_2 
       (.I0(\raw_segs[0] [2]),
        .I1(\raw_segs[0] [1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(p_1_in__0[3]));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \counter[3]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\raw_segs[0] [2]),
        .I3(\raw_segs[0] [1]),
        .O(\counter_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[3]_i_3__0 
       (.I0(\raw_segs[0] [1]),
        .I1(\raw_segs[0] [2]),
        .O(\counter_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[1]),
        .Q(\raw_segs[0] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\counter[2]_i_1__4_n_0 ),
        .Q(\raw_segs[0] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[3]),
        .Q(Q[1]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "add_counter" *) 
module add_counter__parameterized1
   (\counter_reg[0]_0 ,
    \counter_reg[3]_0 ,
    \counter_reg[3]_1 ,
    \counter_reg[0]_1 ,
    \counter_reg[3]_2 ,
    \counter_reg[3]_3 ,
    \counter_reg[0]_2 ,
    A2G_OBUF,
    p_0_in,
    \A2G_OBUF[4]_inst_i_1 ,
    \A2G_OBUF[6]_inst_i_1 ,
    \A2G_OBUF[1]_inst_i_1 ,
    \A2G_OBUF[2]_inst_i_1_0 ,
    \A2G[2] ,
    \A2G[2]_0 ,
    SR,
    E,
    CLK);
  output \counter_reg[0]_0 ;
  output \counter_reg[3]_0 ;
  output \counter_reg[3]_1 ;
  output \counter_reg[0]_1 ;
  output \counter_reg[3]_2 ;
  output \counter_reg[3]_3 ;
  output \counter_reg[0]_2 ;
  output [0:0]A2G_OBUF;
  input [2:0]p_0_in;
  input \A2G_OBUF[4]_inst_i_1 ;
  input \A2G_OBUF[6]_inst_i_1 ;
  input \A2G_OBUF[1]_inst_i_1 ;
  input \A2G_OBUF[2]_inst_i_1_0 ;
  input \A2G[2] ;
  input \A2G[2]_0 ;
  input [0:0]SR;
  input [0:0]E;
  input CLK;

  wire \A2G[2] ;
  wire \A2G[2]_0 ;
  wire [0:0]A2G_OBUF;
  wire \A2G_OBUF[1]_inst_i_1 ;
  wire \A2G_OBUF[2]_inst_i_1_0 ;
  wire \A2G_OBUF[2]_inst_i_2_n_0 ;
  wire \A2G_OBUF[4]_inst_i_1 ;
  wire \A2G_OBUF[6]_inst_i_1 ;
  wire CLK;
  wire [0:0]E;
  wire [0:0]SR;
  wire \counter[0]_i_1__3_n_0 ;
  wire \counter[1]_i_1__3_n_0 ;
  wire \counter[2]_i_1__1_n_0 ;
  wire \counter[3]_i_2__1_n_0 ;
  wire \counter_reg[0]_0 ;
  wire \counter_reg[0]_1 ;
  wire \counter_reg[0]_2 ;
  wire \counter_reg[3]_0 ;
  wire \counter_reg[3]_1 ;
  wire \counter_reg[3]_2 ;
  wire \counter_reg[3]_3 ;
  wire [2:0]p_0_in;
  wire [3:0]\raw_segs[3] ;

  LUT4 #(
    .INIT(16'hDE6F)) 
    \A2G_OBUF[0]_inst_i_9 
       (.I0(\raw_segs[3] [3]),
        .I1(\raw_segs[3] [1]),
        .I2(\raw_segs[3] [0]),
        .I3(\raw_segs[3] [2]),
        .O(\counter_reg[3]_3 ));
  LUT6 #(
    .INIT(64'hAC48FFFFAC480000)) 
    \A2G_OBUF[1]_inst_i_3 
       (.I0(\raw_segs[3] [3]),
        .I1(\raw_segs[3] [2]),
        .I2(\raw_segs[3] [0]),
        .I3(\raw_segs[3] [1]),
        .I4(p_0_in[0]),
        .I5(\A2G_OBUF[1]_inst_i_1 ),
        .O(\counter_reg[3]_1 ));
  LUT5 #(
    .INIT(32'h0FA300A3)) 
    \A2G_OBUF[2]_inst_i_1 
       (.I0(\A2G_OBUF[2]_inst_i_2_n_0 ),
        .I1(\A2G[2] ),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(\A2G[2]_0 ),
        .O(A2G_OBUF));
  LUT6 #(
    .INIT(64'h8098FFFF80980000)) 
    \A2G_OBUF[2]_inst_i_2 
       (.I0(\raw_segs[3] [3]),
        .I1(\raw_segs[3] [2]),
        .I2(\raw_segs[3] [1]),
        .I3(\raw_segs[3] [0]),
        .I4(p_0_in[0]),
        .I5(\A2G_OBUF[2]_inst_i_1_0 ),
        .O(\A2G_OBUF[2]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7B6D)) 
    \A2G_OBUF[3]_inst_i_11 
       (.I0(\raw_segs[3] [0]),
        .I1(\raw_segs[3] [1]),
        .I2(\raw_segs[3] [2]),
        .I3(\raw_segs[3] [3]),
        .O(\counter_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hFD45FFFFFD450000)) 
    \A2G_OBUF[4]_inst_i_3 
       (.I0(\raw_segs[3] [0]),
        .I1(\raw_segs[3] [1]),
        .I2(\raw_segs[3] [2]),
        .I3(\raw_segs[3] [3]),
        .I4(p_0_in[0]),
        .I5(\A2G_OBUF[4]_inst_i_1 ),
        .O(\counter_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hAE6F)) 
    \A2G_OBUF[5]_inst_i_8 
       (.I0(\raw_segs[3] [3]),
        .I1(\raw_segs[3] [2]),
        .I2(\raw_segs[3] [0]),
        .I3(\raw_segs[3] [1]),
        .O(\counter_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hBFDAFFFFBFDA0000)) 
    \A2G_OBUF[6]_inst_i_6 
       (.I0(\raw_segs[3] [3]),
        .I1(\raw_segs[3] [0]),
        .I2(\raw_segs[3] [2]),
        .I3(\raw_segs[3] [1]),
        .I4(p_0_in[0]),
        .I5(\A2G_OBUF[6]_inst_i_1 ),
        .O(\counter_reg[3]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__3 
       (.I0(\raw_segs[3] [0]),
        .O(\counter[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0BF0)) 
    \counter[1]_i_1__3 
       (.I0(\raw_segs[3] [3]),
        .I1(\raw_segs[3] [2]),
        .I2(\raw_segs[3] [1]),
        .I3(\raw_segs[3] [0]),
        .O(\counter[1]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'h3BC0)) 
    \counter[2]_i_1__1 
       (.I0(\raw_segs[3] [3]),
        .I1(\raw_segs[3] [0]),
        .I2(\raw_segs[3] [1]),
        .I3(\raw_segs[3] [2]),
        .O(\counter[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_2__1 
       (.I0(\raw_segs[3] [3]),
        .I1(\raw_segs[3] [0]),
        .I2(\raw_segs[3] [1]),
        .I3(\raw_segs[3] [2]),
        .O(\counter[3]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[4]_i_4 
       (.I0(\raw_segs[3] [0]),
        .I1(\raw_segs[3] [1]),
        .I2(\raw_segs[3] [2]),
        .I3(\raw_segs[3] [3]),
        .O(\counter_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\counter[0]_i_1__3_n_0 ),
        .Q(\raw_segs[3] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\counter[1]_i_1__3_n_0 ),
        .Q(\raw_segs[3] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\counter[2]_i_1__1_n_0 ),
        .Q(\raw_segs[3] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\counter[3]_i_2__1_n_0 ),
        .Q(\raw_segs[3] [3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "add_counter" *) 
module add_counter__parameterized1_1
   (\counter_reg[0]_0 ,
    \counter_reg[3]_0 ,
    \counter_reg[3]_1 ,
    \counter_reg[0]_1 ,
    \counter_reg[3]_2 ,
    \counter_reg[14] ,
    \counter_reg[14]_0 ,
    \counter_reg[0]_2 ,
    p_0_in,
    \A2G_OBUF[2]_inst_i_1 ,
    SR,
    E,
    CLK);
  output \counter_reg[0]_0 ;
  output \counter_reg[3]_0 ;
  output \counter_reg[3]_1 ;
  output \counter_reg[0]_1 ;
  output \counter_reg[3]_2 ;
  output \counter_reg[14] ;
  output \counter_reg[14]_0 ;
  output \counter_reg[0]_2 ;
  input [1:0]p_0_in;
  input \A2G_OBUF[2]_inst_i_1 ;
  input [0:0]SR;
  input [0:0]E;
  input CLK;

  wire \A2G_OBUF[2]_inst_i_1 ;
  wire CLK;
  wire [0:0]E;
  wire [0:0]SR;
  wire \counter[0]_i_1__1_n_0 ;
  wire \counter[1]_i_1__1_n_0 ;
  wire \counter[2]_i_1__0_n_0 ;
  wire \counter[3]_i_2__2_n_0 ;
  wire \counter_reg[0]_0 ;
  wire \counter_reg[0]_1 ;
  wire \counter_reg[0]_2 ;
  wire \counter_reg[14] ;
  wire \counter_reg[14]_0 ;
  wire \counter_reg[3]_0 ;
  wire \counter_reg[3]_1 ;
  wire \counter_reg[3]_2 ;
  wire [1:0]p_0_in;
  wire [3:0]\raw_segs[1] ;

  LUT4 #(
    .INIT(16'hDE6F)) 
    \A2G_OBUF[0]_inst_i_7 
       (.I0(\raw_segs[1] [3]),
        .I1(\raw_segs[1] [1]),
        .I2(\raw_segs[1] [0]),
        .I3(\raw_segs[1] [2]),
        .O(\counter_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h4440004000404000)) 
    \A2G_OBUF[1]_inst_i_6 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\raw_segs[1] [2]),
        .I3(\raw_segs[1] [0]),
        .I4(\raw_segs[1] [1]),
        .I5(\raw_segs[1] [3]),
        .O(\counter_reg[14] ));
  LUT6 #(
    .INIT(64'h7F67FFFF7F670000)) 
    \A2G_OBUF[2]_inst_i_3 
       (.I0(\raw_segs[1] [3]),
        .I1(\raw_segs[1] [2]),
        .I2(\raw_segs[1] [1]),
        .I3(\raw_segs[1] [0]),
        .I4(p_0_in[0]),
        .I5(\A2G_OBUF[2]_inst_i_1 ),
        .O(\counter_reg[3]_2 ));
  LUT4 #(
    .INIT(16'h7B6D)) 
    \A2G_OBUF[3]_inst_i_9 
       (.I0(\raw_segs[1] [0]),
        .I1(\raw_segs[1] [1]),
        .I2(\raw_segs[1] [2]),
        .I3(\raw_segs[1] [3]),
        .O(\counter_reg[0]_1 ));
  LUT5 #(
    .INIT(32'h08080C88)) 
    \A2G_OBUF[4]_inst_i_5 
       (.I0(\raw_segs[1] [0]),
        .I1(p_0_in[0]),
        .I2(\raw_segs[1] [3]),
        .I3(\raw_segs[1] [2]),
        .I4(\raw_segs[1] [1]),
        .O(\counter_reg[0]_2 ));
  LUT4 #(
    .INIT(16'hAE6F)) 
    \A2G_OBUF[5]_inst_i_6 
       (.I0(\raw_segs[1] [3]),
        .I1(\raw_segs[1] [2]),
        .I2(\raw_segs[1] [0]),
        .I3(\raw_segs[1] [1]),
        .O(\counter_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0000040040040004)) 
    \A2G_OBUF[6]_inst_i_4 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\raw_segs[1] [1]),
        .I3(\raw_segs[1] [2]),
        .I4(\raw_segs[1] [0]),
        .I5(\raw_segs[1] [3]),
        .O(\counter_reg[14]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__1 
       (.I0(\raw_segs[1] [0]),
        .O(\counter[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0BF0)) 
    \counter[1]_i_1__1 
       (.I0(\raw_segs[1] [3]),
        .I1(\raw_segs[1] [2]),
        .I2(\raw_segs[1] [1]),
        .I3(\raw_segs[1] [0]),
        .O(\counter[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h3BC0)) 
    \counter[2]_i_1__0 
       (.I0(\raw_segs[1] [3]),
        .I1(\raw_segs[1] [0]),
        .I2(\raw_segs[1] [1]),
        .I3(\raw_segs[1] [2]),
        .O(\counter[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_2__2 
       (.I0(\raw_segs[1] [3]),
        .I1(\raw_segs[1] [2]),
        .I2(\raw_segs[1] [0]),
        .I3(\raw_segs[1] [1]),
        .O(\counter[3]_i_2__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[3]_i_4 
       (.I0(\raw_segs[1] [0]),
        .I1(\raw_segs[1] [1]),
        .I2(\raw_segs[1] [2]),
        .I3(\raw_segs[1] [3]),
        .O(\counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\counter[0]_i_1__1_n_0 ),
        .Q(\raw_segs[1] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\counter[1]_i_1__1_n_0 ),
        .Q(\raw_segs[1] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\counter[2]_i_1__0_n_0 ),
        .Q(\raw_segs[1] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\counter[3]_i_2__2_n_0 ),
        .Q(\raw_segs[1] [3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "add_counter" *) 
module add_counter__parameterized2
   (A2G_OBUF,
    \counter_reg[0]_0 ,
    \counter_reg[0]_1 ,
    \counter_reg[0]_2 ,
    p_0_in,
    \A2G[0] ,
    \A2G[3] ,
    \A2G[6] ,
    \A2G[6]_0 ,
    \A2G[6]_1 ,
    \A2G[1] ,
    \A2G[1]_0 ,
    \A2G_OBUF[6]_inst_i_1_0 ,
    \A2G_OBUF[0]_inst_i_1_0 ,
    SR,
    E,
    CLK);
  output [3:0]A2G_OBUF;
  output \counter_reg[0]_0 ;
  output \counter_reg[0]_1 ;
  output \counter_reg[0]_2 ;
  input [2:0]p_0_in;
  input \A2G[0] ;
  input \A2G[3] ;
  input \A2G[6] ;
  input \A2G[6]_0 ;
  input \A2G[6]_1 ;
  input \A2G[1] ;
  input \A2G[1]_0 ;
  input \A2G_OBUF[6]_inst_i_1_0 ;
  input \A2G_OBUF[0]_inst_i_1_0 ;
  input [0:0]SR;
  input [0:0]E;
  input CLK;

  wire \A2G[0] ;
  wire \A2G[1] ;
  wire \A2G[1]_0 ;
  wire \A2G[3] ;
  wire \A2G[6] ;
  wire \A2G[6]_0 ;
  wire \A2G[6]_1 ;
  wire [3:0]A2G_OBUF;
  wire \A2G_OBUF[0]_inst_i_1_0 ;
  wire \A2G_OBUF[0]_inst_i_2_n_0 ;
  wire \A2G_OBUF[1]_inst_i_2_n_0 ;
  wire \A2G_OBUF[3]_inst_i_2_n_0 ;
  wire \A2G_OBUF[3]_inst_i_3_n_0 ;
  wire \A2G_OBUF[6]_inst_i_1_0 ;
  wire \A2G_OBUF[6]_inst_i_2_n_0 ;
  wire \A2G_OBUF[6]_inst_i_3_n_0 ;
  wire CLK;
  wire [0:0]E;
  wire [0:0]SR;
  wire \counter[0]_i_1__4_n_0 ;
  wire \counter[1]_i_1__4_n_0 ;
  wire \counter[2]_i_1__2_n_0 ;
  wire \counter[3]_i_1__4_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter_reg[0]_0 ;
  wire \counter_reg[0]_1 ;
  wire \counter_reg[0]_2 ;
  wire [4:0]hour_temp;
  wire [2:0]p_0_in;

  LUT6 #(
    .INIT(64'hFFFFFFFF100010FF)) 
    \A2G_OBUF[0]_inst_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\A2G_OBUF[0]_inst_i_2_n_0 ),
        .I3(p_0_in[2]),
        .I4(\A2G[0] ),
        .I5(\A2G_OBUF[3]_inst_i_3_n_0 ),
        .O(A2G_OBUF[0]));
  LUT5 #(
    .INIT(32'h90094204)) 
    \A2G_OBUF[0]_inst_i_2 
       (.I0(hour_temp[4]),
        .I1(hour_temp[2]),
        .I2(hour_temp[1]),
        .I3(hour_temp[3]),
        .I4(hour_temp[0]),
        .O(\A2G_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00110011FFFFF000)) 
    \A2G_OBUF[1]_inst_i_1 
       (.I0(\A2G_OBUF[1]_inst_i_2_n_0 ),
        .I1(p_0_in[0]),
        .I2(\A2G[1] ),
        .I3(p_0_in[1]),
        .I4(\A2G[1]_0 ),
        .I5(p_0_in[2]),
        .O(A2G_OBUF[1]));
  LUT5 #(
    .INIT(32'hF97FFE9F)) 
    \A2G_OBUF[1]_inst_i_2 
       (.I0(hour_temp[0]),
        .I1(hour_temp[1]),
        .I2(hour_temp[2]),
        .I3(hour_temp[4]),
        .I4(hour_temp[3]),
        .O(\A2G_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0700300433403000)) 
    \A2G_OBUF[2]_inst_i_4 
       (.I0(hour_temp[0]),
        .I1(\A2G_OBUF[6]_inst_i_1_0 ),
        .I2(hour_temp[3]),
        .I3(hour_temp[4]),
        .I4(hour_temp[2]),
        .I5(hour_temp[1]),
        .O(\counter_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFF10FF00FF10FFFF)) 
    \A2G_OBUF[3]_inst_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\A2G_OBUF[3]_inst_i_2_n_0 ),
        .I3(\A2G_OBUF[3]_inst_i_3_n_0 ),
        .I4(p_0_in[2]),
        .I5(\A2G[3] ),
        .O(A2G_OBUF[2]));
  LUT5 #(
    .INIT(32'h82866182)) 
    \A2G_OBUF[3]_inst_i_2 
       (.I0(hour_temp[0]),
        .I1(hour_temp[3]),
        .I2(hour_temp[1]),
        .I3(hour_temp[2]),
        .I4(hour_temp[4]),
        .O(\A2G_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010011000100100)) 
    \A2G_OBUF[3]_inst_i_3 
       (.I0(\A2G_OBUF[0]_inst_i_1_0 ),
        .I1(\A2G_OBUF[6]_inst_i_1_0 ),
        .I2(hour_temp[3]),
        .I3(hour_temp[4]),
        .I4(hour_temp[2]),
        .I5(hour_temp[1]),
        .O(\A2G_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB88CFBB888BB8C88)) 
    \A2G_OBUF[4]_inst_i_4 
       (.I0(hour_temp[0]),
        .I1(\A2G_OBUF[6]_inst_i_1_0 ),
        .I2(hour_temp[1]),
        .I3(hour_temp[2]),
        .I4(hour_temp[4]),
        .I5(hour_temp[3]),
        .O(\counter_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hBF38B3BC3BF03B08)) 
    \A2G_OBUF[5]_inst_i_4 
       (.I0(hour_temp[0]),
        .I1(\A2G_OBUF[6]_inst_i_1_0 ),
        .I2(hour_temp[3]),
        .I3(hour_temp[4]),
        .I4(hour_temp[2]),
        .I5(hour_temp[1]),
        .O(\counter_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hEEE0EEEEEEE0EEE0)) 
    \A2G_OBUF[6]_inst_i_1 
       (.I0(\A2G_OBUF[6]_inst_i_2_n_0 ),
        .I1(\A2G_OBUF[6]_inst_i_3_n_0 ),
        .I2(\A2G[6] ),
        .I3(\A2G[6]_0 ),
        .I4(\A2G[6]_1 ),
        .I5(p_0_in[1]),
        .O(A2G_OBUF[3]));
  LUT6 #(
    .INIT(64'hDDFDDDFDDDFDFDFD)) 
    \A2G_OBUF[6]_inst_i_2 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(hour_temp[4]),
        .I4(hour_temp[2]),
        .I5(hour_temp[3]),
        .O(\A2G_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC00880C00C00080C)) 
    \A2G_OBUF[6]_inst_i_3 
       (.I0(hour_temp[0]),
        .I1(\A2G_OBUF[6]_inst_i_1_0 ),
        .I2(hour_temp[3]),
        .I3(hour_temp[4]),
        .I4(hour_temp[2]),
        .I5(hour_temp[1]),
        .O(\A2G_OBUF[6]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__4 
       (.I0(hour_temp[0]),
        .O(\counter[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__4 
       (.I0(hour_temp[1]),
        .I1(hour_temp[0]),
        .O(\counter[1]_i_1__4_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1__2 
       (.I0(hour_temp[2]),
        .I1(hour_temp[0]),
        .I2(hour_temp[1]),
        .O(\counter[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h3FFF4000)) 
    \counter[3]_i_1__4 
       (.I0(hour_temp[4]),
        .I1(hour_temp[2]),
        .I2(hour_temp[0]),
        .I3(hour_temp[1]),
        .I4(hour_temp[3]),
        .O(\counter[3]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h3FFF8000)) 
    \counter[4]_i_2 
       (.I0(hour_temp[3]),
        .I1(hour_temp[1]),
        .I2(hour_temp[0]),
        .I3(hour_temp[2]),
        .I4(hour_temp[4]),
        .O(\counter[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\counter[0]_i_1__4_n_0 ),
        .Q(hour_temp[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\counter[1]_i_1__4_n_0 ),
        .Q(hour_temp[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\counter[2]_i_1__2_n_0 ),
        .Q(hour_temp[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\counter[3]_i_1__4_n_0 ),
        .Q(hour_temp[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\counter[4]_i_2_n_0 ),
        .Q(hour_temp[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "add_counter" *) 
module add_counter__parameterized3
   (SR,
    E,
    \counter_reg[15]_0 ,
    \counter_reg[29]_0 ,
    \counter_reg[6]_0 ,
    SW_IBUF,
    resetn_IBUF,
    \FSM_onehot_state_reg[0] ,
    Q,
    \FSM_onehot_state_reg[0]_0 ,
    CLK);
  output [0:0]SR;
  output [0:0]E;
  output \counter_reg[15]_0 ;
  output \counter_reg[29]_0 ;
  output \counter_reg[6]_0 ;
  input [0:0]SW_IBUF;
  input resetn_IBUF;
  input \FSM_onehot_state_reg[0] ;
  input [0:0]Q;
  input \FSM_onehot_state_reg[0]_0 ;
  input CLK;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  wire \FSM_onehot_state[3]_i_10_n_0 ;
  wire \FSM_onehot_state[3]_i_11_n_0 ;
  wire \FSM_onehot_state[3]_i_8_n_0 ;
  wire \FSM_onehot_state[3]_i_9_n_0 ;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:0]SW_IBUF;
  wire [29:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_4;
  wire counter0_carry__1_n_5;
  wire counter0_carry__1_n_6;
  wire counter0_carry__1_n_7;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_4;
  wire counter0_carry__2_n_5;
  wire counter0_carry__2_n_6;
  wire counter0_carry__2_n_7;
  wire counter0_carry__3_n_0;
  wire counter0_carry__3_n_4;
  wire counter0_carry__3_n_5;
  wire counter0_carry__3_n_6;
  wire counter0_carry__3_n_7;
  wire counter0_carry__4_n_0;
  wire counter0_carry__4_n_4;
  wire counter0_carry__4_n_5;
  wire counter0_carry__4_n_6;
  wire counter0_carry__4_n_7;
  wire counter0_carry__5_n_0;
  wire counter0_carry__5_n_4;
  wire counter0_carry__5_n_5;
  wire counter0_carry__5_n_6;
  wire counter0_carry__5_n_7;
  wire counter0_carry__6_n_7;
  wire counter0_carry_n_0;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire \counter_reg[15]_0 ;
  wire \counter_reg[29]_0 ;
  wire \counter_reg[6]_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[18] ;
  wire \counter_reg_n_0_[19] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[20] ;
  wire \counter_reg_n_0_[21] ;
  wire \counter_reg_n_0_[22] ;
  wire \counter_reg_n_0_[23] ;
  wire \counter_reg_n_0_[24] ;
  wire \counter_reg_n_0_[25] ;
  wire \counter_reg_n_0_[26] ;
  wire \counter_reg_n_0_[27] ;
  wire \counter_reg_n_0_[28] ;
  wire \counter_reg_n_0_[29] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire resetn_IBUF;
  wire [3:0]NLW_counter0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__3_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__5_CO_UNCONNECTED;

  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(SW_IBUF),
        .I1(resetn_IBUF),
        .O(SR));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFFFFFF)) 
    \FSM_onehot_state[3]_i_10 
       (.I0(\counter_reg_n_0_[5] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[28] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\counter_reg_n_0_[27] ),
        .I5(\counter_reg_n_0_[18] ),
        .O(\FSM_onehot_state[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_onehot_state[3]_i_11 
       (.I0(\counter_reg_n_0_[20] ),
        .I1(\counter_reg_n_0_[12] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[10] ),
        .O(\FSM_onehot_state[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000004F0000)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\FSM_onehot_state_reg[0] ),
        .I1(Q),
        .I2(\FSM_onehot_state_reg[0]_0 ),
        .I3(\counter_reg[15]_0 ),
        .I4(\counter_reg[29]_0 ),
        .I5(\counter_reg[6]_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_onehot_state[3]_i_5 
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(\counter_reg_n_0_[24] ),
        .I3(\counter_reg_n_0_[21] ),
        .I4(\FSM_onehot_state[3]_i_8_n_0 ),
        .O(\counter_reg[15]_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \FSM_onehot_state[3]_i_6 
       (.I0(\counter_reg_n_0_[29] ),
        .I1(\counter_reg_n_0_[26] ),
        .I2(\counter_reg_n_0_[22] ),
        .I3(\counter_reg_n_0_[17] ),
        .I4(\FSM_onehot_state[3]_i_9_n_0 ),
        .O(\counter_reg[29]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    \FSM_onehot_state[3]_i_7 
       (.I0(\FSM_onehot_state[3]_i_10_n_0 ),
        .I1(\FSM_onehot_state[3]_i_11_n_0 ),
        .I2(\counter_reg_n_0_[6] ),
        .I3(\counter_reg_n_0_[14] ),
        .I4(\counter_reg_n_0_[1] ),
        .I5(\counter_reg_n_0_[11] ),
        .O(\counter_reg[6]_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_onehot_state[3]_i_8 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[19] ),
        .I2(\counter_reg_n_0_[23] ),
        .I3(\counter_reg_n_0_[25] ),
        .O(\FSM_onehot_state[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_onehot_state[3]_i_9 
       (.I0(\counter_reg_n_0_[9] ),
        .I1(\counter_reg_n_0_[8] ),
        .I2(\counter_reg_n_0_[13] ),
        .I3(\counter_reg_n_0_[7] ),
        .O(\FSM_onehot_state[3]_i_9_n_0 ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry
       (.CI(\<const0> ),
        .CO({counter0_carry_n_0,NLW_counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,NLW_counter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,NLW_counter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({counter0_carry__1_n_4,counter0_carry__1_n_5,counter0_carry__1_n_6,counter0_carry__1_n_7}),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,NLW_counter0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({counter0_carry__2_n_4,counter0_carry__2_n_5,counter0_carry__2_n_6,counter0_carry__2_n_7}),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,NLW_counter0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({counter0_carry__3_n_4,counter0_carry__3_n_5,counter0_carry__3_n_6,counter0_carry__3_n_7}),
        .S({\counter_reg_n_0_[20] ,\counter_reg_n_0_[19] ,\counter_reg_n_0_[18] ,\counter_reg_n_0_[17] }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO({counter0_carry__4_n_0,NLW_counter0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({counter0_carry__4_n_4,counter0_carry__4_n_5,counter0_carry__4_n_6,counter0_carry__4_n_7}),
        .S({\counter_reg_n_0_[24] ,\counter_reg_n_0_[23] ,\counter_reg_n_0_[22] ,\counter_reg_n_0_[21] }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry__5
       (.CI(counter0_carry__4_n_0),
        .CO({counter0_carry__5_n_0,NLW_counter0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({counter0_carry__5_n_4,counter0_carry__5_n_5,counter0_carry__5_n_6,counter0_carry__5_n_7}),
        .S({\counter_reg_n_0_[28] ,\counter_reg_n_0_[27] ,\counter_reg_n_0_[26] ,\counter_reg_n_0_[25] }));
  CARRY4 counter0_carry__6
       (.CI(counter0_carry__5_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(counter0_carry__6_n_7),
        .S({\<const0> ,\<const0> ,\<const0> ,\counter_reg_n_0_[29] }));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__5 
       (.I0(\counter_reg_n_0_[0] ),
        .O(counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[10]_i_1__0 
       (.I0(counter0_carry__1_n_6),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[10]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[11]_i_1__0 
       (.I0(counter0_carry__1_n_5),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[11]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[12]_i_1__0 
       (.I0(counter0_carry__1_n_4),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[12]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[13]_i_1__0 
       (.I0(counter0_carry__2_n_7),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[14]_i_1__0 
       (.I0(counter0_carry__2_n_6),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[15]_i_1__0 
       (.I0(counter0_carry__2_n_5),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[16]_i_1__0 
       (.I0(counter0_carry__2_n_4),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[16]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[17]_i_1__0 
       (.I0(counter0_carry__3_n_7),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[17]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[18]_i_1__0 
       (.I0(counter0_carry__3_n_6),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[18]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[19]_i_1__0 
       (.I0(counter0_carry__3_n_5),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[19]));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[1]_i_1__5 
       (.I0(counter0_carry_n_7),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[20]_i_1__0 
       (.I0(counter0_carry__3_n_4),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[21]_i_1__0 
       (.I0(counter0_carry__4_n_7),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[21]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[22]_i_1__0 
       (.I0(counter0_carry__4_n_6),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[22]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[23]_i_1__0 
       (.I0(counter0_carry__4_n_5),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[24]_i_1__0 
       (.I0(counter0_carry__4_n_4),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[25]_i_1__0 
       (.I0(counter0_carry__5_n_7),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[25]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[26]_i_1__0 
       (.I0(counter0_carry__5_n_6),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[26]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[27]_i_1__0 
       (.I0(counter0_carry__5_n_5),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[27]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[28]_i_1__0 
       (.I0(counter0_carry__5_n_4),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[28]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[29]_i_1__0 
       (.I0(counter0_carry__6_n_7),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[29]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[2]_i_1__3 
       (.I0(counter0_carry_n_6),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[3]_i_1__5 
       (.I0(counter0_carry_n_5),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[4]_i_1__1 
       (.I0(counter0_carry_n_4),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[5]_i_1__0 
       (.I0(counter0_carry__0_n_7),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[6]_i_1__0 
       (.I0(counter0_carry__0_n_6),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[7]_i_1__0 
       (.I0(counter0_carry__0_n_5),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[8]_i_1__0 
       (.I0(counter0_carry__0_n_4),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \counter[9]_i_1__0 
       (.I0(counter0_carry__1_n_7),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter_reg[29]_0 ),
        .I3(\counter_reg[15]_0 ),
        .O(counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[0]),
        .Q(\counter_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[10]),
        .Q(\counter_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[11]),
        .Q(\counter_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[12]),
        .Q(\counter_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[13]),
        .Q(\counter_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[14]),
        .Q(\counter_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[15]),
        .Q(\counter_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[16]),
        .Q(\counter_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[17]),
        .Q(\counter_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[18]),
        .Q(\counter_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[19]),
        .Q(\counter_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[1]),
        .Q(\counter_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[20]),
        .Q(\counter_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[21]),
        .Q(\counter_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[22]),
        .Q(\counter_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[23]),
        .Q(\counter_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[24]),
        .Q(\counter_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[25]),
        .Q(\counter_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[26]),
        .Q(\counter_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[27]),
        .Q(\counter_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[28]),
        .Q(\counter_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[29]),
        .Q(\counter_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[2]),
        .Q(\counter_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[3]),
        .Q(\counter_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[4]),
        .Q(\counter_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[5]),
        .Q(\counter_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[6]),
        .Q(\counter_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[7]),
        .Q(\counter_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[8]),
        .Q(\counter_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(counter[9]),
        .Q(\counter_reg_n_0_[9] ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "add_counter" *) 
module add_counter__parameterized4
   (\FSM_onehot_state_reg[0] ,
    \counter_reg[0]_0 ,
    D,
    Q,
    \counter_reg[1]_0 ,
    \counter_reg[1]_1 ,
    \counter_reg[1]_2 ,
    SR,
    CLK);
  output \FSM_onehot_state_reg[0] ;
  output \counter_reg[0]_0 ;
  output [1:0]D;
  input [3:0]Q;
  input \counter_reg[1]_0 ;
  input \counter_reg[1]_1 ;
  input \counter_reg[1]_2 ;
  input [0:0]SR;
  input CLK;

  wire \<const1> ;
  wire CLK;
  wire [1:0]D;
  wire \FSM_onehot_state_reg[0] ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter_reg[0]_0 ;
  wire \counter_reg[1]_0 ;
  wire \counter_reg[1]_1 ;
  wire \counter_reg[1]_2 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;

  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(Q[2]),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[1] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(Q[2]),
        .I1(\counter_reg[0]_0 ),
        .I2(Q[0]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[3]_i_3 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .O(\counter_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h10111111)) 
    \FSM_onehot_state[3]_i_4 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(Q[1]),
        .O(\FSM_onehot_state_reg[0] ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hFFCF0010)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg[1]_0 ),
        .I2(\counter_reg[1]_1 ),
        .I3(\counter_reg[1]_2 ),
        .I4(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hFFCF0020)) 
    \counter[1]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg[1]_0 ),
        .I2(\counter_reg[1]_1 ),
        .I3(\counter_reg[1]_2 ),
        .I4(\counter_reg_n_0_[1] ),
        .O(\counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\counter[0]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\counter[1]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(SR));
endmodule

module lab6
   (clear,
    A2G_OBUF,
    LED17_R_OBUF,
    LED16_G_OBUF,
    LED16_R_OBUF,
    LED17_G_OBUF,
    resetn_IBUF,
    p_0_in,
    \A2G_OBUF[6]_inst_i_1 ,
    SW_IBUF,
    \A2G_OBUF[6]_inst_i_1_0 ,
    \A2G_OBUF[0]_inst_i_1 ,
    CLK);
  output clear;
  output [6:0]A2G_OBUF;
  output LED17_R_OBUF;
  output LED16_G_OBUF;
  output LED16_R_OBUF;
  output LED17_G_OBUF;
  input resetn_IBUF;
  input [2:0]p_0_in;
  input \A2G_OBUF[6]_inst_i_1 ;
  input [0:0]SW_IBUF;
  input \A2G_OBUF[6]_inst_i_1_0 ;
  input \A2G_OBUF[0]_inst_i_1 ;
  input CLK;

  wire [6:0]A2G_OBUF;
  wire \A2G_OBUF[0]_inst_i_1 ;
  wire \A2G_OBUF[6]_inst_i_1 ;
  wire \A2G_OBUF[6]_inst_i_1_0 ;
  wire CLK;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire LED16_G_OBUF;
  wire LED16_R_OBUF;
  wire LED17_G_OBUF;
  wire LED17_R_OBUF;
  wire [0:0]SW_IBUF;
  wire carry_0;
  wire carry_1;
  wire carry_2;
  wire carry_3;
  wire clear;
  wire hour_gen_n_4;
  wire hour_gen_n_5;
  wire hour_gen_n_6;
  wire minute_gen_0_n_0;
  wire minute_gen_0_n_1;
  wire minute_gen_0_n_2;
  wire minute_gen_0_n_3;
  wire minute_gen_0_n_4;
  wire minute_gen_0_n_5;
  wire minute_gen_0_n_6;
  wire minute_gen_0_n_7;
  wire minute_gen_1_n_0;
  wire minute_gen_1_n_1;
  wire minute_gen_1_n_2;
  wire minute_gen_1_n_3;
  wire minute_gen_1_n_4;
  wire minute_gen_1_n_5;
  wire minute_gen_1_n_6;
  wire one_s_gen_n_0;
  wire one_s_gen_n_1;
  wire one_s_gen_n_2;
  wire one_s_gen_n_3;
  wire one_s_gen_n_4;
  wire one_second;
  wire [2:0]p_0_in;
  wire p_0_in1_in;
  wire p_1_in0_in;
  wire p_1_in3_in;
  wire [3:0]\raw_segs[0] ;
  wire resetn_IBUF;
  wire second_gen_0_n_0;
  wire second_gen_0_n_3;
  wire second_gen_0_n_4;
  wire second_gen_0_n_5;
  wire second_gen_0_n_6;
  wire second_gen_0_n_7;
  wire second_gen_0_n_8;
  wire second_gen_1_n_0;
  wire second_gen_1_n_1;
  wire second_gen_1_n_2;
  wire second_gen_1_n_3;
  wire second_gen_1_n_4;
  wire second_gen_1_n_5;
  wire second_gen_1_n_6;
  wire second_gen_1_n_7;
  wire three_s_gen_n_0;
  wire three_s_gen_n_1;
  wire three_s_gen_n_2;
  wire three_s_gen_n_3;

  (* FSM_ENCODED_STATES = "HY:1000,FG:0100,HG:0010,FY:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK),
        .CE(one_s_gen_n_1),
        .D(three_s_gen_n_3),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(one_s_gen_n_0));
  (* FSM_ENCODED_STATES = "HY:1000,FG:0100,HG:0010,FY:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK),
        .CE(one_s_gen_n_1),
        .D(three_s_gen_n_2),
        .Q(p_1_in3_in),
        .S(one_s_gen_n_0));
  (* FSM_ENCODED_STATES = "HY:1000,FG:0100,HG:0010,FY:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK),
        .CE(one_s_gen_n_1),
        .D(p_0_in1_in),
        .Q(p_1_in0_in),
        .R(one_s_gen_n_0));
  (* FSM_ENCODED_STATES = "HY:1000,FG:0100,HG:0010,FY:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(CLK),
        .CE(one_s_gen_n_1),
        .D(p_1_in3_in),
        .Q(p_0_in1_in),
        .R(one_s_gen_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    LED16_G_OBUF_inst_i_1
       (.I0(p_0_in1_in),
        .I1(p_1_in3_in),
        .O(LED16_G_OBUF));
  LUT3 #(
    .INIT(8'hFE)) 
    LED16_R_OBUF_inst_i_1
       (.I0(p_0_in1_in),
        .I1(p_1_in0_in),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(LED16_R_OBUF));
  LUT2 #(
    .INIT(4'hE)) 
    LED17_G_OBUF_inst_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_1_in0_in),
        .O(LED17_G_OBUF));
  LUT3 #(
    .INIT(8'hFE)) 
    LED17_R_OBUF_inst_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_1_in3_in),
        .I2(p_0_in1_in),
        .O(LED17_R_OBUF));
  add_counter__parameterized2 hour_gen
       (.\A2G[0] (second_gen_0_n_0),
        .\A2G[1] (minute_gen_1_n_2),
        .\A2G[1]_0 (second_gen_0_n_7),
        .\A2G[3] (second_gen_0_n_3),
        .\A2G[6] (second_gen_1_n_6),
        .\A2G[6]_0 (second_gen_0_n_4),
        .\A2G[6]_1 (minute_gen_1_n_1),
        .A2G_OBUF({A2G_OBUF[6],A2G_OBUF[3],A2G_OBUF[1:0]}),
        .\A2G_OBUF[0]_inst_i_1_0 (\A2G_OBUF[0]_inst_i_1 ),
        .\A2G_OBUF[6]_inst_i_1_0 (\A2G_OBUF[6]_inst_i_1_0 ),
        .CLK(CLK),
        .E(carry_3),
        .SR(clear),
        .\counter_reg[0]_0 (hour_gen_n_4),
        .\counter_reg[0]_1 (hour_gen_n_5),
        .\counter_reg[0]_2 (hour_gen_n_6),
        .p_0_in(p_0_in));
  add_counter__parameterized0 minute_gen_0
       (.\A2G_OBUF[0]_inst_i_3 (minute_gen_1_n_5),
        .\A2G_OBUF[3]_inst_i_4 (minute_gen_1_n_6),
        .\A2G_OBUF[5]_inst_i_1 (minute_gen_1_n_4),
        .CLK(CLK),
        .E(carry_1),
        .SR(clear),
        .\counter_reg[13] (minute_gen_0_n_0),
        .\counter_reg[13]_0 (minute_gen_0_n_1),
        .\counter_reg[13]_1 (minute_gen_0_n_4),
        .\counter_reg[2]_0 (minute_gen_0_n_2),
        .\counter_reg[3]_0 (minute_gen_0_n_3),
        .\counter_reg[3]_1 (minute_gen_0_n_5),
        .\counter_reg[3]_2 (minute_gen_0_n_6),
        .\counter_reg[3]_3 (minute_gen_0_n_7),
        .p_0_in(p_0_in[0]));
  add_counter__parameterized1 minute_gen_1
       (.\A2G[2] (second_gen_1_n_4),
        .\A2G[2]_0 (hour_gen_n_5),
        .A2G_OBUF(A2G_OBUF[2]),
        .\A2G_OBUF[1]_inst_i_1 (minute_gen_0_n_6),
        .\A2G_OBUF[2]_inst_i_1_0 (minute_gen_0_n_7),
        .\A2G_OBUF[4]_inst_i_1 (minute_gen_0_n_3),
        .\A2G_OBUF[6]_inst_i_1 (minute_gen_0_n_5),
        .CLK(CLK),
        .E(carry_2),
        .SR(clear),
        .\counter_reg[0]_0 (minute_gen_1_n_0),
        .\counter_reg[0]_1 (minute_gen_1_n_3),
        .\counter_reg[0]_2 (minute_gen_1_n_6),
        .\counter_reg[3]_0 (minute_gen_1_n_1),
        .\counter_reg[3]_1 (minute_gen_1_n_2),
        .\counter_reg[3]_2 (minute_gen_1_n_4),
        .\counter_reg[3]_3 (minute_gen_1_n_5),
        .p_0_in(p_0_in));
  add_counter__parameterized3 one_s_gen
       (.CLK(CLK),
        .E(one_s_gen_n_1),
        .\FSM_onehot_state_reg[0] (three_s_gen_n_1),
        .\FSM_onehot_state_reg[0]_0 (three_s_gen_n_0),
        .Q(p_1_in0_in),
        .SR(one_s_gen_n_0),
        .SW_IBUF(SW_IBUF),
        .\counter_reg[15]_0 (one_s_gen_n_2),
        .\counter_reg[29]_0 (one_s_gen_n_3),
        .\counter_reg[6]_0 (one_s_gen_n_4),
        .resetn_IBUF(resetn_IBUF));
  add_counter one_second_gen
       (.CLK(CLK),
        .E(carry_3),
        .Q({\raw_segs[0] [3],\raw_segs[0] [0]}),
        .SR(clear),
        .\counter_reg[0]_0 (carry_2),
        .\counter_reg[0]_1 (carry_0),
        .\counter_reg[11]_0 (one_second),
        .\counter_reg[3]_0 (carry_1),
        .\counter_reg[3]_1 (second_gen_0_n_6),
        .\counter_reg[4]_0 (minute_gen_0_n_2),
        .\counter_reg[4]_1 (second_gen_0_n_5),
        .\counter_reg[4]_2 (second_gen_1_n_0),
        .\counter_reg[4]_3 (minute_gen_1_n_3),
        .resetn_IBUF(resetn_IBUF));
  add_counter__parameterized0_0 second_gen_0
       (.\A2G[4] (minute_gen_1_n_0),
        .\A2G[4]_0 (hour_gen_n_4),
        .\A2G[5] (minute_gen_0_n_1),
        .\A2G[5]_0 (hour_gen_n_6),
        .A2G_OBUF(A2G_OBUF[5:4]),
        .\A2G_OBUF[0]_inst_i_1 (minute_gen_0_n_0),
        .\A2G_OBUF[0]_inst_i_3_0 (second_gen_1_n_2),
        .\A2G_OBUF[1]_inst_i_1 (second_gen_1_n_5),
        .\A2G_OBUF[3]_inst_i_1 (minute_gen_0_n_4),
        .\A2G_OBUF[3]_inst_i_4_0 (second_gen_1_n_3),
        .\A2G_OBUF[4]_inst_i_1_0 (second_gen_1_n_7),
        .\A2G_OBUF[5]_inst_i_1_0 (second_gen_1_n_1),
        .\A2G_OBUF[6]_inst_i_1 (\A2G_OBUF[6]_inst_i_1 ),
        .CLK(CLK),
        .E(one_second),
        .Q({\raw_segs[0] [3],\raw_segs[0] [0]}),
        .SR(clear),
        .\counter_reg[14] (second_gen_0_n_0),
        .\counter_reg[14]_0 (second_gen_0_n_3),
        .\counter_reg[15] (second_gen_0_n_4),
        .\counter_reg[1]_0 (second_gen_0_n_6),
        .\counter_reg[3]_0 (second_gen_0_n_5),
        .\counter_reg[3]_1 (second_gen_0_n_7),
        .\counter_reg[3]_2 (second_gen_0_n_8),
        .p_0_in(p_0_in));
  add_counter__parameterized1_1 second_gen_1
       (.\A2G_OBUF[2]_inst_i_1 (second_gen_0_n_8),
        .CLK(CLK),
        .E(carry_0),
        .SR(clear),
        .\counter_reg[0]_0 (second_gen_1_n_0),
        .\counter_reg[0]_1 (second_gen_1_n_3),
        .\counter_reg[0]_2 (second_gen_1_n_7),
        .\counter_reg[14] (second_gen_1_n_5),
        .\counter_reg[14]_0 (second_gen_1_n_6),
        .\counter_reg[3]_0 (second_gen_1_n_1),
        .\counter_reg[3]_1 (second_gen_1_n_2),
        .\counter_reg[3]_2 (second_gen_1_n_4),
        .p_0_in(p_0_in[1:0]));
  add_counter__parameterized4 three_s_gen
       (.CLK(CLK),
        .D({three_s_gen_n_2,three_s_gen_n_3}),
        .\FSM_onehot_state_reg[0] (three_s_gen_n_0),
        .Q({p_0_in1_in,p_1_in0_in,p_1_in3_in,\FSM_onehot_state_reg_n_0_[0] }),
        .SR(one_s_gen_n_0),
        .\counter_reg[0]_0 (three_s_gen_n_1),
        .\counter_reg[1]_0 (one_s_gen_n_2),
        .\counter_reg[1]_1 (one_s_gen_n_3),
        .\counter_reg[1]_2 (one_s_gen_n_4));
endmodule

(* ECO_CHECKSUM = "969ffd26" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module top
   (clk,
    resetn,
    SW,
    LED16_G,
    LED16_R,
    LED17_G,
    LED17_R,
    A2G,
    AN);
  input clk;
  input resetn;
  input [15:0]SW;
  output LED16_G;
  output LED16_R;
  output LED17_G;
  output LED17_R;
  output [6:0]A2G;
  output [7:0]AN;

  wire \<const0> ;
  wire \<const1> ;
  wire [6:0]A2G;
  wire [6:0]A2G_OBUF;
  wire \A2G_OBUF[3]_inst_i_5_n_0 ;
  wire \A2G_OBUF[6]_inst_i_7_n_0 ;
  wire \A2G_OBUF[6]_inst_i_8_n_0 ;
  wire [7:0]AN;
  wire [7:0]AN_OBUF;
  wire LED16_G;
  wire LED16_G_OBUF;
  wire LED16_R;
  wire LED16_R_OBUF;
  wire LED17_G;
  wire LED17_G_OBUF;
  wire LED17_R;
  wire LED17_R_OBUF;
  wire [15:0]SW;
  wire [0:0]SW_IBUF;
  wire clear;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire [2:0]p_0_in;
  wire resetn;
  wire resetn_IBUF;
  wire [3:0]\NLW_counter_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;

  OBUF \A2G_OBUF[0]_inst 
       (.I(A2G_OBUF[0]),
        .O(A2G[0]));
  OBUF \A2G_OBUF[1]_inst 
       (.I(A2G_OBUF[1]),
        .O(A2G[1]));
  OBUF \A2G_OBUF[2]_inst 
       (.I(A2G_OBUF[2]),
        .O(A2G[2]));
  OBUF \A2G_OBUF[3]_inst 
       (.I(A2G_OBUF[3]),
        .O(A2G[3]));
  LUT2 #(
    .INIT(4'hB)) 
    \A2G_OBUF[3]_inst_i_5 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .O(\A2G_OBUF[3]_inst_i_5_n_0 ));
  OBUF \A2G_OBUF[4]_inst 
       (.I(A2G_OBUF[4]),
        .O(A2G[4]));
  OBUF \A2G_OBUF[5]_inst 
       (.I(A2G_OBUF[5]),
        .O(A2G[5]));
  OBUF \A2G_OBUF[6]_inst 
       (.I(A2G_OBUF[6]),
        .O(A2G[6]));
  LUT3 #(
    .INIT(8'h8A)) 
    \A2G_OBUF[6]_inst_i_7 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .O(\A2G_OBUF[6]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \A2G_OBUF[6]_inst_i_8 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .O(\A2G_OBUF[6]_inst_i_8_n_0 ));
  OBUF \AN_OBUF[0]_inst 
       (.I(AN_OBUF[0]),
        .O(AN[0]));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \AN_OBUF[0]_inst_i_1 
       (.I0(resetn_IBUF),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(AN_OBUF[0]));
  OBUF \AN_OBUF[1]_inst 
       (.I(AN_OBUF[1]),
        .O(AN[1]));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \AN_OBUF[1]_inst_i_1 
       (.I0(resetn_IBUF),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(AN_OBUF[1]));
  OBUF \AN_OBUF[2]_inst 
       (.I(AN_OBUF[2]),
        .O(AN[2]));
  LUT4 #(
    .INIT(16'hFFBF)) 
    \AN_OBUF[2]_inst_i_1 
       (.I0(p_0_in[2]),
        .I1(resetn_IBUF),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(AN_OBUF[2]));
  OBUF \AN_OBUF[3]_inst 
       (.I(AN_OBUF[3]),
        .O(AN[3]));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \AN_OBUF[3]_inst_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[0]),
        .I2(resetn_IBUF),
        .I3(p_0_in[1]),
        .O(AN_OBUF[3]));
  OBUF \AN_OBUF[4]_inst 
       (.I(AN_OBUF[4]),
        .O(AN[4]));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \AN_OBUF[4]_inst_i_1 
       (.I0(p_0_in[2]),
        .I1(resetn_IBUF),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(AN_OBUF[4]));
  OBUF \AN_OBUF[5]_inst 
       (.I(AN_OBUF[5]),
        .O(AN[5]));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \AN_OBUF[5]_inst_i_1 
       (.I0(p_0_in[2]),
        .I1(resetn_IBUF),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(AN_OBUF[5]));
  OBUF \AN_OBUF[6]_inst 
       (.I(AN_OBUF[6]),
        .O(AN[6]));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \AN_OBUF[6]_inst_i_1 
       (.I0(resetn_IBUF),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .O(AN_OBUF[6]));
  OBUF \AN_OBUF[7]_inst 
       (.I(AN_OBUF[7]),
        .O(AN[7]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \AN_OBUF[7]_inst_i_1 
       (.I0(p_0_in[0]),
        .I1(resetn_IBUF),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .O(AN_OBUF[7]));
  GND GND
       (.G(\<const0> ));
  OBUF LED16_G_OBUF_inst
       (.I(LED16_G_OBUF),
        .O(LED16_G));
  OBUF LED16_R_OBUF_inst
       (.I(LED16_R_OBUF),
        .O(LED16_R));
  OBUF LED17_G_OBUF_inst
       (.I(LED17_G_OBUF),
        .O(LED17_G));
  OBUF LED17_R_OBUF_inst
       (.I(LED17_R_OBUF),
        .O(LED17_R));
  IBUF \SW_IBUF[0]_inst 
       (.I(SW[0]),
        .O(SW_IBUF));
  VCC VCC
       (.P(\<const1> ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_2 
       (.I0(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \counter_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\counter_reg[0]_i_1_n_0 ,\NLW_counter_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] ,\counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[10] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(\counter_reg_n_0_[11] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[12] ),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({p_0_in,\counter_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(p_0_in[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(p_0_in[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(p_0_in[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(\counter_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[4] ),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] ,\counter_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(\counter_reg_n_0_[7] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[8] ),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] ,\counter_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[9] ),
        .R(clear));
  lab6 lab6_inst
       (.A2G_OBUF(A2G_OBUF),
        .\A2G_OBUF[0]_inst_i_1 (\A2G_OBUF[3]_inst_i_5_n_0 ),
        .\A2G_OBUF[6]_inst_i_1 (\A2G_OBUF[6]_inst_i_8_n_0 ),
        .\A2G_OBUF[6]_inst_i_1_0 (\A2G_OBUF[6]_inst_i_7_n_0 ),
        .CLK(clk_IBUF_BUFG),
        .LED16_G_OBUF(LED16_G_OBUF),
        .LED16_R_OBUF(LED16_R_OBUF),
        .LED17_G_OBUF(LED17_G_OBUF),
        .LED17_R_OBUF(LED17_R_OBUF),
        .SW_IBUF(SW_IBUF),
        .clear(clear),
        .p_0_in(p_0_in),
        .resetn_IBUF(resetn_IBUF));
  IBUF resetn_IBUF_inst
       (.I(resetn),
        .O(resetn_IBUF));
endmodule
