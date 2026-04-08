module eth_udp_top(
    input                           clk_200m                ,  //ϵͳʱ��
    input                           clk_125m                ,
    input                           sys_rst_n               ,  //ϵͳ��λ�źţ��͵�ƽ��Ч
    // OV6946_DATA
    input                           PixelClk                ,
    input                           vid_pVSync		        ,
    input                           vid_pHSync		        ,
    input                           vid_pVDE		        ,
    input                           vid_pData		        ,
    input  [31:0]                   ov6946_RGB888           ,
    // eth_udp
    input                           eth_rxc                 ,  //RGMII��������ʱ��
    input                           eth_rx_ctl              ,  //RGMII����������Ч�ź�
    input  [3 :0]                   eth_rxd                 ,  //RGMII��������
    output                          eth_txc                 ,  //RGMII��������ʱ��
    output                          eth_tx_ctl              ,  //RGMII���������Ч�ź�
    output [3 :0]                   eth_txd                 ,  //RGMII�������
    output                          eth_rst_n                   //��̫��оƬ��λ�źţ��͵�ƽ��Ч
);

parameter  BOARD_MAC    = 48'h00_11_22_33_44_55;
parameter  BOARD_IP     = {8'd192, 8'd168, 8'd1, 8'd10};
parameter  DES_MAC      = 48'hff_ff_ff_ff_ff_ff;
parameter  DES_IP       = {8'd192, 8'd168, 8'd1, 8'd102};
parameter  IDELAY_VALUE = 0;

wire                                gmii_rx_clk		        ; //GMII����ʱ��
wire                                gmii_rx_dv 		        ; //GMII����������Ч�ź�
wire  [7 :0]                        gmii_rxd                ; //GMII��������
//wire                                gmii_tx_clk		        ; //GMII����ʱ��
wire                                gmii_tx_en 		        ; //GMII��������ʹ���ź�
wire  [7 :0]                        gmii_txd   		        ; //GMII��������

wire                                arp_gmii_tx_en	        ; //ARP GMII���������Ч�ź�
wire  [7 :0]                        arp_gmii_txd  	        ; //ARP GMII�������
wire                                arp_rx_done   	        ; //ARP��������ź�
wire                                arp_rx_type   	        ; //ARP�������� 0:����  1:Ӧ��
wire  [47:0]                        src_mac       	        ; //���յ�Ŀ��MAC��ַ
wire  [31:0]                        src_ip        	        ; //���յ�Ŀ��IP��ַ
wire                                arp_tx_en     	        ; //ARP����ʹ���ź�
wire                                arp_tx_type   	        ; //ARP�������� 0:����  1:Ӧ��
wire  [47:0]                        des_mac       	        ; //���͵�Ŀ��MAC��ַ
wire  [31:0]                        des_ip        	        ; //���͵�Ŀ��IP��ַ
wire                                arp_tx_done   	        ; //ARP��������ź�

wire                                udp_gmii_tx_en	        ; //UDP GMII���������Ч�ź�
wire  [7 :0]                        udp_gmii_txd  	        ; //UDP GMII�������
wire                                rec_pkt_done  	        ; //UDP�������ݽ�������ź�
wire                                udp_rec_en    	        ; //UDP���յ�����ʹ���ź�
wire  [7 :0]                        udp_rec_data  	        ; //UDP���յ�����

wire                                udp_tx_done   	        ; //UDP��������ź�
wire                                udp_tx_req    	        ; //UDP�����������ź�
wire  [7 :0]                        udp_tx_data   	        ; //UDP����������
wire                                tx_start_en   	        ; //UDP���Ϳ�ʼʹ���ź�

wire  [7 :0]	                    rec_data			    ;
wire		                        rec_en			        ;
wire		                        tx_req			        ;
wire  [7 :0]	                    tx_data	    	        ;
//*****************************************************
//**                    main code
//*****************************************************

assign des_mac          =           48'h00_E0_5A_00_20_F3   ;
assign des_ip           =           {8'd192, 8'd168, 8'd1, 8'd102} ;
assign eth_rst_n        =           1'd1                    ;

