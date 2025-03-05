`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:07:56 11/12/2023 
// Design Name: 
// Module Name:    E_AT 
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

    //Signal definition
    `include "define.v"

module E_AT(
    input [31:0] instruction,
    output [1:0] E_Tnew
    );

	 
	 //wires
	 wire [5:0] opcode,funct;

	 //wiring
    assign opcode=instruction[31:26];
    assign funct=instruction[5:0];
	 
	 //output
    assign E_Tnew = (((opcode == `cal_r) && ((funct == `add) || (funct == `sub ) || (funct == `and) || (funct == `or) || (funct ==`slt) || (funct == `sltu))) || (opcode == `ori) || (opcode == `addi) || (opcode == `andi) || (opcode == `lui) || (opcode == `sw)  || (opcode == `sh) || (opcode == `sb) || (opcode == `cal_md) && ((funct == `mfhi) || (funct == `mflo) || (funct == `mthi) || (funct == `mtlo))) ? 1 :
                    ((opcode == `lw) || (opcode == `lh) || (opcode == `lb)) ? 2 :
                    0; 


endmodule
