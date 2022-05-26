// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue May 24 10:26:46 2022
// Host        : CCL15 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -file /home/edvenson/bfasst/build/xilinx_yosys_impl/byu/shiftReg/shiftRegTop_impl.v
// Design      : shiftRegTop
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module oneshot
   (btnc_IBUF,
    btnl_IBUF,
    clk_IBUF_BUFG,
    out_reg,
    \out_reg[0]_0 ,
    \out_reg[0]_1 ,
    \out_reg[0]_2 ,
    \out_reg[1]_0 ,
    \out_reg[2]_0 ,
    \out_reg[3]_0 ,
    \out_reg[4]_0 ,
    \out_reg[4]_1 ,
    \out_reg[4]_2 ,
    \out_reg[5]_0 ,
    D,
    out0,
    sw_IBUF);
  input btnc_IBUF;
  input btnl_IBUF;
  input clk_IBUF_BUFG;
  input [14:0]out_reg;
  input \out_reg[0]_0 ;
  input \out_reg[0]_1 ;
  input \out_reg[0]_2 ;
  input \out_reg[1]_0 ;
  input \out_reg[2]_0 ;
  input \out_reg[3]_0 ;
  input \out_reg[4]_0 ;
  input \out_reg[4]_1 ;
  input \out_reg[4]_2 ;
  input \out_reg[5]_0 ;
  output [15:0]D;
  input [2:0]out0;
  input [2:0]sw_IBUF;

  wire \<const1> ;
  wire [15:0]D;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire btnc_IBUF;
  wire btnl_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]out0;
  wire \out[14]_i_2_n_0 ;
  wire \out[1]_i_2_n_0 ;
  wire \out[2]_i_2_n_0 ;
  wire \out[4]_i_2_n_0 ;
  wire [14:0]out_reg;
  wire \out_reg[0]_0 ;
  wire \out_reg[0]_1 ;
  wire \out_reg[0]_2 ;
  wire \out_reg[1]_0 ;
  wire \out_reg[2]_0 ;
  wire \out_reg[3]_0 ;
  wire \out_reg[4]_0 ;
  wire \out_reg[4]_1 ;
  wire \out_reg[4]_2 ;
  wire \out_reg[5]_0 ;
  wire [1:0]state;
  wire [2:0]sw_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[0]),
        .I1(btnl_IBUF),
        .I2(state[1]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(btnl_IBUF),
        .I2(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "INC:01,ONE:10,ZERO:00,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(btnc_IBUF));
  (* FSM_ENCODED_STATES = "INC:01,ONE:10,ZERO:00,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(btnc_IBUF));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \out[0]_i_1 
       (.I0(out_reg[0]),
        .I1(\out_reg[0]_0 ),
        .I2(\out_reg[0]_1 ),
        .I3(sw_IBUF[0]),
        .I4(\out_reg[0]_2 ),
        .I5(\out[14]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0A0AA8080000A808)) 
    \out[10]_i_1 
       (.I0(\out[14]_i_2_n_0 ),
        .I1(out_reg[14]),
        .I2(sw_IBUF[1]),
        .I3(out_reg[6]),
        .I4(sw_IBUF[2]),
        .I5(out_reg[2]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h0044400000004000)) 
    \out[11]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(out_reg[7]),
        .I3(sw_IBUF[1]),
        .I4(sw_IBUF[2]),
        .I5(out_reg[3]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hAA80A0800A800080)) 
    \out[12]_i_1 
       (.I0(\out[14]_i_2_n_0 ),
        .I1(out_reg[12]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[2]),
        .I4(out_reg[4]),
        .I5(\out_reg[4]_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hAA80A0800A800080)) 
    \out[13]_i_1 
       (.I0(\out[14]_i_2_n_0 ),
        .I1(out_reg[13]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[2]),
        .I4(out_reg[5]),
        .I5(\out_reg[5]_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hAA80A0800A800080)) 
    \out[14]_i_1 
       (.I0(\out[14]_i_2_n_0 ),
        .I1(out_reg[14]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[2]),
        .I4(out_reg[6]),
        .I5(out_reg[2]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out[14]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\out[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4044400000000000)) 
    \out[15]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(out_reg[3]),
        .I3(sw_IBUF[1]),
        .I4(out_reg[7]),
        .I5(sw_IBUF[2]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0020FFFF)) 
    \out[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(out_reg[1]),
        .I3(sw_IBUF[2]),
        .I4(\out[1]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h4F444FFFFFFFFFFF)) 
    \out[1]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\out_reg[1]_0 ),
        .I3(sw_IBUF[0]),
        .I4(\out_reg[0]_2 ),
        .I5(\out_reg[0]_0 ),
        .O(\out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000200FFFFFFFF)) 
    \out[2]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(sw_IBUF[1]),
        .I3(out_reg[2]),
        .I4(sw_IBUF[2]),
        .I5(\out[2]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h4F444FFFFFFFFFFF)) 
    \out[2]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\out_reg[2]_0 ),
        .I3(sw_IBUF[0]),
        .I4(\out_reg[1]_0 ),
        .I5(\out_reg[0]_0 ),
        .O(\out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h04040404FF000000)) 
    \out[3]_i_1 
       (.I0(sw_IBUF[1]),
        .I1(out_reg[3]),
        .I2(sw_IBUF[2]),
        .I3(\out_reg[0]_0 ),
        .I4(\out_reg[3]_0 ),
        .I5(\out[14]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000A808FFFFFFFF)) 
    \out[4]_i_1 
       (.I0(\out[14]_i_2_n_0 ),
        .I1(out_reg[4]),
        .I2(sw_IBUF[1]),
        .I3(\out_reg[4]_0 ),
        .I4(sw_IBUF[2]),
        .I5(\out[4]_i_2_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h4F444FFFFFFFFFFF)) 
    \out[4]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\out_reg[4]_1 ),
        .I3(sw_IBUF[0]),
        .I4(\out_reg[4]_2 ),
        .I5(\out_reg[0]_0 ),
        .O(\out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \out[5]_i_1 
       (.I0(out_reg[5]),
        .I1(sw_IBUF[1]),
        .I2(\out_reg[5]_0 ),
        .I3(sw_IBUF[2]),
        .I4(out0[0]),
        .I5(\out[14]_i_2_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \out[6]_i_1 
       (.I0(out_reg[6]),
        .I1(sw_IBUF[1]),
        .I2(out_reg[2]),
        .I3(sw_IBUF[2]),
        .I4(out0[1]),
        .I5(\out[14]_i_2_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h00E200E2FFFF0000)) 
    \out[7]_i_1 
       (.I0(out_reg[7]),
        .I1(sw_IBUF[1]),
        .I2(out_reg[3]),
        .I3(sw_IBUF[2]),
        .I4(out0[2]),
        .I5(\out[14]_i_2_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \out[8]_i_1 
       (.I0(\out[14]_i_2_n_0 ),
        .I1(out_reg[12]),
        .I2(sw_IBUF[1]),
        .I3(out_reg[4]),
        .I4(sw_IBUF[2]),
        .I5(out_reg[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \out[9]_i_1 
       (.I0(\out[14]_i_2_n_0 ),
        .I1(out_reg[13]),
        .I2(sw_IBUF[1]),
        .I3(out_reg[5]),
        .I4(sw_IBUF[2]),
        .I5(out_reg[1]),
        .O(D[9]));
endmodule

(* ORIG_REF_NAME = "oneshot" *) 
module oneshot_0
   (btnc_IBUF,
    btnu_IBUF,
    clk_IBUF_BUFG,
    E);
  input btnc_IBUF;
  input btnu_IBUF;
  input clk_IBUF_BUFG;
  output [0:0]E;

  wire \<const1> ;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_i_1__0_n_0 ;
  wire btnc_IBUF;
  wire btnu_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:0]state;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(state[0]),
        .I1(btnu_IBUF),
        .I2(state[1]),
        .O(\FSM_sequential_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(state[0]),
        .I1(btnu_IBUF),
        .I2(state[1]),
        .O(\FSM_sequential_state[1]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "INC:01,ONE:10,ZERO:00,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_sequential_state[0]_i_1__0_n_0 ),
        .Q(state[0]),
        .R(btnc_IBUF));
  (* FSM_ENCODED_STATES = "INC:01,ONE:10,ZERO:00,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_sequential_state[1]_i_1__0_n_0 ),
        .Q(state[1]),
        .R(btnc_IBUF));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h2)) 
    \out[15]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(E));
endmodule

module shiftReg
   (btnc_IBUF,
    clk_IBUF_BUFG,
    sw,
    \sw[5]_0 ,
    \sw[6]_0 ,
    \sw[6]_1 ,
    \sw[7]_0 ,
    \sw[9]_0 ,
    \sw[9]_1 ,
    \sw[9]_2 ,
    \sw[9]_3 ,
    \sw[9]_4 ,
    \sw[9]_5 ,
    \sw[9]_6 ,
    \sw[9]_7 ,
    D,
    E,
    Q,
    out0,
    sw_IBUF);
  input btnc_IBUF;
  input clk_IBUF_BUFG;
  output [15:0]sw;
  output \sw[5]_0 ;
  output \sw[6]_0 ;
  output \sw[6]_1 ;
  output \sw[7]_0 ;
  output \sw[9]_0 ;
  output \sw[9]_1 ;
  output \sw[9]_2 ;
  output \sw[9]_3 ;
  output \sw[9]_4 ;
  output \sw[9]_5 ;
  output \sw[9]_6 ;
  output \sw[9]_7 ;
  input [15:0]D;
  input [0:0]E;
  output [15:0]Q;
  output [2:0]out0;
  input [15:0]sw_IBUF;

  wire [15:0]D;
  wire [0:0]E;
  wire [15:0]Q;
  wire btnc_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]out0;
  wire \out[14]_i_6_n_0 ;
  wire \out[15]_i_10_n_0 ;
  wire \out[15]_i_11_n_0 ;
  wire \out[15]_i_12_n_0 ;
  wire \out[15]_i_5_n_0 ;
  wire \out[15]_i_6_n_0 ;
  wire \out[15]_i_7_n_0 ;
  wire \out[15]_i_8_n_0 ;
  wire \out[15]_i_9_n_0 ;
  wire [15:0]sw;
  wire \sw[5]_0 ;
  wire \sw[6]_0 ;
  wire \sw[6]_1 ;
  wire \sw[7]_0 ;
  wire \sw[9]_0 ;
  wire \sw[9]_1 ;
  wire \sw[9]_2 ;
  wire \sw[9]_3 ;
  wire \sw[9]_4 ;
  wire \sw[9]_5 ;
  wire \sw[9]_6 ;
  wire \sw[9]_7 ;
  wire [15:0]sw_IBUF;

  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \out[0]_i_2 
       (.I0(sw_IBUF[10]),
        .I1(sw_IBUF[8]),
        .I2(\out[14]_i_6_n_0 ),
        .I3(sw_IBUF[0]),
        .I4(sw_IBUF[9]),
        .I5(sw_IBUF[11]),
        .O(sw[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[0]_i_3 
       (.I0(sw_IBUF[6]),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[9]),
        .I3(sw_IBUF[4]),
        .I4(sw_IBUF[10]),
        .I5(sw_IBUF[0]),
        .O(sw[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[0]_i_4 
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[3]),
        .I2(sw_IBUF[9]),
        .I3(sw_IBUF[5]),
        .I4(sw_IBUF[10]),
        .I5(sw_IBUF[1]),
        .O(sw[7]));
  LUT6 #(
    .INIT(64'hAFC0A0C000000000)) 
    \out[12]_i_2 
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[6]),
        .I2(sw_IBUF[9]),
        .I3(sw_IBUF[8]),
        .I4(sw_IBUF[7]),
        .I5(\out[14]_i_6_n_0 ),
        .O(\sw[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[12]_i_3 
       (.I0(\out[15]_i_6_n_0 ),
        .I1(\out[15]_i_7_n_0 ),
        .I2(sw_IBUF[9]),
        .I3(\out[15]_i_8_n_0 ),
        .I4(sw_IBUF[8]),
        .I5(\out[15]_i_9_n_0 ),
        .O(\sw[9]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \out[12]_i_4 
       (.I0(sw_IBUF[8]),
        .I1(\out[14]_i_6_n_0 ),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[9]),
        .O(sw[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hA0800080)) 
    \out[13]_i_2 
       (.I0(sw_IBUF[9]),
        .I1(sw_IBUF[7]),
        .I2(\out[14]_i_6_n_0 ),
        .I3(sw_IBUF[8]),
        .I4(sw_IBUF[6]),
        .O(\sw[9]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[13]_i_3 
       (.I0(\out[15]_i_7_n_0 ),
        .I1(\out[15]_i_8_n_0 ),
        .I2(sw_IBUF[9]),
        .I3(\out[15]_i_9_n_0 ),
        .I4(sw_IBUF[8]),
        .I5(\out[15]_i_10_n_0 ),
        .O(\sw[9]_3 ));
  LUT5 #(
    .INIT(32'h0000C808)) 
    \out[13]_i_4 
       (.I0(sw_IBUF[1]),
        .I1(\out[14]_i_6_n_0 ),
        .I2(sw_IBUF[8]),
        .I3(sw_IBUF[0]),
        .I4(sw_IBUF[9]),
        .O(sw[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \out[14]_i_3 
       (.I0(sw_IBUF[9]),
        .I1(\out[14]_i_6_n_0 ),
        .I2(sw_IBUF[7]),
        .I3(sw_IBUF[8]),
        .O(sw[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[14]_i_4 
       (.I0(\out[15]_i_8_n_0 ),
        .I1(\out[15]_i_9_n_0 ),
        .I2(sw_IBUF[9]),
        .I3(\out[15]_i_10_n_0 ),
        .I4(sw_IBUF[8]),
        .I5(\out[15]_i_11_n_0 ),
        .O(\sw[9]_2 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \out[14]_i_5 
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[9]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[8]),
        .I4(\out[14]_i_6_n_0 ),
        .I5(sw_IBUF[2]),
        .O(sw[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \out[14]_i_6 
       (.I0(sw_IBUF[13]),
        .I1(sw_IBUF[12]),
        .I2(sw_IBUF[15]),
        .I3(sw_IBUF[14]),
        .O(\out[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \out[15]_i_10 
       (.I0(sw_IBUF[14]),
        .I1(sw_IBUF[15]),
        .I2(sw_IBUF[12]),
        .I3(sw_IBUF[13]),
        .I4(sw_IBUF[5]),
        .O(\out[15]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \out[15]_i_11 
       (.I0(sw_IBUF[14]),
        .I1(sw_IBUF[15]),
        .I2(sw_IBUF[12]),
        .I3(sw_IBUF[13]),
        .I4(sw_IBUF[6]),
        .O(\out[15]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \out[15]_i_12 
       (.I0(sw_IBUF[14]),
        .I1(sw_IBUF[15]),
        .I2(sw_IBUF[12]),
        .I3(sw_IBUF[13]),
        .I4(sw_IBUF[7]),
        .O(\out[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[15]_i_3 
       (.I0(\out[15]_i_5_n_0 ),
        .I1(\out[15]_i_6_n_0 ),
        .I2(sw_IBUF[9]),
        .I3(\out[15]_i_7_n_0 ),
        .I4(sw_IBUF[8]),
        .I5(\out[15]_i_8_n_0 ),
        .O(\sw[9]_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[15]_i_4 
       (.I0(\out[15]_i_9_n_0 ),
        .I1(\out[15]_i_10_n_0 ),
        .I2(sw_IBUF[9]),
        .I3(\out[15]_i_11_n_0 ),
        .I4(sw_IBUF[8]),
        .I5(\out[15]_i_12_n_0 ),
        .O(\sw[9]_1 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \out[15]_i_5 
       (.I0(sw_IBUF[14]),
        .I1(sw_IBUF[15]),
        .I2(sw_IBUF[12]),
        .I3(sw_IBUF[13]),
        .I4(sw_IBUF[0]),
        .O(\out[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \out[15]_i_6 
       (.I0(sw_IBUF[14]),
        .I1(sw_IBUF[15]),
        .I2(sw_IBUF[12]),
        .I3(sw_IBUF[13]),
        .I4(sw_IBUF[1]),
        .O(\out[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \out[15]_i_7 
       (.I0(sw_IBUF[14]),
        .I1(sw_IBUF[15]),
        .I2(sw_IBUF[12]),
        .I3(sw_IBUF[13]),
        .I4(sw_IBUF[2]),
        .O(\out[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \out[15]_i_8 
       (.I0(sw_IBUF[14]),
        .I1(sw_IBUF[15]),
        .I2(sw_IBUF[12]),
        .I3(sw_IBUF[13]),
        .I4(sw_IBUF[3]),
        .O(\out[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \out[15]_i_9 
       (.I0(sw_IBUF[14]),
        .I1(sw_IBUF[15]),
        .I2(sw_IBUF[12]),
        .I3(sw_IBUF[13]),
        .I4(sw_IBUF[4]),
        .O(\out[15]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[2]_i_3 
       (.I0(sw_IBUF[4]),
        .I1(sw_IBUF[9]),
        .I2(sw_IBUF[6]),
        .I3(sw_IBUF[10]),
        .I4(sw_IBUF[2]),
        .O(sw[4]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \out[3]_i_2 
       (.I0(sw_IBUF[15]),
        .I1(sw_IBUF[12]),
        .I2(sw_IBUF[11]),
        .I3(sw_IBUF[14]),
        .I4(sw_IBUF[13]),
        .O(sw[15]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \out[3]_i_3 
       (.I0(sw_IBUF[6]),
        .I1(sw_IBUF[9]),
        .I2(sw_IBUF[4]),
        .I3(sw_IBUF[10]),
        .I4(sw_IBUF[8]),
        .I5(sw[5]),
        .O(\sw[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[3]_i_4 
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[9]),
        .I2(sw_IBUF[7]),
        .I3(sw_IBUF[10]),
        .I4(sw_IBUF[3]),
        .O(sw[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \out[4]_i_3 
       (.I0(sw_IBUF[6]),
        .I1(sw_IBUF[9]),
        .I2(sw_IBUF[4]),
        .I3(sw_IBUF[10]),
        .O(\sw[6]_1 ));
  LUT6 #(
    .INIT(64'h0808080808A80808)) 
    \out[5]_i_2 
       (.I0(sw[15]),
        .I1(\sw[7]_0 ),
        .I2(sw_IBUF[8]),
        .I3(sw_IBUF[9]),
        .I4(sw_IBUF[6]),
        .I5(sw_IBUF[10]),
        .O(out0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \out[5]_i_3 
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[9]),
        .I2(sw_IBUF[5]),
        .I3(sw_IBUF[10]),
        .O(\sw[7]_0 ));
  LUT6 #(
    .INIT(64'h0022002000000020)) 
    \out[6]_i_2 
       (.I0(sw[15]),
        .I1(sw_IBUF[9]),
        .I2(sw_IBUF[6]),
        .I3(sw_IBUF[10]),
        .I4(sw_IBUF[8]),
        .I5(sw_IBUF[7]),
        .O(out0[1]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \out[7]_i_2 
       (.I0(sw[15]),
        .I1(sw_IBUF[8]),
        .I2(sw_IBUF[10]),
        .I3(sw_IBUF[7]),
        .I4(sw_IBUF[9]),
        .O(out0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \out[8]_i_2 
       (.I0(sw_IBUF[9]),
        .I1(sw_IBUF[0]),
        .I2(\out[14]_i_6_n_0 ),
        .I3(sw_IBUF[8]),
        .I4(sw_IBUF[10]),
        .O(\sw[9]_7 ));
  LUT6 #(
    .INIT(64'h0000000045004000)) 
    \out[9]_i_2 
       (.I0(sw_IBUF[9]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[8]),
        .I3(\out[14]_i_6_n_0 ),
        .I4(sw_IBUF[1]),
        .I5(sw_IBUF[10]),
        .O(\sw[9]_6 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(btnc_IBUF));
endmodule

(* ECO_CHECKSUM = "843eaa2a" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module shiftRegTop
   (btnc,
    btnl,
    btnu,
    clk,
    led,
    sw);
  input btnc;
  input btnl;
  input btnu;
  input clk;
  output [15:0]led;
  input [15:0]sw;

  wire btnc;
  wire btnc_IBUF;
  wire btnl;
  wire btnl_IBUF;
  wire btnu;
  wire btnu_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire left_os_n_0;
  wire left_os_n_1;
  wire left_os_n_2;
  wire left_os_n_3;
  wire left_os_n_4;
  wire left_os_n_5;
  wire left_os_n_6;
  wire left_os_n_7;
  wire [7:5]out0;
  wire [7:0]p_0_in;
  wire shift_n_0;
  wire shift_n_1;
  wire shift_n_10;
  wire shift_n_11;
  wire shift_n_12;
  wire shift_n_13;
  wire shift_n_14;
  wire shift_n_15;
  wire shift_n_16;
  wire shift_n_17;
  wire shift_n_18;
  wire shift_n_19;
  wire shift_n_2;
  wire shift_n_20;
  wire shift_n_21;
  wire shift_n_22;
  wire shift_n_23;
  wire shift_n_24;
  wire shift_n_3;
  wire shift_n_4;
  wire shift_n_5;
  wire shift_n_9;
  wire start_os_n_0;
  wire [15:0]sw;
  wire [15:0]sw_IBUF;
  wire [14:0]NLW_left_os_out_reg_UNCONNECTED;
  wire [15:0]NLW_shift_sw_UNCONNECTED;

  IBUF btnc_IBUF_inst
       (.I(btnc),
        .O(btnc_IBUF));
  IBUF btnl_IBUF_inst
       (.I(btnl),
        .O(btnl_IBUF));
  IBUF btnu_IBUF_inst
       (.I(btnu),
        .O(btnu_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(led_OBUF[12]),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(led_OBUF[14]),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF[15]),
        .O(led[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  oneshot left_os
       (.D({left_os_n_0,left_os_n_1,left_os_n_2,left_os_n_3,left_os_n_4,left_os_n_5,left_os_n_6,left_os_n_7,p_0_in}),
        .btnc_IBUF(btnc_IBUF),
        .btnl_IBUF(btnl_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out0(out0),
        .out_reg({shift_n_11,shift_n_13,shift_n_12,NLW_left_os_out_reg_UNCONNECTED[11:9],shift_n_23,shift_n_14,shift_n_15,shift_n_16,shift_n_17,shift_n_18,shift_n_19,shift_n_20,shift_n_22}),
        .\out_reg[0]_0 (shift_n_9),
        .\out_reg[0]_1 (shift_n_0),
        .\out_reg[0]_2 (shift_n_1),
        .\out_reg[1]_0 (shift_n_2),
        .\out_reg[2]_0 (shift_n_4),
        .\out_reg[3]_0 (shift_n_3),
        .\out_reg[4]_0 (shift_n_24),
        .\out_reg[4]_1 (shift_n_10),
        .\out_reg[4]_2 (shift_n_5),
        .\out_reg[5]_0 (shift_n_21),
        .sw_IBUF({sw_IBUF[11:10],sw_IBUF[8]}));
  shiftReg shift
       (.D({left_os_n_0,left_os_n_1,left_os_n_2,left_os_n_3,left_os_n_4,left_os_n_5,left_os_n_6,left_os_n_7,p_0_in}),
        .E(start_os_n_0),
        .Q(led_OBUF),
        .btnc_IBUF(btnc_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out0(out0),
        .sw({shift_n_9,NLW_shift_sw_UNCONNECTED[14:11],shift_n_22,shift_n_11,shift_n_24,shift_n_1,shift_n_0,shift_n_4,shift_n_2,NLW_shift_sw_UNCONNECTED[3:2],shift_n_21,shift_n_19}),
        .\sw[5]_0 (shift_n_12),
        .\sw[6]_0 (shift_n_3),
        .\sw[6]_1 (shift_n_5),
        .\sw[7]_0 (shift_n_10),
        .\sw[9]_0 (shift_n_13),
        .\sw[9]_1 (shift_n_14),
        .\sw[9]_2 (shift_n_15),
        .\sw[9]_3 (shift_n_16),
        .\sw[9]_4 (shift_n_17),
        .\sw[9]_5 (shift_n_18),
        .\sw[9]_6 (shift_n_20),
        .\sw[9]_7 (shift_n_23),
        .sw_IBUF(sw_IBUF));
  oneshot_0 start_os
       (.E(start_os_n_0),
        .btnc_IBUF(btnc_IBUF),
        .btnu_IBUF(btnu_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[10]_inst 
       (.I(sw[10]),
        .O(sw_IBUF[10]));
  IBUF \sw_IBUF[11]_inst 
       (.I(sw[11]),
        .O(sw_IBUF[11]));
  IBUF \sw_IBUF[12]_inst 
       (.I(sw[12]),
        .O(sw_IBUF[12]));
  IBUF \sw_IBUF[13]_inst 
       (.I(sw[13]),
        .O(sw_IBUF[13]));
  IBUF \sw_IBUF[14]_inst 
       (.I(sw[14]),
        .O(sw_IBUF[14]));
  IBUF \sw_IBUF[15]_inst 
       (.I(sw[15]),
        .O(sw_IBUF[15]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(sw_IBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(sw_IBUF[3]));
  IBUF \sw_IBUF[4]_inst 
       (.I(sw[4]),
        .O(sw_IBUF[4]));
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(sw_IBUF[5]));
  IBUF \sw_IBUF[6]_inst 
       (.I(sw[6]),
        .O(sw_IBUF[6]));
  IBUF \sw_IBUF[7]_inst 
       (.I(sw[7]),
        .O(sw_IBUF[7]));
  IBUF \sw_IBUF[8]_inst 
       (.I(sw[8]),
        .O(sw_IBUF[8]));
  IBUF \sw_IBUF[9]_inst 
       (.I(sw[9]),
        .O(sw_IBUF[9]));
endmodule
