module udp_gmii_rx(
    input              reset_n,

    input              gmii_rx_en,

  input     [47:0]   local_mac,
  input     [31:0]   local_ip,
  input     [15:0]   local_port,

  input              fifo_full,
  output reg         fifo_wr,
  output reg[7:0]    fifo_din,

    output reg[47:0]   exter_mac,
  output reg[31:0]   exter_ip,
    output reg[15:0]   exter_port,

    output reg[15:0]   rx_data_length,
  output reg         one_pkt_done,
  output reg         pkt_error,
  output    [31:0]   debug_cal_crc,

    input              gmii_rx_clk,
    input              gmii_rxdv,
  input     [7 :0]   gmii_rxd
);

parameter   ETH_type       = 16'h0800,
            IP_ver         = 4'h4,
            IP_hdr_len     = 4'h5,
            IP_tos         = 8'h00,
            IP_id          = 16'h0000,
            IP_rsv         = 1'b0,
            IP_df          = 1'b0,
            IP_mf          = 1'b0,
            IP_frag_offset = 13'h0000,
            IP_ttl         = 8'h40,
            IP_protocol    = 8'h11;

localparam  IDLE          = 9'b000000001,
            RX_PREAMBLE   = 9'b000000010,
            RX_ETH_HEADER = 9'b000000100,
            RX_IP_HEADER  = 9'b000001000,
            RX_UDP_HEADER = 9'b000010000,
            RX_DATA       = 9'b000100000,
            RX_DRP_DATA   = 9'b001000000,
            RX_CRC        = 9'b010000000,
            PKT_CHECK     = 9'b100000000;

reg  [7:0]  reg_gmii_rxd;
reg         reg_gmii_rxdv;
reg  [7:0]  rx_data_dly1;
reg  [7:0]  rx_data_dly2;
reg         rx_datav_dly1;
reg         rx_datav_dly2;
reg  [47:0] local_mac_reg;
reg  [31:0] local_ip_reg;
reg  [15:0] local_port_reg;
reg  [8:0]  curr_state;
reg  [8:0]  next_state;

reg         reg_fifo_full;

reg  [47:0] rx_dst_mac;
reg  [47:0] rx_src_mac;
reg  [15:0] rx_eth_type;
reg         eth_header_check_ok;

reg  [3:0]  rx_ip_ver;
reg  [3:0]  rx_ip_hdr_len;
reg  [7:0]  rx_ip_tos;
reg  [15:0] rx_total_len;
reg  [15:0] rx_ip_id;
reg         rx_ip_rsv;
reg         rx_ip_df;
reg         rx_ip_mf;
reg  [12:0] rx_ip_frag_offset;
reg  [7:0]  rx_ip_ttl;
reg  [7:0]  rx_ip_protocol;
reg  [15:0] rx_ip_check_sum;
reg  [31:0] rx_src_ip;
reg  [31:0] rx_dst_ip;

reg         ip_checksum_cal_en;
wire [15:0] cal_check_sum;
reg         ip_header_check_ok;

reg  [15:0] rx_src_port;
reg  [15:0] rx_dst_port;
reg  [15:0] rx_udp_length;
reg         udp_header_check_ok;

reg  [31:0] rx_crc_data;
reg         crc_set;
reg         crc_en;
reg  [7:0]  crc_data;
wire [31:0] cal_crc_result;

reg  [3:0]  cnt_preamble;
reg  [3:0]  cnt_eth_header;
reg  [4:0]  cnt_ip_header;
reg  [3:0]  cnt_udp_header;
reg  [15:0] cnt_data;
reg  [4:0]  cnt_drp_data;
reg  [1:0]  cnt_crc;

wire clk125M = gmii_rx_clk;

