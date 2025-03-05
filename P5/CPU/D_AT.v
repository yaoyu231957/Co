`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:08:42 11/12/2023 
// Design Name: 
// Module Name:    D_AT 
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
module D_AT(
    input [31:0] instruction,
	 output [1:0] Rs_Tuse,
    output [1:0] Rt_Tuse
    );

	 //signal definition
    `define ALU 6'b000000
    `define nop 6'b000000
    `define add 6'b100000
    `define sub 6'b100010
    `define ori 6'b001101
    `define lw  6'b100011
    `define sw  6'b101011
    `define beq 6'b000100
    `define lui 6'b001111
    `define jal 6'b000011
    `define jr  6'b001000
	 
	 //wires
	 wire [5:0] opcode,funct;

	 //wiring
    assign opcode=instruction[31:26];
    assign funct=instruction[5:0];
	 
	 //output
    assign Rs_Tuse = (((opcode == `ALU) && ((funct == `add) || (funct == `sub ))) || (opcode == `ori) || (opcode == `lui) || (opcode == `lw) || (opcode == `sw)) ? 1 : 0;
	 assign Rt_Tuse = (opcode == `sw) ? 2 :
                 (((opcode == `ALU) && ((funct == `add) || (funct == `sub ))) || (opcode == `ori) || (opcode == `lui)) ? 1 :
                 0;
endmodule
