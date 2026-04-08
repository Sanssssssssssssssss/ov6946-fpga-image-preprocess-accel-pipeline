module udp_tx_ctrl (
    input                       clk_200m        ,
    input                       clk_cam         ,
    input                       rst_n           ,
    input                       ROW_ST          ,
    output reg                  tx_start_en
);
parameter       P_WATI_ROW_POSE = 4'd0          ,
                P_ROW_ST_CNT    = 4'd1          ;

reg                             r_ROW_ST_d0     ;
reg                             r_ROW_ST_d1     ;
reg [3 :0]                      r_current       ;
reg [7 :0]                      r_cnt           ;
wire                            w_ROW_ST_pose   ;


assign w_ROW_ST_pose = r_ROW_ST_d0 && !r_ROW_ST_d1;

always @(posedge clk_200m or negedge rst_n) begin
    if (rst_n == 0) begin
        r_ROW_ST_d0 <= 0;
        r_ROW_ST_d1 <= 0;
    end
    else begin
        r_ROW_ST_d0 <= ROW_ST;
        r_ROW_ST_d1 <= r_ROW_ST_d0;
    end
end

always @(posedge clk_200m or negedge rst_n) begin
    if (rst_n == 0 || tx_start_en == 1)
        r_current <= P_WATI_ROW_POSE;
    else if (w_ROW_ST_pose)
        r_current <= P_ROW_ST_CNT;
    else
        r_current <= r_current;
end

always @(posedge clk_cam or negedge rst_n) begin
    if (rst_n == 0)
        r_cnt <= 0;
    else if (r_current == P_ROW_ST_CNT)
        r_cnt <= r_cnt + 8'd1;
    else if (r_current == P_WATI_ROW_POSE)
        r_cnt <= 0;
    else
        r_cnt <= r_cnt;
end

always @(posedge clk_cam or negedge rst_n) begin
    if (rst_n == 0 || r_current == P_WATI_ROW_POSE)
        tx_start_en <= 0;
    else if (r_cnt == 8'd170)
        tx_start_en <= 1;
    else
        tx_start_en <= 0;
end

endmodule
