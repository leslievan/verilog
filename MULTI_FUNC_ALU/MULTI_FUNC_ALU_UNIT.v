`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:45:09 05/08/2018 
// Design Name: 
// Module Name:    MULTI_FUNC_ALU_UNIT 
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
module MULTI_FUNC_ALU_UNIT(
    input           MFAU_clk,
    input   [2:0]   MFAU_ALU_OP
    input   [2:0]   MFAU_ALU_data_SW,
    input           MFAU_DD_result_SW,
    output          MFAU_ALU_zero_flag,
    output          MFAU_ALU_overflow_flag,
    output  [3:0]   MFAU_DD_AN,
    output  [7:0]   MFAU_DD_seg
    );
    wire    [31:0]  MFAU_ALU_result;
    wire    [15:0]  MFAU_ALU_result_half;

    MULTI_FUNC_ALU MFA(.AUL_OP(MFAU_ALU_OP), .ALU_data_SW(MFAU_ALU_data_SW, .ALU_result(MFAU_ALU_result)),
        .ALU_overflow_flag(MFAU_ALU_overflow_flag), .ALU_zero_flag(MFAU_ALU_zero_flag));
    DIGITRON_DISPLAY DD(.Digi_Dis_clk(MFAU_clk), .Digi_Dis_data(MFAU_ALU_result_half), .Digi_Dis_AN(MFAU_DD_AN)
        .Digi_Dis_seg(MFAU_DD_seg));
   


endmodule
