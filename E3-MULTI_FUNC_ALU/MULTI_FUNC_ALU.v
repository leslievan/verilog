`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:16:43 05/14/2018 
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
    input       [31:0]  MULTI_FUNC_ALU_A_xi,
    input       [31:0]  MULTI_FUNC_ALU_B_xi,
    input       [2:0]   MULTI_FUNC_ALU_OP_xi,
    output  reg [31:0]  MULTI_FUNC_ALU_F_xo,
    output  reg         MULTI_FUNC_ALU_overflow_flag_xo,
    output              MULTI_FUNC_ALU_zero_flag_xo
    );

    assign MULTI_FUNC_ALU_zero_flag_xo = ~(|MULTI_FUNC_ALU_F_xo);
    always@(*)
    case (MULTI_FUNC_ALU_OP_xi)
        3'b000: MULTI_FUNC_ALU_F_xo = MULTI_FUNC_ALU_A_xi & MULTI_FUNC_ALU_B_xi;
        3'b001: MULTI_FUNC_ALU_F_xo = MULTI_FUNC_ALU_A_xi | MULTI_FUNC_ALU_B_xi;
        3'b010: MULTI_FUNC_ALU_F_xo = MULTI_FUNC_ALU_A_xi ^ MULTI_FUNC_ALU_B_xi;
        3'b011: MULTI_FUNC_ALU_F_xo = ~(MULTI_FUNC_ALU_A_xi | MULTI_FUNC_ALU_B_xi);
        3'b100: {MULTI_FUNC_ALU_overflow_flag_xo, MULTI_FUNC_ALU_F_xo} = MULTI_FUNC_ALU_A_xi + MULTI_FUNC_ALU_B_xi;
        3'b101: {MULTI_FUNC_ALU_overflow_flag_xo, MULTI_FUNC_ALU_F_xo} = MULTI_FUNC_ALU_A_xi - MULTI_FUNC_ALU_B_xi;
        3'b110: MULTI_FUNC_ALU_F_xo = (MULTI_FUNC_ALU_A_xi < MULTI_FUNC_ALU_B_xi)? 1'b1:1'b0;
        3'b111: MULTI_FUNC_ALU_F_xo = MULTI_FUNC_ALU_B_xi << MULTI_FUNC_ALU_A_xi;
        default: MULTI_FUNC_ALU_F_xo = 32'b0;
    endcase

endmodule
