`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:02:47 06/10/2018 
// Design Name: 
// Module Name:    R_CPU 
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
module R_CPU(
  clka,
  //clkb,
  rsta,
  ofa,
  zfa,
  douta
  );

  input clka;
  input rsta;
  output ofa;
  output zfa;
  output [31 : 0] douta;

  //wire clk_de;
  wire clkn;
  wire [31 : 0] PC;
  wire [31 : 0] Inst_code;
  wire [5 : 0] OP;
  wire [4 : 0] rs;
  wire [4 : 0] rt;
  wire [4 : 0] rd;
  wire [4 : 0] shamt;
  wire [5 : 0] func;
  wire Write_Reg;
  wire [2 : 0] ALU_OP;
  wire [31 : 0] R_Data_A;
  wire [31 : 0] R_Data_B;

  assign OP = Inst_code[31 : 26];
  assign rs = Inst_code[25 : 21];
  assign rt = Inst_code[20 : 16];
  assign rd = Inst_code[15 : 11];
  assign shamt = Inst_code[10 : 6];
  assign func = Inst_code[5 : 0];

  not N0(clkn, clka);

  RAM_B Inst_Mem(
    .clka(clka),
    .wea(0),
    .addra(PC[7 : 2]),
    .douta(Inst_code)
  );

  PROGRAM_COUNTER P_C(
    .clka(clkn),
    .rsta(rsta),
    .douta(PC)
  );

  TRANSLATE_CONTROL T_C(
    .opa(OP),
    .funca(func),
    .wea(Write_Reg),
    .aopa(ALU_OP)
  );

  REGISTER_FILES R_F(
    .clka(clkn),
    .wea(Write_Reg),
    .raddra(rs),
    .raddrb(rt),
    .waddra(rd),
    .dina(douta),
    .douta(R_Data_A),
    .doutb(R_Data_B)
  );

  ALU C_A(
    .dina(R_Data_A),
    .dinb(R_Data_B),
    .opa(ALU_OP),
    .ofa(ofa),
    .zfa(zfa),
    .douta(douta)
  );
  
endmodule
