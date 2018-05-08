`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:14:40 12/22/2017 
// Design Name: 
// Module Name:    DigiLEDDisplay 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module DigitronDisplay(
	 input CLK_100M,
	 input S,
	 input Reset,
	 output [3:0] AN,
	 output [7:0] Seg
    );
	 wire CLK_100, CLK_8;
	 wire [15:0] Data;
	 wire [3:0] Code;
	 wire [1:0] Bit_Sel;
	 
	 F_8Hz F0(.CLK(CLK_100M), .Reset(Reset), .CLK_8(CLK_8));
	 
	 Counter C0(.CLK(CLK_8), .Reset(Reset), .S(S), .O(Data));
	 DataChoose_4to1_4bits D0(.S(Bit_Sel), .D0(Data[3:0]), .D1(Data[7:4]), .D2(Data[11:8]), .D3(Data[15:12]), .O(Code));
	 DataChoose_4to1_4bits D1(.S(Bit_Sel), .D0(4'b1110), .D1(4'b1101), .D2(4'b1011), .D3(4'b0111), .O(AN));
	 Translate D2(.S(Code), .O(Seg));
	 DigitronChoose D3(.CLK(CLK_100M), .Reset(Reset), .O(Bit_Sel));

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:41:01 12/22/2017 
// Design Name: 
// Module Name:    F8Hz 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module F_8Hz(
	 input CLK,
	 input Reset,
	 output reg CLK_8
    );
	 parameter N = 6250000;
	 reg [31:0] counter;
	 
	 always @ (posedge Reset or posedge CLK)
	 begin
		if (Reset)
			begin
				counter <= 32'b0;
				CLK_8 <= 1'b0;
			end
		else if (counter == N)
			begin
				counter <= 32'b0;
				CLK_8 <= ~CLK_8;
			end
		else
			counter <= counter + 1;
	 end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:14:53 12/22/2017 
// Design Name: 
// Module Name:    Counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Counter(
	 input CLK,
	 input Reset,
	 input S,
	 output reg [15:0] O
    );
	 
	 always @ (posedge Reset or posedge CLK)
		if (Reset)
			O = 0;
		else if (!S)
			O = O;
		else
			O = O + 1;
			
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:49:50 12/22/2017 
// Design Name: 
// Module Name:    DataChoose_16to4 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module DataChoose_4to1_4bits(
	 input [1:0] S,
	 input [3:0] D0,
	 input [3:0] D1,
	 input [3:0] D2,
	 input [3:0] D3,
	 output reg [3:0] O
    );
	 
	 always @ (*)
	 case (S)
		2'b00: O = D0;
		2'b01: O = D1;
		2'b10: O = D2;
		2'b11: O = D3;
	 endcase

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:54:48 12/22/2017 
// Design Name: 
// Module Name:    Display 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Translate(
	 input [3:0] S,
	 output reg [7:0] O
    );
	 reg [7:0] data[15:0];
	 
	 initial $readmemb("numbers.dat", data, 15, 0);
	 
	 always @ (*)
	 case (S)
		4'b0000: O = data[0];
		4'b0001: O = data[1];
		4'b0010: O = data[2];
		4'b0011: O = data[3];
		4'b0100: O = data[4];
		4'b0101: O = data[5];
		4'b0110: O = data[6];
		4'b0111: O = data[7];
		4'b1000: O = data[8];
		4'b1001: O = data[9];
		4'b1010: O = data[10];
		4'b1011: O = data[11];
		4'b1100: O = data[12];
		4'b1101: O = data[13];
		4'b1110: O = data[14];
		4'b1111: O = data[15];
	 endcase

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:28:01 12/22/2017 
// Design Name: 
// Module Name:    Fdiv_1M 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module DigitronChoose(
	 input CLK,
	 input Reset,
	 output [1:0] O
    );
	 reg [31:0] counter;
	 
	 assign O = counter[19:18];
	 
	 always @ (posedge Reset or posedge CLK)
	 begin
		if (Reset)
			begin
				counter <= 32'b0;
			end
		else
			counter <= counter + 1;
	 end

endmodule
