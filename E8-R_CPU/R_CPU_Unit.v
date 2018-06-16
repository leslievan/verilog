`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:33:57 06/16/2018 
// Design Name: 
// Module Name:    R_CPU_Unit 
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
module R_CPU_Unit(
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

  wire clk_de;
  wire ofa;
  wire zfa;
  wire [31 : 0] data;

  DEBOUNCE DE(
    .Clk(clkb),
    .Key_xi(clka),
    .Key_xo(clk_de)
  );

  R_CPU RC(
    .clka(clk_de),
    .rsta(rsta),
    .ofa(ofa),
    .zfa(zfa),
    .douta(data)
  );

  LED_DISPLAY L_D(
    .LED_DISPLAY_data_xi(data),
    .LED_DISPLAY_zero_flag_xi(zfa),
    .LED_DISPLAY_overflow_flag_xi(ofa),
    .LED_DISPLAY_SW_xi(sela),
    .LED_DISPLAY_F_xo(LED)
  );

endmodule