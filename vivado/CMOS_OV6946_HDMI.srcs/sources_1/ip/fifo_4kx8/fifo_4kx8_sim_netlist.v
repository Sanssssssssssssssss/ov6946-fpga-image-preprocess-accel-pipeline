// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Nov  1 10:27:28 2024
// Host        : jiangzhongyang running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top fifo_4kx8 -prefix
//               fifo_4kx8_ fifo_4kx8_sim_netlist.v
// Design      : fifo_4kx8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_4kx8,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_4kx8
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
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
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "4kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "6" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "7" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "4089" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "4088" *) 
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
  (* C_RD_FREQ = "125" *) 
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
  fifo_4kx8_fifo_generator_v13_2_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53488)
`pragma protect data_block
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
yOhBOt83vwsYdF/ofbCQ+CdGVrB52w==
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
