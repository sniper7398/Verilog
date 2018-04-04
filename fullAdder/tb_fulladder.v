`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:36:57 02/13/2018
// Design Name:   fulladder
// Module Name:   D:/fulladder/tb_fulladder.v
// Project Name:  fulladder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_fulladder;

	// Inputs
	reg e1;
	reg e2;
	reg cin;

	// Outputs
	wire sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	fulladder uut (
		.e1(e1), 
		.e2(e2), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		e1 = 0;
		e2 = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		e1 = 1;
		e2 = 0;
		cin = 1;		
	   
		#100
		
		e1 = 0;
		e2 = 1;
		cin = 1;
        
		// Add stimulus here

	end
      
endmodule

