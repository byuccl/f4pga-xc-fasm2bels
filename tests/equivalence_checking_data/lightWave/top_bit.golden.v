// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue May 24 11:30:13 2022
// Host        : CCL15 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -file /home/edvenson/bfasst/build/xilinx_yosys_impl/byu/lightWave/lightWave_impl.v
// Design      : lightWave
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "cde07b95" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module lightWave
   (btnc,
    btnu,
    clk,
    led);
  input btnc;
  input btnu;
  input clk;
  output [15:0]led;

  wire \<const0> ;
  wire \<const1> ;
  wire btnc;
  wire btnc_IBUF;
  wire btnu;
  wire btnu_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [15:0]led;
  wire [0:0]led_OBUF;
  wire o1_n_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  IBUF btnc_IBUF_inst
       (.I(btnc),
        .O(btnc_IBUF));
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
       (.I(led_OBUF),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(\<const0> ),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(\<const0> ),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(\<const0> ),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(\<const0> ),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(\<const0> ),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(\<const0> ),
        .O(led[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(\<const0> ),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(\<const0> ),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(\<const0> ),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(\<const0> ),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(\<const0> ),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(\<const0> ),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(\<const0> ),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(\<const0> ),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(\<const0> ),
        .O(led[9]));
  FDRE #(
    .INIT(1'b0)) 
    led_temp_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(o1_n_0),
        .Q(led_OBUF),
        .R(\<const0> ));
  oneshot o1
       (.\FSM_sequential_state_reg[1]_0 (o1_n_0),
        .btnc_IBUF(btnc_IBUF),
        .btnu_IBUF(btnu_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF));
endmodule

module oneshot
   (\FSM_sequential_state_reg[1]_0 ,
    btnc_IBUF,
    btnu_IBUF,
    clk_IBUF_BUFG,
    led_OBUF);
  output \FSM_sequential_state_reg[1]_0 ;
  input btnc_IBUF;
  input btnu_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]led_OBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire btnc_IBUF;
  wire btnu_IBUF;
  wire clk_IBUF_BUFG;
  wire [0:0]led_OBUF;
  wire [1:0]state;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[1]),
        .I1(btnu_IBUF),
        .I2(state[0]),
        .I3(btnc_IBUF),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0048)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[1]),
        .I1(btnu_IBUF),
        .I2(state[0]),
        .I3(btnc_IBUF),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "INC:01,ONE:10,ZERO:00,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "INC:01,ONE:10,ZERO:00,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h4F)) 
    led_temp_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .I2(led_OBUF),
        .O(\FSM_sequential_state_reg[1]_0 ));
endmodule
