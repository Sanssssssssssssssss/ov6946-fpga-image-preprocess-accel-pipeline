// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Dec  7 15:23:10 2024
// Host        : jiangzhongyang running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/jiang/Desktop/Item/OV6946_study/OV6946_ETH_HDMI/OV6946_ETH/vivado/CMOS_OV6946_HDMI.srcs/sources_1/ip/rgb2eth/rgb2eth_sim_netlist.v
// Design      : rgb2eth
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rgb2eth,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module rgb2eth
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [15:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [15:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [10:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "16" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1021" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1020" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "11" *) 
  (* C_RD_DEPTH = "2048" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "11" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  rgb2eth_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module rgb2eth_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module rgb2eth_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module rgb2eth_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module rgb2eth_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [10:0]src_in_bin;
  input dest_clk;
  output [10:0]dest_out_bin;

  wire [10:0]async_path;
  wire [9:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[1] ;
  wire [10:0]dest_out_bin;
  wire [9:0]gray_enc;
  wire src_clk;
  wire [10:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(binval[5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[5]),
        .O(binval[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .I5(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module rgb2eth_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module rgb2eth_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 110672)
`pragma protect data_block
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
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
