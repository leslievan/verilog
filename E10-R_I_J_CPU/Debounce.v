`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:03:06 06/09/2018 
// Design Name: 
// Module Name:    DEBOUNCE 
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
module DEBOUNCE(
  clk,
  key_xi,
  key_xo
  );
  input clk;
  input key_xi;
  output reg key_xo;
  wire Clk_100;
  reg [2:0] ST;
  parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100,
    S5 = 3'b101;
  
  CLK_100Hz CK(
    .Clk_xi(clk),
    .Clk_xo(Clk_100)
  );

  always @(posedge Clk_100) begin
    case (ST)
      S0: begin
        ST <=  key_xi? S1 : S0;
         key_xo <= 1'b0;
      end
      S1: begin
        ST <=  key_xi? S3 : S2;
         key_xo <=  key_xi;
      end
      S2: begin
        ST <=  key_xi? S1 : S0;
         key_xo <= 1'b0;
      end
      S3: begin
        ST <=  key_xi? S3 : S4;
         key_xo <= 1'b1;
      end
      S4: begin
        ST <=  key_xi? S5 : S0;
         key_xo <=  key_xi;
      end
      S5: begin
        ST <=  key_xi? S3 : S4;
         key_xo <= 1'b1;
      end
      default: ST <=  key_xi? S3 : S0;
    endcase
  end

endmodule
