`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:39:00 06/10/2018
// Design Name:   REGISTER_FILES
// Module Name:   D:/workplace/verilog/E8-R_CPU/Register_Files_T.v
// Project Name:  R_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: REGISTER_FILES
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Register_Files_T;

	// Inputs
	reg clka;
	reg rsta;
	reg wea;
	reg [4:0] waddra;
	reg [4:0] raddra;
	reg [4:0] raddrb;
	reg [31:0] dina;

	// Outputs
	wire [31:0] douta;
	wire [31:0] doutb;

	// Instantiate the Unit Under Test (UUT)
	REGISTER_FILES uut (
		.clka(clka), 
		.rsta(rsta), 
		.wea(wea),  
		.waddra(waddra), 
		.raddra(raddra), 
		.raddrb(raddrb), 
		.dina(dina), 
		.douta(douta), 
		.doutb(doutb)
	);

	initial begin
		// Initialize Inputs
		clka = 0;
		rsta = 0;
		wea = 0;
		waddra = 0;
		raddra = 0;
		raddrb = 0;
		dina = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
    clka = 1;
    
    #100;
    raddra = 1;
    raddrb = 2;
    
    #100;
    raddra = 3;
    raddrb =3;
    
    #100;
    clka = 0;
    rsta = 1;
    
    #100
    raddra = 1;
    raddrb = 2;
    
	end
      
endmodule

