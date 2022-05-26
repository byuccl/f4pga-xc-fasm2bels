// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue May 24 10:14:11 2022
// Host        : CCL15 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -file
//               /home/edvenson/bfasst/build/xilinx_yosys_impl/byu/buttoncount/buttoncount_impl.v
// Design      : buttoncount
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "dea4a08b" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module buttoncount
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
  wire \count_i[0]_i_3_n_0 ;
  wire \count_i_reg[0]_i_2_n_0 ;
  wire \count_i_reg[0]_i_2_n_4 ;
  wire \count_i_reg[0]_i_2_n_5 ;
  wire \count_i_reg[0]_i_2_n_6 ;
  wire \count_i_reg[0]_i_2_n_7 ;
  wire \count_i_reg[12]_i_1_n_4 ;
  wire \count_i_reg[12]_i_1_n_5 ;
  wire \count_i_reg[12]_i_1_n_6 ;
  wire \count_i_reg[12]_i_1_n_7 ;
  wire \count_i_reg[4]_i_1_n_0 ;
  wire \count_i_reg[4]_i_1_n_4 ;
  wire \count_i_reg[4]_i_1_n_5 ;
  wire \count_i_reg[4]_i_1_n_6 ;
  wire \count_i_reg[4]_i_1_n_7 ;
  wire \count_i_reg[8]_i_1_n_0 ;
  wire \count_i_reg[8]_i_1_n_4 ;
  wire \count_i_reg[8]_i_1_n_5 ;
  wire \count_i_reg[8]_i_1_n_6 ;
  wire \count_i_reg[8]_i_1_n_7 ;
  wire inc;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire os_n_0;
  wire [3:0]\NLW_count_i_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_i_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_i_reg[8]_i_1_CO_UNCONNECTED ;

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
  LUT1 #(
    .INIT(2'h1)) 
    \count_i[0]_i_3 
       (.I0(led_OBUF[0]),
        .O(\count_i[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(os_n_0),
        .D(\count_i_reg[0]_i_2_n_7 ),
        .Q(led_OBUF[0]),
        .R(btnc_IBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_i_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\count_i_reg[0]_i_2_n_0 ,\NLW_count_i_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\count_i_reg[0]_i_2_n_4 ,\count_i_reg[0]_i_2_n_5 ,\count_i_reg[0]_i_2_n_6 ,\count_i_reg[0]_i_2_n_7 }),
        .S({led_OBUF[3:1],\count_i[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(os_n_0),
        .D(\count_i_reg[8]_i_1_n_5 ),
        .Q(led_OBUF[10]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(os_n_0),
        .D(\count_i_reg[8]_i_1_n_4 ),
        .Q(led_OBUF[11]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(os_n_0),
        .D(\count_i_reg[12]_i_1_n_7 ),
        .Q(led_OBUF[12]),
        .R(btnc_IBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_i_reg[12]_i_1 
       (.CI(\count_i_reg[8]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\count_i_reg[12]_i_1_n_4 ,\count_i_reg[12]_i_1_n_5 ,\count_i_reg[12]_i_1_n_6 ,\count_i_reg[12]_i_1_n_7 }),
        .S(led_OBUF[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(os_n_0),
        .D(\count_i_reg[12]_i_1_n_6 ),
        .Q(led_OBUF[13]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(os_n_0),
        .D(\count_i_reg[12]_i_1_n_5 ),
        .Q(led_OBUF[14]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(os_n_0),
        .D(\count_i_reg[12]_i_1_n_4 ),
        .Q(led_OBUF[15]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(os_n_0),
        .D(\count_i_reg[0]_i_2_n_6 ),
        .Q(led_OBUF[1]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(os_n_0),
        .D(\count_i_reg[0]_i_2_n_5 ),
        .Q(led_OBUF[2]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(os_n_0),
        .D(\count_i_reg[0]_i_2_n_4 ),
        .Q(led_OBUF[3]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(os_n_0),
        .D(\count_i_reg[4]_i_1_n_7 ),
        .Q(led_OBUF[4]),
        .R(btnc_IBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_i_reg[4]_i_1 
       (.CI(\count_i_reg[0]_i_2_n_0 ),
        .CO({\count_i_reg[4]_i_1_n_0 ,\NLW_count_i_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\count_i_reg[4]_i_1_n_4 ,\count_i_reg[4]_i_1_n_5 ,\count_i_reg[4]_i_1_n_6 ,\count_i_reg[4]_i_1_n_7 }),
        .S(led_OBUF[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(os_n_0),
        .D(\count_i_reg[4]_i_1_n_6 ),
        .Q(led_OBUF[5]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(os_n_0),
        .D(\count_i_reg[4]_i_1_n_5 ),
        .Q(led_OBUF[6]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(os_n_0),
        .D(\count_i_reg[4]_i_1_n_4 ),
        .Q(led_OBUF[7]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(os_n_0),
        .D(\count_i_reg[8]_i_1_n_7 ),
        .Q(led_OBUF[8]),
        .R(btnc_IBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_i_reg[8]_i_1 
       (.CI(\count_i_reg[4]_i_1_n_0 ),
        .CO({\count_i_reg[8]_i_1_n_0 ,\NLW_count_i_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\count_i_reg[8]_i_1_n_4 ,\count_i_reg[8]_i_1_n_5 ,\count_i_reg[8]_i_1_n_6 ,\count_i_reg[8]_i_1_n_7 }),
        .S(led_OBUF[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(os_n_0),
        .D(\count_i_reg[8]_i_1_n_6 ),
        .Q(led_OBUF[9]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    inc_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(btnu_IBUF),
        .Q(inc),
        .R(btnc_IBUF));
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
  oneshot os
       (.\FSM_sequential_state_reg[0]_0 (os_n_0),
        .btnc_IBUF(btnc_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .inc(inc));
endmodule

module oneshot
   (\FSM_sequential_state_reg[0]_0 ,
    btnc_IBUF,
    clk_IBUF_BUFG,
    inc);
  output \FSM_sequential_state_reg[0]_0 ;
  input btnc_IBUF;
  input clk_IBUF_BUFG;
  input inc;

  wire \<const0> ;
  wire \<const1> ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire btnc_IBUF;
  wire clk_IBUF_BUFG;
  wire inc;
  wire [1:0]state;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[1]),
        .I1(inc),
        .I2(state[0]),
        .I3(btnc_IBUF),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0048)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[1]),
        .I1(inc),
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
  LUT2 #(
    .INIT(4'h2)) 
    \count_i[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\FSM_sequential_state_reg[0]_0 ));
endmodule
