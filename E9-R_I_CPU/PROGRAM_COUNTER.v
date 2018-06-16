`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:19:53 06/09/2018 
// Design Name: 
// Module Name:    PROGRAM_COUNTER 
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
module PROGRAM_COUNTER(
  clka,
  rsta,
  douta
  );

  input clka;
  input rsta;
  output reg [31 : 0] douta;
  wire [31 : 0] PC_new;

  initial douta = 32'hffff_fffc;  
  assign PC_new = douta + 4;

  always @(posedge clka or posedge rsta) begin
    if (rsta) begin
      douta <= 32'b0;
    end else begin
      douta <= PC_new;
    end
  end


endmodule
