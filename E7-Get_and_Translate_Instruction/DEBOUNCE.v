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
  Clk,
  Key_xi,
  Key_xo
  );
  input Clk;
  input Key_xi;
  output reg Key_xo;
  wire Clk_100;
  reg [2:0] ST;
  parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100,
    S5 = 3'b101;
  
  CLK_100Hz CK(
    .Clk_xi(Clk),
    .Clk_xo(Clk_100)
  );

  always @(posedge Clk_100) begin
    case (ST)
      S0: begin
        ST <=  Key_xi? S1 : S0;
         Key_xo <= 1'b0;
      end
      S1: begin
        ST <=  Key_xi? S3 : S2;
         Key_xo <=  Key_xi;
      end
      S2: begin
        ST <=  Key_xi? S1 : S0;
         Key_xo <= 1'b0;
      end
      S3: begin
        ST <=  Key_xi? S3 : S4;
         Key_xo <= 1'b1;
      end
      S4: begin
        ST <=  Key_xi? S5 : S0;
         Key_xo <=  Key_xi;
      end
      S5: begin
        ST <=  Key_xi? S3 : S4;
         Key_xo <= 1'b1;
      end
      default: ST <=  Key_xi? S3 : S0;
    endcase
  end

endmodule
