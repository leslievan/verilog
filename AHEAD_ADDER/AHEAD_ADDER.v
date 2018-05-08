`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:57:30 05/04/2018 
// Design Name: 
// Module Name:    AHEAD_ADDER 
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
module AHEAD_ADDER(
	input	[3:0]	AA_A,
	input	[3:0]	AA_B,
	input			AA_C_0,
	output	[3:0]	AA_F,
	output			AA_C_4
    );
	wire			AA_C_1;
	wire			AA_C_2;
	wire			AA_C_3;
	wire	[3:0]	AA_G;
	wire	[3:0]	AA_P;
	
	assign AA_P = AA_A | AA_B;
	assign AA_G = AA_A & AA_B;
	assign AA_C_1 = AA_G[0] || (AA_P[0]&&AA_C_0);
	assign AA_C_2 = AA_G[1] || (AA_P[1]&&AA_G[0]) || (AA_P[1]&&AA_P[0]&&AA_C_0);
	assign AA_C_3 = AA_G[2] || (AA_P[2]&&AA_G[1]) || (AA_P[2]&&AA_P[1]&&AA_G[0])
							|| (AA_P[2]&&AA_P[1]&&AA_P[0]&&AA_C_0);
	assign AA_C_4 = AA_G[3] || (AA_P[3]&&AA_G[2]) || (AA_P[3]&&AA_P[2]&&AA_G[1])
							|| (AA_P[3]&&AA_P[2]&&AA_P[1]&&AA_G[0])
							|| (AA_P[3]&&AA_P[2]&&AA_P[1]&&AA_P[1]&&AA_C_0);
	
	FULL_ADDER FA_0(.FA_A(AA_A[0]), .FA_B(AA_B[0]), .FA_C_0(AA_C_0),
					.FA_F(AA_F[0]), .FA_C_1());
	FULL_ADDER FA_1(.FA_A(AA_A[1]), .FA_B(AA_B[1]), .FA_C_0(AA_C_1),
					.FA_F(AA_F[1]), .FA_C_1());
	FULL_ADDER FA_2(.FA_A(AA_A[2]), .FA_B(AA_B[2]), .FA_C_0(AA_C_2),
					.FA_F(AA_F[2]), .FA_C_1());
	FULL_ADDER FA_3(.FA_A(AA_A[3]), .FA_B(AA_B[3]), .FA_C_0(AA_C_3),
					.FA_F(AA_F[3]), .FA_C_1());

endmodule
