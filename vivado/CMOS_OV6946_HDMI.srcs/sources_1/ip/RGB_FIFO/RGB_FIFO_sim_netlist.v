// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Oct 31 00:07:08 2024
// Host        : LAPTOP-0E9PGF4N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/ROG/Desktop/CMOS_OV6946_HDMI/CMOS_OV6946_HDMI/vivado/CMOS_OV6946_HDMI.srcs/sources_1/ip/RGB_FIFO/RGB_FIFO_sim_netlist.v
// Design      : RGB_FIFO
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RGB_FIFO,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module RGB_FIFO
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
  (* C_IMPLEMENTATION_TYPE_RACH = "2" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "2" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "2" *) 
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
  RGB_FIFO_fifo_generator_v13_2_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53808)
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
