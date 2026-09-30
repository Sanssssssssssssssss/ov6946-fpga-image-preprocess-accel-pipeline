`timescale 1ns / 1ps

module fifo_master (
    input             wr_clk,         // д��ʱ�� (74.25 MHz)
    input             rd_clk,         // ��ȡʱ�� (148 MHz)
    input             rst_n,          // ��λ�źţ��͵�ƽ��Ч
    input [23:0]      wr_data,        // ����� 24 λ RGB ���ݣ�8 λ R, 8 λ G, 8 λ B��
    input             wr_en,          // д��ʹ���ź�
    output reg [7:0]  rd_data,        // 8 λ��ȡ������� (RGB �������)
    output reg        rd_valid,       // ������Ч�ź�
    output            fifo_empty      // FIFO �Ƿ�Ϊ��
);

    wire [7:0] fifo_r_data, fifo_g_data, fifo_b_data;
    wire fifo_r_empty, fifo_g_empty, fifo_b_empty;
    reg [1:0] rgb_state;              // ״̬��������������ȡ RGB

    // ��ɫͨ�� FIFO ʵ����
    FIFO_R fifo_r_inst (
        .rst(~rst_n),
        .wr_clk(wr_clk),
        .rd_clk(rd_clk),
        .din(wr_data[23:16]),        // R ͨ������
        .wr_en(wr_en),
        .rd_en((rgb_state == 2'b00) && !fifo_r_empty),
        .dout(fifo_r_data),
        .full(),                     // ��ѡ������δʹ�õĶ˿�
        .empty(fifo_r_empty)
    );

    // ��ɫͨ�� FIFO ʵ����
    FIFO_G fifo_g_inst (
        .rst(~rst_n),
        .wr_clk(wr_clk),
        .rd_clk(rd_clk),
        .din(wr_data[15:8]),         // G ͨ������
        .wr_en(wr_en),
        .rd_en((rgb_state == 2'b01) && !fifo_g_empty),
        .dout(fifo_g_data),
        .full(),                     // ��ѡ������δʹ�õĶ˿�
        .empty(fifo_g_empty)
    );

    // ��ɫͨ�� FIFO ʵ����
    FIFO_B fifo_b_inst (
        .rst(~rst_n),
        .wr_clk(wr_clk),
        .rd_clk(rd_clk),
        .din(wr_data[7:0]),          // B ͨ������
        .wr_en(wr_en),
        .rd_en((rgb_state == 2'b10) && !fifo_b_empty),
        .dout(fifo_b_data),
        .full(),                     // ��ѡ������δʹ�õĶ˿�
        .empty(fifo_b_empty)
    );

    // ��� FIFO �Ƿ�Ϊ�գ������һ FIFO Ϊ�գ��� fifo_empty Ϊ�ߣ�
    assign fifo_empty = fifo_r_empty || fifo_g_empty || fifo_b_empty;

    // ״̬������ RGB �������
    always @(posedge rd_clk or negedge rst_n) begin
        if (!rst_n) begin
            rd_data <= 8'b0;
            rd_valid <= 1'b0;
            rgb_state <= 2'b00;
        end else begin
            rd_valid <= 1'b0;  // Ĭ����Ч�ź�

            case (rgb_state)
                2'b00: begin
                    if (!fifo_r_empty) begin
                        rd_data <= fifo_r_data;
                        rd_valid <= 1'b1;
                        rgb_state <= 2'b01;
                    end
                end
                2'b01: begin
                    if (!fifo_g_empty) begin
                        rd_data <= fifo_g_data;
                        rd_valid <= 1'b1;
                        rgb_state <= 2'b10;
                    end
                end
                2'b10: begin
                    if (!fifo_b_empty) begin
                        rd_data <= fifo_b_data;
                        rd_valid <= 1'b1;
                        rgb_state <= 2'b00;
                    end
                end
            endcase
        end
    end
endmodule
