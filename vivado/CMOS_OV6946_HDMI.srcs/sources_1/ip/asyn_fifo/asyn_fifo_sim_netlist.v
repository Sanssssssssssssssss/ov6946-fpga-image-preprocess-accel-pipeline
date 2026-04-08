// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Aug 18 17:22:36 2023
// Host        : WIN-RRTQK9AOTSE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top asyn_fifo -prefix
//               asyn_fifo_ asyn_fifo_sim_netlist.v
// Design      : asyn_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "asyn_fifo,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module asyn_fifo
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [10:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [10:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [10:0]din;
  wire [10:0]dout;
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
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "11" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "11" *) 
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
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "14" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  asyn_fifo_fifo_generator_v13_2_5 U0
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
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module asyn_fifo_xpm_cdc_async_rst
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
module asyn_fifo_xpm_cdc_async_rst__1
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module asyn_fifo_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

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
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
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
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
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
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module asyn_fifo_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

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
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
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
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
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
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
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
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module asyn_fifo_xpm_cdc_single
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
module asyn_fifo_xpm_cdc_single__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 78848)
`pragma protect data_block
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
Yi5vKIlZhgyRTSvlIXsnhZw=
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