//GMII < - > RGMII�ӿ�
gmii_to_rgmii #(
    .IDELAY_VALUE                   (IDELAY_VALUE           )
)
u_gmii_to_rgmii
(
    .idelay_clk                     (clk_200m               ),
    .clk_125m                       (clk_125m               ),
    .gmii_rx_clk                    (gmii_rx_clk            ),
    .gmii_rx_dv                     (gmii_rx_dv             ),
    .gmii_rxd                       (gmii_rxd               ),
//    .gmii_tx_clk                    (gmii_tx_clk            ),
    .gmii_tx_en                     (gmii_tx_en             ),
    .gmii_txd                       (gmii_txd               ),

    .rgmii_rxc                      (eth_rxc                ),
    .rgmii_rx_ctl                   (eth_rx_ctl             ),
    .rgmii_rxd                      (eth_rxd                ),
    .rgmii_txc                      (eth_txc                ),
    .rgmii_tx_ctl                   (eth_tx_ctl             ),
    .rgmii_txd                      (eth_txd                )
);

//ARPͨ��
arp #(
    .BOARD_MAC                      (BOARD_MAC              ),      //��������
    .BOARD_IP                       (BOARD_IP               ),
    .DES_MAC                        (DES_MAC                ),
    .DES_IP                         (DES_IP                 )
)
u_arp
(
    .rst_n                          (sys_rst_n  	        ),

    .gmii_rx_clk                    (gmii_rx_clk	        ),
    .gmii_rx_dv                     (gmii_rx_dv 	        ),
    .gmii_rxd                       (gmii_rxd   	        ),
    .gmii_tx_clk                    (clk_125m     	        ),
    .gmii_tx_en                     (arp_gmii_tx_en         ),
    .gmii_txd                       (arp_gmii_txd           ),

    .arp_rx_done                    (arp_rx_done	        ),
    .arp_rx_type                    (arp_rx_type	        ),
    .src_mac                        (src_mac    	        ),
    .src_ip                         (src_ip     	        ),
    .arp_tx_en                      (arp_tx_en  	        ),
    .arp_tx_type                    (arp_tx_type	        ),
    .des_mac                        (des_mac    	        ),
    .des_ip                         (des_ip     	        ),
    .tx_done                        (arp_tx_done	        )
);

//UDPͨ��
udp #(
    .BOARD_MAC                      (BOARD_MAC              ),      //��������
    .BOARD_IP                       (BOARD_IP               ),
    .DES_MAC                        (DES_MAC                ),
    .DES_IP                         (DES_IP                 )
)
u_udp
(
    .rst_n                          (sys_rst_n              ),
    .clk_200m                       (clk_200m               ),
    .PixelClk                       (PixelClk               ),
    .init_over                      (                       ),
    .ROW_ST                         (                       ),
    .tx_start_en                    (                       ),
    .clk_adc                        (                       ),
    .adc_data_valid                 (                       ),
    .ov6946_RGB888                  (ov6946_RGB888          ),
    .gmii_rx_clk                    (gmii_rx_clk            ),
    .gmii_rx_dv                     (gmii_rx_dv             ),
    .gmii_rxd                       (gmii_rxd               ),
    .gmii_tx_clk                    (clk_125m               ),
    .gmii_tx_en                     (udp_gmii_tx_en         ),
    .gmii_txd                       (udp_gmii_txd           ),

    .rec_pkt_done                   (rec_pkt_done           ),
    .rec_en                         (udp_rec_en             ),
    .rec_data                       (udp_rec_data           ),
    .des_mac                        (des_mac                ),
    .des_ip                         (des_ip                 ),
    .tx_done                        (udp_tx_done            )
);

//��̫������ģ��
eth_ctrl u_eth_ctrl(
    .clk            	            (gmii_rx_clk	        ),
    .rst_n          	            (sys_rst_n		        ),

    .arp_rx_done    	            (arp_rx_done   	        ),
    .arp_rx_type    	            (arp_rx_type   	        ),
    .arp_tx_en      	            (arp_tx_en     	        ),
    .arp_tx_type    	            (arp_tx_type   	        ),
    .arp_tx_done    	            (arp_tx_done   	        ),
    .arp_gmii_tx_en 	            (arp_gmii_tx_en	        ),
    .arp_gmii_txd   	            (arp_gmii_txd  	        ),

    .udp_tx_start_en	            (tx_start_en            ),
    .udp_tx_done    	            (udp_tx_done   	        ),
    .udp_gmii_tx_en 	            (udp_gmii_tx_en	        ),
    .udp_gmii_txd   	            (udp_gmii_txd  	        ),

    .gmii_tx_en     	            (gmii_tx_en    	        ),
    .gmii_txd       	            (gmii_txd      	        )
);



endmodule
