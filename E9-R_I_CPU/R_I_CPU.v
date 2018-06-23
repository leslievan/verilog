module R_I_CPU(
  clka,
  clkb,
  rsta,
  ofa,
  zfa,
  douta,
  doutb
  );

  input clka;
  input clkb;
  input rsta;
  output ofa;
  output zfa;
  output [31 : 0] douta;
  output [31 : 0] doutb;

  //Get instruction
  wire clkn;
  wire [31 : 0] PC;
  wire [31 : 0] Inst_code;
  //Instruction code
  wire [5 : 0] OP;
  wire [4 : 0] rs;
  wire [4 : 0] rt;
  wire [4 : 0] rd;
  wire [4 : 0] shamt;
  wire [5 : 0] func;
  wire [15 : 0] imm;
  wire [31 : 0] imm_data;
  //Translate and Control
  wire rd_rt_s;
  wire imm_s;
  wire Write_Reg;
  wire alu_mem_s;
  wire rt_imm_s;
  wire [2 : 0] ALU_OP;
  wire Mem_Write;
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

  assign OP = Inst_code[31 : 26];
  assign rs = Inst_code[25 : 21];
  assign rt = Inst_code[20 : 16];
  assign rd = Inst_code[15 : 11];
  assign shamt = Inst_code[10 : 6];
  assign func = Inst_code[5 : 0];
  assign imm = Inst_code[15 : 0];
  assign Mem_Addr = ALU_F;
  assign M_W_Data = R_Data_B;

  assign W_Addr = (rd_rt_s)? rt : rd;
  assign W_Data = (alu_mem_s)? M_R_Data : ALU_F;
  assign ALU_B = (rt_imm_s)? imm_data : R_Data_B;
  assign imm_data = (imm_s)? {{16{imm[15]}}, imm} : {{16{1'b0}}, imm};
  
  assign douta = ALU_F;
  assign doutb = M_R_Data;
  
  not N0(clkn, clka);

  PROGRAM_COUNTER P_C(
    .clka(clkn),
    .rsta(rsta),
    .douta(PC)
  );

  ROM_B Inst_RAM(
    .clka(clka),
    .wea(0),
    .addra(PC[7 : 2]),
    .douta(Inst_code)
  );

  TRANSLATE_CONTROL T_C(
    .opa(OP),
    .funca(func),
    .rdts(rd_rt_s),
    .is(imm_s),
    .wea(Write_Reg),
    .ams(alu_mem_s),
    .rims(rt_imm_s),
    .aop(ALU_OP),
    .mwa(Mem_Write)
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