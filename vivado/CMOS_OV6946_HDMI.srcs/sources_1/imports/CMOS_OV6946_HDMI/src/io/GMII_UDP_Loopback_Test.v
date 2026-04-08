`timescale 1ns / 1ps

module GMII_UDP_Loopback_Test(
    Clk,
    Rst_n,

    GMII_GTXC,
    GMII_TXD,
    GMII_TXEN,

    GMII_RXC,
    GMII_RXD,
    GMII_RXDV,

    ETH_Rst_n,

    fifo_din_out,
    fifo_wr_out,

    // ILA signals
    TX_Go_ILA,
    wrdata_ILA,
    wrreq_ILA,

    // Continuous_Send_Control inputs
    one_pkt_done,
    wrdata,
    wrreq,
    aclr
);
    input Clk;
    input Rst_n;

    output GMII_GTXC;
    output [7:0] GMII_TXD;
    output GMII_TXEN;

    input GMII_RXC;
    input [7:0] GMII_RXD;
    input GMII_RXDV;

    output ETH_Rst_n;

    output [7:0] fifo_din_out;
    output fifo_wr_out;

    // ILA signals
    output TX_Go_ILA;
    output [7:0] wrdata_ILA;
    output wrreq_ILA;

    // Continuous_Send_Control inputs
    input wire one_pkt_done;
    input wire [7:0] wrdata;
    input wire wrreq;
    input wire aclr;

    assign ETH_Rst_n = 1;

    // ԭʼ����е��źű��ֲ���
    wire [7:0] fifo_wrdata;
    wire fifo_wrreq;

    // ���Ϳ����ź�
    reg TX_Go;

    // ��̫��ʱ���ź�
    assign GMII_GTXC = Clk;

    // ���ֽ��ղ����߼�����
    wire [47:0] w_remote_mac;
    wire [31:0] w_remote_ip;
    wire [15:0] w_remote_port;

    // UDP ����ģ��ʵ����
    UDP_Send UDP_Send(
        .Clk(),
        .GMII_GTXC(GMII_GTXC),
        .GMII_TXD(GMII_TXD),
        .GMII_TXEN(GMII_TXEN),
        .Rst_n(Rst_n),
        .Go(TX_Go),              // ʹ�� TX_Go �źŴ������ģ��
        .Tx_Done(),              // ʹ�� one_pkt_done
        .data_length(16'd1200),     // ���ݰ�����
        .des_ip(w_remote_ip),
        .des_mac(w_remote_mac),
        .des_port(w_remote_port),
        .src_ip(32'hc0_a8_00_09),
        .src_mac(48'h00_0a_35_01_fe_c0),
        .src_port(16'd5000),
        .wrclk(GMII_RXC),
        .wrdata(wrdata),          // ʹ�� wrdata
        .wrreq(wrreq),            // ʹ�� wrreq
        .aclr(aclr),              // ʹ�� aclr
        .wrusedw()
    );

    // ���� UDP ����ģ��ʵ�������ֲ���
    udp_gmii_rx udp_gmii_rx(
        .reset_n(Rst_n),
        .gmii_rx_en(1'b1),
        .local_mac(48'h00_0a_35_01_fe_c0),
        .local_ip(32'hc0_a8_00_09),
        .local_port(16'd5000),
        .fifo_full(),
        .fifo_wr(),      // ���ֽ���ģ��� FIFO д�����
        .fifo_din(fifo_wrdata),    // ���ֽ���ģ�������
        .clk125M_o(clk125M_o),
        .exter_mac(w_remote_mac),
        .exter_ip(w_remote_ip),
        .exter_port(w_remote_port),
        .rx_data_length(rx_data_length),
        .one_pkt_done(), // ʹ�� one_pkt_done
        .pkt_error(),
        .debug_cal_crc(),
        .gmii_rx_clk(GMII_RXC),
        .gmii_rxdv(GMII_RXDV),
        .gmii_rxd(GMII_RXD)
    );

    // �� fifo_wrdata �� fifo_wrreq ��Ϊ�˿����
    assign fifo_din_out = fifo_wrdata;
    assign fifo_wr_out  = fifo_wrreq;

    // ����Ҫ�۲���źŽӳ��� ILA
    assign TX_Go_ILA = TX_Go;
    assign wrdata_ILA = wrdata;
    assign wrreq_ILA = wrreq;

    reg [2:0] Go;

    always @(posedge GMII_RXC)
        Go <= {Go[1:0], one_pkt_done};

    always @(posedge GMII_RXC)
        TX_Go <= (|Go);

endmodule
