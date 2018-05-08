`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:43:52 05/04/2018 
// Design Name: 
// Module Name:    FULL_ADDER 
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
module FULL_ADDER(
	input	FA_A,
	input	FA_B,
	input	FA_C_0,
	output	FA_F,
	output	FA_C_1
    );
	
	assign {FA_C_1, FA_F} = FA_A + FA_B + FA_C_0;

endmodule
