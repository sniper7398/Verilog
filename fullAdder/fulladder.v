`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:29:22 02/13/2018 
// Design Name: 
// Module Name:    fulladder 
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
module fulladder(e1,e2,cin,sum,cout);
	input e1,e2,cin;
	output sum,cout;
	assign sum = e1^e2^cin;
	assign cout = (e1&e2)|(e1&cin)|(e2&cin);
endmodule
