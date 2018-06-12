`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:46:57 06/10/2018 
// Design Name: 
// Module Name:    TRANSLATE_CONTROL 
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
module TRANSLATE_CONTROL(
  opa,
  funca,
  wea,
  aopa
  );

  input [5 : 0] opa;
  input [5 : 0] funca;
  output wea;
  output reg [2 : 0] aopa;

  assign wea = 1;

  always @(*) begin
    if (opa == 6'b000000) begin
      case (funca)
        6'b100000: aopa = 3'b100;
        6'b100010: aopa = 3'b101;
        6'b100100: aopa = 3'b000;
        6'b100101: aopa = 3'b001;
        6'b100110: aopa = 3'b010;
        6'b100111: aopa = 3'b011;
        6'b101011: aopa = 3'b110;
        6'b000100: aopa = 3'b111;
        default: aopa = 3'b000;
      endcase
    end
  end

endmodule
