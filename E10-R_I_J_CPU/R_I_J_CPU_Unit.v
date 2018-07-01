`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:26:25 06/23/2018 
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
module R_I_J_CPU_Unit(
  clka,
  clkb,
  rsta,
  sela,
  LED
  );

  input clka;
  input clkb;
  input rsta;
  input [3 : 0] sela;
  output [7 : 0] LED;

  R_I_J_CPU RIJC(
    .clka(clk_de),
    .clkb(clkb)
    .rsta(rst_de),
    .ofa(ofa),
    .zfa(zfa),
    .douta(f_data),
    .doutb(r_data),
  );

  LED_DISPLAY L_D(
    .dina(f_data),
    .dinb(r_data),
    .zfa(zfa),
    .ofa(ofa),
    .sela(sela),
    .LED(LED)
  );

endmodule
