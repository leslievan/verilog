`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:24:06 06/09/2018
// Design Name:   GET_INS
// Module Name:   D:/workplace/verilog/E7-Get_and_Translate_Instruction/Get_Inst_T.v
// Project Name:  Get_and_Translate_Instruction
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GET_INS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Get_Inst_T;

	// Inputs
	reg Rst;
	reg Clk;

	// Outputs
	wire [31:0] Inst_Code;
	wire [31:0] PC;

	// Instantiate the Unit Under Test (UUT)
	GET_INS uut (
		.Rst(Rst), 
		.Clk(Clk), 
		.Inst_Code(Inst_Code), 
		.PC(PC)
	);

	initial begin
		// Initialize Inputs
		Rst = 0;
		Clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
    Clk = 1;
    
    #100;
    Clk = 0;
    
    #100;
    Clk = 1;

	end
      
endmodule