assign debug_cal_crc = cal_crc_result;

    //将本地MAC、IP、PORT寄存
    always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
  begin
    local_mac_reg  <= 48'h00_00_00_00_00_00;
    local_ip_reg   <= 32'h00_00_00_00;
    local_port_reg <= 16'h00_00;
  end
  else if(curr_state == IDLE)
  begin
    local_mac_reg  <= local_mac;
    local_ip_reg   <= local_ip;
    local_port_reg <= local_port;
  end

    //将以太网输入的接收信号寄存
    always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
  begin
    reg_gmii_rxd  <= 8'h00;
    reg_gmii_rxdv <= 1'b0;
  end
  else
  begin
    reg_gmii_rxd  <= gmii_rxd;
    reg_gmii_rxdv <= gmii_rxdv;
  end

  //将以太网输入的接收信号寄存后打拍
    always@(posedge clk125M)
  begin
    rx_data_dly1  <= reg_gmii_rxd;
    rx_data_dly2  <= rx_data_dly1;
    rx_datav_dly1 <= reg_gmii_rxdv;
    rx_datav_dly2 <= rx_datav_dly1;
  end

  //cnt_preamble
    always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
    cnt_preamble <= 4'd0;
  else if(curr_state == RX_PREAMBLE && rx_data_dly2 == 8'h55)
    cnt_preamble <= cnt_preamble + 1'b1;
  else
    cnt_preamble <= 4'd0;

  //cnt_eth_header
    always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
    cnt_eth_header <= 4'd0;
  else if(curr_state == RX_ETH_HEADER)
    cnt_eth_header <= cnt_eth_header + 1'b1;
  else
    cnt_eth_header <= 4'd0;

  //eth_header
    always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
  begin
    rx_dst_mac  <= 48'h00_00_00_00_00_00;
    rx_src_mac  <= 48'h00_00_00_00_00_00;
    rx_eth_type <= 16'h0000;
  end
  else if(curr_state == RX_ETH_HEADER)
  begin
    case(cnt_eth_header)
      4'd0 :rx_dst_mac[47:40] <= rx_data_dly2;
      4'd1 :rx_dst_mac[39:32] <= rx_data_dly2;
      4'd2 :rx_dst_mac[31:24] <= rx_data_dly2;
      4'd3 :rx_dst_mac[23:16] <= rx_data_dly2;
      4'd4 :rx_dst_mac[15:8]  <= rx_data_dly2;
      4'd5 :rx_dst_mac[7:0]   <= rx_data_dly2;

      4'd6 :rx_src_mac[47:40] <= rx_data_dly2;
      4'd7 :rx_src_mac[39:32] <= rx_data_dly2;
      4'd8 :rx_src_mac[31:24] <= rx_data_dly2;
      4'd9 :rx_src_mac[23:16] <= rx_data_dly2;
      4'd10:rx_src_mac[15:8]  <= rx_data_dly2;
      4'd11:rx_src_mac[7:0]   <= rx_data_dly2;

      4'd12:rx_eth_type[15:8]  <= rx_data_dly2;
      4'd13:rx_eth_type[7:0]   <= rx_data_dly2;
      default: ;
    endcase
  end
  else
  begin
    rx_dst_mac  <= rx_dst_mac;
    rx_src_mac  <= rx_src_mac;
    rx_eth_type <= rx_eth_type;
  end

    always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
    eth_header_check_ok <= 1'b0;
  else if(rx_eth_type == ETH_type && (rx_dst_mac == local_mac_reg || rx_dst_mac == 48'hFF_FF_FF_FF_FF_FF))
    eth_header_check_ok <= 1'b1;
  else
    eth_header_check_ok <= 1'b0;

  //cnt_ip_header
    always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
    cnt_ip_header <= 5'd0;
  else if(curr_state == RX_IP_HEADER)
    cnt_ip_header <= cnt_ip_header + 1'b1;
  else
    cnt_ip_header <= 5'd0;

  //ip_header
    always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
  begin
    {rx_ip_ver,rx_ip_hdr_len}     <= 8'h0;
    rx_ip_tos                     <= 8'h0;
    rx_total_len                  <= 16'h0;
    rx_ip_id                      <= 16'h0;
    {rx_ip_rsv,rx_ip_df,rx_ip_mf} <= 3'h0;
    rx_ip_frag_offset             <= 13'h0;
    rx_ip_ttl                     <= 8'h0;
    rx_ip_protocol                <= 8'h0;
    rx_ip_check_sum               <= 16'h0;
    rx_src_ip                     <= 32'h0;
    rx_dst_ip                     <= 32'h0;
  end
  else if(curr_state == RX_IP_HEADER)
  begin
    case(cnt_ip_header)
      5'd0:   {rx_ip_ver,rx_ip_hdr_len}                             <= rx_data_dly2;
      5'd1:   rx_ip_tos                                             <= rx_data_dly2;
      5'd2:   rx_total_len[15:8]                                    <= rx_data_dly2;
      5'd3:   rx_total_len[7:0]                                     <= rx_data_dly2;
      5'd4:   rx_ip_id[15:8]                                        <= rx_data_dly2;
      5'd5:   rx_ip_id[7:0]                                         <= rx_data_dly2;
      5'd6:   {rx_ip_rsv,rx_ip_df,rx_ip_mf,rx_ip_frag_offset[12:8]} <= rx_data_dly2;
      5'd7:   rx_ip_frag_offset[7:0]                                <= rx_data_dly2;
      5'd8:   rx_ip_ttl                                             <= rx_data_dly2;
      5'd9:   rx_ip_protocol                                        <= rx_data_dly2;
      5'd10:  rx_ip_check_sum[15:8]                                 <= rx_data_dly2;
      5'd11:  rx_ip_check_sum[7:0]                                  <= rx_data_dly2;
      5'd12:  rx_src_ip[31:24]                                      <= rx_data_dly2;
      5'd13:  rx_src_ip[23:16]                                      <= rx_data_dly2;
      5'd14:  rx_src_ip[15:8]                                       <= rx_data_dly2;
      5'd15:  rx_src_ip[7:0]                                        <= rx_data_dly2;
      5'd16:  rx_dst_ip[31:24]                                      <= rx_data_dly2;
      5'd17:  rx_dst_ip[23:16]                                      <= rx_data_dly2;
      5'd18:  rx_dst_ip[15:8]                                       <= rx_data_dly2;
      5'd19:  rx_dst_ip[7:0]                                        <= rx_data_dly2;
      default: ;
    endcase
  end

  //udp_header: 8byte
  //ip_header: 20byte
  //rx_data_length = rx_total_len - udp_header - ip_header;
  always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
    rx_data_length <= 16'd0;
  else if(curr_state == RX_IP_HEADER && cnt_ip_header == 5'd19)
    rx_data_length <= rx_total_len - 8'd20 - 8'd8;
  else
    rx_data_length <= rx_data_length;

  always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
    ip_checksum_cal_en <= 1'b0;
  else if(curr_state == RX_IP_HEADER && cnt_ip_header == 5'd19)
    ip_checksum_cal_en <= 1'b1;
  else
    ip_checksum_cal_en <= 1'b0;

  ip_checksum ip_checksum(
    .clk            (clk125M           ),
    .reset_n        (reset_n           ),

    .cal_en         (ip_checksum_cal_en),

    .IP_ver         (rx_ip_ver         ),
    .IP_hdr_len     (rx_ip_hdr_len     ),
    .IP_tos         (rx_ip_tos         ),
    .IP_total_len   (rx_total_len      ),
    .IP_id          (rx_ip_id          ),
    .IP_rsv         (rx_ip_rsv         ),
    .IP_df          (rx_ip_df          ),
    .IP_mf          (rx_ip_mf          ),
    .IP_frag_offset (rx_ip_frag_offset ),
    .IP_ttl         (rx_ip_ttl         ),
    .IP_protocol    (rx_ip_protocol    ),
    .src_ip         (rx_src_ip         ),
    .dst_ip         (rx_dst_ip         ),

    .checksum       (cal_check_sum      )
  );

    always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
    ip_header_check_ok <= 1'b0;
  else if({IP_ver,IP_hdr_len,cal_check_sum,local_ip_reg} ==  // 这里做一次检测效验码/目标ip是否都是Board的IP与MAC
          {rx_ip_ver,rx_ip_hdr_len,rx_ip_check_sum,rx_dst_ip})
    ip_header_check_ok <= 1'b1;
  else
    ip_header_check_ok <= 1'b0;


  //cnt_udp_header
    always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
    cnt_udp_header <= 4'd0;
  else if(curr_state == RX_UDP_HEADER)
    cnt_udp_header <= cnt_udp_header + 1'b1;
  else
    cnt_udp_header <= 4'd0;

    always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
  begin
    rx_src_port  <= 16'h0;
    rx_dst_port  <= 16'h0;
    rx_udp_length<= 16'h0;
  end
  else if(curr_state == RX_UDP_HEADER)
  begin
    case(cnt_udp_header)
      4'd0: rx_src_port[15:8]   <= rx_data_dly2;
      4'd1: rx_src_port[7:0]    <= rx_data_dly2;
      4'd2: rx_dst_port[15:8]   <= rx_data_dly2;
      4'd3: rx_dst_port[7:0]    <= rx_data_dly2;
      4'd4: rx_udp_length[15:8] <= rx_data_dly2;
      4'd5: rx_udp_length[7:0]  <= rx_data_dly2;
      default: ;
    endcase
  end

    always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
    udp_header_check_ok <= 1'b0;
  else if(rx_dst_port == local_port_reg)
    udp_header_check_ok <= 1'b1;
  else
    udp_header_check_ok <= 1'b0;

  //cnt_data
    always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
    cnt_data <= 16'd0;
  else if(curr_state == RX_DATA)
    cnt_data <= cnt_data + 1'b1;
  else
    cnt_data <= 16'd0;

  //cnt_drp_data
    always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
    cnt_drp_data <= 5'd0;
  else if(curr_state == RX_DRP_DATA)
    cnt_drp_data <= cnt_drp_data + 1'b1;
  else
    cnt_drp_data <= 5'd0;

  //cnt_crc
    always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
    cnt_crc <= 2'd0;
  else if(curr_state == RX_CRC)
    cnt_crc <= cnt_crc + 1'b1;
  else
    cnt_crc <= 2'd0;

  //rx_crc_data
    always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
    rx_crc_data <= 32'd0;
  else if(curr_state == RX_CRC)
  begin
    case(cnt_crc)
      2'd0:rx_crc_data[31:24] <= rx_data_dly2;
      2'd1:rx_crc_data[23:16] <= rx_data_dly2;
      2'd2:rx_crc_data[15:8]  <= rx_data_dly2;
      2'd3:rx_crc_data[7:0]   <= rx_data_dly2;
    endcase
  end

  //FSM 状态机
    always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
    curr_state <= IDLE;
  else
    curr_state <= next_state;

  always@(*)
  begin
    case(curr_state)
      IDLE:
        if(!rx_datav_dly2 && rx_datav_dly1)
          next_state = RX_PREAMBLE;
        else
          next_state = IDLE;

      RX_PREAMBLE:
        if(rx_data_dly2 == 8'hd5 && cnt_preamble > 4'd5)
          next_state = RX_ETH_HEADER;
        else if(cnt_preamble > 4'd7)
          next_state = IDLE;
        else
          next_state = RX_PREAMBLE;

      RX_ETH_HEADER:
        if(cnt_eth_header == 4'd13)
          next_state = RX_IP_HEADER;
        else
          next_state = RX_ETH_HEADER;

      RX_IP_HEADER:
        if(cnt_ip_header == 5'd2 && eth_header_check_ok == 1'b0)
          next_state = IDLE;
        else if(cnt_ip_header == 5'd19)
          next_state = RX_UDP_HEADER;
        else
          next_state = RX_IP_HEADER;

      RX_UDP_HEADER:
        if(cnt_udp_header == 4'd2 && ip_header_check_ok == 1'b0) // 如果校验不对 直接退出
          next_state = IDLE;
        else if(cnt_udp_header == 4'd7 && udp_header_check_ok == 1'b0)
          next_state = IDLE;
        else if(cnt_udp_header == 4'd7)
          next_state = RX_DATA;
        else
          next_state = RX_UDP_HEADER;

      RX_DATA:
        if((rx_data_length <5'd18 && cnt_data == rx_data_length - 1'b1))  //如果数据没有够18个就跳转RX_DRP_DATA
          next_state = RX_DRP_DATA;
        else if(cnt_data == rx_data_length - 1'b1)
          next_state = RX_CRC;
        else
          next_state = RX_DATA;

      RX_DRP_DATA:
        if(cnt_drp_data == 5'd17 - rx_data_length)
          next_state = RX_CRC;
        else
          next_state = RX_DRP_DATA;

      RX_CRC:
        if(cnt_crc == 2'd3)
          next_state = PKT_CHECK;
        else
          next_state = RX_CRC;

      PKT_CHECK:  // 数据包检查
        next_state = IDLE;

      default:next_state = IDLE;

    endcase
  end

  always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
    crc_set <= 1'b0;
  else if (curr_state == RX_PREAMBLE && cnt_preamble == 4'd1)
    crc_set <= 1'b1;
  else
    crc_set <= 1'b0;

  //crc_en
  always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
    crc_en <= 1'b0;
  else if(curr_state == IDLE)
    crc_en <= 1'b0;
  else if (curr_state == RX_ETH_HEADER && cnt_eth_header == 1'b0)
    crc_en <= 1'b1;
  else if(curr_state == RX_CRC && cnt_crc == 1'b0)
    crc_en <= 1'b0;
  else
    crc_en <= crc_en;

  //crc_data
  always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
    crc_data <= 8'd0;
  else
    crc_data <= rx_data_dly2;

  crc32_d8_rx crc32_d8_rx
  (
    .clk         (clk125M       ),
    .reset_n     (reset_n       ),

    .data        (crc_data      ),
    .set         (crc_set       ),
    .crc_en      (crc_en        ),
    .crc_result  (cal_crc_result)//latency=1
  );

  always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
    reg_fifo_full <= 1'b0;
  else if(curr_state == RX_DATA && fifo_full == 1'b1)
    reg_fifo_full <= 1'b1;
  else
    reg_fifo_full <= reg_fifo_full;

  //fifo write
  always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
  begin
    fifo_wr  <= 1'b0;
    fifo_din <= 8'h0;
  end
  else if(curr_state == RX_DATA)
  begin
    fifo_wr  <= 1'b1;
    fifo_din <= rx_data_dly2;
  end
  else
  begin
    fifo_wr  <= 1'b0;
    fifo_din <= 8'h0;
  end

  always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
  begin
      exter_mac  <= 48'h0;
    exter_ip   <= 32'h0;
    exter_port <= 16'h0;
  end
  else if(curr_state == PKT_CHECK)
  begin
      exter_mac  <= rx_src_mac;
    exter_ip   <= rx_src_ip;
    exter_port <= rx_src_port;
  end

  //done
  always@(posedge clk125M or negedge reset_n)
  if(!reset_n)
  begin
    one_pkt_done <= 1'b0;
    pkt_error    <= 1'b0;
  end
  else if(curr_state == PKT_CHECK)
  begin
    one_pkt_done <= 1'b1;
    if(cal_crc_result == rx_crc_data && reg_fifo_full == 1'b0)
      pkt_error  <= 1'b0;
    else
      pkt_error  <= 1'b1;
  end
  else
  begin
    one_pkt_done <= 1'b0;
    pkt_error    <= 1'b0;
  end

endmodule
