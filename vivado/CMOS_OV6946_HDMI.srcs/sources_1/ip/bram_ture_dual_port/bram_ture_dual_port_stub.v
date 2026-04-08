// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Aug 18 17:22:45 2023
// Host        : WIN-RRTQK9AOTSE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top bram_ture_dual_port -prefix
//               bram_ture_dual_port_ bram_ture_dual_port_stub.v
// Design      : bram_ture_dual_port
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *)
module bram_ture_dual_port(clka, wea, addra, dina, douta, clkb, web, addrb, dinb, 
  doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[11:0],dina[7:0],douta[7:0],clkb,web[0:0],addrb[11:0],dinb[7:0],doutb[7:0]" */;
  input clka;
  input [0:0]wea;
  input [11:0]addra;
  input [7:0]dina;
  output [7:0]douta;
  input clkb;
  input [0:0]web;
  input [11:0]addrb;
  input [7:0]dinb;
  output [7:0]doutb;
endmodule
