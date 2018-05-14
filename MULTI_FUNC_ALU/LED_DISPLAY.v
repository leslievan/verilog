`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:17:36 05/14/2018 
// Design Name: 
// Module Name:    LED_DISPLAY 
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
module LED_DISPLAY(
    input       [31:0]  LED_DISPLAY_data_xi,
    input               LED_DISPLAY_overflow_flag_xi,
    input               LED_DISPLAY_zero_flag_xi,
    input       [2:0]   LED_DISPLAY_SW_xi,
    output  reg [7:0]   LED_DISPLAY_F_xo
    );

    always@(*)
    case (LED_DISPLAY_SW_xi)
        3'b000: LED_DISPLAY_F_xo = LED_DISPLAY_data_xi[7:0];
        3'b001: LED_DISPLAY_F_xo = LED_DISPLAY_data_xi[15:8];
        3'b010: LED_DISPLAY_F_xo = LED_DISPLAY_data_xi[23:16];
        3'b011: LED_DISPLAY_F_xo = LED_DISPLAY_data_xi[31:24];
        default:
            begin
                LED_DISPLAY_F_xo[7] = LED_DISPLAY_zero_flag_xi;
                LED_DISPLAY_F_xo[6:1] = 6'b0;
                LED_DISPLAY_F_xo[0] = LED_DISPLAY_overflow_flag_xi;
            end
    endcase

endmodule
