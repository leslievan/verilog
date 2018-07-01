`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:03:09 06/22/2018 
// Design Name: 
// Module Name:    R_I_J_CPU_Unit 
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
module R_I_J_CPU(
  clka,
  clkb,
  rsta,
  ofa,
  zfa,
  douta
  );

  input clka;
  input clkb;
  input rsta;
  output ofa;
  output zfa;
  output [31 : 0] douta;

  //Get instruction
  reg [31 : 0] PC;
  wire [31 : 0] PC_new;
  wire [31 : 0] Inst_code;
  //Instruction code
  wire [5 : 0] OP;
  wire [25 : 0] address;
  wire [4 : 0] rs;
  wire [4 : 0] rt;
  wire [4 : 0] rd;
  wire [4 : 0] shamt;
  wire [5 : 0] func;
  wire [15 : 0] imm;
  wire [31 : 0] imm_data;
  //Translate and Control
  wire [1 : 0] w_r_s;
  wire imm_s;
  wire rt_imm_s;
  wire [1 : 0] w_r_data_s;
  wire [2 : 0] ALU_OP;
  wire Write_Reg;
  wire Mem_Write;
  wire [1 : 0] PC_s;
  //Register Files
  wire [4 : 0] W_Addr;
  wire [31 : 0] W_Data;
  wire [31 : 0] R_Data_A;
  wire [31 : 0] R_Data_B;
  //ALU
  wire [31 : 0] ALU_B;
  wire [31 : 0] ALU_F;
  //Data RAM
  wire [5 : 0] Mem_Addr;
  wire [31 : 0] M_R_Data;
  wire [31 : 0] M_W_Data;

  assign PC_new = PC + 4;
  assign OP = Inst_code[31 : 26];
  assign address = Inst_code[25 : 0];
  assign rs = Inst_code[25 : 21];
  assign rt = Inst_code[20 : 16];
  assign rd = Inst_code[15 : 11];
  assign shamt = Inst_code[10 : 6];
  assign func = Inst_code[5 : 0];
  assign imm = Inst_code[15 : 0];
  assign Mem_Addr = ALU_F;
  assign M_W_Data = R_Data_B;

  assign W_Addr = (w_r_s[1])? 5'b11111 : ((w_r_s[0])? rt : rd);
  assign W_Data = (w_r_data_s[1])? PC_new : ((w_r_data_s[0])? M_R_Data : ALU_F);
  assign ALU_B = (rt_imm_s)? imm_data : R_Data_B;
  assign imm_data = (imm_s)? {{16{imm[15]}}, imm} : {{16{1'b0}}, imm};
  
  assign douta = ALU_F;
  
  initial PC = 0;
   
  always @(negedge clka or posedge rsta) begin
    if (rsta) begin
      PC <= 32'b0;
    end else begin
      case (PC_s)
        2'b00: PC <= PC_new;
        2'b01: PC <= R_Data_A;
        2'b10: PC <= PC_new + (imm_data << 2);
        2'b11: PC <= {PC_new[31 : 28], address, 2'b00};
      endcase
    end
  end
  
  not N0(clkn, clka);
  
  ROM_B Inst_RAM(
    .clka(clka),
    .addra(PC[7 : 2]),
    .douta(Inst_code)
  );

  TRANSLATE_CONTROL T_C(
    .opa(OP),
    .func(func),
    .zf(zfa),
    .wrs(w_r_s),
    .imms(imm_s),
    .rims(rt_imm_s),
    .wrds(w_r_data_s),
    .aop(ALU_OP),
    .wea(Write_Reg),
    .mwa(Mem_Write),
    .pcs(PC_s)
  );

  REGISTER_FILES REG(
    .clka(clkn),
    .rsta(rsta),
    .wea(Write_Reg),
    .waddra(W_Addr),
    .raddra(rs),
    .raddrb(rt),
    .dina(W_Data),
    .douta(R_Data_A),
    .doutb(R_Data_B)
  );

  ALU C_A(
    .dina(R_Data_A),
    .dinb(ALU_B),
    .opa(ALU_OP),
    .ofa(ofa),
    .zfa(zfa),
    .douta(ALU_F)
  );

  RAM_B Data_RAM(
    .clka(clkb),
    .wea(Mem_Write),
    .addra(Mem_Addr),
    .dina(M_W_Data),
    .douta(M_R_Data)
  );

endmodule
