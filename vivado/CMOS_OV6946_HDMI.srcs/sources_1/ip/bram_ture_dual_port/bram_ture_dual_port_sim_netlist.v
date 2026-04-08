// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Aug 18 17:22:45 2023
// Host        : WIN-RRTQK9AOTSE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top bram_ture_dual_port -prefix
//               bram_ture_dual_port_ bram_ture_dual_port_sim_netlist.v
// Design      : bram_ture_dual_port
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bram_ture_dual_port,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module bram_ture_dual_port
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [11:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [7:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta;
  wire [7:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.071399 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "bram_ture_dual_port.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  bram_ture_dual_port_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27648)
`pragma protect data_block
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
/IoW
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
