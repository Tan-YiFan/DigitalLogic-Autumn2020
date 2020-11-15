`timescale 1 ps / 1 ps

module alu_ref
   (aluout_OBUF,
    instr_IBUF,
    \aluout[7] ,
    alufunc_OBUF,
    \aluout[7]_0 ,
    \aluout[6] ,
    \aluout[6]_0 ,
    \aluout[3] ,
    \aluout[3]_0 ,
    \aluout[5] ,
    \aluout[5]_0 ,
    \aluout[2] ,
    \aluout[2]_0 ,
    \aluout[4] ,
    \aluout[4]_0 ,
    \aluout[1] ,
    \aluout[1]_0 ,
    \aluout[0] ,
    \aluout[0]_0 ,
    \aluout_OBUF[0]_inst_i_1_0 );
  output [7:0]aluout_OBUF;
  input [15:0]instr_IBUF;
  input \aluout[7] ;
  input [3:0]alufunc_OBUF;
  input \aluout[7]_0 ;
  input \aluout[6] ;
  input \aluout[6]_0 ;
  input \aluout[3] ;
  input \aluout[3]_0 ;
  input \aluout[5] ;
  input \aluout[5]_0 ;
  input \aluout[2] ;
  input \aluout[2]_0 ;
  input \aluout[4] ;
  input \aluout[4]_0 ;
  input \aluout[1] ;
  input \aluout[1]_0 ;
  input \aluout[0] ;
  input \aluout[0]_0 ;
  input \aluout_OBUF[0]_inst_i_1_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]alufunc_OBUF;
  wire aluout0__21_carry__0_i_1_n_0;
  wire aluout0__21_carry__0_i_2_n_0;
  wire aluout0__21_carry__0_i_3_n_0;
  wire aluout0__21_carry__0_i_4_n_0;
  wire aluout0__21_carry__0_n_1;
  wire aluout0__21_carry__0_n_2;
  wire aluout0__21_carry__0_n_3;
  wire aluout0__21_carry__0_n_4;
  wire aluout0__21_carry__0_n_5;
  wire aluout0__21_carry__0_n_6;
  wire aluout0__21_carry__0_n_7;
  wire aluout0__21_carry_i_1_n_0;
  wire aluout0__21_carry_i_2_n_0;
  wire aluout0__21_carry_i_3_n_0;
  wire aluout0__21_carry_i_4_n_0;
  wire aluout0__21_carry_n_0;
  wire aluout0__21_carry_n_1;
  wire aluout0__21_carry_n_2;
  wire aluout0__21_carry_n_3;
  wire aluout0__21_carry_n_4;
  wire aluout0__21_carry_n_5;
  wire aluout0__21_carry_n_6;
  wire aluout0__21_carry_n_7;
  wire aluout0__43_carry_i_1_n_0;
  wire aluout0__43_carry_i_2_n_0;
  wire aluout0__43_carry_i_3_n_0;
  wire aluout0__43_carry_i_4_n_0;
  wire aluout0__43_carry_i_5_n_0;
  wire aluout0__43_carry_i_6_n_0;
  wire aluout0__43_carry_i_7_n_0;
  wire aluout0__43_carry_i_8_n_0;
  wire aluout0__43_carry_n_1;
  wire aluout0__43_carry_n_2;
  wire aluout0__43_carry_n_3;
  wire aluout0_carry__0_i_1_n_0;
  wire aluout0_carry__0_i_2_n_0;
  wire aluout0_carry__0_i_3_n_0;
  wire aluout0_carry__0_i_4_n_0;
  wire aluout0_carry__0_n_1;
  wire aluout0_carry__0_n_2;
  wire aluout0_carry__0_n_3;
  wire aluout0_carry__0_n_4;
  wire aluout0_carry__0_n_5;
  wire aluout0_carry__0_n_6;
  wire aluout0_carry__0_n_7;
  wire aluout0_carry_i_1_n_0;
  wire aluout0_carry_i_2_n_0;
  wire aluout0_carry_i_3_n_0;
  wire aluout0_carry_i_4_n_0;
  wire aluout0_carry_n_0;
  wire aluout0_carry_n_1;
  wire aluout0_carry_n_2;
  wire aluout0_carry_n_3;
  wire aluout0_carry_n_4;
  wire aluout0_carry_n_5;
  wire aluout0_carry_n_6;
  wire aluout0_carry_n_7;
  wire \aluout[0] ;
  wire \aluout[0]_0 ;
  wire \aluout[1] ;
  wire \aluout[1]_0 ;
  wire \aluout[2] ;
  wire \aluout[2]_0 ;
  wire \aluout[3] ;
  wire \aluout[3]_0 ;
  wire \aluout[4] ;
  wire \aluout[4]_0 ;
  wire \aluout[5] ;
  wire \aluout[5]_0 ;
  wire \aluout[6] ;
  wire \aluout[6]_0 ;
  wire \aluout[7] ;
  wire \aluout[7]_0 ;
  wire [7:0]aluout_OBUF;
  wire \aluout_OBUF[0]_inst_i_1_0 ;
  wire \aluout_OBUF[0]_inst_i_4_n_0 ;
  wire \aluout_OBUF[1]_inst_i_4_n_0 ;
  wire \aluout_OBUF[2]_inst_i_4_n_0 ;
  wire \aluout_OBUF[3]_inst_i_4_n_0 ;
  wire \aluout_OBUF[4]_inst_i_4_n_0 ;
  wire \aluout_OBUF[5]_inst_i_4_n_0 ;
  wire \aluout_OBUF[6]_inst_i_4_n_0 ;
  wire \aluout_OBUF[7]_inst_i_4_n_0 ;
  wire data2;
  wire [15:0]instr_IBUF;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  CARRY4 aluout0__21_carry
       (.CI(\<const0> ),
        .CO({aluout0__21_carry_n_0,aluout0__21_carry_n_1,aluout0__21_carry_n_2,aluout0__21_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI(instr_IBUF[11:8]),
        .O({aluout0__21_carry_n_4,aluout0__21_carry_n_5,aluout0__21_carry_n_6,aluout0__21_carry_n_7}),
        .S({aluout0__21_carry_i_1_n_0,aluout0__21_carry_i_2_n_0,aluout0__21_carry_i_3_n_0,aluout0__21_carry_i_4_n_0}));
  CARRY4 aluout0__21_carry__0
       (.CI(aluout0__21_carry_n_0),
        .CO({aluout0__21_carry__0_n_1,aluout0__21_carry__0_n_2,aluout0__21_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,instr_IBUF[14:12]}),
        .O({aluout0__21_carry__0_n_4,aluout0__21_carry__0_n_5,aluout0__21_carry__0_n_6,aluout0__21_carry__0_n_7}),
        .S({aluout0__21_carry__0_i_1_n_0,aluout0__21_carry__0_i_2_n_0,aluout0__21_carry__0_i_3_n_0,aluout0__21_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    aluout0__21_carry__0_i_1
       (.I0(instr_IBUF[15]),
        .I1(instr_IBUF[7]),
        .O(aluout0__21_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aluout0__21_carry__0_i_2
       (.I0(instr_IBUF[14]),
        .I1(instr_IBUF[6]),
        .O(aluout0__21_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aluout0__21_carry__0_i_3
       (.I0(instr_IBUF[13]),
        .I1(instr_IBUF[5]),
        .O(aluout0__21_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aluout0__21_carry__0_i_4
       (.I0(instr_IBUF[12]),
        .I1(instr_IBUF[4]),
        .O(aluout0__21_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aluout0__21_carry_i_1
       (.I0(instr_IBUF[11]),
        .I1(instr_IBUF[3]),
        .O(aluout0__21_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aluout0__21_carry_i_2
       (.I0(instr_IBUF[10]),
        .I1(instr_IBUF[2]),
        .O(aluout0__21_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aluout0__21_carry_i_3
       (.I0(instr_IBUF[9]),
        .I1(instr_IBUF[1]),
        .O(aluout0__21_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    aluout0__21_carry_i_4
       (.I0(instr_IBUF[8]),
        .I1(instr_IBUF[0]),
        .O(aluout0__21_carry_i_4_n_0));
  CARRY4 aluout0__43_carry
       (.CI(\<const0> ),
        .CO({data2,aluout0__43_carry_n_1,aluout0__43_carry_n_2,aluout0__43_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({aluout0__43_carry_i_1_n_0,aluout0__43_carry_i_2_n_0,aluout0__43_carry_i_3_n_0,aluout0__43_carry_i_4_n_0}),
        .S({aluout0__43_carry_i_5_n_0,aluout0__43_carry_i_6_n_0,aluout0__43_carry_i_7_n_0,aluout0__43_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    aluout0__43_carry_i_1
       (.I0(instr_IBUF[6]),
        .I1(instr_IBUF[14]),
        .I2(instr_IBUF[7]),
        .I3(instr_IBUF[15]),
        .O(aluout0__43_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    aluout0__43_carry_i_2
       (.I0(instr_IBUF[4]),
        .I1(instr_IBUF[12]),
        .I2(instr_IBUF[13]),
        .I3(instr_IBUF[5]),
        .O(aluout0__43_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    aluout0__43_carry_i_3
       (.I0(instr_IBUF[2]),
        .I1(instr_IBUF[10]),
        .I2(instr_IBUF[11]),
        .I3(instr_IBUF[3]),
        .O(aluout0__43_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    aluout0__43_carry_i_4
       (.I0(instr_IBUF[0]),
        .I1(instr_IBUF[8]),
        .I2(instr_IBUF[9]),
        .I3(instr_IBUF[1]),
        .O(aluout0__43_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aluout0__43_carry_i_5
       (.I0(instr_IBUF[6]),
        .I1(instr_IBUF[14]),
        .I2(instr_IBUF[7]),
        .I3(instr_IBUF[15]),
        .O(aluout0__43_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aluout0__43_carry_i_6
       (.I0(instr_IBUF[4]),
        .I1(instr_IBUF[12]),
        .I2(instr_IBUF[5]),
        .I3(instr_IBUF[13]),
        .O(aluout0__43_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aluout0__43_carry_i_7
       (.I0(instr_IBUF[2]),
        .I1(instr_IBUF[10]),
        .I2(instr_IBUF[3]),
        .I3(instr_IBUF[11]),
        .O(aluout0__43_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    aluout0__43_carry_i_8
       (.I0(instr_IBUF[0]),
        .I1(instr_IBUF[8]),
        .I2(instr_IBUF[1]),
        .I3(instr_IBUF[9]),
        .O(aluout0__43_carry_i_8_n_0));
  CARRY4 aluout0_carry
       (.CI(\<const0> ),
        .CO({aluout0_carry_n_0,aluout0_carry_n_1,aluout0_carry_n_2,aluout0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI(instr_IBUF[11:8]),
        .O({aluout0_carry_n_4,aluout0_carry_n_5,aluout0_carry_n_6,aluout0_carry_n_7}),
        .S({aluout0_carry_i_1_n_0,aluout0_carry_i_2_n_0,aluout0_carry_i_3_n_0,aluout0_carry_i_4_n_0}));
  CARRY4 aluout0_carry__0
       (.CI(aluout0_carry_n_0),
        .CO({aluout0_carry__0_n_1,aluout0_carry__0_n_2,aluout0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,instr_IBUF[14:12]}),
        .O({aluout0_carry__0_n_4,aluout0_carry__0_n_5,aluout0_carry__0_n_6,aluout0_carry__0_n_7}),
        .S({aluout0_carry__0_i_1_n_0,aluout0_carry__0_i_2_n_0,aluout0_carry__0_i_3_n_0,aluout0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aluout0_carry__0_i_1
       (.I0(instr_IBUF[15]),
        .I1(instr_IBUF[7]),
        .O(aluout0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aluout0_carry__0_i_2
       (.I0(instr_IBUF[14]),
        .I1(instr_IBUF[6]),
        .O(aluout0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aluout0_carry__0_i_3
       (.I0(instr_IBUF[13]),
        .I1(instr_IBUF[5]),
        .O(aluout0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aluout0_carry__0_i_4
       (.I0(instr_IBUF[12]),
        .I1(instr_IBUF[4]),
        .O(aluout0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aluout0_carry_i_1
       (.I0(instr_IBUF[11]),
        .I1(instr_IBUF[3]),
        .O(aluout0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aluout0_carry_i_2
       (.I0(instr_IBUF[10]),
        .I1(instr_IBUF[2]),
        .O(aluout0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aluout0_carry_i_3
       (.I0(instr_IBUF[9]),
        .I1(instr_IBUF[1]),
        .O(aluout0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aluout0_carry_i_4
       (.I0(instr_IBUF[8]),
        .I1(instr_IBUF[0]),
        .O(aluout0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \aluout_OBUF[0]_inst_i_1 
       (.I0(\aluout[0] ),
        .I1(alufunc_OBUF[3]),
        .I2(\aluout[0]_0 ),
        .I3(alufunc_OBUF[2]),
        .I4(\aluout_OBUF[0]_inst_i_4_n_0 ),
        .O(aluout_OBUF[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \aluout_OBUF[0]_inst_i_4 
       (.I0(\aluout_OBUF[0]_inst_i_1_0 ),
        .I1(data2),
        .I2(alufunc_OBUF[1]),
        .I3(aluout0__21_carry_n_7),
        .I4(alufunc_OBUF[0]),
        .I5(aluout0_carry_n_7),
        .O(\aluout_OBUF[0]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \aluout_OBUF[1]_inst_i_1 
       (.I0(\aluout[1] ),
        .I1(alufunc_OBUF[3]),
        .I2(\aluout[1]_0 ),
        .I3(alufunc_OBUF[2]),
        .I4(\aluout_OBUF[1]_inst_i_4_n_0 ),
        .O(aluout_OBUF[1]));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \aluout_OBUF[1]_inst_i_4 
       (.I0(instr_IBUF[1]),
        .I1(instr_IBUF[9]),
        .I2(alufunc_OBUF[1]),
        .I3(aluout0__21_carry_n_6),
        .I4(alufunc_OBUF[0]),
        .I5(aluout0_carry_n_6),
        .O(\aluout_OBUF[1]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \aluout_OBUF[2]_inst_i_1 
       (.I0(\aluout[2] ),
        .I1(alufunc_OBUF[3]),
        .I2(\aluout[2]_0 ),
        .I3(alufunc_OBUF[2]),
        .I4(\aluout_OBUF[2]_inst_i_4_n_0 ),
        .O(aluout_OBUF[2]));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \aluout_OBUF[2]_inst_i_4 
       (.I0(instr_IBUF[2]),
        .I1(instr_IBUF[10]),
        .I2(alufunc_OBUF[1]),
        .I3(aluout0__21_carry_n_5),
        .I4(alufunc_OBUF[0]),
        .I5(aluout0_carry_n_5),
        .O(\aluout_OBUF[2]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \aluout_OBUF[3]_inst_i_1 
       (.I0(\aluout[3] ),
        .I1(alufunc_OBUF[3]),
        .I2(\aluout[3]_0 ),
        .I3(alufunc_OBUF[2]),
        .I4(\aluout_OBUF[3]_inst_i_4_n_0 ),
        .O(aluout_OBUF[3]));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \aluout_OBUF[3]_inst_i_4 
       (.I0(instr_IBUF[3]),
        .I1(instr_IBUF[11]),
        .I2(alufunc_OBUF[1]),
        .I3(aluout0__21_carry_n_4),
        .I4(alufunc_OBUF[0]),
        .I5(aluout0_carry_n_4),
        .O(\aluout_OBUF[3]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \aluout_OBUF[4]_inst_i_1 
       (.I0(\aluout[4] ),
        .I1(alufunc_OBUF[3]),
        .I2(\aluout[4]_0 ),
        .I3(alufunc_OBUF[2]),
        .I4(\aluout_OBUF[4]_inst_i_4_n_0 ),
        .O(aluout_OBUF[4]));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \aluout_OBUF[4]_inst_i_4 
       (.I0(instr_IBUF[4]),
        .I1(instr_IBUF[12]),
        .I2(alufunc_OBUF[1]),
        .I3(aluout0__21_carry__0_n_7),
        .I4(alufunc_OBUF[0]),
        .I5(aluout0_carry__0_n_7),
        .O(\aluout_OBUF[4]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \aluout_OBUF[5]_inst_i_1 
       (.I0(\aluout[5] ),
        .I1(alufunc_OBUF[3]),
        .I2(\aluout[5]_0 ),
        .I3(alufunc_OBUF[2]),
        .I4(\aluout_OBUF[5]_inst_i_4_n_0 ),
        .O(aluout_OBUF[5]));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \aluout_OBUF[5]_inst_i_4 
       (.I0(instr_IBUF[5]),
        .I1(instr_IBUF[13]),
        .I2(alufunc_OBUF[1]),
        .I3(aluout0__21_carry__0_n_6),
        .I4(alufunc_OBUF[0]),
        .I5(aluout0_carry__0_n_6),
        .O(\aluout_OBUF[5]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \aluout_OBUF[6]_inst_i_1 
       (.I0(\aluout[6] ),
        .I1(alufunc_OBUF[3]),
        .I2(\aluout[6]_0 ),
        .I3(alufunc_OBUF[2]),
        .I4(\aluout_OBUF[6]_inst_i_4_n_0 ),
        .O(aluout_OBUF[6]));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \aluout_OBUF[6]_inst_i_4 
       (.I0(instr_IBUF[6]),
        .I1(instr_IBUF[14]),
        .I2(alufunc_OBUF[1]),
        .I3(aluout0__21_carry__0_n_5),
        .I4(alufunc_OBUF[0]),
        .I5(aluout0_carry__0_n_5),
        .O(\aluout_OBUF[6]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \aluout_OBUF[7]_inst_i_1 
       (.I0(\aluout[7] ),
        .I1(alufunc_OBUF[3]),
        .I2(\aluout[7]_0 ),
        .I3(alufunc_OBUF[2]),
        .I4(\aluout_OBUF[7]_inst_i_4_n_0 ),
        .O(aluout_OBUF[7]));
  LUT6 #(
    .INIT(64'h8F800F0F8F800000)) 
    \aluout_OBUF[7]_inst_i_4 
       (.I0(instr_IBUF[7]),
        .I1(instr_IBUF[15]),
        .I2(alufunc_OBUF[1]),
        .I3(aluout0__21_carry__0_n_4),
        .I4(alufunc_OBUF[0]),
        .I5(aluout0_carry__0_n_4),
        .O(\aluout_OBUF[7]_inst_i_4_n_0 ));
endmodule

(* keep = "true" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module ans
   (instr,
    aluout,
    decoded_op,
    alufunc,
    memread,
    memwrite,
    branch_taken,
    is_alu);
  input [31:0]instr;
  output [7:0]aluout;
  output [3:0]decoded_op;
  output [3:0]alufunc;
  output memread;
  output memwrite;
  output branch_taken;
  output is_alu;

  wire [3:0]alufunc;
  wire [3:0]alufunc_OBUF;
  wire \alufunc_OBUF[3]_inst_i_2_n_0 ;
  wire [7:0]aluout;
  wire [7:0]aluout_OBUF;
  wire \aluout_OBUF[0]_inst_i_2_n_0 ;
  wire \aluout_OBUF[0]_inst_i_3_n_0 ;
  wire \aluout_OBUF[0]_inst_i_5_n_0 ;
  wire \aluout_OBUF[0]_inst_i_6_n_0 ;
  wire \aluout_OBUF[0]_inst_i_7_n_0 ;
  wire \aluout_OBUF[0]_inst_i_8_n_0 ;
  wire \aluout_OBUF[1]_inst_i_2_n_0 ;
  wire \aluout_OBUF[1]_inst_i_3_n_0 ;
  wire \aluout_OBUF[1]_inst_i_8_n_0 ;
  wire \aluout_OBUF[2]_inst_i_10_n_0 ;
  wire \aluout_OBUF[2]_inst_i_2_n_0 ;
  wire \aluout_OBUF[2]_inst_i_3_n_0 ;
  wire \aluout_OBUF[2]_inst_i_8_n_0 ;
  wire \aluout_OBUF[2]_inst_i_9_n_0 ;
  wire \aluout_OBUF[3]_inst_i_10_n_0 ;
  wire \aluout_OBUF[3]_inst_i_2_n_0 ;
  wire \aluout_OBUF[3]_inst_i_3_n_0 ;
  wire \aluout_OBUF[3]_inst_i_8_n_0 ;
  wire \aluout_OBUF[3]_inst_i_9_n_0 ;
  wire \aluout_OBUF[4]_inst_i_2_n_0 ;
  wire \aluout_OBUF[4]_inst_i_3_n_0 ;
  wire \aluout_OBUF[4]_inst_i_8_n_0 ;
  wire \aluout_OBUF[4]_inst_i_9_n_0 ;
  wire \aluout_OBUF[5]_inst_i_2_n_0 ;
  wire \aluout_OBUF[5]_inst_i_3_n_0 ;
  wire \aluout_OBUF[5]_inst_i_8_n_0 ;
  wire \aluout_OBUF[6]_inst_i_2_n_0 ;
  wire \aluout_OBUF[6]_inst_i_3_n_0 ;
  wire \aluout_OBUF[6]_inst_i_8_n_0 ;
  wire \aluout_OBUF[7]_inst_i_2_n_0 ;
  wire \aluout_OBUF[7]_inst_i_3_n_0 ;
  wire \aluout_OBUF[7]_inst_i_5_n_0 ;
  wire \aluout_OBUF[7]_inst_i_7_n_0 ;
  wire \aluout_OBUF[7]_inst_i_8_n_0 ;
  wire branch_taken;
  wire branch_taken_OBUF;
  wire branch_taken_OBUF_inst_i_10_n_0;
  wire branch_taken_OBUF_inst_i_2_n_0;
  wire branch_taken_OBUF_inst_i_3_n_0;
  wire branch_taken_OBUF_inst_i_4_n_0;
  wire branch_taken_OBUF_inst_i_5_n_0;
  wire branch_taken_OBUF_inst_i_6_n_0;
  wire branch_taken_OBUF_inst_i_7_n_0;
  wire branch_taken_OBUF_inst_i_8_n_0;
  wire branch_taken_OBUF_inst_i_9_n_0;
  wire [6:1]data10;
  wire [7:1]data8;
  wire [6:1]data9;
  wire [3:0]decoded_op;
  wire [3:0]decoded_op_OBUF;
  wire \decoded_op_OBUF[1]_inst_i_3_n_0 ;
  wire \decoded_op_OBUF[2]_inst_i_2_n_0 ;
  wire \decoded_op_OBUF[3]_inst_i_2_n_0 ;
  wire [3:0]\decoder_ref/decode_data__98 ;
  wire [31:0]instr;
  wire [31:0]instr_IBUF;
  wire is_alu;
  wire is_alu_OBUF;
  wire is_alu_OBUF_inst_i_2_n_0;
  wire memread;
  wire memread_OBUF;
  wire memwrite;
  wire memwrite_OBUF;

  alu_ref alu_ref
       (.alufunc_OBUF(alufunc_OBUF),
        .\aluout[0] (\aluout_OBUF[0]_inst_i_2_n_0 ),
        .\aluout[0]_0 (\aluout_OBUF[0]_inst_i_3_n_0 ),
        .\aluout[1] (\aluout_OBUF[1]_inst_i_2_n_0 ),
        .\aluout[1]_0 (\aluout_OBUF[1]_inst_i_3_n_0 ),
        .\aluout[2] (\aluout_OBUF[2]_inst_i_2_n_0 ),
        .\aluout[2]_0 (\aluout_OBUF[2]_inst_i_3_n_0 ),
        .\aluout[3] (\aluout_OBUF[3]_inst_i_2_n_0 ),
        .\aluout[3]_0 (\aluout_OBUF[3]_inst_i_3_n_0 ),
        .\aluout[4] (\aluout_OBUF[4]_inst_i_2_n_0 ),
        .\aluout[4]_0 (\aluout_OBUF[4]_inst_i_3_n_0 ),
        .\aluout[5] (\aluout_OBUF[5]_inst_i_2_n_0 ),
        .\aluout[5]_0 (\aluout_OBUF[5]_inst_i_3_n_0 ),
        .\aluout[6] (\aluout_OBUF[6]_inst_i_2_n_0 ),
        .\aluout[6]_0 (\aluout_OBUF[6]_inst_i_3_n_0 ),
        .\aluout[7] (\aluout_OBUF[7]_inst_i_2_n_0 ),
        .\aluout[7]_0 (\aluout_OBUF[7]_inst_i_3_n_0 ),
        .aluout_OBUF(aluout_OBUF),
        .\aluout_OBUF[0]_inst_i_1_0 (\aluout_OBUF[0]_inst_i_8_n_0 ),
        .instr_IBUF(instr_IBUF[25:10]));
  OBUF \alufunc_OBUF[0]_inst 
       (.I(alufunc_OBUF[0]),
        .O(alufunc[0]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \alufunc_OBUF[0]_inst_i_1 
       (.I0(\alufunc_OBUF[3]_inst_i_2_n_0 ),
        .I1(instr_IBUF[26]),
        .I2(\decoder_ref/decode_data__98 [0]),
        .I3(instr_IBUF[28]),
        .I4(instr_IBUF[27]),
        .I5(\decoded_op_OBUF[1]_inst_i_3_n_0 ),
        .O(alufunc_OBUF[0]));
  OBUF \alufunc_OBUF[1]_inst 
       (.I(alufunc_OBUF[1]),
        .O(alufunc[1]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \alufunc_OBUF[1]_inst_i_1 
       (.I0(\alufunc_OBUF[3]_inst_i_2_n_0 ),
        .I1(instr_IBUF[26]),
        .I2(\decoder_ref/decode_data__98 [1]),
        .I3(instr_IBUF[28]),
        .I4(instr_IBUF[27]),
        .I5(\decoded_op_OBUF[1]_inst_i_3_n_0 ),
        .O(alufunc_OBUF[1]));
  OBUF \alufunc_OBUF[2]_inst 
       (.I(alufunc_OBUF[2]),
        .O(alufunc[2]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \alufunc_OBUF[2]_inst_i_1 
       (.I0(\alufunc_OBUF[3]_inst_i_2_n_0 ),
        .I1(instr_IBUF[26]),
        .I2(\decoder_ref/decode_data__98 [2]),
        .I3(instr_IBUF[28]),
        .I4(instr_IBUF[27]),
        .I5(\decoded_op_OBUF[1]_inst_i_3_n_0 ),
        .O(alufunc_OBUF[2]));
  LUT6 #(
    .INIT(64'h0800080800000800)) 
    \alufunc_OBUF[2]_inst_i_2 
       (.I0(instr_IBUF[5]),
        .I1(instr_IBUF[2]),
        .I2(instr_IBUF[4]),
        .I3(instr_IBUF[0]),
        .I4(instr_IBUF[3]),
        .I5(instr_IBUF[1]),
        .O(\decoder_ref/decode_data__98 [2]));
  OBUF \alufunc_OBUF[3]_inst 
       (.I(alufunc_OBUF[3]),
        .O(alufunc[3]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \alufunc_OBUF[3]_inst_i_1 
       (.I0(\alufunc_OBUF[3]_inst_i_2_n_0 ),
        .I1(instr_IBUF[26]),
        .I2(\decoder_ref/decode_data__98 [3]),
        .I3(instr_IBUF[28]),
        .I4(instr_IBUF[27]),
        .I5(\decoded_op_OBUF[1]_inst_i_3_n_0 ),
        .O(alufunc_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \alufunc_OBUF[3]_inst_i_2 
       (.I0(instr_IBUF[30]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[31]),
        .O(\alufunc_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000000D)) 
    \alufunc_OBUF[3]_inst_i_3 
       (.I0(instr_IBUF[0]),
        .I1(instr_IBUF[1]),
        .I2(instr_IBUF[3]),
        .I3(instr_IBUF[2]),
        .I4(instr_IBUF[4]),
        .I5(instr_IBUF[5]),
        .O(\decoder_ref/decode_data__98 [3]));
  OBUF \aluout_OBUF[0]_inst 
       (.I(aluout_OBUF[0]),
        .O(aluout[0]));
  LUT6 #(
    .INIT(64'h00B8B83300B8B800)) 
    \aluout_OBUF[0]_inst_i_2 
       (.I0(\aluout_OBUF[0]_inst_i_5_n_0 ),
        .I1(instr_IBUF[7]),
        .I2(\aluout_OBUF[0]_inst_i_6_n_0 ),
        .I3(alufunc_OBUF[1]),
        .I4(alufunc_OBUF[0]),
        .I5(\aluout_OBUF[0]_inst_i_7_n_0 ),
        .O(\aluout_OBUF[0]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h46E9)) 
    \aluout_OBUF[0]_inst_i_3 
       (.I0(alufunc_OBUF[1]),
        .I1(alufunc_OBUF[0]),
        .I2(instr_IBUF[10]),
        .I3(instr_IBUF[18]),
        .O(\aluout_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \aluout_OBUF[0]_inst_i_5 
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[21]),
        .I2(instr_IBUF[8]),
        .I3(instr_IBUF[23]),
        .I4(instr_IBUF[9]),
        .I5(instr_IBUF[19]),
        .O(\aluout_OBUF[0]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \aluout_OBUF[0]_inst_i_6 
       (.I0(instr_IBUF[24]),
        .I1(instr_IBUF[20]),
        .I2(instr_IBUF[8]),
        .I3(instr_IBUF[22]),
        .I4(instr_IBUF[9]),
        .I5(instr_IBUF[18]),
        .O(\aluout_OBUF[0]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \aluout_OBUF[0]_inst_i_7 
       (.I0(instr_IBUF[9]),
        .I1(instr_IBUF[18]),
        .I2(instr_IBUF[8]),
        .O(\aluout_OBUF[0]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \aluout_OBUF[0]_inst_i_8 
       (.I0(instr_IBUF[18]),
        .I1(instr_IBUF[10]),
        .O(\aluout_OBUF[0]_inst_i_8_n_0 ));
  OBUF \aluout_OBUF[1]_inst 
       (.I(aluout_OBUF[1]),
        .O(aluout[1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \aluout_OBUF[1]_inst_i_2 
       (.I0(data10[1]),
        .I1(alufunc_OBUF[1]),
        .I2(data9[1]),
        .I3(alufunc_OBUF[0]),
        .I4(data8[1]),
        .O(\aluout_OBUF[1]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h46E9)) 
    \aluout_OBUF[1]_inst_i_3 
       (.I0(alufunc_OBUF[1]),
        .I1(alufunc_OBUF[0]),
        .I2(instr_IBUF[11]),
        .I3(instr_IBUF[19]),
        .O(\aluout_OBUF[1]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aluout_OBUF[1]_inst_i_5 
       (.I0(\aluout_OBUF[2]_inst_i_8_n_0 ),
        .I1(instr_IBUF[7]),
        .I2(\aluout_OBUF[0]_inst_i_5_n_0 ),
        .O(data10[1]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \aluout_OBUF[1]_inst_i_6 
       (.I0(instr_IBUF[22]),
        .I1(instr_IBUF[9]),
        .I2(instr_IBUF[8]),
        .I3(\aluout_OBUF[1]_inst_i_8_n_0 ),
        .I4(instr_IBUF[7]),
        .I5(\aluout_OBUF[0]_inst_i_5_n_0 ),
        .O(data9[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \aluout_OBUF[1]_inst_i_7 
       (.I0(instr_IBUF[18]),
        .I1(instr_IBUF[7]),
        .I2(instr_IBUF[9]),
        .I3(instr_IBUF[19]),
        .I4(instr_IBUF[8]),
        .O(data8[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aluout_OBUF[1]_inst_i_8 
       (.I0(instr_IBUF[24]),
        .I1(instr_IBUF[9]),
        .I2(instr_IBUF[20]),
        .O(\aluout_OBUF[1]_inst_i_8_n_0 ));
  OBUF \aluout_OBUF[2]_inst 
       (.I(aluout_OBUF[2]),
        .O(aluout[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \aluout_OBUF[2]_inst_i_10 
       (.I0(instr_IBUF[22]),
        .I1(instr_IBUF[8]),
        .I2(instr_IBUF[24]),
        .I3(instr_IBUF[9]),
        .I4(instr_IBUF[20]),
        .O(\aluout_OBUF[2]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \aluout_OBUF[2]_inst_i_2 
       (.I0(data10[2]),
        .I1(alufunc_OBUF[1]),
        .I2(data9[2]),
        .I3(alufunc_OBUF[0]),
        .I4(data8[2]),
        .O(\aluout_OBUF[2]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h46E9)) 
    \aluout_OBUF[2]_inst_i_3 
       (.I0(alufunc_OBUF[1]),
        .I1(alufunc_OBUF[0]),
        .I2(instr_IBUF[12]),
        .I3(instr_IBUF[20]),
        .O(\aluout_OBUF[2]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aluout_OBUF[2]_inst_i_5 
       (.I0(\aluout_OBUF[3]_inst_i_8_n_0 ),
        .I1(instr_IBUF[7]),
        .I2(\aluout_OBUF[2]_inst_i_8_n_0 ),
        .O(data10[2]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \aluout_OBUF[2]_inst_i_6 
       (.I0(instr_IBUF[23]),
        .I1(instr_IBUF[9]),
        .I2(instr_IBUF[8]),
        .I3(\aluout_OBUF[2]_inst_i_9_n_0 ),
        .I4(instr_IBUF[7]),
        .I5(\aluout_OBUF[2]_inst_i_10_n_0 ),
        .O(data9[2]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \aluout_OBUF[2]_inst_i_7 
       (.I0(instr_IBUF[19]),
        .I1(instr_IBUF[7]),
        .I2(instr_IBUF[18]),
        .I3(instr_IBUF[8]),
        .I4(instr_IBUF[20]),
        .I5(instr_IBUF[9]),
        .O(data8[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \aluout_OBUF[2]_inst_i_8 
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[22]),
        .I2(instr_IBUF[8]),
        .I3(instr_IBUF[24]),
        .I4(instr_IBUF[9]),
        .I5(instr_IBUF[20]),
        .O(\aluout_OBUF[2]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aluout_OBUF[2]_inst_i_9 
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[9]),
        .I2(instr_IBUF[21]),
        .O(\aluout_OBUF[2]_inst_i_9_n_0 ));
  OBUF \aluout_OBUF[3]_inst 
       (.I(aluout_OBUF[3]),
        .O(aluout[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \aluout_OBUF[3]_inst_i_10 
       (.I0(instr_IBUF[19]),
        .I1(instr_IBUF[8]),
        .I2(instr_IBUF[21]),
        .I3(instr_IBUF[9]),
        .O(\aluout_OBUF[3]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \aluout_OBUF[3]_inst_i_2 
       (.I0(data10[3]),
        .I1(alufunc_OBUF[1]),
        .I2(data9[3]),
        .I3(alufunc_OBUF[0]),
        .I4(data8[3]),
        .O(\aluout_OBUF[3]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h46E9)) 
    \aluout_OBUF[3]_inst_i_3 
       (.I0(alufunc_OBUF[1]),
        .I1(alufunc_OBUF[0]),
        .I2(instr_IBUF[13]),
        .I3(instr_IBUF[21]),
        .O(\aluout_OBUF[3]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aluout_OBUF[3]_inst_i_5 
       (.I0(\aluout_OBUF[4]_inst_i_8_n_0 ),
        .I1(instr_IBUF[7]),
        .I2(\aluout_OBUF[3]_inst_i_8_n_0 ),
        .O(data10[3]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \aluout_OBUF[3]_inst_i_6 
       (.I0(instr_IBUF[24]),
        .I1(instr_IBUF[8]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[9]),
        .I4(instr_IBUF[7]),
        .I5(\aluout_OBUF[3]_inst_i_9_n_0 ),
        .O(data9[3]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \aluout_OBUF[3]_inst_i_7 
       (.I0(instr_IBUF[18]),
        .I1(instr_IBUF[8]),
        .I2(instr_IBUF[20]),
        .I3(instr_IBUF[9]),
        .I4(instr_IBUF[7]),
        .I5(\aluout_OBUF[3]_inst_i_10_n_0 ),
        .O(data8[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \aluout_OBUF[3]_inst_i_8 
       (.I0(instr_IBUF[23]),
        .I1(instr_IBUF[8]),
        .I2(instr_IBUF[25]),
        .I3(instr_IBUF[9]),
        .I4(instr_IBUF[21]),
        .O(\aluout_OBUF[3]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \aluout_OBUF[3]_inst_i_9 
       (.I0(instr_IBUF[23]),
        .I1(instr_IBUF[8]),
        .I2(instr_IBUF[25]),
        .I3(instr_IBUF[9]),
        .I4(instr_IBUF[21]),
        .O(\aluout_OBUF[3]_inst_i_9_n_0 ));
  OBUF \aluout_OBUF[4]_inst 
       (.I(aluout_OBUF[4]),
        .O(aluout[4]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \aluout_OBUF[4]_inst_i_2 
       (.I0(data10[4]),
        .I1(alufunc_OBUF[1]),
        .I2(data9[4]),
        .I3(alufunc_OBUF[0]),
        .I4(data8[4]),
        .O(\aluout_OBUF[4]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h46E9)) 
    \aluout_OBUF[4]_inst_i_3 
       (.I0(alufunc_OBUF[1]),
        .I1(alufunc_OBUF[0]),
        .I2(instr_IBUF[14]),
        .I3(instr_IBUF[22]),
        .O(\aluout_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \aluout_OBUF[4]_inst_i_5 
       (.I0(instr_IBUF[8]),
        .I1(instr_IBUF[25]),
        .I2(instr_IBUF[9]),
        .I3(instr_IBUF[23]),
        .I4(instr_IBUF[7]),
        .I5(\aluout_OBUF[4]_inst_i_8_n_0 ),
        .O(data10[4]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \aluout_OBUF[4]_inst_i_6 
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[8]),
        .I2(instr_IBUF[23]),
        .I3(instr_IBUF[9]),
        .I4(instr_IBUF[7]),
        .I5(\aluout_OBUF[4]_inst_i_9_n_0 ),
        .O(data9[4]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \aluout_OBUF[4]_inst_i_7 
       (.I0(instr_IBUF[19]),
        .I1(instr_IBUF[8]),
        .I2(instr_IBUF[21]),
        .I3(instr_IBUF[9]),
        .I4(instr_IBUF[7]),
        .I5(\aluout_OBUF[5]_inst_i_8_n_0 ),
        .O(data8[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \aluout_OBUF[4]_inst_i_8 
       (.I0(instr_IBUF[24]),
        .I1(instr_IBUF[8]),
        .I2(instr_IBUF[25]),
        .I3(instr_IBUF[9]),
        .I4(instr_IBUF[22]),
        .O(\aluout_OBUF[4]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \aluout_OBUF[4]_inst_i_9 
       (.I0(instr_IBUF[24]),
        .I1(instr_IBUF[8]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[9]),
        .O(\aluout_OBUF[4]_inst_i_9_n_0 ));
  OBUF \aluout_OBUF[5]_inst 
       (.I(aluout_OBUF[5]),
        .O(aluout[5]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \aluout_OBUF[5]_inst_i_2 
       (.I0(data10[5]),
        .I1(alufunc_OBUF[1]),
        .I2(data9[5]),
        .I3(alufunc_OBUF[0]),
        .I4(data8[5]),
        .O(\aluout_OBUF[5]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h46E9)) 
    \aluout_OBUF[5]_inst_i_3 
       (.I0(alufunc_OBUF[1]),
        .I1(alufunc_OBUF[0]),
        .I2(instr_IBUF[15]),
        .I3(instr_IBUF[23]),
        .O(\aluout_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \aluout_OBUF[5]_inst_i_5 
       (.I0(instr_IBUF[24]),
        .I1(instr_IBUF[7]),
        .I2(instr_IBUF[8]),
        .I3(instr_IBUF[25]),
        .I4(instr_IBUF[9]),
        .I5(instr_IBUF[23]),
        .O(data10[5]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \aluout_OBUF[5]_inst_i_6 
       (.I0(instr_IBUF[24]),
        .I1(instr_IBUF[7]),
        .I2(instr_IBUF[25]),
        .I3(instr_IBUF[8]),
        .I4(instr_IBUF[23]),
        .I5(instr_IBUF[9]),
        .O(data9[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aluout_OBUF[5]_inst_i_7 
       (.I0(\aluout_OBUF[5]_inst_i_8_n_0 ),
        .I1(instr_IBUF[7]),
        .I2(\aluout_OBUF[6]_inst_i_8_n_0 ),
        .O(data8[5]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \aluout_OBUF[5]_inst_i_8 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[8]),
        .I2(instr_IBUF[18]),
        .I3(instr_IBUF[9]),
        .I4(instr_IBUF[22]),
        .O(\aluout_OBUF[5]_inst_i_8_n_0 ));
  OBUF \aluout_OBUF[6]_inst 
       (.I(aluout_OBUF[6]),
        .O(aluout[6]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \aluout_OBUF[6]_inst_i_2 
       (.I0(data10[6]),
        .I1(alufunc_OBUF[1]),
        .I2(data9[6]),
        .I3(alufunc_OBUF[0]),
        .I4(data8[6]),
        .O(\aluout_OBUF[6]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h46E9)) 
    \aluout_OBUF[6]_inst_i_3 
       (.I0(alufunc_OBUF[1]),
        .I1(alufunc_OBUF[0]),
        .I2(instr_IBUF[16]),
        .I3(instr_IBUF[24]),
        .O(\aluout_OBUF[6]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \aluout_OBUF[6]_inst_i_5 
       (.I0(instr_IBUF[7]),
        .I1(instr_IBUF[8]),
        .I2(instr_IBUF[25]),
        .I3(instr_IBUF[9]),
        .I4(instr_IBUF[24]),
        .O(data10[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \aluout_OBUF[6]_inst_i_6 
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[7]),
        .I2(instr_IBUF[9]),
        .I3(instr_IBUF[24]),
        .I4(instr_IBUF[8]),
        .O(data9[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aluout_OBUF[6]_inst_i_7 
       (.I0(\aluout_OBUF[6]_inst_i_8_n_0 ),
        .I1(instr_IBUF[7]),
        .I2(\aluout_OBUF[7]_inst_i_7_n_0 ),
        .O(data8[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \aluout_OBUF[6]_inst_i_8 
       (.I0(instr_IBUF[21]),
        .I1(instr_IBUF[8]),
        .I2(instr_IBUF[19]),
        .I3(instr_IBUF[9]),
        .I4(instr_IBUF[23]),
        .O(\aluout_OBUF[6]_inst_i_8_n_0 ));
  OBUF \aluout_OBUF[7]_inst 
       (.I(aluout_OBUF[7]),
        .O(aluout[7]));
  LUT6 #(
    .INIT(64'h0030BBBB00308888)) 
    \aluout_OBUF[7]_inst_i_2 
       (.I0(instr_IBUF[25]),
        .I1(alufunc_OBUF[1]),
        .I2(\aluout_OBUF[7]_inst_i_5_n_0 ),
        .I3(instr_IBUF[7]),
        .I4(alufunc_OBUF[0]),
        .I5(data8[7]),
        .O(\aluout_OBUF[7]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h46E9)) 
    \aluout_OBUF[7]_inst_i_3 
       (.I0(alufunc_OBUF[1]),
        .I1(alufunc_OBUF[0]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[25]),
        .O(\aluout_OBUF[7]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \aluout_OBUF[7]_inst_i_5 
       (.I0(instr_IBUF[9]),
        .I1(instr_IBUF[25]),
        .I2(instr_IBUF[8]),
        .O(\aluout_OBUF[7]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aluout_OBUF[7]_inst_i_6 
       (.I0(\aluout_OBUF[7]_inst_i_7_n_0 ),
        .I1(instr_IBUF[7]),
        .I2(\aluout_OBUF[7]_inst_i_8_n_0 ),
        .O(data8[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \aluout_OBUF[7]_inst_i_7 
       (.I0(instr_IBUF[18]),
        .I1(instr_IBUF[22]),
        .I2(instr_IBUF[8]),
        .I3(instr_IBUF[20]),
        .I4(instr_IBUF[9]),
        .I5(instr_IBUF[24]),
        .O(\aluout_OBUF[7]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \aluout_OBUF[7]_inst_i_8 
       (.I0(instr_IBUF[19]),
        .I1(instr_IBUF[23]),
        .I2(instr_IBUF[8]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[9]),
        .I5(instr_IBUF[25]),
        .O(\aluout_OBUF[7]_inst_i_8_n_0 ));
  OBUF branch_taken_OBUF_inst
       (.I(branch_taken_OBUF),
        .O(branch_taken));
  LUT6 #(
    .INIT(64'h0000001400000000)) 
    branch_taken_OBUF_inst_i_1
       (.I0(instr_IBUF[29]),
        .I1(instr_IBUF[28]),
        .I2(instr_IBUF[27]),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[31]),
        .I5(branch_taken_OBUF_inst_i_2_n_0),
        .O(branch_taken_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    branch_taken_OBUF_inst_i_10
       (.I0(instr_IBUF[17]),
        .I1(instr_IBUF[25]),
        .O(branch_taken_OBUF_inst_i_10_n_0));
  MUXF7 branch_taken_OBUF_inst_i_2
       (.I0(branch_taken_OBUF_inst_i_3_n_0),
        .I1(branch_taken_OBUF_inst_i_4_n_0),
        .O(branch_taken_OBUF_inst_i_2_n_0),
        .S(instr_IBUF[26]));
  LUT6 #(
    .INIT(64'hEAAEAAAAAAAAAAAA)) 
    branch_taken_OBUF_inst_i_3
       (.I0(instr_IBUF[27]),
        .I1(branch_taken_OBUF_inst_i_5_n_0),
        .I2(instr_IBUF[21]),
        .I3(instr_IBUF[13]),
        .I4(branch_taken_OBUF_inst_i_6_n_0),
        .I5(branch_taken_OBUF_inst_i_7_n_0),
        .O(branch_taken_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFEFFE)) 
    branch_taken_OBUF_inst_i_4
       (.I0(branch_taken_OBUF_inst_i_8_n_0),
        .I1(branch_taken_OBUF_inst_i_9_n_0),
        .I2(instr_IBUF[24]),
        .I3(instr_IBUF[16]),
        .I4(branch_taken_OBUF_inst_i_10_n_0),
        .I5(instr_IBUF[27]),
        .O(branch_taken_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_OBUF_inst_i_5
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[12]),
        .I2(instr_IBUF[19]),
        .I3(instr_IBUF[11]),
        .I4(instr_IBUF[10]),
        .I5(instr_IBUF[18]),
        .O(branch_taken_OBUF_inst_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    branch_taken_OBUF_inst_i_6
       (.I0(instr_IBUF[14]),
        .I1(instr_IBUF[22]),
        .I2(instr_IBUF[15]),
        .I3(instr_IBUF[23]),
        .O(branch_taken_OBUF_inst_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    branch_taken_OBUF_inst_i_7
       (.I0(instr_IBUF[16]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[25]),
        .O(branch_taken_OBUF_inst_i_7_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    branch_taken_OBUF_inst_i_8
       (.I0(instr_IBUF[18]),
        .I1(instr_IBUF[10]),
        .I2(instr_IBUF[12]),
        .I3(instr_IBUF[20]),
        .I4(instr_IBUF[11]),
        .I5(instr_IBUF[19]),
        .O(branch_taken_OBUF_inst_i_8_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    branch_taken_OBUF_inst_i_9
       (.I0(instr_IBUF[21]),
        .I1(instr_IBUF[13]),
        .I2(instr_IBUF[15]),
        .I3(instr_IBUF[23]),
        .I4(instr_IBUF[14]),
        .I5(instr_IBUF[22]),
        .O(branch_taken_OBUF_inst_i_9_n_0));
  OBUF \decoded_op_OBUF[0]_inst 
       (.I(decoded_op_OBUF[0]),
        .O(decoded_op[0]));
  LUT6 #(
    .INIT(64'h0000000042421110)) 
    \decoded_op_OBUF[0]_inst_i_1 
       (.I0(instr_IBUF[28]),
        .I1(instr_IBUF[31]),
        .I2(instr_IBUF[27]),
        .I3(\decoder_ref/decode_data__98 [0]),
        .I4(instr_IBUF[26]),
        .I5(\decoded_op_OBUF[1]_inst_i_3_n_0 ),
        .O(decoded_op_OBUF[0]));
  LUT6 #(
    .INIT(64'h4000004000050040)) 
    \decoded_op_OBUF[0]_inst_i_2 
       (.I0(instr_IBUF[4]),
        .I1(instr_IBUF[5]),
        .I2(instr_IBUF[2]),
        .I3(instr_IBUF[3]),
        .I4(instr_IBUF[1]),
        .I5(instr_IBUF[0]),
        .O(\decoder_ref/decode_data__98 [0]));
  OBUF \decoded_op_OBUF[1]_inst 
       (.I(decoded_op_OBUF[1]),
        .O(decoded_op[1]));
  LUT6 #(
    .INIT(64'h00000000440000BA)) 
    \decoded_op_OBUF[1]_inst_i_1 
       (.I0(instr_IBUF[28]),
        .I1(instr_IBUF[26]),
        .I2(\decoder_ref/decode_data__98 [1]),
        .I3(instr_IBUF[31]),
        .I4(instr_IBUF[27]),
        .I5(\decoded_op_OBUF[1]_inst_i_3_n_0 ),
        .O(decoded_op_OBUF[1]));
  LUT6 #(
    .INIT(64'h4000001010440000)) 
    \decoded_op_OBUF[1]_inst_i_2 
       (.I0(instr_IBUF[4]),
        .I1(instr_IBUF[2]),
        .I2(instr_IBUF[1]),
        .I3(instr_IBUF[3]),
        .I4(instr_IBUF[5]),
        .I5(instr_IBUF[0]),
        .O(\decoder_ref/decode_data__98 [1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \decoded_op_OBUF[1]_inst_i_3 
       (.I0(instr_IBUF[29]),
        .I1(instr_IBUF[30]),
        .O(\decoded_op_OBUF[1]_inst_i_3_n_0 ));
  OBUF \decoded_op_OBUF[2]_inst 
       (.I(decoded_op_OBUF[2]),
        .O(decoded_op[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \decoded_op_OBUF[2]_inst_i_1 
       (.I0(instr_IBUF[30]),
        .I1(\decoded_op_OBUF[2]_inst_i_2_n_0 ),
        .O(decoded_op_OBUF[2]));
  LUT6 #(
    .INIT(64'hFFEE77FFFFEEEEEF)) 
    \decoded_op_OBUF[2]_inst_i_2 
       (.I0(instr_IBUF[29]),
        .I1(instr_IBUF[31]),
        .I2(\decoder_ref/decode_data__98 [2]),
        .I3(instr_IBUF[27]),
        .I4(instr_IBUF[28]),
        .I5(instr_IBUF[26]),
        .O(\decoded_op_OBUF[2]_inst_i_2_n_0 ));
  OBUF \decoded_op_OBUF[3]_inst 
       (.I(decoded_op_OBUF[3]),
        .O(decoded_op[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \decoded_op_OBUF[3]_inst_i_1 
       (.I0(instr_IBUF[30]),
        .I1(\decoded_op_OBUF[3]_inst_i_2_n_0 ),
        .O(decoded_op_OBUF[3]));
  LUT6 #(
    .INIT(64'hFFEE55FFFFEEEEEF)) 
    \decoded_op_OBUF[3]_inst_i_2 
       (.I0(instr_IBUF[31]),
        .I1(instr_IBUF[29]),
        .I2(\decoder_ref/decode_data__98 [3]),
        .I3(instr_IBUF[27]),
        .I4(instr_IBUF[28]),
        .I5(instr_IBUF[26]),
        .O(\decoded_op_OBUF[3]_inst_i_2_n_0 ));
  IBUF \instr_IBUF[0]_inst 
       (.I(instr[0]),
        .O(instr_IBUF[0]));
  IBUF \instr_IBUF[10]_inst 
       (.I(instr[10]),
        .O(instr_IBUF[10]));
  IBUF \instr_IBUF[11]_inst 
       (.I(instr[11]),
        .O(instr_IBUF[11]));
  IBUF \instr_IBUF[12]_inst 
       (.I(instr[12]),
        .O(instr_IBUF[12]));
  IBUF \instr_IBUF[13]_inst 
       (.I(instr[13]),
        .O(instr_IBUF[13]));
  IBUF \instr_IBUF[14]_inst 
       (.I(instr[14]),
        .O(instr_IBUF[14]));
  IBUF \instr_IBUF[15]_inst 
       (.I(instr[15]),
        .O(instr_IBUF[15]));
  IBUF \instr_IBUF[16]_inst 
       (.I(instr[16]),
        .O(instr_IBUF[16]));
  IBUF \instr_IBUF[17]_inst 
       (.I(instr[17]),
        .O(instr_IBUF[17]));
  IBUF \instr_IBUF[18]_inst 
       (.I(instr[18]),
        .O(instr_IBUF[18]));
  IBUF \instr_IBUF[19]_inst 
       (.I(instr[19]),
        .O(instr_IBUF[19]));
  IBUF \instr_IBUF[1]_inst 
       (.I(instr[1]),
        .O(instr_IBUF[1]));
  IBUF \instr_IBUF[20]_inst 
       (.I(instr[20]),
        .O(instr_IBUF[20]));
  IBUF \instr_IBUF[21]_inst 
       (.I(instr[21]),
        .O(instr_IBUF[21]));
  IBUF \instr_IBUF[22]_inst 
       (.I(instr[22]),
        .O(instr_IBUF[22]));
  IBUF \instr_IBUF[23]_inst 
       (.I(instr[23]),
        .O(instr_IBUF[23]));
  IBUF \instr_IBUF[24]_inst 
       (.I(instr[24]),
        .O(instr_IBUF[24]));
  IBUF \instr_IBUF[25]_inst 
       (.I(instr[25]),
        .O(instr_IBUF[25]));
  IBUF \instr_IBUF[26]_inst 
       (.I(instr[26]),
        .O(instr_IBUF[26]));
  IBUF \instr_IBUF[27]_inst 
       (.I(instr[27]),
        .O(instr_IBUF[27]));
  IBUF \instr_IBUF[28]_inst 
       (.I(instr[28]),
        .O(instr_IBUF[28]));
  IBUF \instr_IBUF[29]_inst 
       (.I(instr[29]),
        .O(instr_IBUF[29]));
  IBUF \instr_IBUF[2]_inst 
       (.I(instr[2]),
        .O(instr_IBUF[2]));
  IBUF \instr_IBUF[30]_inst 
       (.I(instr[30]),
        .O(instr_IBUF[30]));
  IBUF \instr_IBUF[31]_inst 
       (.I(instr[31]),
        .O(instr_IBUF[31]));
  IBUF \instr_IBUF[3]_inst 
       (.I(instr[3]),
        .O(instr_IBUF[3]));
  IBUF \instr_IBUF[4]_inst 
       (.I(instr[4]),
        .O(instr_IBUF[4]));
  IBUF \instr_IBUF[5]_inst 
       (.I(instr[5]),
        .O(instr_IBUF[5]));
  IBUF \instr_IBUF[7]_inst 
       (.I(instr[7]),
        .O(instr_IBUF[7]));
  IBUF \instr_IBUF[8]_inst 
       (.I(instr[8]),
        .O(instr_IBUF[8]));
  IBUF \instr_IBUF[9]_inst 
       (.I(instr[9]),
        .O(instr_IBUF[9]));
  OBUF is_alu_OBUF_inst
       (.I(is_alu_OBUF),
        .O(is_alu));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    is_alu_OBUF_inst_i_1
       (.I0(instr_IBUF[31]),
        .I1(instr_IBUF[26]),
        .I2(is_alu_OBUF_inst_i_2_n_0),
        .I3(instr_IBUF[27]),
        .I4(instr_IBUF[28]),
        .I5(\decoded_op_OBUF[1]_inst_i_3_n_0 ),
        .O(is_alu_OBUF));
  LUT6 #(
    .INIT(64'h4500050000044505)) 
    is_alu_OBUF_inst_i_2
       (.I0(instr_IBUF[4]),
        .I1(instr_IBUF[1]),
        .I2(instr_IBUF[3]),
        .I3(instr_IBUF[5]),
        .I4(instr_IBUF[0]),
        .I5(instr_IBUF[2]),
        .O(is_alu_OBUF_inst_i_2_n_0));
  OBUF memread_OBUF_inst
       (.I(memread_OBUF),
        .O(memread));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    memread_OBUF_inst_i_1
       (.I0(instr_IBUF[28]),
        .I1(instr_IBUF[30]),
        .I2(instr_IBUF[31]),
        .I3(instr_IBUF[29]),
        .I4(instr_IBUF[27]),
        .I5(instr_IBUF[26]),
        .O(memread_OBUF));
  OBUF memwrite_OBUF_inst
       (.I(memwrite_OBUF),
        .O(memwrite));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    memwrite_OBUF_inst_i_1
       (.I0(instr_IBUF[28]),
        .I1(instr_IBUF[30]),
        .I2(instr_IBUF[27]),
        .I3(instr_IBUF[26]),
        .I4(instr_IBUF[31]),
        .I5(instr_IBUF[29]),
        .O(memwrite_OBUF));
endmodule
