`timescale 1ns / 1ps

// Static network endpoints and 802-byte payload configuration live here.
// Set the destination MAC/IP for the receiving host before programming a board.
module UDP_SEND_READ_top(
    input			Clk				,
    input			Rst_n			,

    input  			eth_send_Go		,
    output 			GMII_GTXC		,
    output [7 :0]	GMII_TXD		,
    output 			GMII_TXEN		,

    input 			GMII_RXC		,
    input  [7 :0]	GMII_RXD		,
    input 			GMII_RXDV		,

    output			ETH_Rst_n		,
    input  [7 :0]   i_fifo_rd_data	,
    output  		o_fifo_rdreq


);

assign 			ETH_Rst_n = 1;
reg TX_Go;
wire clk125M_o;
wire [15:0]rx_data_length;
wire one_pkt_done;

assign GMII_GTXC = Clk;



reg [23:0]delay_cnt;
always@(posedge Clk or negedge Rst_n)
begin
    if(!Rst_n)
        delay_cnt <= 24'd0;
    else if(delay_cnt >= 24'hfffffd)
        delay_cnt <= delay_cnt;
    else
        delay_cnt <= delay_cnt + 1'd1;
end
assign fifo_aclr = (delay_cnt >= 24'd100)?1'b0:1'b1;


UDP_Send UDP_Send(
    .Clk			(						),
    .GMII_GTXC		(GMII_GTXC				),
    .GMII_TXD		(GMII_TXD				),
    .GMII_TXEN		(GMII_TXEN				),
    .Rst_n			(Rst_n					),
    .Go				(eth_send_Go			),
    .Tx_Done		(						),
    .data_length	(16'd802				), //
    .des_ip			(32'hc0_a8_01_66		),
    .des_mac		(48'h04_d4_c4_72_85_6f  ), // 84_A9_3E_04_26_52
    .des_port		(16'd8080              	), //  C8_7F_54_A7_06_74
    .src_ip			(32'hc0_a8_01_02		), // 425  hF0_2F_74_B1_14_B1
    .src_mac		(48'h00_0a_35_01_fe_c0	),
    .src_port		(16'd8080				),
    .i_fifo_rd_data (i_fifo_rd_data			),
    .o_fifo_rdreq	(o_fifo_rdreq			)

);

// GMII_GTXC
// fifo_rdreq

  udp_gmii_rx udp_gmii_rx(
    .reset_n        (Rst_n               	),

    .gmii_rx_en     (1'b1                  	),

    .local_mac      (48'h00_0a_35_01_fe_c0 	),
    .local_ip       (32'hc0_a8_01_02       	),
    .local_port     (16'd8080              	),

    .fifo_full      (0             			),
    .fifo_wr        (			            ),
    .fifo_din       (			            ),
//    .clk125M_o      (clk125M_o             	),

    .exter_mac      (			            ),
    .exter_ip       (			            ),
    .exter_port     (			            ),
    .rx_data_length (rx_data_length        	),

    .one_pkt_done   (			          	),
    .pkt_error      (             			),
    .debug_cal_crc  (                      	),

    .gmii_rx_clk    (GMII_RXC           	),
    .gmii_rxdv      (GMII_RXDV             	),
    .gmii_rxd       (GMII_RXD              	)
  );



  //
    // reg [2:0]Go;

    // always@(posedge clk125M_o)
    // 	Go <= {Go[1:0],one_pkt_done};

    // always@(posedge clk125M_o)
    // 	TX_Go <= (|Go);

endmodule
