`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:46:57 06/10/2018 
// Design Name: 
// Module Name:    TRANSLATE_CONTROL 
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
module TRANSLATE_CONTROL(
  opa,
  funca,
  rdts,
  is,
  wea,
  ams,
  rims,
  aop,
  mwa
  );

  input [5 : 0] opa;
  input [5 : 0] funca;
  output reg rdts;
  output reg is;
  output reg wea;
  output reg ams;
  output reg rims;
  output reg [2 : 0] aop;
  output reg mwa;

  always @(*) begin
    case (opa)
      6'b000000: begin
        case (funca)
          6'b100000: aop = 3'b100;
          6'b100010: aop = 3'b101;
          6'b100100: aop = 3'b000;
          6'b100101: aop = 3'b001;
          6'b100110: aop = 3'b010;
          6'b100111: aop = 3'b011;
          6'b101011: aop = 3'b110;
          6'b000100: aop = 3'b111;
          default: aop = 000;
        endcase
        rdts = 0;
        is = 0;
        wea = 1;
        ams = 0;
        rims = 0;
        mwa = 0;
      end
      6'b001000: begin
        rdts = 1;
        is = 1;
        rims = 1;
        ams = 0;
        aop = 3'b100;
        wea = 1;
        mwa = 0;
      end
      6'b001100: begin
        rdts = 1;
        is = 0;
        rims = 1;
        ams = 0;
        aop = 3'b000;
        wea = 1;
        mwa = 0;
      end
      6'b001110: begin
        rdts = 1;
        is = 0;
        rims = 1;
        ams = 0;
        aop = 3'b010;
        wea = 1;
        mwa = 0;
      end
      6'b001011: begin
        rdts = 1;
        is = 0;
        rims = 1;
        ams = 0;
        aop = 3'b110;
        wea = 1;
        mwa = 0;
      end
      6'b100011: begin
        rdts = 1;
        is = 1;
        rims = 1;
        ams = 1;
        aop = 3'b100;
        wea = 1;
        mwa = 0;
      end
      6'b101011: begin
        rdts = 1;
        is = 1;
        rims = 1;
        ams = 1;
        aop = 3'b100;
        wea = 0;
        mwa = 1;
      end
      default: begin
        rdts = 1;
        is = 1;
        rims = 1;
        ams = 0;
        aop = 3'b100;
        wea = 1;
        mwa = 0;
      end
    endcase
  end

endmodule
