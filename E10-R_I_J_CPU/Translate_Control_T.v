`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:53:45 06/23/2018
// Design Name:   TRANSLATE_CONTROL
// Module Name:   D:/workplace/verilog/E10-R_I_J_CPU/Translate_Control_T.v
// Project Name:  R_I_J_CPU
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
	reg [5:0] func;
	reg zf;

	// Outputs
	wire [1:0] wrs;
	wire imms;
	wire rims;
	wire [1:0] wrds;
	wire [2:0] aop;
	wire wea;
	wire mwa;
	wire [1:0] pcs;

	// Instantiate the Unit Under Test (UUT)
	TRANSLATE_CONTROL uut (
		.opa(opa), 
		.func(func), 
		.zf(zf), 
		.wrs(wrs), 
		.imms(imms), 
		.rims(rims), 
		.wrds(wrds), 
		.aop(aop), 
		.wea(wea), 
		.mwa(mwa), 
		.pcs(pcs)
	);

	initial begin
		// Initialize Inputs
		opa = 0;
		func = 0;
		zf = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
    opa = 6'b000000;
    func = 6'b100000;
	end
      
endmodule

