// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Nov  1 10:27:28 2024
// Host        : jiangzhongyang running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_4kx8_sim_netlist.v
// Design      : fifo_4kx8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_4kx8,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53968)
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
