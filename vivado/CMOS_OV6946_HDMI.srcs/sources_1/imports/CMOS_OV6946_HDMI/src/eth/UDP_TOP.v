`timescale 1ns / 1ps

module UDP_TOP (

	input 			i_clk200m				,   //	P4
	input 			i_rst_n					,   //	U1
	input  			i_pll_lock				,
	// pixel_data
    input           i_clk_pixel             ,
    input           i_rgb_de                ,
    input           i_rgb_hs                ,
    input           i_rgb_vs                ,
    input  [7 :0]   i_rgb_data_red          ,
    input  [7 :0]   i_rgb_data_blue         ,
    input  [7 :0]   i_rgb_data_green        ,
	//	Ethernet
	output 			eth_mdc_o				, 	//	SIO6: V16
	inout 			eth_mdio_io				, 	//	SIO7: V17

	input 			eth_refclk_i			, 	//	H21
	output 			eth_resetn_o			, 	//	J20

	input 			eth_rxc_i				, 	//	K21
	input 			eth_rxctl_i				, 	//	H23
	input 	[3:0] 	eth_rxd_i				, 	//	[0..3]M15, L15, J25, J26

	output 			eth_txc_o				, 	//	J24
	output 			eth_txctl_o				, 	//	J21
	output 	[3:0] 	eth_txd_o 					//	[0..3]H22, H24, H26, G26

);



//////////////////////////////////////////////////////////////////////////////////
//	Clock Control. Input is 25MHz. USB uses 48MHz. DDR uses 100MHz/200MHz/400MHz/400M90.
//	To cascade to 74.25MHz/148.5MHz/371.25MHz/742.5MHz, generate 27MHz firstly.
//////////////////////////////////////////////////////////////////////////////////
//	25MHz -> 200MHz DDR Reference Clock

reg 			r_rstn200m_200m = 0;
always @(posedge i_clk200m)
	r_rstn200m_200m <= i_pll_lock;
assign w_rst200m_200m = ~r_rstn200m_200m;

assign eth_resetn_o = i_rst_n;

reg 			r_eth_rstn = 0;
always @(posedge eth_refclk_i or negedge i_rst_n) begin
	if(~i_rst_n)
		r_eth_rstn <= 0;
	else
		r_eth_rstn <= 1;
end

wire 			w_eth_txc = eth_refclk_i;
wire 			w_eth_rstn = r_eth_rstn;
wire 			w_eth_rst = ~r_eth_rstn;




//	TXC will use eth_refclk_i. The PHY is configured to use TXDLY & RXDLY. Output of same edge.
wire 	[7:0] 	w_gmii_txd;
wire 			w_gmii_txen;
ODDR2To1 eth_txc (.clk_i(w_eth_txc), .rst_i(w_eth_rst), .data_p_i(1'b1), .data_n_i(1'b0), .data_o(eth_txc_o));
ODDR2To1 eth_txd0 (.clk_i(w_eth_txc), .rst_i(w_eth_rst), .data_p_i(w_gmii_txd[0]), .data_n_i(w_gmii_txd[4]), .data_o(eth_txd_o[0]));
ODDR2To1 eth_txd1 (.clk_i(w_eth_txc), .rst_i(w_eth_rst), .data_p_i(w_gmii_txd[1]), .data_n_i(w_gmii_txd[5]), .data_o(eth_txd_o[1]));
ODDR2To1 eth_txd2 (.clk_i(w_eth_txc), .rst_i(w_eth_rst), .data_p_i(w_gmii_txd[2]), .data_n_i(w_gmii_txd[6]), .data_o(eth_txd_o[2]));
ODDR2To1 eth_txd3 (.clk_i(w_eth_txc), .rst_i(w_eth_rst), .data_p_i(w_gmii_txd[3]), .data_n_i(w_gmii_txd[7]), .data_o(eth_txd_o[3]));
ODDR2To1 eth_txctl (.clk_i(w_eth_txc), .rst_i(w_eth_rst), .data_p_i(w_gmii_txen), .data_n_i(w_gmii_txen), .data_o(eth_txctl_o));	//	TXER = 0. Copy TXEN.



//	RXC will use eth_rxc_i. Use IOCLK / RCLK to guarantee correct operation. This requires RX data path to be within a single bank.
wire 			w_eth_rxc_ioclk;
wire 			w_eth_rxc;

BUFR clk148m (.I(eth_rxc_i), .O(w_eth_rxc), .CE(1'b1), .CLR(0));
BUFIO clk371m (.I(eth_rxc_i), .O(w_eth_rxc_ioclk));

reg 			r_eth_rx_rstn = 0;
always @(posedge w_eth_rxc or negedge i_rst_n) begin
	if(~i_rst_n)
		r_eth_rx_rstn <= 0;
	else
		r_eth_rx_rstn <= 1;
end
wire 			w_eth_rx_rstn = r_eth_rx_rstn;
wire 			w_eth_rx_rst = ~r_eth_rx_rstn;



wire 	[7:0] 	w_gmii_rxd;
wire 			w_gmii_rxdv;
wire           w_IDELAYCTRL_RDY;
IDELAYCTRL idelay_eth_rx (
	.RDY	(w_IDELAYCTRL_RDY	),       // 1-bit output: Ready output
	.REFCLK	(i_clk200m			),       // 1-bit input: Reference clock input
	.RST	(w_rst200m_200m		)        // 1-bit input: Active high reset input
);
IDDRDly #(.IDELAY_TAP(10)) eth_rxctl (.iclk_i(w_eth_rxc_ioclk), .clk_i(w_eth_rxc), .rst_i(w_eth_rx_rst), .data_i(eth_rxctl_i ), .data_p_o(w_gmii_rxdv), .data_n_o());
IDDRDly #(.IDELAY_TAP(10)) eth_rxd0  (.iclk_i(w_eth_rxc_ioclk), .clk_i(w_eth_rxc), .rst_i(w_eth_rx_rst), .data_i(eth_rxd_i[0]), .data_p_o(w_gmii_rxd[0]), .data_n_o(w_gmii_rxd[4]));
IDDRDly #(.IDELAY_TAP(10)) eth_rxd1  (.iclk_i(w_eth_rxc_ioclk), .clk_i(w_eth_rxc), .rst_i(w_eth_rx_rst), .data_i(eth_rxd_i[1]), .data_p_o(w_gmii_rxd[1]), .data_n_o(w_gmii_rxd[5]));
IDDRDly #(.IDELAY_TAP(10)) eth_rxd2  (.iclk_i(w_eth_rxc_ioclk), .clk_i(w_eth_rxc), .rst_i(w_eth_rx_rst), .data_i(eth_rxd_i[2]), .data_p_o(w_gmii_rxd[2]), .data_n_o(w_gmii_rxd[6]));
IDDRDly #(.IDELAY_TAP(10)) eth_rxd3  (.iclk_i(w_eth_rxc_ioclk), .clk_i(w_eth_rxc), .rst_i(w_eth_rx_rst), .data_i(eth_rxd_i[3]), .data_p_o(w_gmii_rxd[3]), .data_n_o(w_gmii_rxd[7]));

wire  w_eth_send_Go;
wire  GMII_GTXC;

wire  [7 :0]  	w_fifo_rd_data;
wire  			w_fifo_rd_en	;
UDP_SEND_READ_top UDP_SEND_READ_top_U (
	.Clk			(w_eth_txc		),
	.Rst_n			(w_eth_rstn		),
	.eth_send_Go	(w_eth_send_Go	),  // start transmission

	.GMII_GTXC		(GMII_GTXC		),
	.GMII_TXD		(w_gmii_txd		),
	.GMII_TXEN		(w_gmii_txen	),

	.GMII_RXC		(w_eth_rxc		),
	.GMII_RXD		(w_gmii_rxd		),
	.GMII_RXDV		(w_gmii_rxdv	),

	.ETH_Rst_n		(				),
	.i_fifo_rd_data	(w_fifo_rd_data	),
	.o_fifo_rdreq	(w_fifo_rd_en	)
);

//rgb_data2eth

PixelData2Eth PixelData2Eth (
    .i_pixel_clk             (i_clk_pixel		),
    .i_rst_n                 (i_rst_n			),
    .i_rgb_de                (i_rgb_de			),
    .i_rgb_hs                (i_rgb_hs			),
    .i_rgb_vs                (i_rgb_vs			),
    .i_rgb_data_red          (i_rgb_data_red  	),
    .i_rgb_data_blue         (i_rgb_data_blue 	),
    .i_rgb_data_green        (i_rgb_data_green	),
    //eth
    .i_clk_rd_fifo	         (GMII_GTXC			),  // FIFO clock
    .i_eth_rd_data_en        (w_fifo_rd_en		),  // FIFO read enable
    .o_fifo_eth_data         (w_fifo_rd_data	),	// FIFO read data?
    .o_eth_send_Go           (w_eth_send_Go		)	// start send flag
);


endmodule
