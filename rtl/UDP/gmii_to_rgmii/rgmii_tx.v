module rgmii_tx(
    //GMII���Ͷ˿�
    input              gmii_tx_clk , //GMII����ʱ��
    input              gmii_tx_en  , //GMII���������Ч�ź�
    input       [7:0]  gmii_txd    , //GMII�������

    //RGMII���Ͷ˿�
    output             rgmii_txc   , //RGMII��������ʱ��
    output             rgmii_tx_ctl, //RGMII���������Ч�ź�
    output      [3:0]  rgmii_txd     //RGMII�������
    );

//*****************************************************
//**                    main code
//*****************************************************

assign rgmii_txc = gmii_tx_clk;

//���˫�ز����Ĵ��� (rgmii_tx_ctl)
ODDR #(
    .DDR_CLK_EDGE  ("SAME_EDGE"),  // "OPPOSITE_EDGE" or "SAME_EDGE"
    .INIT          (1'b0),         // Initial value of Q: 1'b0 or 1'b1
    .SRTYPE        ("SYNC")        // Set/Reset type: "SYNC" or "ASYNC"
) ODDR_inst (
    .Q             (rgmii_tx_ctl), // 1-bit DDR output
    .C             (gmii_tx_clk),  // 1-bit clock input
    .CE            (1'b1),         // 1-bit clock enable input
    .D1            (gmii_tx_en),   // 1-bit data input (positive edge)
    .D2            (gmii_tx_en),   // 1-bit data input (negative edge)
    .R             (1'b0),         // 1-bit reset
    .S             (1'b0)          // 1-bit set
);

genvar i;
generate for (i=0; i<4; i=i+1)
    begin : txdata_bus
        //���˫�ز����Ĵ��� (rgmii_txd)
        ODDR #(
            .DDR_CLK_EDGE  ("SAME_EDGE"),  // "OPPOSITE_EDGE" or "SAME_EDGE"
            .INIT          (1'b0),         // Initial value of Q: 1'b0 or 1'b1
            .SRTYPE        ("SYNC")        // Set/Reset type: "SYNC" or "ASYNC"
        ) ODDR_inst (
            .Q             (rgmii_txd[i]), // 1-bit DDR output
            .C             (gmii_tx_clk),  // 1-bit clock input
            .CE            (1'b1),         // 1-bit clock enable input
            .D1            (gmii_txd[i]),  // 1-bit data input (positive edge)
            .D2            (gmii_txd[4+i]),// 1-bit data input (negative edge)
            .R             (1'b0),         // 1-bit reset
            .S             (1'b0)          // 1-bit set
        );
    end
endgenerate

endmodule
