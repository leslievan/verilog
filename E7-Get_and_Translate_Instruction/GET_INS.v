`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:28:17 06/08/2018 
// Design Name: 
// Module Name:    GET_INS 
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
module GET_INS(
  Rst,
  Clk,
  Inst_Code,
  );
  input Rst;
  input Clk;
  output [31:0] Inst_Code;
  reg [31:0] PC;
  wire [31:0] PC_New;
  
  initial PC = 0;
  //Calculate PC_New
  assign PC_New = PC + 4;

  //PC
  always @(posedge Clk or posedge Rst) begin
    if (Rst) begin
      PC <= 32'b0;
    end else begin
      PC <= PC_New;
    end
  end

  //Instruction Memory
  RAM_B Inst_RAM(
    .clka(Clk),
    .wea(0),
    .addra(PC[7:2]),
    .douta(Inst_Code)
  );

endmodule
