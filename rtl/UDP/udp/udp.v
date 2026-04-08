module udp(
    input                   rst_n                  , //��λ�źţ��͵�ƽ��Ч
    //cam_pixel
    input                   clk_200m               ,
    input                   PixelClk               ,
    input                   init_over              ,
    input                   ROW_ST                 ,
    output                  tx_start_en            ,
    input                   clk_adc                ,
    input                   adc_data_valid         ,
    input  [31:0]           ov6946_RGB888          ,
    //GMII interface
    input                   gmii_rx_clk            ,
    input                   gmii_rx_dv             ,
    input  [7 :0]           gmii_rxd               ,
    input                   gmii_tx_clk            ,
    output                  gmii_tx_en             ,
    output [7 :0]           gmii_txd               ,
    //user interface
    output                  rec_pkt_done           ,
    output                  rec_en                 ,
    output [ 7:0]           rec_data               ,
    input  [47:0]           des_mac                ,
    input  [31:0]           des_ip                 ,
    output                  tx_done
);

//parameter define
//������MAC��ַ 00-11-22-33-44-55
parameter BOARD_MAC = 48'h00_11_22_33_44_55;
//������IP��ַ 192.168.��1.10
parameter BOARD_IP  = {8'd192,8'd168,8'd1,8'd10};
//Ŀ��MAC��ַ ff_ff_ff_ff_ff_ff
parameter  DES_MAC  = 48'hff_ff_ff_ff_ff_ff;
//Ŀ��IP��ַ 192.168.1.102
parameter  DES_IP   = {8'd192,8'd168,8'd1,8'd102};

//wire define
wire  [7 :0]            tx_data             ;
wire                    eth_fifo_rd_en      ;
wire                    crc_en              ; //CRC��ʼУ��ʹ��
wire                    crc_clr             ; //CRC���ݸ�λ�ź�
wire  [7 :0]            crc_d8              ; //�����У��8λ����
wire  [10:0]            wr_data_count       ;
wire  [12:0]            rd_data_count       ;

wire  [31:0]            crc_data            ; //CRCУ������
wire  [31:0]            crc_next            ; //CRC�´�У���������

//*****************************************************
//**                    main code
//*****************************************************

assign crc_d8      =    gmii_txd            ;  //? Ϊʲô�����crcd8 ��Ҫһ��wire���͸���أ� �����߼�������
//��̫������ģ��
udp_rx
#(
    .BOARD_MAC          (BOARD_MAC          ),  //������
    .BOARD_IP           (BOARD_IP           )
)
   u_udp_rx(
    .clk                (gmii_rx_clk        ),
    .rst_n              (rst_n              ),
    .gmii_rx_dv         (gmii_rx_dv         ),
    .gmii_rxd           (gmii_rxd           ),
    .rec_pkt_done       (rec_pkt_done       ),
    .rec_en             (rec_en             ),
    .rec_data           (rec_data           )
);

//��̫������ģ��
udp_tx #(
    .BOARD_MAC          (BOARD_MAC          ),  //��������
    .BOARD_IP           (BOARD_IP           ),
    .DES_MAC            (DES_MAC            ),
    .DES_IP             (DES_IP             )
)
u_udp_tx
(
    .clk                (gmii_tx_clk        ),
    .rst_n              (rst_n              ),
    .tx_start_en        (tx_start_en        ),
    .eth_fifo_rd_en     (eth_fifo_rd_en     ),
    .adc_data           (tx_data            ),
    .des_mac            (des_mac            ),
    .des_ip             (des_ip             ),
    .crc_data           (crc_data           ),
    .crc_next           (crc_next[31:24]    ),
    .tx_done            (tx_done            ),
    .gmii_tx_en         (gmii_tx_en         ),
    .gmii_txd           (gmii_txd           ),
    .crc_en             (crc_en             ),
    .crc_clr            (crc_clr            )
);

eth_udp_fifo eth_udp_fifo_d0 (
    .rst                (!rst_n             ), // input wire rst
    .wr_clk             (clk_adc            ), // input wire wr_clk
    .rd_clk             (gmii_tx_clk        ), // input wire rd_clk
    .din                (ov6946_RGB888      ), // input wire [31 : 0] din
    .wr_en              (adc_data_valid     ), // input wire wr_en
    .rd_en              (eth_fifo_rd_en     ), // input wire rd_en
    .dout               (tx_data            ), // output wire [7 : 0] dout
    .full               (full               ), // output wire full
    .empty              (empty              ), // output wire empty
    .wr_data_count      (wr_data_count      ), // output wire [10 : 0] wr_data_count
    .rd_data_count      (rd_data_count      )
);

//��̫������CRCУ��ģ��
crc32_d8   u_crc32_d8(
    .clk                (gmii_tx_clk        ),
    .rst_n              (rst_n              ),
    .data               (crc_d8             ),
    .crc_en             (crc_en             ),
    .crc_clr            (crc_clr            ),
    .crc_data           (crc_data           ),
    .crc_next           (crc_next           )
);

udp_tx_ctrl udp_tx_ctrl (
    .clk_200m           (clk_200m           ),
    .clk_cam            (clk_cam            ),
    .rst_n              (rst_n              ),
    .ROW_ST             (ROW_ST             ),
    .tx_start_en        (tx_start_en        )
);


endmodule
