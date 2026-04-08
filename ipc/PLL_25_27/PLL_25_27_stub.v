// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
// Date        : Tue Jul  4 13:57:09 2023
// Host        : DESKTOP-GDG5E0I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/SVN_Path/DevKitProjects/7a100t/Dev/05_LVDS_LCD_Test_1024600/vivado/LVDS_LCD_Test_1024600.srcs/sources_1/ip/PLL_25_27/PLL_25_27_stub.v
// Design      : PLL_25_27
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module PLL_25_27(clk_out1, clk_out2, clk_out3, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,clk_out3,locked,clk_in1" */;
  output clk_out1;
  output clk_out2;
  output clk_out3;
  output locked;
  input clk_in1;
endmodule
