`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:17:57 05/14/2018 
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
    input       [2:0]   MULTI_FUNC_ALU_UNIT_OP_xi,
    input       [2:0]   MULTI_FUNC_ALU_UNIT_data_SW_xi,
    input       [2:0]   MULTI_FUNC_ALU_UNIT_LED_SW_xi,
    output      [7:0]   MULTI_FUNC_ALU_UNIT_LED_xo
    );
    wire        [31:0]  MULTI_FUNC_ALU_UNIT_A;
    wire        [31:0]  MULTI_FUNC_ALU_UNIT_B;
    wire        [31:0]  MULTI_FUNC_ALU_UNIT_F;
    wire                MULTI_FUNC_ALU_UNIT_ZF;
    wire                MULTI_FUNC_ALU_UNIT_OF;
	
    SELECTOR SEL_0(.SELECTOR_SW_xi(MULTI_FUNC_ALU_UNIT_data_SW_xi), .SELECTOR_A_xo(MULTI_FUNC_ALU_UNIT_A),
        .SELECTOR_B_xo(MULTI_FUNC_ALU_UNIT_B));
		
    MULTI_FUNC_ALU MFA_0(.MULTI_FUNC_ALU_A_xi(MULTI_FUNC_ALU_UNIT_A), .MULTI_FUNC_ALU_B_xi(MULTI_FUNC_ALU_UNIT_B),
        .MULTI_FUNC_ALU_OP_xi(MULTI_FUNC_ALU_UNIT_OP_xi), .MULTI_FUNC_ALU_F_xo(MULTI_FUNC_ALU_UNIT_F),
        .MULTI_FUNC_ALU_overflow_flag(MULTI_FUNC_ALU_UNIT_OF), .MULTI_FUNC_ALU_zero_flag(MULTI_FUNC_ALU_UNIT_ZF));
		
    LED_DISPLAY LD_0(.LED_DISPLAY_data_xi(MULTI_FUNC_ALU_UNIT_F), .LED_DISPLAY_overflow_flag_xi(MULTI_FUNC_ALU_UNIT_OF),
        .LED_DISPLAY_zero_flag_xi(MULTI_FUNC_ALU_UNIT_ZF), .LED_DISPLAY_SW_xi(MULTI_FUNC_ALU_UNIT_LED_SW_xi),
        .LED_DISPLAY_F_xo(MULTI_FUNC_ALU_UNIT_LED_xo));

endmodule
