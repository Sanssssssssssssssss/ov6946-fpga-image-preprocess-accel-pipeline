// Select a display window, prepend row/frame words, then cross to the TX clock
// through the 16-bit-write / 8-bit-read rgb2eth FIFO. Window constants and the
// UDP payload length in UDP_SEND_READ.v must be tuned together.
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
    input                   i_clk_rd_fifo           ,
    input                   i_eth_rd_data_en        ,
    output [7 :0]           o_fifo_eth_data         ,
    output                  o_eth_send_Go

);

localparam 	SKIP_ROWS 	= 2,
            SKIP_COLS 	= 2,
            TOTAL_ROWS 	= 720,
            TOTAL_COLS 	= 1280;

// Read the valid part of the pixel data
reg 	[10:0] 	rc_w = 0, rc_h = 0;
reg 	[1 :0]  r_vs_i = 0, r_hs_i = 0, r_de_i = 0;

reg                 r_rgb_data_wr_en_d0;
reg  [15:0]         r_rgb565;

always @(posedge i_pixel_clk) begin
    r_rgb565 <= {i_rgb_data_red[7:3],i_rgb_data_green[7:2],i_rgb_data_blue[7:3]};
end

wire 	w_rgb_data_wr_en     = (rc_w >= 11'd474 + SKIP_COLS) && (rc_w < 11'd896) && (rc_h >= SKIP_ROWS + 11'd160) && (rc_h <= SKIP_ROWS + 11'd559);
wire    w_line_seq_num_en    = (rc_w == 11'd470 + SKIP_COLS) && (rc_h >= SKIP_ROWS + 11'd169) && (rc_h <= SKIP_ROWS + 11'd560) ;
wire    w_frame_start_symbol = (rc_w >= 11'd474 + SKIP_COLS) && (rc_w < 11'd896) && (rc_h == SKIP_ROWS + 11'd159);
wire    w_frame_end_symbol   = (rc_w >= 11'd474 + SKIP_COLS) && (rc_w < 11'd896) && (rc_h == SKIP_ROWS + 11'd560);

wire    w_fifo_reset         = (rc_w >= 11'd460 + SKIP_COLS) && (rc_w < 11'd470) && (rc_h >= SKIP_ROWS + 11'd159) && (rc_h <= SKIP_ROWS + 11'd560) ;
wire    w_fifo_wr_en ;
assign  w_fifo_wr_en = r_rgb_data_wr_en_d0 || w_line_seq_num_en || w_frame_end_symbol || w_frame_start_symbol;
assign  o_eth_send_Go = (rc_w >= 886 + SKIP_COLS) && (rc_w <= 900 + SKIP_COLS)&& (rc_h >= SKIP_ROWS + 159) && (rc_h <= SKIP_ROWS + 560) ;

always @(posedge i_pixel_clk) begin
    r_rgb_data_wr_en_d0 <= w_rgb_data_wr_en;
end

reg     r_fifo_wr_en_dly;   // Write data here need to delay one clock cycle delay one clock cycle don't give reset or it will cause substability.
always @(posedge i_pixel_clk ) begin
        r_fifo_wr_en_dly <= w_fifo_wr_en;
end
always @(posedge i_pixel_clk) begin
    r_vs_i <= {r_vs_i, i_rgb_vs};
    r_hs_i <= {r_hs_i, i_rgb_hs};
    r_de_i <= {r_de_i, i_rgb_de};
end


always @(posedge i_pixel_clk) begin
    if(r_vs_i == 2'b01)
        rc_h <= 0;
    else if(r_de_i == 2'b10)
        rc_h <= rc_h + 1;
    else begin
        rc_h <= rc_h;
    end
end

always @(posedge i_pixel_clk) begin
    if(~i_rgb_de)
        rc_w <= 0;
    else
        rc_w <= rc_w + 1;
end

reg  [15:0]         r_fifo_wr_data ;
reg  [15:0]         r_line_seq_num;


always @(posedge i_pixel_clk) begin
    if(w_line_seq_num_en)
        r_fifo_wr_data <= {5'b00000,rc_h};  // Put the line numbers in.
    else if(w_frame_start_symbol)
        r_fifo_wr_data <= 16'hAA_AA;
    else if(w_frame_end_symbol)
        r_fifo_wr_data <= 16'hBB_BB;
    else if(r_rgb_data_wr_en_d0)
        r_fifo_wr_data <= r_rgb565; // Compression for RGB565 transmission
    else
        r_fifo_wr_data <= 0;
end

reg                 r_fifo_reset;
wire                w_fifo_full ;
wire                w_fifo_empty;
rgb2eth rgb2eth_u (
    .rst          (r_fifo_reset         ),  // input wire rst
    .wr_clk       (i_pixel_clk          ),  // input wire wr_clk
    .rd_clk       (i_clk_rd_fifo        ),  // input wire rd_clk
    .din          (r_fifo_wr_data       ),  // input wire [15 : 0] din
    .wr_en        (r_fifo_wr_en_dly     ),  // input wire wr_en
    .rd_en        (i_eth_rd_data_en     ),  // input wire rd_en
    .dout         (o_fifo_eth_data      ),  // output wire [7 : 0] dout
    .full         (w_fifo_full          ),  // output wire full
    .empty        (w_fifo_empty         )   // output wire empty
);

always @(posedge i_pixel_clk) begin
    if(w_fifo_reset)
        r_fifo_reset <= 1;
    else
        r_fifo_reset <= 0;
end
endmodule
