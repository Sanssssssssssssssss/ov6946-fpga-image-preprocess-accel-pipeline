`timescale 1ns / 1ps
`include "../src/lcd_24bit_ip/lcd_para.v"
//

module FPGA_Test(
	input 							clk25m_i		,	//	P4
	input 							clk27m_i		,	//	F5
	input 							rstn_i			, 	//	U1
	//	HDMI In & Out (TMDS Only)
	output 							hdmio_txc_p_o	, 	//	B21. INV
	output 							hdmio_txc_n_o	, 	//	C21
	output 	[2 :0]					hdmio_txd_p_o	, 	//	A20, A19, A18. INV, INV, INV
	output 	[2 :0]					hdmio_txd_n_o	, 	//	B20, B19, A17
	output 	[7 :0] 					user_led_o		,	//	[0..7]U4, U6, U5, T4, T7, T8, J8, N8
	output 	[7 :0] 					user_led2_o		,	//	[0..7]U4, U6, U5, T4, T7, T8, J8, N8
	//	DVP
	output 							cmos_xclk_o		, 	//	F19
	output 							cmos_oe_n_o		, 	//	F18. Enable CMOS when low. Enable LVDS when high.
	output 	[3 :0] 					cmos_ctl_io		, 	//	B17, C17, D16, E16. CTL2 shares with LVDS touch RST. CTL3 shares with LVDS touch INT.
	output 							cmos_scl_o		, 	//	E18. Shares with LVDS touch SCL.
	inout 							cmos_sda_io		, 	//	E17. Shares with LVDS touch SDA.
	//	DVP Input
	input 							cmos_pclk_i		, 	//	R3
	input 							cmos_vsync_i	, 	//	P6
	input 							cmos_href_i		, 	//	P5
	input 	[7 :0] 					cmos_dat_i		, 	//	R7, P8, T2, R6, P3, R2, R5, T5
	//	DDR3 Interface (Internal)
	inout 	[31:0] 					ddr3_dq			,
	inout 	[3 :0] 					ddr3_dqs_n		,
	inout 	[3 :0] 					ddr3_dqs_p		,
	output 	[3 :0] 					ddr3_dm			,
	output 	[0 :0] 					ddr3_cs_n		,
	output 							ddr3_reset_n	,
	output 	[0 :0] 					ddr3_ck_p		,
	output 	[0 :0] 					ddr3_ck_n		,
	output 	[0 :0] 					ddr3_cke		,
	output 							ddr3_ras_n		,
	output 							ddr3_cas_n		,
	output 							ddr3_we_n		,
	output 	[0 :0] 					ddr3_odt		,
	output 	[14:0] 					ddr3_addr		,
	//eth
	output 	[2 :0] 					ddr3_ba			,
	output 							eth_mdc_o		, //	SIO6: V16
	inout 							eth_mdio_io		, //	SIO7: V17

	input 							eth_refclk_i	, //	H21
	output 							eth_resetn_o	, //	J20

	input 							eth_rxc_i		, //	K21
	input 							eth_rxctl_i		, //	H23
	input 	[3:0] 					eth_rxd_i		, //	[0..3]M15, L15, J25, J26

	output 							eth_txc_o		, //	J24
	output 							eth_txctl_o		, //	J21
	output 	[3:0] 					eth_txd_o 		  //	[0..3]H22, H24, H26, G26

);
	///////////////////////////////////////////////////////////////////////////////////
	assign	cmos_ctl_io[0] = 1'bz;	//
	assign	cmos_ctl_io[1] = 1'bz;	//
    assign	cmos_ctl_io[2] = 1'b1;  //PWM
    assign	cmos_ctl_io[3] = 1'b1;  //restn
	//////////////////////////////////////////////////////////////////////////////////
	//	Clock Control. Input is 25MHz. USB uses 48MHz. DDR uses 100MHz/200MHz/400MHz/400M90.
	//	To cascade to 74.25MHz/148.5MHz/371.25MHz/742.5MHz, generate 27MHz firstly.
	wire 			w_clk25m_i;
	BUFG clk25m (.I(clk25m_i), .O(w_clk25m_i));
	wire 			w_clk27m_i;
	BUFG clk27m (.I(clk27m_i), .O(w_clk27m_i));

	//////////////////////////////////////////////////////////////////////////////////
	//	25MHz -> 200MHz DDR Reference Clock
	wire 			w_pll200m_200m, w_rst200m_200m,w_pll400m_400m;
	wire 			w_pll200m_lock,w_pll125m_lock;
	PLL_25_200 pll200m (
		.clk_out1		(w_pll200m_200m	),
		.clk_in1		(w_clk25m_i		),
		.locked 		(w_pll200m_lock	)
	);
	wire   			w_pll_clk_297m;   // 4 * Pixel_clk
  pll_125 pll_125m
   (
    	.clk_out1		(w_pll_clk_297m	),
    	.reset			(1'b0			),
    	.locked			(w_pll125m_lock	),
    	.clk_in1		(w_clk25m_i		)
	);

	reg 			r_rstn200m_200m = 0;
	always @(posedge w_pll200m_200m)
		r_rstn200m_200m <= w_pll200m_lock;
	assign w_rst200m_200m = ~r_rstn200m_200m;



	//////////////////////////////////////////////////////////////////////////////////
	//	27MHz -> HDMI Clocks
	wire 			w_pll74m_74m, w_pll74m_148m, w_pll74m_371m, w_pll74m_742m;
	wire 			w_rst74m_74m, w_rst74m_148m;
	wire 			w_pll74m_lock;
	PLL_27_742_371_74_148 pll74m (
		.clk_out1		(w_pll74m_742m	),
		.clk_out2		(w_pll74m_371m	),
		.clk_out3		(w_pll74m_74m	),
		.clk_out4		(w_pll74m_148m	),
		.clk_in1		(w_clk27m_i		),
		.reset			(1'b0			),
		.locked 		(w_pll74m_lock	)
	);
	wire 			w_clk74m, w_clk148m;
	wire 			w_clk371m, w_clk742m;
	BUFG clk74m (.I(w_pll74m_74m), .O(w_clk74m)); 		//, .CE(1'b1), .CLR(0)
	BUFG clk148m (.I(w_pll74m_148m), .O(w_clk148m)); 	//, .CE(1'b1), .CLR(0));
	BUFIO clk371m (.I(w_pll74m_371m), .O(w_clk371m));
	BUFIO clk742m (.I(w_pll74m_742m), .O(w_clk742m));

	reg 			r_rstn74m_74m = 0, r_rstn74m_148m = 0;
	reg            r_rstn27m_27m;
	always @(posedge w_clk74m)
		r_rstn74m_74m <= w_pll74m_lock;
    always @(posedge w_clk27m_i)
		r_rstn27m_27m <= w_pll74m_lock;
	always @(posedge w_clk148m)
		r_rstn74m_148m <= w_pll74m_lock;
	assign w_rst74m_74m = ~r_rstn74m_74m;
	assign w_rst74m_148m = ~r_rstn74m_148m;

	//	DVP Sensor Control

	wire 			sys_clk = w_clk25m_i;
	// wire 			sys_rst_n_i = (~w_rst74m_74m) && rstn_i;
	// reg 			sys_rst_n = 0;
	// always @(posedge sys_clk or negedge sys_rst_n_i) begin
	// 	if(~sys_rst_n_i)
	// 		sys_rst_n <= 0;
	// 	else
	// 		sys_rst_n <= 1;
	// end


	assign cmos_oe_n_o = 1'b0;
	//assign cmos_ctl_io = 'bz; 	//	Floating CTL
	localparam 	CLOCK_MAIN 	= 25_000_000;

	wire	[ 8:0] 	i2c_config_index;
	wire	[23:0] 	i2c_config_data	;
	wire 	[ 8:0] 	i2c_config_size	;
	wire			i2c_config_done	;
	wire           	cmos_sda_o		;
	wire           	cmos_sda_oe		;
	wire	[15:0]	i2c_rdata		;                              //  i2c register data

	i2c_timing_ctrl_reg16_dat8_wronly#(
	    .CLK_FREQ           (CLOCK_MAIN     	 		),     //  25 MHz
	    .I2C_FREQ           (100_000        	 		)      //  100 KHz(<= 400KHz)
	)
	u_i2c_timing_ctrl_reg16_dat8_wronly
	(
	    //global clock
	    .clk                (sys_clk             		),     //  25MHz
	    .rst_n              (w_pll74m_lock           	),     //  system reset

	    //i2c interface
        .i2c_sclk           (cmos_scl_o          		),     //  i2c clock
        .i2c_sdat_IN        (cmos_sda_io         		),
        .i2c_sdat_OUT       (cmos_sda_o          		),
        .i2c_sdat_OE        (cmos_sda_oe         		),

	    //i2c config data
	    .i2c_config_index   (i2c_config_index           ),      //  i2c config reg index, read 2 reg and write xx reg
	    .i2c_config_data    ({8'h6C, i2c_config_data}   ),      //  i2c config data
	    .i2c_config_size    (i2c_config_size            ),      //  i2c config data counte
	    .i2c_config_done    (i2c_config_done            )       //  i2c config timing complete

	);

    assign cmos_sda_io = cmos_sda_oe ? cmos_sda_o : 'bz;
	//----------------------------------------------------------------------
	//  I2C Configure Data of
	I2C_OV426_400400_Config u_I2C_OV426_400400_Config
	(
	    .LUT_INDEX  (i2c_config_index   ),
	    .LUT_DATA   (i2c_config_data    ),
	    .LUT_SIZE   (i2c_config_size    )
	);

	//----------------------------------------------------------------------
	//  cmos video image capture
	wire                            cmos_init_done	;  //  cmos camera init done
	wire                            cmos_frame_vsync;  //  cmos frame data vsync valid signal
	wire                            cmos_frame_href	;  //  cmos frame data href vaild  signal
	wire            [7:0]           cmos_frame_Gray	;  //  cmos frame data output: 8 Bit raw data
	wire                            cmos_vsync_end	;  //  cmos data
	wire 					 		w_ddr_init_done	;
	//	Wait until DDR init done.
	assign cmos_init_done   = i2c_config_done && w_ddr_init_done;

	wire   clk_cmos  		= w_clk27m_i;
	wire   cmos_rstn 		= r_rstn27m_27m & cmos_init_done;
	wire [7:0] 	w_cmos_fps;
	CMOS_Capture_RAW_Gray#(
	    .CMOS_FRAME_WAITCNT     (4'd3       	),                              //  Wait n fps for steady(OmniVision need 10 Frame)
	    .CMOS_PCLK_FREQ         (27_000_000  	),
	    .SIMU_EN 				(0				)//  100 MHz
	)
	u_CMOS_Capture_RAW_Gray
	(
	    //global clock
	    .clk_cmos               (clk_cmos          ),    //  27MHz CMOS Driver clock input
	    .rst_n                  (cmos_rstn         ),    //  global reset

	    //CMOS Sensor Interface
	    .cmos_pclk              (cmos_pclk_i       ),    //  74.25MHz CMOS Pixel clock input
	    .cmos_xclk              (cmos_xclk_o       ),    //  74.25MHz drive clock
	    .cmos_data              (cmos_dat_i        ),    //  8 bits cmos data input
	    .cmos_vsync             (cmos_vsync_i      ),    //  L: vaild, H: invalid
	    .cmos_href              (cmos_href_i       ),    //  H: vaild, L: invalid

	    //CMOS SYNC Data output
	    .cmos_frame_vsync       (cmos_frame_vsync  ),    //  cmos frame data vsync valid signal
	    .cmos_frame_href        (cmos_frame_href   ),    //  cmos frame data href vaild  signal
	    .cmos_frame_data        (cmos_frame_Gray   ),    //  cmos frame data output: 8 Bit raw data

	    //user interface
	    .cmos_fps_rate          (w_cmos_fps        ),    //cmos image output rate
	    .cmos_vsync_end         (cmos_vsync_end    ),
	    .pixel_cnt              (                  ),
	    .line_cnt               (                  )
	);
	assign user_led_o = ~w_cmos_fps;


	wire 			w_rgb_vsync, w_rgb_href;
    wire 	[31:0] 	w_rgb;
	wire     [7:0]  raw_red;
	wire     [7:0]  raw_green;
	wire     [7:0]  raw_blue;


	NoHsyncBayer2RGB #(
		.IMG_HDISP(400),
		.IMG_VDISP(400)
	)
	u_NoHsyncBayer2RGB (
        .clk				(cmos_pclk_i		     	), 	      //cmos video pixel clock
		.rst_n			    (rst_n  					), 	      //global reset
		.mirror			    (2'd00						),
        .per_frame_vsync    (cmos_frame_vsync          ),        // Prepared Image data vsync valid signal
        .per_frame_href     (cmos_frame_href            ),        // Prepared Image data href valid signal
        .per_img_RAW        (cmos_frame_Gray            ),        // Prepared Image data 8 Bit RAW Data
        .post_frame_vsync   (w_rgb_vsync                ),
        .post_frame_href    (w_rgb_href                 ),
        .post_img_red       (raw_red                           ),
        .post_img_green     (raw_green                           ),
        .post_img_blue      (raw_blue                           ),
        .axi4_write_data    (w_rgb                      ),
        .rgb888_data        ()
    );

	wire     [7:0]  post_red;
	wire     [7:0]  post_green;
	wire     [7:0]  post_blue;
	wire            final_vsync;
	wire			final_href;

	// BLinear interpolation
	Video_Image_Processor #(
		.C_SRC_IMG_WIDTH	(400						),
		.C_SRC_IMG_HEIGHT	(400						),
		.C_DST_IMG_WIDTH	(640						),
		.C_DST_IMG_HEIGHT	(640						),
		.C_X_RATIO			(40960					    ),
		.C_Y_RATIO			(40960						)
	)
	u_VIP_Interpolation_red
	(
		.clk_in1			(cmos_pclk_i),
		.clk_in2			(w_pll200m_200m),
		.rst_n				(rst_n),
		.per_img_vsync      (w_rgb_vsync),
		.per_img_href		(w_rgb_href),
		.per_img_gray       (raw_red),
		.post_img_vsync     (final_vsync),
		.post_img_href		(final_href ),
		.post_img_gray      (post_red)
	);

	Video_Image_Processor #(
		.C_SRC_IMG_WIDTH	(400						),
		.C_SRC_IMG_HEIGHT	(400						),
		.C_DST_IMG_WIDTH	(640						),
		.C_DST_IMG_HEIGHT	(640						),
		.C_X_RATIO			(40960						),
		.C_Y_RATIO			(40960						)
	)
	u_VIP_Interpolation_green
	(
		.clk_in1			(cmos_pclk_i),
		.clk_in2			(w_pll200m_200m),
		.rst_n				(rst_n),
		.per_img_vsync      (w_rgb_vsync),
		.per_img_href		(w_rgb_href),
		.per_img_gray       (raw_green),
		.post_img_vsync     (),
		.post_img_href		(),
		.post_img_gray      (post_green)
	);

	Video_Image_Processor #(
		.C_SRC_IMG_WIDTH	(400						),
		.C_SRC_IMG_HEIGHT	(400						),
		.C_DST_IMG_WIDTH	(640						),
		.C_DST_IMG_HEIGHT	(640						),
		.C_X_RATIO			(40960						),
		.C_Y_RATIO			(40960						)
	)
	u_VIP_Interpolation_blue
	(
		.clk_in1			(cmos_pclk_i),
		.clk_in2			(w_pll200m_200m),
		.rst_n				(rst_n),
		.per_img_vsync      (w_rgb_vsync),
		.per_img_href		(w_rgb_href),
		.per_img_gray       (raw_blue),
		.post_img_vsync     (),
		.post_img_href		(),
		.post_img_gray      (post_blue)
	);

	////////////////////////////////////////////////////////////////
	//	DDR3 Clock & Reset & Control
	wire 						w_ddr3_core_clock, w_ddr3_core_reset;
	wire 						w_ddr3_core_resetn = ~w_ddr3_core_reset;

	//	AXI Interface
	wire	[3 :0] 				s_axi_awid;
	wire	[31:0]				s_axi_awaddr;
	wire	[7 :0]				s_axi_awlen;
	wire						s_axi_awvalid;
	wire						s_axi_awready;

	wire	[3 :0] 				s_axi_wid;
	wire	[255:0]				s_axi_wdata;
	wire	[31:0]				s_axi_wstrb;
	wire						s_axi_wlast;
	wire						s_axi_wvalid;
	wire						s_axi_wready;

	wire	[3 :0] 				s_axi_bid;
	wire	[1 :0]				s_axi_bresp;
	wire						s_axi_bvalid;

	wire	[3 :0] 				s_axi_arid;
	wire	[31:0]				s_axi_araddr;
	wire	[7 :0]				s_axi_arlen;
	wire						s_axi_arvalid;
	wire						s_axi_arready;

	wire						s_axi_rready;
	wire	[3 :0] 				s_axi_rid;
	wire	[255:0]				s_axi_rdata;
	wire	[1 :0]				s_axi_rresp;
	wire						s_axi_rlast;
	wire						s_axi_rvalid;

	DDR3_0 ddr3 (
		.ddr3_dq				(ddr3_dq			),
		.ddr3_dqs_n				(ddr3_dqs_n			),
		.ddr3_dqs_p				(ddr3_dqs_p			),

		.ddr3_addr				(ddr3_addr			),
		.ddr3_ba				(ddr3_ba			),
		.ddr3_ras_n				(ddr3_ras_n			),
		.ddr3_cas_n				(ddr3_cas_n			),
		.ddr3_we_n				(ddr3_we_n			),
		.ddr3_reset_n 			(ddr3_reset_n		),
		.ddr3_ck_p				(ddr3_ck_p			),
		.ddr3_ck_n				(ddr3_ck_n			),
		.ddr3_cke				(ddr3_cke			),
		.ddr3_cs_n				(ddr3_cs_n			),
		.ddr3_dm				(ddr3_dm			),
		.ddr3_odt				(ddr3_odt			),

		.ui_clk					(w_ddr3_core_clock	),
		.ui_clk_sync_rst 		(w_ddr3_core_reset	),
		.mmcm_locked 			(					),
		.aresetn				(w_ddr3_core_resetn	),

		.app_sr_req				(0					),
		.app_ref_req			(0					),
		.app_zq_req				(0					),
		.app_sr_active			(					),
		.app_ref_ack			(					),
		.app_zq_ack				(					),

		.s_axi_awid				(s_axi_awid			),
		.s_axi_awaddr			(s_axi_awaddr		),
		.s_axi_awlen			(s_axi_awlen		),
		.s_axi_awsize			(5					),	//	256 Bit
		.s_axi_awburst			(1					),	//	INCR
		.s_axi_awlock			(0					),
		.s_axi_awcache			(0					),
		.s_axi_awprot			(0					),
		.s_axi_awqos			(0					),
		.s_axi_awvalid			(s_axi_awvalid		),
		.s_axi_awready			(s_axi_awready		),

		.s_axi_wdata			(s_axi_wdata		),
		.s_axi_wstrb			(s_axi_wstrb		),
		.s_axi_wlast			(s_axi_wlast		),
		.s_axi_wvalid			(s_axi_wvalid		),
		.s_axi_wready			(s_axi_wready		),

		.s_axi_bready			(1					),
		.s_axi_bid				(s_axi_bid			),
		.s_axi_bresp			(s_axi_bresp		),
		.s_axi_bvalid			(s_axi_bvalid		),

		.s_axi_arid				(s_axi_arid			),
		.s_axi_araddr			(s_axi_araddr		),
		.s_axi_arlen			(s_axi_arlen		),
		.s_axi_arsize			(5					),
		.s_axi_arburst			(1					),
		.s_axi_arlock			(0					),
		.s_axi_arcache			(0					),
		.s_axi_arprot			(0					),
		.s_axi_arqos			(0					),
		.s_axi_arvalid			(s_axi_arvalid		),
		.s_axi_arready			(s_axi_arready		),

		.s_axi_rready			(s_axi_rready		),
		.s_axi_rid				(s_axi_rid			),
		.s_axi_rdata			(s_axi_rdata		),
		.s_axi_rresp			(s_axi_rresp		),
		.s_axi_rlast			(s_axi_rlast		),
		.s_axi_rvalid			(s_axi_rvalid		),

		.init_calib_complete	(w_ddr_init_done	),
		.device_temp			(					),

		.sys_clk_i				(w_pll200m_200m		),
		.sys_rst				(w_rst200m_200m		)
	);

	//	Distribute 74.25MHz-371.25MHz, and 148.5MHz-742.5MHz clocks to LCD0 & LCD1. The
	wire 			w_lcd0_clk1x = w_clk74m		;
	wire 			w_lcd0_clk5x = w_clk371m	;
	wire 			w_lcd0_rst 	 = w_rst74m_74m	;

	wire 			w_lcd1_clk1x = w_clk148m	;
	wire 			w_lcd1_clk5x = w_clk742m	;
	wire 			w_lcd1_rst 	 = w_rst74m_148m;

