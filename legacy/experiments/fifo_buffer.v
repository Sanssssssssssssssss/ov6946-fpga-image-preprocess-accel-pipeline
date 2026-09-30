`timescale 1ns / 1ps

module fifo_buffer (
    input             wr_clk,          // д��ʱ���ź�
    input             rd_clk,          // ��ȡʱ���ź�
    input             rst_n,           // ��λ�źţ��͵�ƽ��Ч
    input [7:0]       wrdata,          // д������
    input             wr_en,           // д��ʹ��
    output reg [23:0] buffer_out,      // ����������ݣ�24λ��
    output reg        data_valid       // ������Ч�ź�
);

    reg [7:0] fifo [2:0];              // 3x8 λ�� FIFO �����������ڴ洢 3 ���ֽ�
    reg [1:0] wr_ptr = 0;              // дָ��
    reg [1:0] data_count = 0;          // ���ݼ�����
    reg buffer_ready = 0;              // ������׼���ñ�־ (дʱ����)

    // ͬ���źţ����ڿ�ʱ����� wr_clk �� rd_clk
    reg buffer_ready_sync = 0;         // ������׼���ñ�־ (��ʱ����)

    // д���߼� (���� wr_clk)
    always @(posedge wr_clk or negedge rst_n) begin
        if (!rst_n) begin
            wr_ptr <= 0;
            data_count <= 0;
            buffer_ready <= 0;
        end else if (wr_en) begin
            fifo[wr_ptr] <= wrdata;    // �� wrdata д�� FIFO
            wr_ptr <= wr_ptr + 1;
            data_count <= data_count + 1;

            if (data_count == 2) begin  // �� FIFO �� 3 �ֽ�ʱ�����û�����׼����
                buffer_ready <= 1;
                wr_ptr <= 0;            // ����дָ��
                data_count <= 0;        // ��ռ�����
            end else begin
                buffer_ready <= 0;      // ֻ���� FIFO δ��ʱ���ֵ�
            end
        end
    end

    // �� buffer_ready �ź�ͬ���� rd_clk ʱ����
    always @(posedge rd_clk or negedge rst_n) begin
        if (!rst_n) begin
            buffer_ready_sync <= 0;
        end else begin
            buffer_ready_sync <= buffer_ready;  // ͬ�� buffer_ready �ź�
        end
    end

    // ��ȡ�߼� (���� rd_clk)
    always @(posedge rd_clk or negedge rst_n) begin
        if (!rst_n) begin
            buffer_out <= 24'h0;
            data_valid <= 0;
        end else if (buffer_ready_sync) begin
            buffer_out <= {fifo[2], fifo[1], fifo[0]};  // �� 3 ���ֽ�ƴ�ӳ� 24 λ����
            data_valid <= 1;            // ������Ч�ź�����һ��ʱ������
        end else begin
            data_valid <= 0;
        end
    end
endmodule
