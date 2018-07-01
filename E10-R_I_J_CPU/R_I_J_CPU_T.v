`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:43:13 06/23/2018
// Design Name:   R_I_J_CPU
// Module Name:   D:/workplace/verilog/E10-R_I_J_CPU/R_I_J_CPU_T.v
// Project Name:  R_I_J_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: R_I_J_CPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module R_I_J_CPU_T;

	// Inputs
	reg clka;
	reg clkb;
	reg rsta;

	// Outputs
	wire ofa;
	wire zfa;
	wire [31:0] douta;

	// Instantiate the Unit Under Test (UUT)
	R_I_J_CPU uut (
		.clka(clka), 
		.clkb(clkb), 
		.rsta(rsta), 
		.ofa(ofa), 
		.zfa(zfa), 
		.douta(douta)
	);

	initial begin
		// Initialize Inputs
		clka = 0;
		clkb = 0;
		rsta = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
    clka = 1;
    #100;
    clka = 0;
    #100;
    clka = 1;
    #100;
    clka = 0;
    #100;
    clka = 1;
    #100;
    clka = 0;
    #100;
    clka = 1;
    #100;
    clka = 0;
    #100;
    clka = 1;
    #100;
    clka = 0;
    #100;
    clka = 1;
	end
  
  always @(*) begin
    clkb = 0;
    #1 clkb = ~clkb;
    #1;
  end
endmodule

