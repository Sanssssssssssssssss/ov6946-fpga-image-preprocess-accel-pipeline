module PixelData2Eth (
    input                   i_pixel_clk             ,
    input                   i_rst_n                 ,
    input                   i_rgb_de                ,
    input                   i_rgb_hs                ,
    input                   i_rgb_vs                ,
    input  [7 :0]           i_rgb_data_red          ,
    input  [7 :0]           i_rgb_data_blue         ,
    input  [7 :0]           i_rgb_data_green        ,

    //eth
    input                   i_eth_txc               ,

    input                   i_eth_rd_data_req       ,
    input  [7 :0]           i_fifo_rd_data          ,
    output [7 :0]           o_eth_send_data         ,
    output reg              o_eth_send_en

);

localparam 	SKIP_ROWS 	= 2,
			SKIP_COLS 	= 2,
            TOTAL_ROWS 	= 720,
			TOTAL_COLS 	= 1280;

reg         r_rgb_vs_d0;
reg         r_rgb_vs_d1;


wire        w_reg_vs_pose;
wire        w_reg_vs_nege;

assign w_reg_vs_pose =  r_rgb_vs_d0 && !r_rgb_vs_d1;
assign w_reg_vs_nege = !r_rgb_vs_d0 &&  r_rgb_vs_d1;
always @(posedge i_pixel_clk or negedge i_rst_n) begin
    if(!i_rst_n) begin
        r_rgb_vs_d0 <= 0;
        r_rgb_vs_d1 <= 0;
    end
    else begin
        r_rgb_vs_d0 <= i_rgb_vs;
        r_rgb_vs_d1 <= r_rgb_vs_d0;
    end
end

reg         r_frame_sta;
reg         r_frame_end;

always@(posedge i_pixel_clk or negedge i_rst_n)begin
    if (!i_rst_n)
        r_frame_sta <= 0;
    else if(w_reg_vs_pose)
        r_frame_sta <= 1;
    else
        r_frame_sta <= 0;
end

always@(posedge i_pixel_clk or negedge i_rst_n)begin
    if (!i_rst_n)
        r_frame_end <= 0;
    else if(w_reg_vs_nege)
        r_frame_end <= 1;
    else
        r_frame_end <= 0;
end


// Read the valid part of the pixel data
reg 	[11:0] 	rc_w = 0, rc_h = 0;
reg 	[1 :0]  r_vs_i = 0, r_hs_i = 0, r_de_i = 0;


// 这里的fifo_wr_en并不是传
wire 	w_rgb_data_wr_en = (rc_w >= 440 + SKIP_COLS) && (rc_w < TOTAL_COLS - SKIP_COLS - 440) && (rc_h >= SKIP_ROWS + 160) && (rc_h < TOTAL_ROWS - SKIP_ROWS - 160);
wire    w_line_seq_num_en = (rc_w == 439 + SKIP_COLS) && (rc_h >= SKIP_ROWS + 159) && (rc_h < TOTAL_ROWS - SKIP_ROWS - 155) ;
wire    w_frame_start_symbol = (rc_w >= 440 + SKIP_COLS) && (rc_w < TOTAL_COLS - SKIP_COLS - 440) && (rc_h == SKIP_ROWS + 159);
wire    w_frame_end_symbol   = (rc_w >= 440 + SKIP_COLS) && (rc_w < TOTAL_COLS - SKIP_COLS - 440) && (rc_h == SKIP_ROWS + 561);

wire    w_fifo_wr_en = w_rgb_data_wr_en || w_line_seq_num_en || w_frame_end_symbol || w_frame_start_symbol;
always @(posedge i_pixel_clk) begin
    r_vs_i <= {r_vs_i, i_rgb_vs};
    r_hs_i <= {r_hs_i, i_rgb_hs};
    r_de_i <= {r_de_i, i_rgb_de};

    //	On HS_R clear all counters. On DE_F increment h counter. On DE increment w counter.
    //	It's required that DE be stable throughout a line.
    if(r_vs_i == 2'b01)
        rc_h <= 0;
    else if(r_de_i == 2'b10)
        rc_h <= rc_h + 1;
    else begin
    end
    //	Count on DE.
    if(~i_rgb_de)
        rc_w <= 0;
    else
        rc_w <= rc_w + 1;
end

wire                w_fifo_full;
wire                w_fifo_empty;
wire [15:0]         w_rgb565_data;  // 数据压缩为rgb565进行传输
assign w_rgb565_data = {i_rgb_data_red[7:3],i_rgb_data_blue[7:2],i_rgb_data_green[7:3]};

reg  [15:0]         r_fifo_wr_data ;

reg  [15:0]         r_line_seq_num;

always @(posedge i_pixel_clk or negedge i_rst_n) begin
    if (!i_rst_n)
        r_fifo_wr_data <= 0;
    else if(w_line_seq_num_en)
        r_fifo_wr_data <= rc_h - 12'd160;  // 把行号写进去
    else if(w_line_seq_num_en)
        r_fifo_wr_data <= w_rgb565_data;
    else if(w_frame_start_symbol)
        r_fifo_wr_data <= 16'hAA_AA;
    else if(w_frame_end_symbol)
        r_fifo_wr_data <= 16'hBB_BB;
    else
        r_fifo_wr_data <= r_fifo_wr_data;
end

rgb2eth rgb2eth_u (
    .rst          (!i_rst_n             ),  // input wire rst
    .wr_clk       (i_pixel_clk          ),  // input wire wr_clk
    .rd_clk       (i_eth_txc            ),  // input wire rd_clk
    .din          (r_fifo_wr_data       ),  // input wire [15 : 0] din 这里是写入RGB565的数据
    .wr_en        (w_fifo_wr_en         ),  // input wire wr_en
    .rd_en        (i_eth_rd_data_req    ),  // input wire rd_en
    .dout         (o_eth_send_data      ),  // output wire [7 : 0] dout
    .full         (w_fifo_full          ),  // output wire full
    .empty        (w_fifo_empty         )   // output wire empty
);


// always @(posedge i_pixel_clk or negedge i_rst_n) begin
//     if(i_rst_n)

//     else if()

//     else

// end


endmodule
