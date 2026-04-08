`timescale 1ns/1ns
module lcd_display_char
(
	//Global clock
	input	 			clk,		//system clock
	input				rst_n,		//sync clock

	input		[11:0]	lcd_xpos,	//lcd horizontal coordinate
	input		[11:0]	lcd_ypos,	//lcd vertical coordinate
	output	reg	[23:0]	lcd_data	//lcd data
);
`include "lcd_para.v"
`define	LCD_COLOR_DEFAULT	`YELLOW
`define	LCD_ADDR_AHEAD		 9'd2	//lcd address ahead, it is very important


//--------------------------------------------------------------
/****************************************************************
			Display : "Hello World*^_^*", 32*16 = 512 (Char: 32 * 64)
****************************************************************/
wire	vip_area1 =	(lcd_xpos >= 64 && lcd_xpos < 576) && (lcd_ypos >= 128 && lcd_ypos < 192);
wire	[63:0]	vip_data1;
wire	[8:0]	vip_addr1 = lcd_xpos[8:0] - (9'd64 - `LCD_ADDR_AHEAD);	//32*16 = 512
vip_rom1	u_vip_rom1
(
	.clock		(clk),
	.address	(vip_addr1),
	.q			(vip_data1)
);


//--------------------------------------------------------------
/****************************************************************
			Display area 2, 32*16 = 512 (Char: 32 * 64)
****************************************************************/
wire	vip_area2 =	(lcd_xpos >= 64 && lcd_xpos < 576) && (lcd_ypos >= 256 && lcd_ypos < 320);
wire	[63:0]	vip_data2;
wire	[8:0]	vip_addr2 = lcd_xpos[8:0] - (9'd64 - `LCD_ADDR_AHEAD);	//32*16 = 512
vip_rom2	u_vip_rom2
(
	.clock		(clk),
	.address	(vip_addr2),
	.q			(vip_data2)
);


//--------------------------------------------------------------
//LCD char display with rom input
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		lcd_data <= 0;
	else
		begin
		//Display : "Hello World*^_^*"
		if(vip_area1 == 1'b1)
			if(vip_data1[6'd63-lcd_ypos[5:0]] == 1'b1)	lcd_data <= `BLUE;
			else										lcd_data <= `LCD_COLOR_DEFAULT;
		else if	(vip_area2 == 1'b1)
			if(vip_data2[6'd63-lcd_ypos[5:0]] == 1'b1)	lcd_data <= `BLUE;
			else										lcd_data <= `LCD_COLOR_DEFAULT;

		//Display : WHITE AREA
		else											lcd_data <= `LCD_COLOR_DEFAULT;
		end
end



endmodule
