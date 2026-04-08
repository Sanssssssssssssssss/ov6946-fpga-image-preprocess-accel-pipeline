// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Oct 31 00:23:21 2024
// Host        : LAPTOP-0E9PGF4N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/ROG/Desktop/CMOS_OV6946_HDMI/CMOS_OV6946_HDMI/vivado/CMOS_OV6946_HDMI.srcs/sources_1/ip/FIFO_R/FIFO_R_sim_netlist.v
// Design      : FIFO_R
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FIFO_R,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module FIFO_R
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 74000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [7:0]din;
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
  wire [11:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [11:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [11:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "12" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
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
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
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
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "4kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "5" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "6" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "4083" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "4082" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "12" *) 
  (* C_RD_DEPTH = "4096" *) 
  (* C_RD_FREQ = "74" *) 
  (* C_RD_PNTR_WIDTH = "12" *) 
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
  (* C_USE_DOUT_RST = "0" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "12" *) 
  (* C_WR_DEPTH = "4096" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "125" *) 
  (* C_WR_PNTR_WIDTH = "12" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  FIFO_R_fifo_generator_v13_2_5 U0
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
        .data_count(NLW_U0_data_count_UNCONNECTED[11:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[11:0]),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[11:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
SFoQ2tXDMrL2nCJbfpmHXuteJlKaWDWl3o9OY1miFvmYb8EDywmDpLUHQktJ/VoW+17fK5WHgFVI
FZV1B91GDQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mxGWDRjEAsKmBqldxevT1RKZvqK7vn0KlTODVXNGlRcGf9zOAmj0Z7Ppu79POBDb8oNQyCY+2q1q
BddzhQfh5WLIVX9BNUMIF6M6IF0elM4GMSLHGeYEwqSaMPC+thuR8FGj1J7z6rH+43gDYhtIeyY+
ZuZUz/Pqg8Lu63Xwe+0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HLwPjQzkuqv5FEDBriEJS2DikBeIHB/bWuVWooHY5ChdoHatcmqCHpSvnGxVzLwObZWHFys2nR9y
P3zxywjtgtOWq/n3cYVa5li6eyiUmGXv2OE8nw1nLnAY1kzBvGd6VwQ45t6l4Hx5+oqpIfuU2KI2
7/Qpj2atiTN3Y+q5He/BMXLIxF9vWuU6XL/+HsxriGAumcZDuESdidlxOztbW1bFhYr1/qWwou2q
wynnRVKYHL41aWycgFdkDoDEFFxv8ft8+F5Ux+J5Hg5XdgRULJc6uUQE/lDG3zOqzPftlODB52zU
d0cm8gFOvSZ2nO8ZB8THnxoAGe33iIZJfMcefA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jlR0iZ4fp9QXiFgaT07DMAK1YFLyBpsOGOOR9j2PWImFEh8oTBt4cvmGo+2z1Umbt9OMQwOhyepO
QIsKLFzUXYUba+SFFLBoCiaww24KICecbUfd3VV5sg2bEJjAdtYTT6mJqyc3vQRvBlONeBFdIGy2
AXqdK7QtXGLsLAIF/z4FG8cfG6nSD6e16gccBC6+kl5MoShdnmebKLyoo6UKFdMbDK88sHvTcD9S
LNCau6RK7FkTZg23FV0tf6cTP9Rray9YEcowm2AAh51Wldo2lGJ2W5iiDatRKH/W1bu7FGWZG+OT
+VZE+Ckiuf4T6cuu+G5IbrtMv6a4U93R0gtxXQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
p/kq+JjPPJbOTWT2SRiPJ99/iH6kkVGEiluRRXpuRN+j+cVPgJD1v4QVjw3zMWLlvTGB7OOqC+JG
Lc62Wiizd/BFfGj2JYkTZMatcOWok7A87HK+vRTjr4nZMApD2jKaneJdU1279KsIEeRfImCQ2uRl
QRNMH3PPdNGYCnOGgNk=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kyyI/O29YYc5VBwhz19i7AV7MC75r43hHVKAOTBiGBhRu8zZxCwGGcNFqc2HgHcWC6nq4jCIbIXf
S3FDzPdasegnERlWvoob9/SXM88zKsyeTbUf+DRu5lB8SPROBMaIhnj375C5XLowL17MXZdmB6fV
X5ukCg7cNhCjssKt/bIJibWkfna7hvj4ye+CLWmi3LdEiix8KTwRoBS3ZJrjM4/N6FfZkXerVxs+
txkhdsmG9ga1g/xErhTRilhqrV2WetlpX86qH/64sRGVxrWeEfNoHhMZsqEK0jWDx4WavKt8XY7W
NDzMXLZ2m5Dv5HMiJWgFG+ntPwgiYYtBuwu7Eg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tv6UL1ZWqo3dAIlhN5UTNGzJyqzdHpCqh217JPvIvHiWJgcFh2tw1n7HWnOPcK3VhCt31AGnCEFe
HpTiinXvHna65L2X2HhtNUrsgvZlUuh/oQR273wp5JPFDPD97NQ4ELkGI+w26HTYLgZ70K5rQo87
D4AkQNRuzTRS5G12yb4RU7ZYgmkYLuq1UyqjlxyN62Del4XoqZyivOGw5H+7wlfkNRu98iQwqq12
jthZbH/ue5wxZJUcb7NmEwL+3abpyDNmWs1qORHOFoE3t97/9XMmeSCpM2+KnSKJvsV5VbuoTCOT
964fsEh7ey4IVb4aum095gQjLCqTmDm8DWFmaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Oxo3AgNmVWgrXtMKDIThYfXr0YJfyFr7Bsjn2ge/G72mb25MA8Dbkd9ZZPtwqU1poazNnTng5Cx5
s8C1zMNEoo38jNY8zEUBjCCuasJgeMo5xsiha+3ZIBiuHS0KLrjLaPFIQZdsYevb44fg6J5YQLn5
jd1M6YdNMd1VwSezDxtbk9sN8ExPrmtwum/6L1ia9j9UlIzPTEaJ60Xz7tloPsgsbkborO2JLiIk
kIAY2q1b8tuhHzJ5DoXlvIo49wSDj75ncLrkwbAd26huob7aOmX1bS34pJLF17JzqYH0MoPJbHxb
RPdD+qUawXFsMSs2fOLnZrNxeG8L+TyAT0N8tQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CIR/vwxo0IBrPr5+bMp2YuBCQTNBRIIbqgEB18Oewkc8CuHzGCAgPyQUBUKaUG3bBy+KDOPVxBP5
cE/d3QYZAT11fyB1OMMTrjmEIZcr0Vk3nVTAnivoxxxkmdzPjkj0OcGcU9fMArPi3dfTgIsKdtCq
94+mV/70WeprgijzuZFWD7uH+gVioY/+rq/Wc1O6x1n949w8YGgSCTurUvhsobx2bonoC317J0Wm
IX17XRkSBIFgzqA8iC+GV5oCfxIGkihKmXxjIJbMamlOdCOycEkjkh3JYmm7TLNxmI65iffsabR0
t5+iI0l8eJxFhElzWeREqE43cnJYLaKZBUA+DA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53776)
`pragma protect data_block
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
ZGVmE1nyAHFWzkSMrQ7I/dUDvtiNswXudw==
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
