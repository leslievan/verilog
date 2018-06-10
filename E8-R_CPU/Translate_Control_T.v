`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:08:46 06/10/2018
// Design Name:   TRANSLATE_CONTROL
// Module Name:   D:/workplace/verilog/E8-R_CPU/Translate_Control_T.v
// Project Name:  R_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TRANSLATE_CONTROL
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Translate_Control_T;

	// Inputs
	reg [5:0] opa;
	reg [5:0] funca;

	// Outputs
	wire wea;
	wire [2:0] aopa;

	// Instantiate the Unit Under Test (UUT)
	TRANSLATE_CONTROL uut (
		.opa(opa), 
		.funca(funca), 
		.wea(wea), 
		.aopa(aopa)
	);

	initial begin
		// Initialize Inputs
		opa = 0;
		funca = 6'b100000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
    funca = 6'b100000;

    #100;
    funca = 6'b100010;

    #100;
    funca = 6'b100100;

    #100;
    funca = 6'b100101;

    #100;
    funca = 6'b100110;

    #100;
    funca = 6'b100111;

    #100;
    funca = 6'b101011;

    #100;
    funca = 6'b000100;

	end
      
endmodule

