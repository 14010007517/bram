//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3_AR72075 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Sat Sep 12 18:23:20 2020
//Host        : alvin running 64-bit Ubuntu 16.04.6 LTS
//Command     : generate_target Base_Zynq_MPSoC_wrapper.bd
//Design      : Base_Zynq_MPSoC_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Base_Zynq_MPSoC_wrapper
   (led_8bits_tri_o);
  output [7:0]led_8bits_tri_o;

  wire [7:0]led_8bits_tri_o;

  Base_Zynq_MPSoC Base_Zynq_MPSoC_i
       (.led_8bits_tri_o(led_8bits_tri_o));
endmodule
