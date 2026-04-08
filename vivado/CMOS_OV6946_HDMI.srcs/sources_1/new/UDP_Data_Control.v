`timescale 1ns / 1ps

module UDP_Data_Control (
    input wire clk,             // ʱ���ź�
    input wire rst_n,           // ��λ�źţ��͵�ƽ��Ч
    input wire [7:0] fifo_data, // �� fifo_master ��ȡ�� 8 λ����
    input wire fifo_valid,      // FIFO ������Ч�ź�
    output reg one_pkt_done,    // ���ݰ���������ź�
    output reg [7:0] wrdata,    // Ҫд�������
    output wire wrreq,          // д�����󣨸��� fifo_valid ���ƣ�
    output reg [15:0] data_length, // ��������ݳ���
    output reg aclr             // FIFO ����ź�
);

    reg aclr_triggered;          // ��־����ȷ���Ƿ��Ѿ����� aclr
    reg [15:0] data_counter;     // ����ͳ�����ݳ��ȵļ�����

    // �� FIFO ��Чʱ��ֱ����� wrreq д����
    assign wrreq = fifo_valid;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            one_pkt_done <= 1'b0;
            wrdata <= 8'h00;
            data_counter <= 16'd0;
            data_length <= 16'd0;
            aclr <= 1'b1;         // �ڸ�λʱ���� aclr
            aclr_triggered <= 1'b0; // ��� aclr ��δ����
        end else begin
            if (!aclr_triggered) begin
                aclr <= 1'b0;         // ����һ��ʱ�����ڽ� aclr �õ�
                aclr_triggered <= 1'b1; // ��� aclr �Ѿ�����
            end else begin
                // ά�� aclr Ϊ�͵�ƽ�����ٱ䶯
                if (fifo_valid) begin
                    wrdata <= fifo_data;           // �� FIFO ���ݸ�ֵ�� wrdata
                    data_counter <= data_counter + 1; // ���ݼ�������
                    one_pkt_done <= 1'b0;          // �����У�one_pkt_done ���ֵ͵�ƽ
                end else if (data_counter > 0) begin
                    one_pkt_done <= 1'b1;          // �� FIFO ���ݴ������ʱ������ one_pkt_done
                    data_length <= data_counter;   // ���� data_length
                    data_counter <= 0;             // ���ü�����
                end else begin
                    one_pkt_done <= 1'b0;          // û������ʱ������ one_pkt_done Ϊ��
                end
            end
        end
    end
endmodule
