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
    input       [31:0]  dina,
    input       [31:0]  dinb,
    input               ofa,
    input               zfa,
    input       [3:0]   sela,
    output  reg [7:0]   LED
    );

    always@(*)
    case (sela)
        4'b0000: LED = dina[7:0];
        4'b0001: LED = dina[15:8];
        4'b0010: LED = dina[23:16];
        4'b0011: LED = dina[31:24];
        4'b0100: LED = dinb[7:0];
        4'b0101: LED = dinb[15:8];
        4'b0110: LED = dinb[23:16];
        4'b0111: LED = dinb[31:24];
        default:
            begin
                LED[0] = zfa;
                LED[6:1] = 6'b0;
                LED[7] = ofa;
            end
    endcase

endmodule
