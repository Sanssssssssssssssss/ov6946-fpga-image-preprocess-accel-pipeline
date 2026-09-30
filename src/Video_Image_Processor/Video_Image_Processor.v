// One color channel. Line buffers/FIFO bridge capture and processing clocks.
// The top instantiates three identical channels and takes sync from red.
module Video_Image_Processor
#(
    parameter [10:0] C_SRC_IMG_WIDTH  = 11'd640    ,
    parameter [10:0] C_SRC_IMG_HEIGHT = 11'd480    ,
    parameter [10:0] C_DST_IMG_WIDTH  = 11'd1024   ,
    parameter [10:0] C_DST_IMG_HEIGHT = 11'd768    ,
    parameter [15:0] C_X_RATIO        = 16'd40960  ,                    //  floor(C_SRC_IMG_WIDTH/C_DST_IMG_WIDTH*2^16)
    parameter [15:0] C_Y_RATIO        = 16'd40960                       //  floor(C_SRC_IMG_HEIGHT/C_DST_IMG_HEIGHT*2^16)
)
(
    //  global clock
    input  wire                 clk_in1         ,                       //  cmos video pixel clock
    input  wire                 clk_in2         ,
    input  wire                 rst_n           ,                       //  global reset

    //  Image data prepred to be processd
    input  wire                 per_img_vsync   ,                       //  Prepared Image data vsync valid signal
    input  wire                 per_img_href    ,                       //  Prepared Image data href vaild  signal
    input  wire     [7:0]       per_img_gray    ,                       //  Prepared Image brightness data

    //  Image data has been processd
    output wire                 post_img_vsync  ,                       //  Processed Image data vsync valid signal
    output wire                 post_img_href   ,                       //  Processed Image data href vaild  signal
    output wire     [7:0]       post_img_gray                           //  Processed Image brightness data
);
//----------------------------------------------------------------------
bilinear_interpolation
#(
    .C_SRC_IMG_WIDTH    (C_SRC_IMG_WIDTH    ),
    .C_SRC_IMG_HEIGHT   (C_SRC_IMG_HEIGHT   ),
    .C_DST_IMG_WIDTH    (C_DST_IMG_WIDTH    ),
    .C_DST_IMG_HEIGHT   (C_DST_IMG_HEIGHT   ),
    .C_X_RATIO          (C_X_RATIO          ),                          //  floor(C_SRC_IMG_WIDTH/C_DST_IMG_WIDTH*2^16)
    .C_Y_RATIO          (C_Y_RATIO          )                           //  floor(C_SRC_IMG_HEIGHT/C_DST_IMG_HEIGHT*2^16)
)
u_bilinear_interpolation
(
    .clk_in1        (clk_in1        ),
    .clk_in2        (clk_in2        ),
    .rst_n          (rst_n          ),

    //  Image data prepared to be processed
    .per_img_vsync  (per_img_vsync  ),                                  //  Prepared Image data vsync valid signal
    .per_img_href   (per_img_href   ),                                  //  Prepared Image data href vaild  signal
    .per_img_gray   (per_img_gray   ),                                  //  Prepared Image brightness input

    //  Image data has been processed
    .post_img_vsync (post_img_vsync ),                                  //  processed Image data vsync valid signal
    .post_img_href  (post_img_href  ),                                  //  processed Image data href vaild  signal
    .post_img_gray  (post_img_gray  )                                   //  processed Image brightness output
);

endmodule
