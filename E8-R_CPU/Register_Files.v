`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:58:01 06/10/2018 
// Design Name: 
// Module Name:    REGISTER_FILES 
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
module REGISTER_FILES(
  clka,
  rsta,
  wea,
  waddra,
  raddra,
  raddrb,
  dina,
  douta,
  doutb
  );

  input clka;
  input rsta;
  input wea;
  input [4 : 0] raddra;
  input [4 : 0] raddrb;
  input [4 : 0] waddra;
  input [31 : 0] dina;
  output [31 : 0] douta;
  output [31 : 0] doutb;
  reg [31 : 0] REG_FILES[0 : 31];
  reg [5 : 0] counter;

  initial begin
    REG_FILES[0] = 32'h0000_0000;
    counter = 0;
  end

  //read data
  assign douta = REG_FILES[raddra];
  assign doutb = REG_FILES[raddrb];

  //write and reset data when posedge clk
  always @(posedge clka or posedge rsta) begin
    if (rsta) begin
      counter = 0;
      /*while (counter < 32) begin
        REG_FILES[counter] = 32'b0;
        counter = counter + 1;
      end*/
    end else
      if (wea) begin
        if (waddra == 0)
          REG_FILES[0] = 0;
        else
          REG_FILES[waddra] = dina;
      end
  end

endmodule
