`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    15:22:25 06/08/2018
// Design Name:
// Module Name:    MEMORY_DESIGN
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
module MEMORY_DESIGN(
  Mem_Addr,
  Sel,
  Mem_Write,
  Clk,
  Clk_100M,
  LED
  );

  input [7:2] Mem_Addr;
  input [1:0] Sel;
  input Mem_Write;
  input Clk;
  input Clk_100M;
  output reg [7:0] LED;
  reg [31:0] M_W_Data;
  wire [31:0] M_R_Data;
  wire Clk_de;
  
  DEBOUNCE DB(
    .Clk(Clk_100M),
    .Key_xi(Clk),
    .Key_xo(Clk_de)
  );
  
  RAM_B Data_RAM(  
      .clka(Clk_de),
      .wea(Mem_Write),
      .addra(Mem_Addr),
      .dina(M_W_Data),
      .douta(M_R_Data)
  );

  always @(*) begin
    if (Mem_Write) begin
      case (Sel)
        2'b00: M_W_Data = 32'hFFFF_FFFF;
        2'b01: M_W_Data = 32'h0000_0000;
        2'b10: M_W_Data = 32'hF0F0_F0F0;
        2'b11: M_W_Data = 32'hAAAA_AAAA;
        default: M_W_Data = 32'b0;
      endcase
    end else begin
      case (Sel)
        2'b00: LED = M_R_Data[7:0];
        2'b01: LED = M_R_Data[15:8];
        2'b10: LED = M_R_Data[23:16];
        2'b11: LED = M_R_Data[31:24];
        default: LED = 8'b0;
      endcase
    end
  end
  

endmodule
