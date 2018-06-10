`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:59:13 06/10/2018
// Design Name:   R_CPU
// Module Name:   D:/workplace/verilog/E8-R_CPU/R_CPU_T.v
// Project Name:  R_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: R_CPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module R_CPU_T;

	// Inputs
	reg clka;
	reg rsta;

	// Outputs
	wire ofa;
	wire zfa;
	wire [31:0] douta;

	// Instantiate the Unit Under Test (UUT)
	R_CPU uut (
		.clka(clka), 
		.rsta(rsta), 
		.ofa(ofa), 
		.zfa(zfa), 
		.douta(douta)
	);

	initial begin
		// Initialize Inputs
		clka = 0;
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
    
    #100;
    clka = 0;
    
    #100;
    clka = 1;
    
    #100;
    clka = 0;
	end
      
endmodule