assign clk_pixel_2x = w_lcd1_clk1x;


`ifdef VGA_1280_720_60FPS_74_25MHz
	assign clk_pixel = w_lcd0_clk1x;
	assign clk_pixel_5x = w_lcd0_clk5x;
	assign rst_n = ~w_lcd0_rst;
`else
	assign clk_pixel = w_lcd1_clk1x;
	assign clk_pixel_5x = w_lcd1_clk5x;
	assign rst_n = ~w_lcd1_rst;
`endif



assign s_axi_awid = 0;
assign s_axi_wid = 0;

wire 			w_lcd_vs, w_lcd_de;
wire 	[23:0] 	w_lcd_data;

wire 	[31:0] 	w_axi_tp;

axi4_ctrl
#(
    .C_RD_END_ADDR  (640*640*4          ),
    .C_W_WIDTH      (32				    ),
    .C_R_WIDTH      (32				    )
)
u_axi4_ctrl
(
    .axi_clk        (w_ddr3_core_clock  ),
    .axi_reset      (w_ddr3_core_reset  ),

    .axi_awid       (         			),
    .axi_awaddr     (s_axi_awaddr       ),
    .axi_awlen      (s_axi_awlen        ),
    .axi_awsize     (      				),
    .axi_awburst    (      				),
    .axi_awlock     (      				),
    .axi_awcache    (      				),
    .axi_awprot     (      				),
    .axi_awqos      (      				),
    .axi_awvalid    (s_axi_awvalid      ),
    .axi_awready    (s_axi_awready      ),

    .axi_wdata      (s_axi_wdata        ),
    .axi_wstrb      (s_axi_wstrb        ),
    .axi_wlast      (s_axi_wlast        ),
    .axi_wvalid     (s_axi_wvalid       ),
    .axi_wready     (s_axi_wready       ),

    .axi_bid        (0         		 	),
    .axi_bresp      (0        			),
    .axi_bvalid     (1       			),
    .axi_bready     (s_axi_bready       ),

    .axi_arid       (s_axi_arid         ),
    .axi_araddr     (s_axi_araddr       ),
    .axi_arlen      (s_axi_arlen        ),
    .axi_arsize     (       			),
    .axi_arburst    (      				),
    .axi_arlock     (       			),
    .axi_arcache    (      				),
    .axi_arprot     (       			),
    .axi_arqos      (        			),
    .axi_arvalid    (s_axi_arvalid      ),
    .axi_arready    (s_axi_arready      ),

    .axi_rid        (s_axi_rid          ),
    .axi_rdata      (s_axi_rdata        ),
    .axi_rresp      (0        			),
    .axi_rlast      (s_axi_rlast        ),
    .axi_rvalid     (s_axi_rvalid       ),
    .axi_rready     (s_axi_rready       ),
	// .wframe_pclk    (cmos_pclk_i        ),
    .wframe_pclk    (w_pll200m_200m     ),
	.wframe_vsync   (~cmos_frame_vsync  ),
	.wframe_data_en (final_href         ),
    // .wframe_data    ({8'b0,post_blue, post_green, post_red}              ),
	.wframe_data    ({post_blue,post_red,post_green,post_blue}           ),
    // .wframe_vsync   (~cmos_frame_vsync   ),
    // .wframe_data_en (cmos_frame_href    ),
    // // .wframe_data    (cmos_frame_Gray    ),
	// .wframe_data    (w_rgb              ),
    .rframe_pclk    (clk_pixel          ),
    .rframe_vsync   (w_lcd_vs           ),
    .rframe_data_en (w_lcd_de           ),
    .rframe_data    (w_lcd_data         ),

    .tp_o 			(w_axi_tp			)
);

//---------------------------------------------------------------------------
wire        lcd_hs;
wire        lcd_vs;
wire        lcd_de;
wire[7:0]   lcd_red;
wire[7:0]   lcd_green;
wire[7:0]   lcd_blue;
localparam  CLOCK_PIXEL = 74_25000; //74.25MHz

//-------------------------------------
//LCD driver timing
wire	[11:0]	lcd_xpos;		//lcd horizontal coordinate
wire	[11:0]	lcd_ypos;		//lcd vertical coordinate
wire	[23:0]	lcd_data;		//lcd data
lcd_driver u_lcd_driver
(
	//global clock
	.clk			(clk_pixel),
	.rst_n		    (rst_n),

	 //lcd interface
	.lcd_dclk		(),//(lcd_dclk),
	.lcd_blank		(),//lcd_blank
	.lcd_sync		(),
	.lcd_hs		    (lcd_hs),
	.lcd_vs		    (lcd_vs),
	.lcd_en		    (lcd_de),
	.lcd_rgb		({lcd_red, lcd_green ,lcd_blue}),
	//user interface
	.lcd_request	(w_lcd_de),
	.lcd_data		(lcd_data),
	.lcd_xpos		(lcd_xpos),
	.lcd_ypos		(lcd_ypos)
);

assign w_lcd_vs = lcd_vs;
assign lcd_data = {3{w_lcd_data[23:0]}};  // ����˵�����ǽ�����*3

assign user_led2_o[7:0] = w_axi_tp[7:0]; 	//	{s_axi_rready, s_axi_rvalid, s_axi_arready, s_axi_arvalid, w_lcd_de, w_lcd_vs, rst_n, clk_pixel};

//-------------------------------------
////////////////////////////////////////////////////////////////////////////////
//ISP
///////////////////////////////////////////////////////////////////////////////

    // wire 			w_rgb_vsync, w_rgb_href;
    // wire 	[7:0] 	w_rgb_r, w_rgb_g, w_rgb_b;

    // VIP_RAW8_RGB888 #(
	// 	.IMG_HDISP(1280),
	// 	.IMG_VDISP(720)
	// )
	// bayer2rgb
	// (
	// 	.clk				(clk_pixel					), 	//cmos video pixel clock
	// 	.rst_n			    (rst_n  					), 	//global reset
	// 	.mirror			    (2'd00						),
	// 		//CMOS YCbCr444 data output
	// 	.per_frame_vsync	(lcd_vs						),  //Prepared Image data vsync valid signal. Reset on falling edge.
	// 	.per_frame_href		(lcd_de						),  //Prepared Image data href vaild  signal
	// 	.per_frame_hsync    (lcd_hs						),
	// 	.per_img_RAW		({lcd_red, lcd_green ,lcd_blue}), 	//	Input data from AXI reader directly. Latency is 1T. Matches with VS / HS / DE signals.

	// 	.post_frame_vsync	(w_rgb_vsync				),  //Processed Image data vsync valid signal
	// 	.post_frame_href	(w_rgb_href					),  //Processed Image data href vaild  signal
	// 	.post_frame_hsync	(w_rgb_hsync				),  //Processed Image data href vaild  signal
	// 	.post_img_red		(w_rgb_r					),  //Prepared Image green data to be processed
	// 	.post_img_green		(w_rgb_g					),  //Prepared Image green data to be processed
	// 	.post_img_blue		(w_rgb_b					)   //Prepared Image blue data to be processed
    // );

	//-------------------------------------------------------------------------
	wire 			w_rgb_vs_o, w_rgb_hs_o, w_rgb_de_o;
    wire 	[23:0] 	w_rgb_data_o;
    FrameBoundCrop #(
		.TOTAL_ROWS			(720						),
		.TOTAL_COLS			(1280						)
	)
	rgb_crop
	(
        .clk_i				(clk_pixel					),
        .rst_i				(rst_n 						),

        .vs_i 				(lcd_vs				),
        .hs_i 				(lcd_hs				),
        .de_i 				(lcd_de					),
        .data_i				({lcd_red, lcd_green ,lcd_blue}),

        .vs_o 				(w_rgb_vs_o	 				),
        .hs_o 				(w_rgb_hs_o	 				),
        .de_o 				(w_rgb_de_o	 				),
        .data_o				(w_rgb_data_o				)
    );
	//-------------------------------------------------------------------------
	//-------------Bilateral_filter-----------------------
//----------------------------------------------------------------------
    wire                            post_img_vsync;
    wire                            post_img_href;
    wire            [7:0]           img_red;

    bilateral_filter_top
    #(
        .IMG_HDISP  		(1280   				),
        .IMG_VDISP  		(720    				)
    )
    u_bilateral_filter_red
    (
        //  global clock
        .clk                (clk_pixel        		),          //  cmos video pixel clock
        .rst_n              (rst_n 					),          //  global reset

        //  Image data prepred to be processd
        .per_img_vsync      (w_rgb_vs_o   			),      //  Prepared Image data vsync valid signal
        .per_img_href       (w_rgb_hs_o & w_rgb_de_o),      //  Prepared Image data href vaild  signal
        .per_img_gray       (w_rgb_data_o[23:16]    ),      //  Prepared Image brightness input

        //  Image data has been processd
        .post_img_vsync     (post_img_vsync     	),          //  Processed Image data vsync valid signal
        .post_img_href      (post_img_href      	),          //  Processed Image data href vaild  signal
        .post_img_gray      (img_red            	)           //  Processed Image Bit flag outout(1: Value, 0:inValid)
    );

	wire            [7:0]           img_green;

    bilateral_filter_top
    #(
        .IMG_HDISP  		(1280   				),
        .IMG_VDISP  		(720    				)
    )
    u_bilateral_filter_green
    (
        //  global clock
        .clk                (clk_pixel        		),  //  cmos video pixel clock
        .rst_n              (rst_n        			),  //  global reset

        //  Image data prepred to be processd
        .per_img_vsync      (w_rgb_vs_o   			),  //  Prepared Image data vsync valid signal
        .per_img_href       (w_rgb_hs_o & w_rgb_de_o),  //  Prepared Image data href vaild  signal
        .per_img_gray       (w_rgb_data_o[15:8]    	),  //  Prepared Image brightness input

        //  Image data has been processd
        .post_img_vsync     (                   	),  //  Processed Image data vsync valid signal
        .post_img_href      (                   	),  //  Processed Image data href vaild  signal
        .post_img_gray      (img_green          	)   //  Processed Image Bit flag outout(1: Value, 0:inValid)
    );

    wire            [7:0]           img_blue;

    bilateral_filter_top
    #(
        .IMG_HDISP  		(1280  					),
        .IMG_VDISP  		(720   					)
    )
    u_bilateral_filter_blue
    (
        //  global clock
        .clk                (clk_pixel        		), //  cmos video pixel clock
        .rst_n              (rst_n          		), //  global reset

        //  Image data prepred to be processd
        .per_img_vsync      (w_rgb_vs_o   			), //  Prepared Image data vsync valid signal
        .per_img_href       (w_rgb_hs_o & w_rgb_de_o), //  Prepared Image data href vaild  signal
        .per_img_gray       (w_rgb_data_o[7:0]    	), //  Prepared Image brightness input

        //  Image data has been processd
        .post_img_vsync     (                   	), //  Processed Image data vsync valid signal
        .post_img_href      (                   	), //  Processed Image data href vaild  signal
        .post_img_gray      (img_blue           	)  //  Processed Image Bit flag outout(1: Value, 0:inValid)
    );

	/////////////////////////////////////////////////////
    //-------Laplacian Sharpen--------------------------
    wire        [ 7:0]      img_red1;
    wire        [ 7:0]      img_green1;
    wire        [ 7:0]      img_blue1;

    wire                    Post_vs_o;
    wire                    Post_de_o;

	// Sobel_Sharpen_Top
    // #(
    //     .IMG_HDISP  (1280   ),
    //     .IMG_VDISP  (720    )
    // )
    // u_Sobel_Sharpen_Red
    // (
    //     //  global clock
    //     .clk                (clk_pixel          ),                          //  cmos video pixel clock
    //     .rst_n              (rst_n              ),                          //  global reset

    //     //  Image data prepred to be processd
    //     .per_img_vsync      (post_img_vsync   	),   //  Prepared Image data vsync valid signal
    //     .per_img_href       (post_img_href    	),   //  Prepared Image data href vaild  signal
    //     .per_img_gray       (img_red          	),   //  Prepared Image brightness input

    //     //  Image data has been processd
    //     .post_img_vsync     (Post_vs_o      	),   //  Processed Image data vsync valid signal
    //     .post_img_href      (Post_de_o      	),   //  Processed Image data href vaild  signal
    //     .post_img_gray      (img_red1       	)    //  Processed Image Bit flag outout(1: Value, 0:inValid)
    // );

	// Sobel_Sharpen_Top
    // #(
    //     .IMG_HDISP  (1280   ),
    //     .IMG_VDISP  (720    )
    // )
    // u_Sobel_Sharpen_Green
    // (
    //     //  global clock
    //     .clk                (clk_pixel          ),                          //  cmos video pixel clock
    //     .rst_n              (rst_n              ),                          //  global reset

    //     //  Image data prepred to be processd
    //     .per_img_vsync      (post_img_vsync   	),   //  Prepared Image data vsync valid signal
    //     .per_img_href       (post_img_href    	),   //  Prepared Image data href vaild  signal
    //     .per_img_gray       (img_green          ),   //  Prepared Image brightness input

    //     //  Image data has been processd
    //     .post_img_vsync     (                	),   //  Processed Image data vsync valid signal
    //     .post_img_href      (               	),   //  Processed Image data href vaild  signal
    //     .post_img_gray      (img_green1       	)    //  Processed Image Bit flag outout(1: Value, 0:inValid)
    // );

	// Sobel_Sharpen_Top
    // #(
    //     .IMG_HDISP  (1280   ),
    //     .IMG_VDISP  (720    )
    // )
    // u_Sobel_Sharpen_Blue
    // (
    //     //  global clock
    //     .clk                (clk_pixel          ),                          //  cmos video pixel clock
    //     .rst_n              (rst_n              ),                          //  global reset

    //     //  Image data prepred to be processd
    //     .per_img_vsync      (post_img_vsync   	),   //  Prepared Image data vsync valid signal
    //     .per_img_href       (post_img_href    	),   //  Prepared Image data href vaild  signal
    //     .per_img_gray       (img_blue          	),   //  Prepared Image brightness input

    //     //  Image data has been processd
    //     .post_img_vsync     (                	),   //  Processed Image data vsync valid signal
    //     .post_img_href      (               	),   //  Processed Image data href vaild  signal
    //     .post_img_gray      (img_blue1       	)    //  Processed Image Bit flag outout(1: Value, 0:inValid)
    // );

    Laplacian_sharpen_top
    #(
        .IMG_HDISP  		(1280   			),
        .IMG_VDISP  		(720    			)
    )
    u_VIP_LSharpen_red
    (
        //  global clock
        .clk                (clk_pixel        	),   //  cmos video pixel clock
        .rst_n              (rst_n            	),   //  global reset

        //  Image data prepred to be processd
        .per_img_vsync      (post_img_vsync   	),   //  Prepared Image data vsync valid signal
        .per_img_href       (post_img_href    	),   //  Prepared Image data href vaild  signal
        .per_img_gray       (img_red          	),   //  Prepared Image brightness input

        //  Image data has been processd
        // .post_img_vsync     (Post_vs_o      	),   //  Processed Image data vsync valid signal
        // .post_img_href      (Post_de_o      	),   //  Processed Image data href vaild  signal
        .post_img_gray      (img_red1       	)    //  Processed Image Bit flag outout(1: Value, 0:inValid)
    );

    Laplacian_sharpen_top
    #(
        .IMG_HDISP  		(1280   			),
        .IMG_VDISP  		(720    			)
    )
    u_VIP_LSharpen_green
    (
        //  global clock
        .clk                (clk_pixel        	),    //  cmos video pixel clock
        .rst_n              (rst_n           	),    //  global reset

        //  Image data prepred to be processd
        .per_img_vsync      (post_img_vsync   	),    //  Prepared Image data vsync valid signal
        .per_img_href       (post_img_href    	),    //  Prepared Image data href vaild  signal
        .per_img_gray       (img_green          ),    //  Prepared Image brightness input

        //  Image data has been processd
        // .post_img_vsync     (               	),    //  Processed Image data vsync valid signal
        // .post_img_href      (               	),    //  Processed Image data href vaild  signal
        .post_img_gray      (img_green1       	)     //  Processed Image Bit flag outout(1: Value, 0:inValid)
    );

    Laplacian_sharpen_top
    #(
        .IMG_HDISP  		(1280   			),
        .IMG_VDISP  		(720    			)
    )
    u_VIP_LSharpen_blue
    (
        //  global clock
        .clk                (clk_pixel        	),   //  cmos video pixel clock
        .rst_n              (rst_n            	),   //  global reset

        //  Image data prepred to be processd
        .per_img_vsync      (post_img_vsync   	),   //  Prepared Image data vsync valid signal
        .per_img_href       (post_img_href    	),   //  Prepared Image data href vaild  signal
        .per_img_gray       (img_blue         	),   //  Prepared Image brightness input

        //  Image data has been processd
        // .post_img_vsync     (               	),   //  Processed Image data vsync valid signal
        // .post_img_href      (               	),   //  Processed Image data href vaild  signal
        .post_img_gray      (img_blue1       	)    //  Processed Image Bit flag outout(1: Value, 0:inValid)
    );

	wire 			w_rgb_vs_o1, w_rgb_hs_o1, w_rgb_de_o1;

	lag_module #(
    	.LAG1(6),
    	.LAG2(47),
    	.LAG3(47)
	) u_lag_module (
    	.clk(clk_pixel),
    	.rst_n(rst_n),
    	.in_signal1(w_rgb_vs_o),
    	.in_signal2(w_rgb_hs_o),
    	.in_signal3(w_rgb_de_o),
    	.out_signal1(w_rgb_vs_o1),
    	.out_signal2(w_rgb_hs_o1),
    	.out_signal3(w_rgb_de_o1)
	);


//-------------------------------------
//Digilent HDMI-TX IP Modified by CB elec.
 reg           [ 1:0]                 Post_hs_o;
 always@(posedge clk_pixel)begin
    Post_hs_o <= {Post_hs_o,w_rgb_hs_o};
 end

rgb2dvi u_rgb2dvi
(
	.TMDS_Clk_p		(hdmio_txc_p_o					), 	//	w_hdmio_txc),
	.TMDS_Clk_n		(hdmio_txc_n_o					),
	.TMDS_Data_p	(hdmio_txd_p_o					), 	//	w_hdmio_txd),
	.TMDS_Data_n 	(hdmio_txd_n_o					),

	.oe_i 			(1								), 			//	Always enable output
	.bitflip_i 		(4'b1111						), 		//	Reverse clock & data lanes.

	.aRst			(1'b0							),
	.aRst_n			(rst_n							),

	.PixelClk		(clk_pixel        				),//pixel clk = 74.25M
	.SerialClk		(clk_pixel_5x     				),//pixel clk *5 = 371.25M

	// .vid_pVSync		(w_rgb_vs_o						),
	// .vid_pHSync		(w_rgb_hs_o						), //Post_hs_o[1]
	// .vid_pVDE		(w_rgb_de_o						),
	.vid_pVSync		(w_rgb_vs_o1						),
	.vid_pHSync		(w_rgb_hs_o1						), //Post_hs_o[1]
	.vid_pVDE		(w_rgb_de_o1						),
	.vid_pData		({img_red1,img_green1,img_blue1})
	// .vid_pData		(w_rgb_data_o)
);



UDP_TOP UDP_TOP_U (
	.i_clk200m				 (w_pll200m_200m	),		//	P4
	.i_rst_n				 (rstn_i			), 		//	U1
	.i_pll_lock				 (w_pll200m_lock	),

    .i_clk_pixel             (clk_pixel     	),
    .i_rgb_de                (w_rgb_de_o1    	),
    .i_rgb_hs                (w_rgb_hs_o1    	),
    .i_rgb_vs                (w_rgb_vs_o1    	),
    .i_rgb_data_red          (img_red1			),
    .i_rgb_data_blue         (img_blue1			),
    .i_rgb_data_green        (img_green1		),
	//	Ethernet
	.eth_mdc_o				 (eth_mdc_o			), 	//	SIO6: V16
	.eth_mdio_io			 (eth_mdio_io		), 	//	SIO7: V17
	.eth_refclk_i			 (eth_refclk_i		), 	//	H21
	.eth_resetn_o			 (eth_resetn_o		), 	//	J20
	.eth_rxc_i				 (eth_rxc_i			), 	//	K21
	.eth_rxctl_i			 (eth_rxctl_i		), 	//	H23
	.eth_rxd_i				 (eth_rxd_i			), 	//	[0..3]M15, L15, J25, J26
	.eth_txc_o				 (eth_txc_o			), 	//	J24
	.eth_txctl_o			 (eth_txctl_o		), 	//	J21
	.eth_txd_o 				 (eth_txd_o 		)		//	[0..3]H22, H24, H26, G26
);


endmodule
