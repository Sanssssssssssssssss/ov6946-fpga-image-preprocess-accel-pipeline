`timescale 1ns / 1ps

module udp_gmii_tx(
    input           Rst_n,

    output          GMII_GTXC,
    output  [3:0]   RGMII_TXD,
    output          RGMII_TXCTL,
    output  [7:0]   LED_TX,  // ���ӵ�LED���

    input   [7:0]   GMII_RXD,
    input           GMII_RXDV,

    input           eth_rxc_i,   // ������eth_rxc_i����
    input           eth_refclk_i, // ������eth_refclk_i����

    output          ETH_Rst_n
);
    // Internal reset signal
    reg r_eth_rstn;
    always @(posedge eth_refclk_i or negedge Rst_n) begin
        if (~Rst_n)
            r_eth_rstn <= 1'b0;
        else
            r_eth_rstn <= 1'b1;
    end
    wire eth_rst = ~r_eth_rstn;  // ��λ�źŷ�ת

    // Set ETH_Rst_n based on internal reset signal
    assign ETH_Rst_n = r_eth_rstn;

    // Use eth_refclk_i as the GMII transmit clock
    wire Clk = eth_refclk_i;
    assign GMII_GTXC = Clk;

    // Internal signals
    wire [47:0] remote_mac;
    wire [31:0] remote_ip;
    wire [15:0] remote_port;
    wire [15:0] data_length;
    wire        one_pkt_done;
    wire [7:0]  gmii_tx_data_out;

    reg TX_Go;
    wire fifo_wrreq;
    wire [7:0] fifo_wrdata;
    wire [7:0] GMII_TXD;
    wire GMII_TXEN;

    // Clock generation for 148MHz using eth_rxc_i (125MHz)
    wire clk148M;
    BUFR clk148m (.I(eth_rxc_i), .O(clk148M), .CE(1'b1), .CLR(1'b0));

    // Using GMII_RXC (125MHz) as the main clock for the module
    wire GMII_RXC = clk148M;

    // Reset delay for clearing FIFO at startup
    reg [23:0] delay_cnt;
    always @(posedge GMII_RXC or negedge r_eth_rstn) begin
        if (!r_eth_rstn)
            delay_cnt <= 24'd0;
        else if (delay_cnt >= 24'hFFFFFD)
            delay_cnt <= delay_cnt;
        else
            delay_cnt <= delay_cnt + 1;
    end

    wire fifo_aclr = (delay_cnt >= 24'd100) ? 1'b0 : 1'b1;

    // Instance of udp_gmii_transmitter
    udp_gmii_transmitter udp_gmii_transmitter_inst (
        .reset_n      (r_eth_rstn),
        .gmii_tx_en   (GMII_RXDV),
        .gmii_txd     (GMII_RXD),
        .gmii_rx_clk  (GMII_RXC),

        .remote_mac   (remote_mac),
        .remote_ip    (remote_ip),
        .remote_port  (remote_port),
        .data_length  (data_length),
        .one_pkt_done (one_pkt_done),
        .gmii_tx_data_out (gmii_tx_data_out) // New output for transmit data
    );

    // Instance of UDP_Sender with eth_refclk_i as Clk input
    UDP_Sender UDP_Sender_inst (
        .Clk          (Clk), // Updated to use the wire Clk
        .GMII_GTXC    (GMII_GTXC),
        .GMII_TXD     (GMII_TXD),
        .GMII_TXEN    (GMII_TXEN),
        .Rst_n        (r_eth_rstn),
        .Go           (TX_Go),
        .Tx_Done      (),
        .data_length  (data_length),
        .des_ip       (remote_ip),
        .des_mac      (remote_mac),
        .des_port     (remote_port),
        .src_ip       (32'hC0_A8_00_02), // 192.168.0.2
        .src_mac      (48'hC8_A3_62_2B_75_E6), // MAC: C8-A3-62-2B-75-E6
        .src_port     (16'd5000), // �˿ڣ�5000
        .wrclk        (GMII_RXC),
        .wrdata       (gmii_tx_data_out), // Updated to use data from udp_gmii_transmitter
        .wrreq        (fifo_wrreq),
        .aclr         (fifo_aclr),
        .wrusedw      ()
    );

    // Generate TX_Go signal to start transmission
    reg [2:0] Go;
    always @(posedge GMII_RXC) begin
        Go <= {Go[1:0], one_pkt_done};
    end

    always @(posedge GMII_RXC) begin
        TX_Go <= |Go;
    end

    // Add RGMII output using ODDR2To1
    ODDR2To1 eth_txc (.clk_i(GMII_GTXC), .rst_i(eth_rst), .data_p_i(1'b1), .data_n_i(1'b0), .data_o(RGMII_TXCTL));
    ODDR2To1 eth_txd0 (.clk_i(GMII_GTXC), .rst_i(eth_rst), .data_p_i(GMII_TXD[0]), .data_n_i(GMII_TXD[4]), .data_o(RGMII_TXD[0]));
    ODDR2To1 eth_txd1 (.clk_i(GMII_GTXC), .rst_i(eth_rst), .data_p_i(GMII_TXD[1]), .data_n_i(GMII_TXD[5]), .data_o(RGMII_TXD[1]));
    ODDR2To1 eth_txd2 (.clk_i(GMII_GTXC), .rst_i(eth_rst), .data_p_i(GMII_TXD[2]), .data_n_i(GMII_TXD[6]), .data_o(RGMII_TXD[2]));
    ODDR2To1 eth_txd3 (.clk_i(GMII_GTXC), .rst_i(eth_rst), .data_p_i(GMII_TXD[3]), .data_n_i(GMII_TXD[7]), .data_o(RGMII_TXD[3]));

    // LED control logic
    reg [7:0] led_status;
    always @(posedge GMII_RXC or negedge r_eth_rstn) begin
        if (!r_eth_rstn)
            led_status <= 8'h00;
        else begin
            led_status[0] <= GMII_TXEN;
            led_status[1] <= TX_Go;
            led_status[2] <= one_pkt_done;
            led_status[3] <= fifo_aclr;
            led_status[7:4] <= 4'b0000;
        end
    end
    assign LED_TX = led_status;

endmodule
