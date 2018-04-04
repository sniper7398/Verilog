`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:46:10 03/12/2018 
// Design Name: 
// Module Name:    ALU 
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
module ALU(op,a,b,opcode);

  output reg [7:0] op;
   input [7:0]     a,b;
   input [2:0] opcode;


always @(*)
begin
 case (opcode)
   3'b000 : begin op <= a + b;end
   3'b001 : begin op <= a - b;end
   3'b010 : begin op <= a & b;end
   3'b011 : begin op <= a | b;end
   3'b100 : begin op <= ~ a;end
   3'b101 : begin op <= a >> 1;end
   3'b110 : begin op <= a << 1 ;end
   default:op <= 8'bXXXXXXXX;
 endcase
end
endmodule
