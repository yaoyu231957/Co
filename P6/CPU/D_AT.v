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

    //signal definition
    `include "define.v"

module D_AT(
    input [31:0] instruction,
	 output [1:0] Rs_Tuse,
    output [1:0] Rt_Tuse,
    output MDen
    );
	 
	 //wires
	 wire [5:0] opcode,funct;

	 //wiring
    assign opcode=instruction[31:26];
    assign funct=instruction[5:0];
	 
	 //output
    assign Rs_Tuse = (((opcode == `cal_r) && ((funct == `add) || (funct == `sub ) || (funct == `and) || (funct == `or) || (funct ==`slt) || (funct == `sltu))) || (opcode == `ori) || (opcode == `addi) || (opcode == `andi) || (opcode == `lui) || (opcode == `lw) || (opcode == `lh) || (opcode == `lb) || (opcode == `sw) || (opcode == `sh) || (opcode == `sb) || (opcode == `cal_md) && ((funct == `mthi) || (funct == `mtlo))) ? 1 : 0;
	 assign Rt_Tuse = ((opcode == `sw) || (opcode == `sh) || (opcode == `sb))? 2 :
                 (((opcode == `cal_r) && ((funct == `add) || (funct == `sub ) || (funct == `and) || (funct == `or) || (funct ==`slt) || (funct == `sltu))) || (opcode == `ori) || (opcode == `addi) || (opcode == `andi) || (opcode == `lui)) ? 1 :
                 0;
    assign MDen = ((opcode == `cal_md) && ((funct == `mult) || (funct == `multu) || (funct == `div) || (funct == `divu) || (funct == `new_md) || (funct == `mfhi) || (funct ==`mflo) || (funct == `mthi) || (funct == `mtlo))) ? 1 : 0;
endmodule
