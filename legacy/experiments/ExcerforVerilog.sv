`timescale 1ns / 1ps

module ExcerforVerilog(
    input logic in0,enable0,
    input logic in1,enable1,
    output wire out
    );
    assign out = (enable0)?in0:1'hz;
    assign out = (enable1)?in1:1'hz;
endmodule
