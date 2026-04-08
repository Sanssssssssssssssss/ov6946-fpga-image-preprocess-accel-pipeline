`timescale 1ns / 1ps

module lag_module #(
    parameter LAG1 = 1,  // Delay for signal 1
    parameter LAG2 = 36,  // Delay for signal 2
    parameter LAG3 = 36   // Delay for signal 3
)(
    input  wire        clk,         // System clock
    input  wire        rst_n,       // Active-low reset
    input  wire        in_signal1,  // Input signal 1
    input  wire        in_signal2,  // Input signal 2
    input  wire        in_signal3,  // Input signal 3
    output wire        out_signal1, // Delayed output signal 1
    output wire        out_signal2, // Delayed output signal 2
    output wire        out_signal3  // Delayed output signal 3
);


    reg [LAG1-1:0] shift_reg1;  // 移位寄存器，宽度为 LAG1
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            shift_reg1 <= {LAG1{1'b0}};
        else
            shift_reg1 <= {shift_reg1[LAG1-2:0], in_signal1}; // 移位操作
    end
    assign out_signal1 = shift_reg1[LAG1-1]; // 输出最老的位


    reg [LAG2-1:0] shift_reg2;  // 移位寄存器，宽度为 LAG2
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            shift_reg2 <= {LAG2{1'b0}};
        else
            shift_reg2 <= {shift_reg2[LAG2-2:0], in_signal2}; // 移位操作
    end
    assign out_signal2 = shift_reg2[LAG2-1]; // 输出最老的位


    reg [LAG3-1:0] shift_reg3;  // 移位寄存器，宽度为 LAG3
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            shift_reg3 <= {LAG3{1'b0}};
        else
            shift_reg3 <= {shift_reg3[LAG3-2:0], in_signal3}; // 移位操作
    end
    assign out_signal3 = shift_reg3[LAG3-1]; // 输出最老的位

endmodule
