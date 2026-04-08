`timescale 1ns/1ns
module lcd_driver
(
	//global clock
	input				clk,			//system clock
	input				rst_n,     		//sync reset

	//lcd interface
	output 			lcd_dclk,   	//lcd pixel clock
	output 			lcd_blank,		//lcd blank
	output 			lcd_sync,		//lcd sync
	output 			lcd_hs,	    	//lcd horizontal sync
	output 			lcd_vs,	    	//lcd vertical sync
	output 			lcd_en,			//lcd display enable
	output 	[23:0]	lcd_rgb,		//lcd display data

	//user interface
	output 			lcd_request,	//lcd data request

	output 	[11:0]	lcd_xpos,		//lcd horizontal coordinate
	output 	[11:0]	lcd_ypos,		//lcd vertical coordinate
	input	[23:0]	lcd_data		//lcd data
);
`include "lcd_para.v"

	reg			r_lcd_hs = 0;	    	//lcd horizontal sync
	reg			r_lcd_vs = 0;	    	//lcd vertical sync
	reg			r_lcd_en = 0;		//lcd display enable

	reg			r_lcd_request = 0;	//lcd data request
	reg	[11:0]	r_lcd_xpos = 0;		//lcd horizontal coordinate
	reg	[11:0]	r_lcd_ypos = 0;		//lcd vertical coordinate

	assign lcd_hs = r_lcd_hs;	    	//lcd horizontal sync
	assign lcd_vs = r_lcd_vs;	    	//lcd vertical sync
	assign lcd_en = r_lcd_en;		//lcd display enable

	assign lcd_request = r_lcd_request;	//lcd data request
	assign lcd_xpos = r_lcd_xpos;		//lcd horizontal coordinate
	assign lcd_ypos = r_lcd_ypos;		//lcd vertical coordinate


//h_sync counter & generator
reg 	[11:0] 	hcnt = 0;
always @ (posedge clk or negedge rst_n)
begin
	if (!rst_n)
		hcnt <= 12'd0;
	else
		begin
        if(hcnt < `H_TOTAL - 1'b1)		//line over
            hcnt <= hcnt + 1'b1;
        else
            hcnt <= 12'd0;

        r_lcd_hs <= (hcnt <= `H_SYNC - 1'b1) ? 1'b0 : 1'b1;
		end
end


//------------------------------------------
//v_sync counter & generator
reg 	[11:0] 	vcnt = 0;
reg 			r_sync = 0;
always@(posedge clk or negedge rst_n)
begin
	if (!rst_n) begin
		vcnt <= 12'b0;
		r_sync <= 0;
	end else begin
		if(hcnt == `H_TOTAL - 1'b1) begin
			if(vcnt < `V_TOTAL - 1'b1)		//frame over
				vcnt <= vcnt + 1'b1;
			else
				vcnt <= 12'd0;

			r_lcd_vs <= (vcnt <= `V_SYNC - 1'b1) ? 1'b0 : 1'b1;
			//	Delay 1 line to issue SYNC request.
		end else begin
		end

		r_sync <= (vcnt == 1);
	end
end


//------------------------------------------
//LCELL	LCELL(.in(clk),.out(lcd_dclk));
assign	lcd_dclk = ~clk;
assign	lcd_blank = r_lcd_hs & r_lcd_vs;
assign	lcd_sync = r_sync;


//-----------------------------------------
reg     [23:0]  r_lcd_rgb = 0;
always@(posedge clk) begin
    r_lcd_en		<=	(hcnt >= `H_SYNC + `H_BACK  && hcnt < `H_SYNC + `H_BACK + `H_DISP) &&
						(vcnt >= `V_SYNC + `V_BACK  && vcnt < `V_SYNC + `V_BACK + `V_DISP)
						? 1'b1 : 1'b0;
	if(r_lcd_request)
	   r_lcd_rgb <= lcd_data;
	else
	   r_lcd_rgb <= 24'h888888;
end
assign lcd_rgb = r_lcd_en ? r_lcd_rgb : 0;

//------------------------------------------
//ahead x clock
 localparam	H_AHEAD = 	12'd1;	//	Normal FIFO data latency = 2.


 always@(posedge clk) begin

    // r_lcd_request	<=	(hcnt >= (`H_SYNC + `H_BACK - H_AHEAD + 440) && hcnt < (`H_SYNC + `H_BACK + 400 - H_AHEAD + 440)) &&
	// 					 (vcnt >= `V_SYNC + `V_BACK + 160 && vcnt < `V_SYNC + `V_BACK + 400 + 160)
	// 					 ? 1'b1 : 1'b0;

	r_lcd_request	<=	(hcnt >= (`H_SYNC + `H_BACK - H_AHEAD + 320) && hcnt < (`H_SYNC + `H_BACK + 640 - H_AHEAD + 320)) &&
						 (vcnt >= `V_SYNC + `V_BACK + 40 && vcnt < `V_SYNC + `V_BACK + 640 + 40)
						 ? 1'b1 : 1'b0;


// lcd xpos & ypos
    r_lcd_xpos	<= 	(hcnt - (`H_SYNC + `H_BACK - H_AHEAD));	//	r_lcd_request ? (hcnt - (`H_SYNC + `H_BACK - H_AHEAD)) : 11'd0;
    r_lcd_ypos	<= 	(vcnt - (`V_SYNC + `V_BACK)); 		//	r_lcd_request ? (vcnt - (`V_SYNC + `V_BACK)) : 12'd0;
end


endmodule
