// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue May 24 06:18:31 2022
// Host        : CCL15 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -file /home/edvenson/bfasst/build/xilinx_yosys_impl/byu/oneshot/oneshot_impl.v
// Design      : oneshot
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "753780ab" *) (* INC = "2'b01" *) (* ONE = "2'b10" *) 
(* ZERO = "2'b00" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module oneshot
   (clk,
    in,
    os,
    rst);
  input clk;
  input in;
  output os;
  input rst;

  wire \<const0> ;
  wire \<const1> ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire in;
  wire in_IBUF;
  wire os;
  wire os_OBUF;
  wire rst;
  wire rst_IBUF;
  wire [1:0]state;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[1]),
        .I1(in_IBUF),
        .I2(state[0]),
        .I3(rst_IBUF),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0048)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[1]),
        .I1(in_IBUF),
        .I2(state[0]),
        .I3(rst_IBUF),
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
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF in_IBUF_inst
       (.I(in),
        .O(in_IBUF));
  OBUF os_OBUF_inst
       (.I(os_OBUF),
        .O(os));
  LUT2 #(
    .INIT(4'h2)) 
    os_OBUF_inst_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .O(os_OBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule
