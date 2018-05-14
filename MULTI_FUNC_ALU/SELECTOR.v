`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:59:40 05/14/2018 
// Design Name: 
// Module Name:    SELECTOR 
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
module SELECTOR(
    input       [2:0]   SELECTOR_SW_xi,
    output  reg [31:0]  SELECTOR_A_xo,
    output  reg [31:0]  SELECTOR_B_xo
    );

    always@(*)
    case (SELECTOR_SW_xi)
        3'b000: begin SELECTOR_A_xo = 32'h0000_0000; SELECTOR_B_xo = 32'h0000_0000; end
        3'b001: begin SELECTOR_A_xo = 32'h0000_0003; SELECTOR_B_xo = 32'h0000_0607; end
        3'b010: begin SELECTOR_A_xo = 32'h8000_0000; SELECTOR_B_xo = 32'h8000_0000; end
        3'b011: begin SELECTOR_A_xo = 32'h7FFF_FFFF; SELECTOR_B_xo = 32'h7FFF_FFFF; end
        3'b100: begin SELECTOR_A_xo = 32'hFFFF_FFFF; SELECTOR_B_xo = 32'hFFFF_FFFF; end
        3'b101: begin SELECTOR_A_xo = 32'h8000_0000; SELECTOR_B_xo = 32'hFFFF_FFFF; end
        3'b110: begin SELECTOR_A_xo = 32'hFFFF_FFFF; SELECTOR_B_xo = 32'h8000_0000; end
        3'b111: begin SELECTOR_A_xo = 32'h1234_5678; SELECTOR_B_xo = 32'h3333_2222; end
        default: begin SELECTOR_A_xo = 32'h9ABC_DEF0; SELECTOR_B_xo = 32'h1111_2222; end
    endcase

endmodule
