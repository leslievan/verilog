`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:15:40 06/11/2018
// Design Name:   MEMORY_DESIGN
// Module Name:   D:/workplace/verilog/E5-MEMORY_DESIGN/Memory_Design_T.v
// Project Name:  MEMORY_DESIGN
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MEMORY_DESIGN
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Memory_Design_T;

	// Inputs
	reg [7:2] Mem_Addr;
	reg [1:0] Sel;
	reg Mem_Write;
	reg Clk;
	reg Clk_100M;

	// Outputs
	wire [7:0] LED;

	// Instantiate the Unit Under Test (UUT)
	MEMORY_DESIGN uut (
		.Mem_Addr(Mem_Addr), 
		.Sel(Sel), 
		.Mem_Write(Mem_Write), 
		.Clk(Clk), 
		.Clk_100M(Clk_100M), 
		.LED(LED)
	);

	initial begin
		// Initialize Inputs
		Mem_Addr = 0;
		Sel = 0;
		Mem_Write = 0;
		Clk = 0;
		Clk_100M = 0;

		// Wait 100 ns for global reset to finish
		#100;
    
		// Add stimulus here

	end
      
endmodule

