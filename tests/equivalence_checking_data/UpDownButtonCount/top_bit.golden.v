// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue May 24 11:28:19 2022
// Host        : CCL15 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -file
//               /home/edvenson/bfasst/build/xilinx_yosys_impl/byu/UpDownButtonCount/UpDownButtonCount_impl.v
// Design      : UpDownButtonCount
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "437b7345" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module UpDownButtonCount
   (btnc,
    btnd,
    btnl,
    btnr,
    btnu,
    clk,
    led,
    sw);
  input btnc;
  input btnd;
  input btnl;
  input btnr;
  input btnu;
  input clk;
  output [15:0]led;
  input [15:0]sw;

  wire \<const0> ;
  wire \<const1> ;
  wire btnc;
  wire btnc_IBUF;
  wire btnd;
  wire btnd_IBUF;
  wire btnd_d;
  wire btnl;
  wire btnl_IBUF;
  wire btnl_d;
  wire btnr;
  wire btnr_IBUF;
  wire btnr_d;
  wire btnu;
  wire btnu_IBUF;
  wire btnu_d;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [15:1]count_i0;
  wire \count_i[0]_i_10_n_0 ;
  wire \count_i[0]_i_11_n_0 ;
  wire \count_i[0]_i_12_n_0 ;
  wire \count_i[0]_i_14_n_0 ;
  wire \count_i[0]_i_15_n_0 ;
  wire \count_i[0]_i_16_n_0 ;
  wire \count_i[0]_i_1_n_0 ;
  wire \count_i[0]_i_3_n_0 ;
  wire \count_i[0]_i_4_n_0 ;
  wire \count_i[0]_i_5_n_0 ;
  wire \count_i[0]_i_6_n_0 ;
  wire \count_i[0]_i_9_n_0 ;
  wire \count_i[12]_i_10_n_0 ;
  wire \count_i[12]_i_11_n_0 ;
  wire \count_i[12]_i_12_n_0 ;
  wire \count_i[12]_i_13_n_0 ;
  wire \count_i[12]_i_14_n_0 ;
  wire \count_i[12]_i_2_n_0 ;
  wire \count_i[12]_i_3_n_0 ;
  wire \count_i[12]_i_4_n_0 ;
  wire \count_i[12]_i_5_n_0 ;
  wire \count_i[12]_i_8_n_0 ;
  wire \count_i[12]_i_9_n_0 ;
  wire \count_i[4]_i_10_n_0 ;
  wire \count_i[4]_i_11_n_0 ;
  wire \count_i[4]_i_12_n_0 ;
  wire \count_i[4]_i_13_n_0 ;
  wire \count_i[4]_i_14_n_0 ;
  wire \count_i[4]_i_15_n_0 ;
  wire \count_i[4]_i_2_n_0 ;
  wire \count_i[4]_i_3_n_0 ;
  wire \count_i[4]_i_4_n_0 ;
  wire \count_i[4]_i_5_n_0 ;
  wire \count_i[4]_i_8_n_0 ;
  wire \count_i[4]_i_9_n_0 ;
  wire \count_i[8]_i_10_n_0 ;
  wire \count_i[8]_i_11_n_0 ;
  wire \count_i[8]_i_12_n_0 ;
  wire \count_i[8]_i_13_n_0 ;
  wire \count_i[8]_i_14_n_0 ;
  wire \count_i[8]_i_15_n_0 ;
  wire \count_i[8]_i_2_n_0 ;
  wire \count_i[8]_i_3_n_0 ;
  wire \count_i[8]_i_4_n_0 ;
  wire \count_i[8]_i_5_n_0 ;
  wire \count_i[8]_i_8_n_0 ;
  wire \count_i[8]_i_9_n_0 ;
  wire \count_i_reg[0]_i_2_n_0 ;
  wire \count_i_reg[0]_i_2_n_4 ;
  wire \count_i_reg[0]_i_2_n_5 ;
  wire \count_i_reg[0]_i_2_n_6 ;
  wire \count_i_reg[0]_i_2_n_7 ;
  wire \count_i_reg[0]_i_7_n_0 ;
  wire \count_i_reg[0]_i_8_n_0 ;
  wire \count_i_reg[0]_i_8_n_4 ;
  wire \count_i_reg[0]_i_8_n_5 ;
  wire \count_i_reg[0]_i_8_n_6 ;
  wire \count_i_reg[0]_i_8_n_7 ;
  wire \count_i_reg[12]_i_1_n_4 ;
  wire \count_i_reg[12]_i_1_n_5 ;
  wire \count_i_reg[12]_i_1_n_6 ;
  wire \count_i_reg[12]_i_1_n_7 ;
  wire \count_i_reg[12]_i_7_n_4 ;
  wire \count_i_reg[12]_i_7_n_5 ;
  wire \count_i_reg[12]_i_7_n_6 ;
  wire \count_i_reg[12]_i_7_n_7 ;
  wire \count_i_reg[4]_i_1_n_0 ;
  wire \count_i_reg[4]_i_1_n_4 ;
  wire \count_i_reg[4]_i_1_n_5 ;
  wire \count_i_reg[4]_i_1_n_6 ;
  wire \count_i_reg[4]_i_1_n_7 ;
  wire \count_i_reg[4]_i_6_n_0 ;
  wire \count_i_reg[4]_i_7_n_0 ;
  wire \count_i_reg[4]_i_7_n_4 ;
  wire \count_i_reg[4]_i_7_n_5 ;
  wire \count_i_reg[4]_i_7_n_6 ;
  wire \count_i_reg[4]_i_7_n_7 ;
  wire \count_i_reg[8]_i_1_n_0 ;
  wire \count_i_reg[8]_i_1_n_4 ;
  wire \count_i_reg[8]_i_1_n_5 ;
  wire \count_i_reg[8]_i_1_n_6 ;
  wire \count_i_reg[8]_i_1_n_7 ;
  wire \count_i_reg[8]_i_6_n_0 ;
  wire \count_i_reg[8]_i_7_n_0 ;
  wire \count_i_reg[8]_i_7_n_4 ;
  wire \count_i_reg[8]_i_7_n_5 ;
  wire \count_i_reg[8]_i_7_n_6 ;
  wire \count_i_reg[8]_i_7_n_7 ;
  wire dec;
  wire dec_sw;
  wire inc;
  wire inc_sw;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire p_0_out;
  wire [15:0]sw;
  wire [15:0]sw_IBUF;
  wire [3:0]\NLW_count_i_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_i_reg[0]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_i_reg[0]_i_8_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_i_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_i_reg[4]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_i_reg[4]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_i_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_i_reg[8]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_i_reg[8]_i_7_CO_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  IBUF btnc_IBUF_inst
       (.I(btnc),
        .O(btnc_IBUF));
  IBUF btnd_IBUF_inst
       (.I(btnd),
        .O(btnd_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    btnd_d_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(btnd_IBUF),
        .Q(btnd_d),
        .R(btnc_IBUF));
  IBUF btnl_IBUF_inst
       (.I(btnl),
        .O(btnl_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    btnl_d_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(btnl_IBUF),
        .Q(btnl_d),
        .R(btnc_IBUF));
  IBUF btnr_IBUF_inst
       (.I(btnr),
        .O(btnr_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    btnr_d_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(btnr_IBUF),
        .Q(btnr_d),
        .R(btnc_IBUF));
  IBUF btnu_IBUF_inst
       (.I(btnu),
        .O(btnu_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    btnu_d_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(btnu_IBUF),
        .Q(btnu_d),
        .R(btnc_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_i[0]_i_1 
       (.I0(inc),
        .I1(inc_sw),
        .I2(dec_sw),
        .I3(dec),
        .O(\count_i[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_i[0]_i_10 
       (.I0(led_OBUF[3]),
        .O(\count_i[0]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_i[0]_i_11 
       (.I0(led_OBUF[2]),
        .O(\count_i[0]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_i[0]_i_12 
       (.I0(led_OBUF[1]),
        .O(\count_i[0]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_i[0]_i_13 
       (.I0(inc_sw),
        .O(p_0_out));
  LUT3 #(
    .INIT(8'h69)) 
    \count_i[0]_i_14 
       (.I0(sw_IBUF[3]),
        .I1(inc_sw),
        .I2(led_OBUF[3]),
        .O(\count_i[0]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count_i[0]_i_15 
       (.I0(sw_IBUF[2]),
        .I1(inc_sw),
        .I2(led_OBUF[2]),
        .O(\count_i[0]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count_i[0]_i_16 
       (.I0(sw_IBUF[1]),
        .I1(inc_sw),
        .I2(led_OBUF[1]),
        .O(\count_i[0]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \count_i[0]_i_3 
       (.I0(led_OBUF[3]),
        .I1(inc),
        .I2(count_i0[3]),
        .I3(\count_i_reg[0]_i_8_n_4 ),
        .I4(dec),
        .O(\count_i[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \count_i[0]_i_4 
       (.I0(led_OBUF[2]),
        .I1(inc),
        .I2(count_i0[2]),
        .I3(\count_i_reg[0]_i_8_n_5 ),
        .I4(dec),
        .O(\count_i[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \count_i[0]_i_5 
       (.I0(led_OBUF[1]),
        .I1(inc),
        .I2(count_i0[1]),
        .I3(\count_i_reg[0]_i_8_n_6 ),
        .I4(dec),
        .O(\count_i[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0F4E)) 
    \count_i[0]_i_6 
       (.I0(dec),
        .I1(\count_i_reg[0]_i_8_n_7 ),
        .I2(led_OBUF[0]),
        .I3(inc),
        .O(\count_i[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_i[0]_i_9 
       (.I0(led_OBUF[4]),
        .O(\count_i[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_i[12]_i_10 
       (.I0(led_OBUF[13]),
        .O(\count_i[12]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count_i[12]_i_11 
       (.I0(sw_IBUF[15]),
        .I1(inc_sw),
        .I2(led_OBUF[15]),
        .O(\count_i[12]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count_i[12]_i_12 
       (.I0(sw_IBUF[14]),
        .I1(inc_sw),
        .I2(led_OBUF[14]),
        .O(\count_i[12]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count_i[12]_i_13 
       (.I0(sw_IBUF[13]),
        .I1(inc_sw),
        .I2(led_OBUF[13]),
        .O(\count_i[12]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count_i[12]_i_14 
       (.I0(sw_IBUF[12]),
        .I1(inc_sw),
        .I2(led_OBUF[12]),
        .O(\count_i[12]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \count_i[12]_i_2 
       (.I0(led_OBUF[15]),
        .I1(inc),
        .I2(count_i0[15]),
        .I3(\count_i_reg[12]_i_7_n_4 ),
        .I4(dec),
        .O(\count_i[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \count_i[12]_i_3 
       (.I0(led_OBUF[14]),
        .I1(inc),
        .I2(count_i0[14]),
        .I3(\count_i_reg[12]_i_7_n_5 ),
        .I4(dec),
        .O(\count_i[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \count_i[12]_i_4 
       (.I0(led_OBUF[13]),
        .I1(inc),
        .I2(count_i0[13]),
        .I3(\count_i_reg[12]_i_7_n_6 ),
        .I4(dec),
        .O(\count_i[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \count_i[12]_i_5 
       (.I0(led_OBUF[12]),
        .I1(inc),
        .I2(count_i0[12]),
        .I3(\count_i_reg[12]_i_7_n_7 ),
        .I4(dec),
        .O(\count_i[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_i[12]_i_8 
       (.I0(led_OBUF[15]),
        .O(\count_i[12]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_i[12]_i_9 
       (.I0(led_OBUF[14]),
        .O(\count_i[12]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_i[4]_i_10 
       (.I0(led_OBUF[6]),
        .O(\count_i[4]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_i[4]_i_11 
       (.I0(led_OBUF[5]),
        .O(\count_i[4]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count_i[4]_i_12 
       (.I0(sw_IBUF[7]),
        .I1(inc_sw),
        .I2(led_OBUF[7]),
        .O(\count_i[4]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count_i[4]_i_13 
       (.I0(sw_IBUF[6]),
        .I1(inc_sw),
        .I2(led_OBUF[6]),
        .O(\count_i[4]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count_i[4]_i_14 
       (.I0(sw_IBUF[5]),
        .I1(inc_sw),
        .I2(led_OBUF[5]),
        .O(\count_i[4]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count_i[4]_i_15 
       (.I0(sw_IBUF[4]),
        .I1(inc_sw),
        .I2(led_OBUF[4]),
        .O(\count_i[4]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \count_i[4]_i_2 
       (.I0(led_OBUF[7]),
        .I1(inc),
        .I2(count_i0[7]),
        .I3(\count_i_reg[4]_i_7_n_4 ),
        .I4(dec),
        .O(\count_i[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \count_i[4]_i_3 
       (.I0(led_OBUF[6]),
        .I1(inc),
        .I2(count_i0[6]),
        .I3(\count_i_reg[4]_i_7_n_5 ),
        .I4(dec),
        .O(\count_i[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \count_i[4]_i_4 
       (.I0(led_OBUF[5]),
        .I1(inc),
        .I2(count_i0[5]),
        .I3(\count_i_reg[4]_i_7_n_6 ),
        .I4(dec),
        .O(\count_i[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \count_i[4]_i_5 
       (.I0(led_OBUF[4]),
        .I1(inc),
        .I2(count_i0[4]),
        .I3(\count_i_reg[4]_i_7_n_7 ),
        .I4(dec),
        .O(\count_i[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_i[4]_i_8 
       (.I0(led_OBUF[8]),
        .O(\count_i[4]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_i[4]_i_9 
       (.I0(led_OBUF[7]),
        .O(\count_i[4]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_i[8]_i_10 
       (.I0(led_OBUF[10]),
        .O(\count_i[8]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_i[8]_i_11 
       (.I0(led_OBUF[9]),
        .O(\count_i[8]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count_i[8]_i_12 
       (.I0(sw_IBUF[11]),
        .I1(inc_sw),
        .I2(led_OBUF[11]),
        .O(\count_i[8]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count_i[8]_i_13 
       (.I0(sw_IBUF[10]),
        .I1(inc_sw),
        .I2(led_OBUF[10]),
        .O(\count_i[8]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count_i[8]_i_14 
       (.I0(sw_IBUF[9]),
        .I1(inc_sw),
        .I2(led_OBUF[9]),
        .O(\count_i[8]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \count_i[8]_i_15 
       (.I0(sw_IBUF[8]),
        .I1(inc_sw),
        .I2(led_OBUF[8]),
        .O(\count_i[8]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \count_i[8]_i_2 
       (.I0(led_OBUF[11]),
        .I1(inc),
        .I2(count_i0[11]),
        .I3(\count_i_reg[8]_i_7_n_4 ),
        .I4(dec),
        .O(\count_i[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \count_i[8]_i_3 
       (.I0(led_OBUF[10]),
        .I1(inc),
        .I2(count_i0[10]),
        .I3(\count_i_reg[8]_i_7_n_5 ),
        .I4(dec),
        .O(\count_i[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \count_i[8]_i_4 
       (.I0(led_OBUF[9]),
        .I1(inc),
        .I2(count_i0[9]),
        .I3(\count_i_reg[8]_i_7_n_6 ),
        .I4(dec),
        .O(\count_i[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \count_i[8]_i_5 
       (.I0(led_OBUF[8]),
        .I1(inc),
        .I2(count_i0[8]),
        .I3(\count_i_reg[8]_i_7_n_7 ),
        .I4(dec),
        .O(\count_i[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_i[8]_i_8 
       (.I0(led_OBUF[12]),
        .O(\count_i[8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_i[8]_i_9 
       (.I0(led_OBUF[11]),
        .O(\count_i[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\count_i[0]_i_1_n_0 ),
        .D(\count_i_reg[0]_i_2_n_7 ),
        .Q(led_OBUF[0]),
        .R(btnc_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_i_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\count_i_reg[0]_i_2_n_0 ,\NLW_count_i_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,inc}),
        .O({\count_i_reg[0]_i_2_n_4 ,\count_i_reg[0]_i_2_n_5 ,\count_i_reg[0]_i_2_n_6 ,\count_i_reg[0]_i_2_n_7 }),
        .S({\count_i[0]_i_3_n_0 ,\count_i[0]_i_4_n_0 ,\count_i[0]_i_5_n_0 ,\count_i[0]_i_6_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_i_reg[0]_i_7 
       (.CI(\<const0> ),
        .CO({\count_i_reg[0]_i_7_n_0 ,\NLW_count_i_reg[0]_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(led_OBUF[0]),
        .DI(led_OBUF[4:1]),
        .O(count_i0[4:1]),
        .S({\count_i[0]_i_9_n_0 ,\count_i[0]_i_10_n_0 ,\count_i[0]_i_11_n_0 ,\count_i[0]_i_12_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET SWEEP" *) 
  CARRY4 \count_i_reg[0]_i_8 
       (.CI(\<const0> ),
        .CO({\count_i_reg[0]_i_8_n_0 ,\NLW_count_i_reg[0]_i_8_CO_UNCONNECTED [2:0]}),
        .CYINIT(led_OBUF[0]),
        .DI({led_OBUF[3:1],p_0_out}),
        .O({\count_i_reg[0]_i_8_n_4 ,\count_i_reg[0]_i_8_n_5 ,\count_i_reg[0]_i_8_n_6 ,\count_i_reg[0]_i_8_n_7 }),
        .S({\count_i[0]_i_14_n_0 ,\count_i[0]_i_15_n_0 ,\count_i[0]_i_16_n_0 ,sw_IBUF[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\count_i[0]_i_1_n_0 ),
        .D(\count_i_reg[8]_i_1_n_5 ),
        .Q(led_OBUF[10]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\count_i[0]_i_1_n_0 ),
        .D(\count_i_reg[8]_i_1_n_4 ),
        .Q(led_OBUF[11]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\count_i[0]_i_1_n_0 ),
        .D(\count_i_reg[12]_i_1_n_7 ),
        .Q(led_OBUF[12]),
        .R(btnc_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_i_reg[12]_i_1 
       (.CI(\count_i_reg[8]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\count_i_reg[12]_i_1_n_4 ,\count_i_reg[12]_i_1_n_5 ,\count_i_reg[12]_i_1_n_6 ,\count_i_reg[12]_i_1_n_7 }),
        .S({\count_i[12]_i_2_n_0 ,\count_i[12]_i_3_n_0 ,\count_i[12]_i_4_n_0 ,\count_i[12]_i_5_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_i_reg[12]_i_6 
       (.CI(\count_i_reg[8]_i_6_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,led_OBUF[14:13]}),
        .O(count_i0[15:13]),
        .S({\<const0> ,\count_i[12]_i_8_n_0 ,\count_i[12]_i_9_n_0 ,\count_i[12]_i_10_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_i_reg[12]_i_7 
       (.CI(\count_i_reg[8]_i_7_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,led_OBUF[14:12]}),
        .O({\count_i_reg[12]_i_7_n_4 ,\count_i_reg[12]_i_7_n_5 ,\count_i_reg[12]_i_7_n_6 ,\count_i_reg[12]_i_7_n_7 }),
        .S({\count_i[12]_i_11_n_0 ,\count_i[12]_i_12_n_0 ,\count_i[12]_i_13_n_0 ,\count_i[12]_i_14_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\count_i[0]_i_1_n_0 ),
        .D(\count_i_reg[12]_i_1_n_6 ),
        .Q(led_OBUF[13]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\count_i[0]_i_1_n_0 ),
        .D(\count_i_reg[12]_i_1_n_5 ),
        .Q(led_OBUF[14]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\count_i[0]_i_1_n_0 ),
        .D(\count_i_reg[12]_i_1_n_4 ),
        .Q(led_OBUF[15]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\count_i[0]_i_1_n_0 ),
        .D(\count_i_reg[0]_i_2_n_6 ),
        .Q(led_OBUF[1]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\count_i[0]_i_1_n_0 ),
        .D(\count_i_reg[0]_i_2_n_5 ),
        .Q(led_OBUF[2]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\count_i[0]_i_1_n_0 ),
        .D(\count_i_reg[0]_i_2_n_4 ),
        .Q(led_OBUF[3]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\count_i[0]_i_1_n_0 ),
        .D(\count_i_reg[4]_i_1_n_7 ),
        .Q(led_OBUF[4]),
        .R(btnc_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_i_reg[4]_i_1 
       (.CI(\count_i_reg[0]_i_2_n_0 ),
        .CO({\count_i_reg[4]_i_1_n_0 ,\NLW_count_i_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\count_i_reg[4]_i_1_n_4 ,\count_i_reg[4]_i_1_n_5 ,\count_i_reg[4]_i_1_n_6 ,\count_i_reg[4]_i_1_n_7 }),
        .S({\count_i[4]_i_2_n_0 ,\count_i[4]_i_3_n_0 ,\count_i[4]_i_4_n_0 ,\count_i[4]_i_5_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_i_reg[4]_i_6 
       (.CI(\count_i_reg[0]_i_7_n_0 ),
        .CO({\count_i_reg[4]_i_6_n_0 ,\NLW_count_i_reg[4]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(led_OBUF[8:5]),
        .O(count_i0[8:5]),
        .S({\count_i[4]_i_8_n_0 ,\count_i[4]_i_9_n_0 ,\count_i[4]_i_10_n_0 ,\count_i[4]_i_11_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_i_reg[4]_i_7 
       (.CI(\count_i_reg[0]_i_8_n_0 ),
        .CO({\count_i_reg[4]_i_7_n_0 ,\NLW_count_i_reg[4]_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(led_OBUF[7:4]),
        .O({\count_i_reg[4]_i_7_n_4 ,\count_i_reg[4]_i_7_n_5 ,\count_i_reg[4]_i_7_n_6 ,\count_i_reg[4]_i_7_n_7 }),
        .S({\count_i[4]_i_12_n_0 ,\count_i[4]_i_13_n_0 ,\count_i[4]_i_14_n_0 ,\count_i[4]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\count_i[0]_i_1_n_0 ),
        .D(\count_i_reg[4]_i_1_n_6 ),
        .Q(led_OBUF[5]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\count_i[0]_i_1_n_0 ),
        .D(\count_i_reg[4]_i_1_n_5 ),
        .Q(led_OBUF[6]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\count_i[0]_i_1_n_0 ),
        .D(\count_i_reg[4]_i_1_n_4 ),
        .Q(led_OBUF[7]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\count_i[0]_i_1_n_0 ),
        .D(\count_i_reg[8]_i_1_n_7 ),
        .Q(led_OBUF[8]),
        .R(btnc_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_i_reg[8]_i_1 
       (.CI(\count_i_reg[4]_i_1_n_0 ),
        .CO({\count_i_reg[8]_i_1_n_0 ,\NLW_count_i_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\count_i_reg[8]_i_1_n_4 ,\count_i_reg[8]_i_1_n_5 ,\count_i_reg[8]_i_1_n_6 ,\count_i_reg[8]_i_1_n_7 }),
        .S({\count_i[8]_i_2_n_0 ,\count_i[8]_i_3_n_0 ,\count_i[8]_i_4_n_0 ,\count_i[8]_i_5_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_i_reg[8]_i_6 
       (.CI(\count_i_reg[4]_i_6_n_0 ),
        .CO({\count_i_reg[8]_i_6_n_0 ,\NLW_count_i_reg[8]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(led_OBUF[12:9]),
        .O(count_i0[12:9]),
        .S({\count_i[8]_i_8_n_0 ,\count_i[8]_i_9_n_0 ,\count_i[8]_i_10_n_0 ,\count_i[8]_i_11_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_i_reg[8]_i_7 
       (.CI(\count_i_reg[4]_i_7_n_0 ),
        .CO({\count_i_reg[8]_i_7_n_0 ,\NLW_count_i_reg[8]_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(led_OBUF[11:8]),
        .O({\count_i_reg[8]_i_7_n_4 ,\count_i_reg[8]_i_7_n_5 ,\count_i_reg[8]_i_7_n_6 ,\count_i_reg[8]_i_7_n_7 }),
        .S({\count_i[8]_i_12_n_0 ,\count_i[8]_i_13_n_0 ,\count_i[8]_i_14_n_0 ,\count_i[8]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_i_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\count_i[0]_i_1_n_0 ),
        .D(\count_i_reg[8]_i_1_n_6 ),
        .Q(led_OBUF[9]),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    dec_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(btnd_d),
        .Q(dec),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    dec_sw_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(btnl_d),
        .Q(dec_sw),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    inc_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(btnu_d),
        .Q(inc),
        .R(btnc_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    inc_sw_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(btnr_d),
        .Q(inc_sw),
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
