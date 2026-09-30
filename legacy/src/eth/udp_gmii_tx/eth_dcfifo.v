`timescale 1 ps / 1 ps
// synopsys translate_on
module eth_dcfifo (
	aclr,
	data,
	rdclk,
	rdreq,
	wrclk,
	wrreq,
	q,
	rdusedw,
	wrusedw);

	input	  aclr;
	input	[7:0]  data;
	input	  rdclk;
	input	  rdreq;
	input	  wrclk;
	input	  wrreq;
	output	[7:0]  q;
	output	[12:0]  rdusedw;
	output	[12:0]  wrusedw;
	
	
	
	fifo_4kx8 fifo_comp 
	(

		.wr_clk          (wrclk),  // input write clock
		.rst          (aclr),  // input write reset

		.wr_en           (wrreq),  // input write enable 1 active
		.din         (data),  // input write data
		.full         (),  // output write full  flag 1 active

		.rd_clk          (rdclk),  // input read clock
		//.rd_rst          (aclr),  // input read reset

		.rd_en           (rdreq),  // input read enable
		.dout         (q),  // output read data

		//.almost_full     (),  // output write almost full
		.empty        ()  // output read empty

		//.almost_empty    ()   // output write almost empty 
	);


endmodule

