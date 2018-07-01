`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:59:26 06/09/2018 
// Design Name: 
// Module Name:    Clk_100Hz 
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
module CLK_100Hz(
  Clk_xi,
  Clk_xo
  );

  input Clk_xi;
  output reg Clk_xo;
  parameter N = 500000;
  reg [31:0] Counter;

  always @(posedge Clk_xi) begin
    if (Counter == N) begin
      Counter <= 32'b0;
      Clk_xo <= ~Clk_xo;
    end else begin
      Counter <= Counter + 1;
    end
  end

endmodule
