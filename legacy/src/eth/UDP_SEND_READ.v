`timescale 1ns / 1ps

module UDP_SEND_READ_top(
	input			Clk,
	input			Rst_n,

	input  			key_Start_n,
	output 			GMII_GTXC,
	output [7:0]	GMII_TXD,
	output 			GMII_TXEN,

	input 			GMII_RXC,
	input [7:0]		GMII_RXD,
	input 			GMII_RXDV,

	output			ETH_Rst_n
);

assign 			ETH_Rst_n = 1;
wire [7:0]		fifo_wrdata;
wire fifo_wrreq;
reg TX_Go;
wire clk125M_o;
wire [15:0]rx_data_length;
wire one_pkt_done;

assign GMII_GTXC = Clk;


//�ϵ��������fifo
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

wire fifo_aclr;
assign fifo_aclr = (delay_cnt >= 24'd100)?1'b0:1'b1;

wire 	[47:0] 	w_remote_mac;
wire 	[31:0] 	w_remote_ip;
wire 	[15:0] 	w_remote_port;

UDP_Send UDP_Send(
	.Clk			(						),
	.GMII_GTXC		(GMII_GTXC				),
	.GMII_TXD		(GMII_TXD				),
	.GMII_TXEN		(GMII_TXEN				),
	.Rst_n			(Rst_n					),
	.Go				(TX_Go					),
	.Tx_Done		(						),
	.data_length	(16'd402				), // �����޸�Ĭ����402������
	.des_ip			(32'hc0_a8_01_66		),
	.des_mac		(48'h00_e0_5a_00_20_f3  ),
	.des_port		(16'd8080              	),
	.src_ip			(32'hc0_a8_01_02		),
	.src_mac		(48'h00_0a_35_01_fe_c0	),
	.src_port		(16'd8080				),
	.wrclk			(clk125M_o				),
	.wrdata			(fifo_wrdata			),
	.wrreq			(fifo_wrreq				),
	.aclr			(fifo_aclr				),
	.wrusedw		(						)
);

  udp_gmii_rx udp_gmii_rx(
    .reset_n        (Rst_n               	),

    .gmii_rx_en     (1'b1                  	),

    .local_mac      (48'h00_0a_35_01_fe_c0 	),
    .local_ip       (32'hc0_a8_01_02       	),
    .local_port     (16'd8080              	),

    .fifo_full      (0             			),
    .fifo_wr        (			            ),
    .fifo_din       (			            ),
    .clk125M_o      (clk125M_o             	),

    .exter_mac      (w_remote_mac           ),
    .exter_ip       (w_remote_ip            ),
    .exter_port     (w_remote_port          ),
    .rx_data_length (rx_data_length        	),

    .one_pkt_done   (			          	),
    .pkt_error      (             			),
    .debug_cal_crc  (                      	),

    .gmii_rx_clk    (GMII_RXC           	),
    .gmii_rxdv      (GMII_RXDV             	),
    .gmii_rxd       (GMII_RXD              	)
  );



Imitation_Data_Set Imitation_Data_Set_u (
    .i_clk_125M      (Clk					),
    .i_Rst_n         (Rst_n					),
    .i_key_Start_n   (!key_Start_n			),
    .fifo_wrreq	     (fifo_wrreq			),
    .o_Imit_RGB_data (fifo_wrdata			),
	.fifo_wrt_done	 (one_pkt_done  		)
);


  /*
  ���ڷ��ͺͽ�����Ȼ����125MHzʱ�ӣ����ǽ���ʱ����PHYо
  Ƭ�ṩ��FPGA�ģ�����ʱ����FPGA�Լ�ͨ��PLL�����ģ�����
  ��ͬԴʱ�ӣ�Ϊ��ȷ��������ͬԴʱ�����м�ĵ������ź���
  ��ȷʵ��Ч���������ｫone_pkt_done��������������̫��
  ����ģ��.
  */
  //
	reg [2:0]Go;

	always@(posedge clk125M_o)
		Go <= {Go[1:0],one_pkt_done};

	always@(posedge clk125M_o)
		TX_Go <= (|Go);

endmodule
