`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:04:10 06/16/2018
// Design Name:   LED_DISPLAY
// Module Name:   D:/workplace/verilog/E8-R_CPU/LED_DISPLAY_T.v
// Project Name:  R_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LED_DISPLAY
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module LED_DISPLAY_T;

	// Inputs
	reg [31:0] LED_DISPLAY_data_xi;
	reg LED_DISPLAY_overflow_flag_xi;
	reg LED_DISPLAY_zero_flag_xi;
	reg [2:0] LED_DISPLAY_SW_xi;

	// Outputs
	wire [7:0] LED_DISPLAY_F_xo;

	// Instantiate the Unit Under Test (UUT)
	LED_DISPLAY uut (
		.LED_DISPLAY_data_xi(LED_DISPLAY_data_xi), 
		.LED_DISPLAY_overflow_flag_xi(LED_DISPLAY_overflow_flag_xi), 
		.LED_DISPLAY_zero_flag_xi(LED_DISPLAY_zero_flag_xi), 
		.LED_DISPLAY_SW_xi(LED_DISPLAY_SW_xi), 
		.LED_DISPLAY_F_xo(LED_DISPLAY_F_xo)
	);

	initial begin
		// Initialize Inputs
		LED_DISPLAY_data_xi = 0;
		LED_DISPLAY_overflow_flag_xi = 0;
		LED_DISPLAY_zero_flag_xi = 0;
		LED_DISPLAY_SW_xi = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
    LED_DISPLAY_data_xi = 32'hffff_ffff;
	end
      
endmodule

