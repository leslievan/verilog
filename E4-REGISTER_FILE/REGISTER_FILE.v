`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:06:34 05/19/2018 
// Design Name: 
// Module Name:    REGISTER_FILE 
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
module REGISTER_FILE(
  input     [4:0] RF_Addr,
  input           RF_Write,
  input     [1:0] RF_Sel,
  input           RF_clk,
  input           RF_Reset,
  input           RF_Port_Sel,
  output reg[7:0] RF_LED
  );
  
  reg       [31:0]RF_REG_Files[0:31];
  reg       [4:0] RF_R_Addr_A;
  reg       [4:0] RF_R_Addr_B;
  wire      [31:0]RF_R_Data_A;
  wire      [31:0]RF_R_Data_B;
  reg       [5:0] RF_Count;
  reg       [31:0]RF_DATA[0:3];

  initial begin
    RF_DATA[0] = 32'hFFFF_FFFF;
    RF_DATA[1] = 32'h0000_0000;
    RF_DATA[2] = 32'hF0F0_F0F0;
    RF_DATA[3] = 32'hAAAA_AAAA;
    RF_Count = 0;
    while (RF_Count < 32) begin
      RF_REG_Files[RF_Count] = 32'b0;
      RF_Count = RF_Count + 1;
    end
  end

  assign RF_R_Data_A = RF_REG_Files[RF_R_Addr_A];
  assign RF_R_Data_B = RF_REG_Files[RF_R_Addr_B];

  always @(*) begin
    if (!RF_Write) begin
      if (!RF_Port_Sel) begin
        case (RF_Sel)
          2'b00: RF_LED = RF_R_Data_A[7:0];
          2'b01: RF_LED = RF_R_Data_A[15:8];
          2'b10: RF_LED = RF_R_Data_A[23:16];
          2'b11: RF_LED = RF_R_Data_A[31:24];
          default: RF_LED = 8'b0;
        endcase
      end
      else begin
        case (RF_Sel)
          2'b00: RF_LED = RF_R_Data_B[7:0];
          2'b01: RF_LED = RF_R_Data_B[15:8];
          2'b10: RF_LED = RF_R_Data_B[23:16];
          2'b11: RF_LED = RF_R_Data_B[31:24];
          default: RF_LED = 8'b0;
        endcase
      end
    end
  end
  
  always @(posedge RF_clk or posedge RF_Reset) begin
    if (RF_Reset) begin
      RF_Count = 0;
      while (RF_Count < 32) begin
        RF_REG_Files[RF_Count] = 32'b0;
        RF_Count = RF_Count + 1;
      end
    end
    else begin
      if (RF_Write)
        RF_REG_Files[RF_Addr] = RF_DATA[RF_Sel];
      else begin
        if (!RF_Port_Sel)
          RF_R_Addr_A = RF_Addr;
        else
          RF_R_Addr_B = RF_Addr;
      end
    end
  end

endmodule
