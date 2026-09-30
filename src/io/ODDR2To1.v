`timescale 1ns / 1ps
module ODDR2To1 (
    input 			clk_i,
    input 			rst_i,

    input 			data_p_i,
    input 			data_n_i,
    output 			data_o
);
   ODDR #(
      .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE"
      .INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC"
   ) ODDR_inst (
      .Q(data_o),   // 1-bit DDR output
      .C(clk_i),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D1(data_p_i), // 1-bit data input (positive edge)
      .D2(data_n_i), // 1-bit data input (negative edge)
      .R(rst_i),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );

endmodule
