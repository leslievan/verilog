`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:38:19 06/10/2018
// Design Name:   FULL_ADDER
// Module Name:   D:/workplace/verilog/E1-FULL_ADDER/Full_Adder_T.v
// Project Name:  FULL_ADDER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FULL_ADDER
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Full_Adder_T;

	// Inputs
	reg FA_A;
	reg FA_B;
	reg FA_C_0;

	// Outputs
	wire FA_F;
	wire FA_C_1;

	// Instantiate the Unit Under Test (UUT)
	FULL_ADDER uut (
		.FA_A(FA_A), 
		.FA_B(FA_B), 
		.FA_C_0(FA_C_0), 
		.FA_F(FA_F), 
		.FA_C_1(FA_C_1)
	);

	initial begin
		// Initialize Inputs
		FA_A = 0;
		FA_B = 0;
		FA_C_0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
    
        
		// Add stimulus here
    FA_A = 1;
    FA_B = 0;
    FA_C_0 = 1;
    
    #100;
    FA_A = 1;
    FA_B = 0;
    FA_C_0 = 1;

	end
      
endmodule

