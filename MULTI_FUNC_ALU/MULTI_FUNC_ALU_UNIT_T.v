`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:32:27 05/19/2018
// Design Name:   MULTI_FUNC_ALU_UNIT
// Module Name:   D:/workplace/verilog/MULTI_FUNC_ALU/MULTI_FUNC_ALU_UNIT_T.v
// Project Name:  MULTI_FUNC_ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MULTI_FUNC_ALU_UNIT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MULTI_FUNC_ALU_UNIT_T;

	// Inputs
	reg [2:0] MULTI_FUNC_ALU_UNIT_OP_xi;
	reg [2:0] MULTI_FUNC_ALU_UNIT_data_SW_xi;
	reg [2:0] MULTI_FUNC_ALU_UNIT_LED_SW_xi;

	// Outputs
	wire [7:0] MULTI_FUNC_ALU_UNIT_LED_xo;

	// Instantiate the Unit Under Test (UUT)
	MULTI_FUNC_ALU_UNIT uut (
		.MULTI_FUNC_ALU_UNIT_OP_xi(MULTI_FUNC_ALU_UNIT_OP_xi), 
		.MULTI_FUNC_ALU_UNIT_data_SW_xi(MULTI_FUNC_ALU_UNIT_data_SW_xi), 
		.MULTI_FUNC_ALU_UNIT_LED_SW_xi(MULTI_FUNC_ALU_UNIT_LED_SW_xi), 
		.MULTI_FUNC_ALU_UNIT_LED_xo(MULTI_FUNC_ALU_UNIT_LED_xo)
	);

	initial begin
		// Initialize Inputs
		MULTI_FUNC_ALU_UNIT_OP_xi = 0;
		MULTI_FUNC_ALU_UNIT_data_SW_xi = 0;
		MULTI_FUNC_ALU_UNIT_LED_SW_xi = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

