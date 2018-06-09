`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:32:53 05/19/2018
// Design Name:   MULTI_FUNC_ALU
// Module Name:   D:/workplace/verilog/MULTI_FUNC_ALU/MULTI_FUNC_ALU_T.v
// Project Name:  MULTI_FUNC_ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MULTI_FUNC_ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MULTI_FUNC_ALU_T;

	// Inputs
	reg [31:0] MULTI_FUNC_ALU_A_xi;
	reg [31:0] MULTI_FUNC_ALU_B_xi;
	reg [2:0] MULTI_FUNC_ALU_OP_xi;

	// Outputs
	wire [31:0] MULTI_FUNC_ALU_F_xo;
	wire MULTI_FUNC_ALU_overflow_flag_xo;
	wire MULTI_FUNC_ALU_zero_flag_xo;

	// Instantiate the Unit Under Test (UUT)
	MULTI_FUNC_ALU uut (
		.MULTI_FUNC_ALU_A_xi(MULTI_FUNC_ALU_A_xi), 
		.MULTI_FUNC_ALU_B_xi(MULTI_FUNC_ALU_B_xi), 
		.MULTI_FUNC_ALU_OP_xi(MULTI_FUNC_ALU_OP_xi), 
		.MULTI_FUNC_ALU_F_xo(MULTI_FUNC_ALU_F_xo), 
		.MULTI_FUNC_ALU_overflow_flag_xo(MULTI_FUNC_ALU_overflow_flag_xo), 
		.MULTI_FUNC_ALU_zero_flag_xo(MULTI_FUNC_ALU_zero_flag_xo)
	);

	initial begin
		// Initialize Inputs
		MULTI_FUNC_ALU_A_xi = 0;
		MULTI_FUNC_ALU_B_xi = 0;
		MULTI_FUNC_ALU_OP_xi = 5;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

