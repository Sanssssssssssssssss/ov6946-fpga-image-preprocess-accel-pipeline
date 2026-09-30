`timescale 1ns / 1ps

module IDDRDly #(
    parameter 	IDELAY_TAP 	= 10		//	Binary delay tap. Assume IOPAD->IBUF->BUFG delay is 2ns, IOPAD->IBUF delay is 1ns. Add additional 1ns for data. For A7 the tap is 78ps. Set to 10 by default.
)(
    input 			iclk_i,	//	ICLK. Shall be feed by IOCLK to remove data skew.
    input 			clk_i,
    input 			rst_i, 	//	Must raise rst_i to reset ISERDES state. Async.

    input 			data_i,	//	IOB Input
    output 			data_p_o,
    output 			data_n_o
);

    //	Add delay for data
    wire			w_data_i_d;

   IDELAYE2 #(
      .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
      .DELAY_SRC("IDATAIN"),           // Delay input (IDATAIN, DATAIN)
      .HIGH_PERFORMANCE_MODE("FALSE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
      .IDELAY_TYPE("FIXED"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
      .IDELAY_VALUE(IDELAY_TAP),                // Input delay tap setting (0-31)
      .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
      .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
      .SIGNAL_PATTERN("DATA")          // DATA, CLOCK input signal
   )
   IDELAYE2_inst (
      .CNTVALUEOUT(), // 5-bit output: Counter value output
      .DATAOUT(w_data_i_d),         // 1-bit output: Delayed data output
      .C(),                     // 1-bit input: Clock input
      .CE(0),                   // 1-bit input: Active high enable increment/decrement input
      .CINVCTRL(),       // 1-bit input: Dynamic clock inversion input
      .CNTVALUEIN(),   // 5-bit input: Counter value input
      .DATAIN(),           // 1-bit input: Internal delay data input
      .IDATAIN(data_i),         // 1-bit input: Data input from the I/O
      .INC(),                 // 1-bit input: Increment / Decrement tap delay input
      .LD(),                   // 1-bit input: Load IDELAY_VALUE input
      .LDPIPEEN(),       // 1-bit input: Enable PIPELINE register to load data input
      .REGRST(rst_i)            // 1-bit input: Active-high reset tap-delay input
   );

   IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE"
                                      //    or "SAME_EDGE_PIPELINED"
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC"
   ) IDDR_inst (
      .Q1(data_p_o), // 1-bit output for positive edge of clock
      .Q2(data_n_o), // 1-bit output for negative edge of clock
      .C(iclk_i),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(w_data_i_d),   // 1-bit DDR data input
      .R(rst_i),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );


endmodule
