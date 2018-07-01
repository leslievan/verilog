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
  func,
  zf,
  wrs,
  imms,
  rims,
  wrds,
  aop,
  wea,
  mwa,
  pcs
  );

  input [5 : 0] opa;
  input [5 : 0] func;
  input zf;
  output reg [1 : 0] wrs;
  output reg imms;
  output reg rims;
  output reg [1 : 0] wrds;
  output reg [2 : 0] aop;
  output reg wea;
  output reg mwa;
  output reg [1 : 0] pcs;

  always @(*) begin
    case (opa)
      6'b000000: begin
        case (func)
          6'b100000: aop = 3'b100;
          6'b100010: aop = 3'b101;
          6'b100100: aop = 3'b000;
          6'b100101: aop = 3'b001;
          6'b100110: aop = 3'b010;
          6'b100111: aop = 3'b011;
          6'b101011: aop = 3'b110;
          6'b000100: aop = 3'b111;
          6'b001000: aop = 3'b100;
          default: aop = 3'b000;
        endcase
        wrs = 2'b00;
        imms = 0;
        rims = 0;
        wrds = 2'b00;
        wea = (~func[5] && func[3])? 0 : 1;
        mwa = 0;
        pcs = (~func[5] && func[3])? 2'b00 : 2'b01;
      end
      6'b001000: begin
        wrs = 2'b01;
        imms = 1;
        rims = 1;
        wrds = 2'b00;
        aop = 3'b100;
        wea = 1;
        mwa = 0;
        pcs = 2'b00;
      end
      6'b001100: begin
        wrs = 2'b01;
        imms = 0;
        rims = 1;
        wrds = 2'b00;
        aop = 3'b000;
        wea = 1;
        mwa = 0;
        pcs = 2'b00;
      end
      6'b001110: begin
        wrs = 2'b01;
        imms = 0;
        rims = 1;
        wrds = 2'b00;
        aop = 3'b010;
        wea = 1;
        mwa = 0;
        pcs = 2'b00;
      end
      6'b001011: begin
        wrs = 2'b01;
        imms = 0;
        rims = 1;
        wrds = 2'b00;
        aop = 3'b110;
        wea = 1;
        mwa = 0;
        pcs = 2'b00;
      end
      6'b100011: begin
        wrs = 2'b01;
        imms = 1;
        rims = 1;
        wrds = 2'b01;
        aop = 3'b100;
        wea = 1;
        mwa = 0;
        pcs = 2'b00;
      end
      6'b101011: begin
        wrs = 2'b00;
        imms = 1;
        rims = 1;
        wrds = 2'b00;
        aop = 3'b100;
        wea = 0;
        mwa = 1;
        pcs = 2'b00;
      end
      6'b000100: begin
        wrs = 2'b00;
        imms = 0;
        rims = 0;
        wrds = 2'b00;
        aop = 3'b101;
        wea = 0;
        mwa = 0;
        pcs = (zf)? 2'b00 : 2'b10;
      end
      6'b000101: begin
        wrs = 2'b00;
        imms = 0;
        rims = 0;
        wrds = 2'b00;
        aop = 3'b101;
        wea = 0;
        mwa = 0;
        pcs = (zf)? 2'b10 : 2'b00;
      end
      6'b000010: begin
        wrs = 2'b00;
        imms = 0;
        rims = 0;
        wrds = 2'b00;
        aop = 3'b000;
        wea = 0;
        mwa = 0;
        pcs = 2'b11;
      end
      6'b000011: begin
        wrs = 2'b1X;
        imms = 0;
        rims = 0;
        wrds = 2'b1X;
        aop = 3'b000;
        wea = 1;
        mwa = 0;
        pcs = 2'b11;
      end
    endcase
  end

endmodule
