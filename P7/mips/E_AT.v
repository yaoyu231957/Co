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
    output [1:0] E_Tnew,
    output E_stop_eret
    );

	 
	 //wires
	 wire [5:0] opcode,funct;

	 //wiring
    assign opcode=instruction[31:26];
    assign funct=instruction[5:0];
	 
	 //output
    assign E_Tnew = (((opcode == `cal_r) && ((funct == `add) || (funct == `sub ) || (funct == `and) || (funct == `or) || (funct ==`slt) || (funct == `sltu))) || (opcode == `ori) || (opcode == `addi) || (opcode == `andi) || (opcode == `lui) || (opcode == `sw)  || (opcode == `sh) || (opcode == `sb)) ? 1 :
                    ((opcode == `lw) || (opcode == `lh) || (opcode == `lb) || ((opcode == `cal_c0) && (instruction[25:21] == `mfc0))) ? 2 :
                    0; 

    assign E_stop_eret = ((opcode == `cal_c0) && (instruction[25:21] == `mtc0)) && (instruction[15:11] == 5'd14) ;

endmodule
