`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:09:12 06/17/2018
// Design Name:   TRANSLATE_CONTROL
// Module Name:   D:/workplace/verilog/E9-R_I_CPU/Translate_Control_T.v
// Project Name:  R_I_CPU
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
	wire rdts;
	wire is;
	wire wea;
	wire ams;
	wire rims;
	wire [2:0] aop;
	wire mwa;

	// Instantiate the Unit Under Test (UUT)
	TRANSLATE_CONTROL uut (
		.opa(opa), 
		.funca(funca), 
		.rdts(rdts), 
		.is(is), 
		.wea(wea), 
		.ams(ams), 
		.rims(rims), 
		.aop(aop), 
		.mwa(mwa)
	);

	initial begin
		// Initialize Inputs
		opa = 0;
		funca = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
    opa = 6'b000000;
    funca = 6'b100000;
    
    #100;
    opa = 6'b001000;
    
    #100;
    opa = 6'b001110;
	end
      
endmodule

