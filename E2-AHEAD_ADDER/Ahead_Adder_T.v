`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:50:32 06/10/2018
// Design Name:   AHEAD_ADDER
// Module Name:   D:/workplace/verilog/E2-AHEAD_ADDER/Ahead_Adder_T.v
// Project Name:  AHEAD_ADDER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AHEAD_ADDER
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Ahead_Adder_T;

	// Inputs
	reg [3:0] AA_A;
	reg [3:0] AA_B;
	reg AA_C_0;

	// Outputs
	wire [3:0] AA_F;
	wire AA_C_4;

	// Instantiate the Unit Under Test (UUT)
	AHEAD_ADDER uut (
		.AA_A(AA_A), 
		.AA_B(AA_B), 
		.AA_C_0(AA_C_0), 
		.AA_F(AA_F), 
		.AA_C_4(AA_C_4)
	);

	initial begin
		// Initialize Inputs
		AA_A = 0;
		AA_B = 0;
		AA_C_0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
    AA_A = 2;
    AA_B = 1;
    AA_C_0 = 0;
    
    #100;
    AA_A = 3;
		AA_B = 4;
		AA_C_0 = 1;
    
    #100;
    AA_A = 2;
		AA_B = 7;
		AA_C_0 = 0;

	end
      
endmodule

