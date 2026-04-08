`timescale 1ns/1ns

module  I2C_OV426_400400_Config //400*400
(
    input       [8:0]   LUT_INDEX,
    output  reg [23:0]  LUT_DATA,
    output      [8:0]   LUT_SIZE
);
assign  LUT_SIZE = 28 + 1;

//-----------------------------------------------------------------
/////////////////////   Config Data LUT   //////////////////////////
always@(*)
begin
    case(LUT_INDEX[4:0])
0:	LUT_DATA = { 16'h0103, 8'h01 };
1:	LUT_DATA = { 16'h3025, 8'h06 };
2:	LUT_DATA = { 16'h3026, 8'h1c };
3:	LUT_DATA = { 16'h3205, 8'h01 };
4:	LUT_DATA = { 16'h0100, 8'h01 };
5:	LUT_DATA = { 16'h3209, 8'h03 };
6:	LUT_DATA = { 16'h3701, 8'h41 };
7:	LUT_DATA = { 16'h3702, 8'h4c };
8:	LUT_DATA = { 16'h3003, 8'h31 };
9:	LUT_DATA = { 16'h3204, 8'h87 };
10:	LUT_DATA = { 16'h3028, 8'hb0 };
11:	LUT_DATA = { 16'h3027, 8'h20 };
12:	LUT_DATA = { 16'h5a40, 8'h05 };
13:	LUT_DATA = { 16'h3a19, 8'h3e };
14:	LUT_DATA = { 16'h5a00, 8'h04 };
15:	LUT_DATA = { 16'h4009, 8'h18 };
16:	LUT_DATA = { 16'h4005, 8'h1a };
17:	LUT_DATA = { 16'h3020, 8'h09 };
18:	LUT_DATA = { 16'h3024, 8'h00 };
19:	LUT_DATA = { 16'h3a0f, 8'h58 };
20:	LUT_DATA = { 16'h3a10, 8'h48 };
21:	LUT_DATA = { 16'h3a1b, 8'h64 };
22:	LUT_DATA = { 16'h3a1e, 8'h40 };
23:	LUT_DATA = { 16'h4052, 8'h01 };
24:	LUT_DATA = { 16'h302a, 8'h01 };
25:	LUT_DATA = { 16'h3a01, 8'h10 };
26:	LUT_DATA = { 16'h4708, 8'h03 };
27:	LUT_DATA = { 16'h3205, 8'h00 };
28:	LUT_DATA = { 16'h0100, 8'h01 };
		default:LUT_DATA    =   {16'h0000, 8'h00};
    endcase
end

endmodule
