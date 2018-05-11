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
	input		[2:0]	ALU_OP,
	input		[2:0]	ALU_data_SW,
	output		[31:0]	ALU_result,
	output				ALU_overflow_flag,
	output				ALU_zero_flag
	);
	reg			[31:0]	ALU_data_A;
	reg			[31:0]	ALU_data_B;
	reg					ALU_overflow_sig;
	
	initial ALU_overflow_sig = 0;
	
	assign ALU_zero_flag = |ALU_result;
	assign ALU_overflow_flag = (ALU_overflow_sig^ALU_result[31]) && ALU_OP[2] 
							&& !ALU_OP[1];
	//zero flag and overflow flag

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

endmodule
