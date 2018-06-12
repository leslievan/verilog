`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:18:10 06/10/2018 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
  dina,
  dinb,
  opa,
  ofa,
  zfa,
  douta
  );

  input [31 : 0] dina;
  input [31 : 0] dinb;
  input [2 : 0] opa;
  output reg ofa;
  output zfa;
  output reg [31 : 0] douta;

  assign zfa = ~(|douta);

  always @(*) begin
    case (opa)
      3'b000: douta = dina & dinb;
        3'b001: douta = dina | dinb;
        3'b010: douta = dina ^ dinb;
        3'b011: douta = ~(dina | dinb);
        3'b100: {ofa, douta} = dina + dinb;
        3'b101: {ofa, douta} = dina - dinb;
        3'b110: douta = (dina < dinb)? 1:0;
        3'b111: douta = dinb << dina;
        default: douta = 32'b0;
    endcase
  end


endmodule
