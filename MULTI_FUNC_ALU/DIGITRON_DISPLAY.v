`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:04:12 05/05/2018 
// Design Name: 
// Module Name:    DIGITRON_DISPLAY 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module DIGITRON_DISPLAY(
	input			Digi_Dis_clk_100MHz,
	input	[15:0]	Digi_Dis_data,
	output	[3:0]	Digi_Dis_AN,
	output	[7:0]	Digi_Dis_seg
    );
	wire	[1:0]	Digi_Dis_bit_sel;
	wire	[3:0]	Digi_Dis_code;
	
	DATA_SELECT DATA_SEL_1(.Data_Sel_sel(Digi_Dis_bit_sel),
					.Data_Sel_data_D(Digi_Dis_data[15:12]),
					.Data_Sel_data_C(Digi_Dis_data[11:8]),
					.Data_Sel_data_B(Digi_Dis_data[7:4]),
					.Data_Sel_data_A(Digi_Dis_data[3:0]),
					.Data_Sel_xo(Digi_Dis_code));
	DATA_SELECT DATA_SEL_2(.Data_Sel_sel(Digi_Dis_bit_sel),
					.Data_Sel_data_D(4'b0111),
					.Data_Sel_data_C(4'b1011), .Data_Sel_data_B(4'b1101),
					.Data_Sel_data_A(4'b1110), .Data_Sel_xo(Digi_Dis_AN));
	DECODE DECODER(.D_code_xi(Digi_Dis_code), .D_code_xo(Digi_Dis_seg));
	DIGITRON_SELECT DIGI_SEL(.Digi_Sel_clk(Digi_Sel_clk), .Digi_Sel_reset(),
							.Digi_Sel_xo(Digi_Dis_bit_sel));

endmodule

module DATA_SELECT(
	input		[1:0]	Data_Sel_sel,
	input		[3:0]	Data_Sel_data_A,
	input		[3:0]	Data_Sel_data_B,
	input		[3:0]	Data_Sel_data_C,
	input		[3:0]	Data_Sel_data_D,
	output	reg	[3:0]	Data_Sel_xo
);
	
	always@(*)
	case(Data_Sel_sel)
		2'b00: Data_Sel_xo = Data_Sel_data_A;
		2'b01: Data_Sel_xo = Data_Sel_data_B;
		2'b10: Data_Sel_xo = Data_Sel_data_C;
		2'b11: Data_Sel_xo = Data_Sel_data_D;
		default: Data_Sel_xo = 4'b0000;
	endcase
	
endmodule

module DECODE(
	input		[3:0]	D_code_xi,
	output	reg	[7:0]	D_code_xo
);

	always@(*)
    case (D_code_xi)
    	4'b0000: D_code_xo = 2'hC0;
    	4'b0001: D_code_xo = 2'hF9;
    	4'b0010: D_code_xo = 2'hA4;
    	4'b0011: D_code_xo = 2'hB0;
    	4'b0100: D_code_xo = 2'h99;
    	4'b0101: D_code_xo = 2'h92;
    	4'b0110: D_code_xo = 2'h82;
    	4'b0111: D_code_xo = 2'hF8;
    	4'b1000: D_code_xo = 2'h80;
    	4'b1001: D_code_xo = 2'h90;
    	4'b1010: D_code_xo = 2'h88;
    	4'b1011: D_code_xo = 2'h83;
    	4'b1100: D_code_xo = 2'hC6;
    	4'b1101: D_code_xo = 2'hA1;
    	4'b1110: D_code_xo = 2'h86;
    	4'b1111: D_code_xo = 2'h8E;
		default: D_code_xo = 2'h00;
	endcase
	
endmodule

module DIGITRON_SELECT(
	input			Digi_Sel_clk,
	input			Digi_Sel_reset,
	output	[1:0]	Digi_Sel_xo
);
	reg		[31:0]	Digi_Sel_counter;
	
	assign	Digi_Sel_xo = Digi_Sel_counter[19:18];
	
	always@(posedge Digi_Sel_reset or posedge Digi_Sel_clk)
	if (Digi_Sel_reset)
		Digi_Sel_counter <= 32'b0;
	else
		Digi_Sel_counter <= Digi_Sel_counter + 1'b1;

endmodule