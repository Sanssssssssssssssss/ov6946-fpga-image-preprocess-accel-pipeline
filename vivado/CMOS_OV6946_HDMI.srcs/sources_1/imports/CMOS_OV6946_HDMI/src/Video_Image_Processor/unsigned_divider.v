module unsigned_divider
#(
    parameter C_DIVIDEND_WIDTH = 32 ,
    parameter C_DIVISOR_WIDTH  = 16
)
(
    input  wire                         clk         ,
    input  wire                         rst_n       ,

    input  wire [C_DIVIDEND_WIDTH-1:0]  dividend    ,
    input  wire [C_DIVISOR_WIDTH-1 :0]  divisor     ,
    input  wire                         din_valid   ,

    output wire [C_DIVIDEND_WIDTH-1:0]  merchant    ,
    output wire [C_DIVISOR_WIDTH-1 :0]  remainder   ,
    output wire                         dout_valid
);
//----------------------------------------------------------------------
reg     [C_DIVIDEND_WIDTH-1:0]  dividend_tmp    [0:C_DIVIDEND_WIDTH];
reg     [C_DIVISOR_WIDTH-1 :0]  divisor_tmp     [0:C_DIVIDEND_WIDTH];
reg     [C_DIVIDEND_WIDTH-1:0]  merchant_tmp    [0:C_DIVIDEND_WIDTH];
reg     [C_DIVISOR_WIDTH-1 :0]  remainder_tmp   [0:C_DIVIDEND_WIDTH];
reg                             data_valid_tmp  [0:C_DIVIDEND_WIDTH];

always @(posedge clk)
begin
    dividend_tmp[0]  <= dividend;
    divisor_tmp[0]   <= divisor;
    merchant_tmp[0]  <= {C_DIVIDEND_WIDTH{1'b0}};
    remainder_tmp[0] <= {C_DIVIDEND_WIDTH{1'b0}};
end

always @(posedge clk)
begin
    if(!rst_n)
        data_valid_tmp[0] <= 1'b0;
    else
        data_valid_tmp[0] <= din_valid;
end

genvar                          i;

generate
    for(i = 0;i < C_DIVIDEND_WIDTH;i = i+1)
    begin : div_steps
        always @(posedge clk)
        begin
            dividend_tmp[i+1] <= {dividend_tmp[i][C_DIVIDEND_WIDTH-2:0],1'b0};
            divisor_tmp[i+1]  <= divisor_tmp[i];
            if({remainder_tmp[i],dividend_tmp[i][C_DIVIDEND_WIDTH-1]} >= divisor_tmp[i])
            begin
                remainder_tmp[i+1] <= {remainder_tmp[i],dividend_tmp[i][C_DIVIDEND_WIDTH-1]} - divisor_tmp[i];
                merchant_tmp[i+1]  <= {merchant_tmp[i][C_DIVIDEND_WIDTH-2:0],1'b1};
            end
            else
            begin
                remainder_tmp[i+1] <= {remainder_tmp[i],dividend_tmp[i][C_DIVIDEND_WIDTH-1]};
                merchant_tmp[i+1]  <= {merchant_tmp[i][C_DIVIDEND_WIDTH-2:0],1'b0};
            end
        end

        always @(posedge clk)
        begin
            if(!rst_n)
                data_valid_tmp[i+1] <= 1'b0;
            else
                data_valid_tmp[i+1] <= data_valid_tmp[i];
        end
    end
endgenerate

assign merchant   = merchant_tmp[C_DIVIDEND_WIDTH];
assign remainder  = remainder_tmp[C_DIVIDEND_WIDTH];
assign dout_valid = data_valid_tmp[C_DIVIDEND_WIDTH];

endmodule
