`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:43:02 05/05/2018 
// Design Name: 
// Module Name:    MULTI_FUNC_ALU 
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
module MULTI_FUNC_ALU(
	input				ALU_clk,
	input		[2:0]	ALU_OP,
	input		[2:0]	ALU_data_SW,
	input				ALU_result_switch,
	output		[3:0]	ALU_DD_AN,
	output		[7:0]	ALU_DD_seg,
	output				ALU_overflow_flag,
	output				ALU_zero_flag
    );
	reg			[15:0]	ALU_result_half;
	reg			[31:0]	ALU_result;
	reg			[31:0]	ALU_data_A;
	reg			[31:0]	ALU_data_B;
	reg					ALU_overflow_sig;
	
	initial ALU_overflow_sig = 0;
	
	assign ALU_zero_flag = |ALU_result;
	assign ALU_overflow_flag = (ALU_overflow_sig^ALU_result[31]) && ALU_OP[2] 
							&& !ALU_OP[1];
	
	always@(ALU_data_SW)
	case(ALU_data_SW)
		3'b000: begin ALU_data_A = 32'h0000_0000; ALU_data_B = 32'h0000_0000; end
		3'b001: begin ALU_data_A = 32'h0000_0003; ALU_data_B = 32'h0000_0607; end
		3'b010: begin ALU_data_A = 32'h8000_0000; ALU_data_B = 32'h8000_0000; end
		3'b011: begin ALU_data_A = 32'h7FFF_FFFF; ALU_data_B = 32'h7FFF_FFFF; end
		3'b100: begin ALU_data_A = 32'hFFFF_FFFF; ALU_data_B = 32'hFFFF_FFFF; end
		3'b101: begin ALU_data_A = 32'h8000_0000; ALU_data_B = 32'hFFFF_FFFF; end
		3'b110: begin ALU_data_A = 32'hFFFF_FFFF; ALU_data_B = 32'h8000_0000; end
		3'b111: begin ALU_data_A = 32'h1234_5678; ALU_data_B = 32'h3333_2222; end
		default: begin ALU_data_A = 32'h9ABC_DEF0; ALU_data_B = 32'h1111_2222; end
	endcase
	//choose data from 8 groups
	
	always@(*)
	case(ALU_OP)
		3'b000: ALU_result = ALU_data_A & ALU_data_B;
		3'b001: ALU_result = ALU_data_A | ALU_data_B;
		3'b010: ALU_result = ALU_data_A ^ ALU_data_B;
		3'b011: ALU_result = ~(ALU_data_A | ALU_data_B);
		3'b100: {ALU_overflow_sig, ALU_result} = ALU_data_A + ALU_data_B;
		3'b101: {ALU_overflow_sig, ALU_result} = ALU_data_A - ALU_data_B;
		3'b110: ALU_result = ALU_data_A<ALU_data_B? 32'h0000_0001:32'h0000+0000;
		3'b111: ALU_result = ALU_data_B << ALU_data_A;
		default: ALU_result = 32'h0000_0000;
	endcase
	//output result
	
	always@(*)
	if (ALU_result_switch == 0)
		ALU_result_half = ALU_result[15:0];
	else
		ALU_result_half = ALU_result[31:16];
	
	DIGITRON_DISPLAY DIGI_DIS(.Digi_Dis_clk_100MHz(ALU_clk),
					.Digi_Dis_data(ALU_result_half), .Digi_Dis_AN(ALU_DD_AN),
					.Digi_Dis_seg(ALU_DD_seg));
endmodule
