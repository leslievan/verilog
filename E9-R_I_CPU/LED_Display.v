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
    input               ofa,
    input               zfa,
    input       [2:0]   sela,
    output  reg [7:0]   LED
    );

    always@(*)
    case (sela)
        3'b000: LED = dina[7:0];
        3'b001: LED = dina[15:8];
        3'b010: LED = dina[23:16];
        3'b011: LED = dina[31:24];
        default:
            begin
                LED[0] = zfa;
                LED[6:1] = 6'b0;
                LED[7] = ofa;
            end
    endcase

endmodule
