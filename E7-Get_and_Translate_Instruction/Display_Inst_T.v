`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:16:59 06/09/2018
// Design Name:   DISPLAY_INST
// Module Name:   D:/workplace/verilog/E7-Get_and_Translate_Instruction/Display_Inst_T.v
// Project Name:  Get_and_Translate_Instruction
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DISPLAY_INST
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Display_Inst_T;

	// Inputs
	reg Rst;
	reg Clk;
	reg Clk_100M;
	reg [1:0] Sel;

	// Outputs
	wire [7:0] LED;

	// Instantiate the Unit Under Test (UUT)
	DISPLAY_INST uut (
		.Rst(Rst), 
		.Clk(Clk), 
		.Clk_100M(Clk_100M), 
		.Sel(Sel), 
		.LED(LED)
	);

	initial begin
		// Initialize Inputs
		Rst = 0;
		Clk = 0;
		Clk_100M = 0;
		Sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
    
		// Add stimulus here

	end
      
endmodule

