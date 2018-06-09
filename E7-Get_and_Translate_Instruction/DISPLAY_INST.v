`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:49:59 06/09/2018 
// Design Name: 
// Module Name:    DISPLAY_INST 
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
module DISPLAY_INST(
  Rst,
  Clk,
  Clk_100M,
  Sel,
  LED
  );

  input Rst;
  input Clk;
  input Clk_100M;
  input [1:0] Sel;
  output reg [7:0] LED;
  wire [31:0] Inst_Code;
  wire Clk_db;
  wire Rst_db;
  
  DEBOUNCE RDB(
    .Clk(Clk_100M),
    .Key_xi(Rst),
    .Key_xo(Rst_db)
  );

  DEBOUNCE CDB(
    .Clk(Clk_100M),
    .Key_xi(Clk),
    .Key_xo(Clk_db)
  );

  GET_INS GI(
    .Rst(Rst_db),
    .Clk(Clk_db),
    .Inst_Code(Inst_Code)
  );

  always @(*) begin
    case (Sel)
      2'b00: LED = Inst_Code[7:0];
      2'b01: LED = Inst_Code[15:8];
      2'b10: LED = Inst_Code[23:16];
      2'b11: LED = Inst_Code[31:24];
      default: LED = 8'b0;
    endcase
  end


endmodule
