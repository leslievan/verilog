`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:14:07 06/17/2018
// Design Name:   PROGRAM_COUNTER
// Module Name:   D:/workplace/verilog/E9-R_I_CPU/Program_Counter_T.v
// Project Name:  R_I_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PROGRAM_COUNTER
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Program_Counter_T;

	// Inputs
	reg clka;
	reg rsta;

	// Outputs
	wire [31:0] douta;

	// Instantiate the Unit Under Test (UUT)
	PROGRAM_COUNTER uut (
		.clka(clka), 
		.rsta(rsta), 
		.douta(douta)
	);

	initial begin
		// Initialize Inputs
		clka = 0;
		rsta = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
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
    
    #100;
    clka = 1;
    
    #100;
    rsta = 1;
    clka = 0;
    
    #100;
    rsta = 0;
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

