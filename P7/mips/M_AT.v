`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:20:53 11/12/2023 
// Design Name: 
// Module Name:    M_AT 
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

module M_AT(
    input [31:0] instruction,
    output [1:0] M_Tnew,
    output M_stop_eret
    );
	 
	 //wires
	 wire [5:0] opcode,funct;
	 
	 //wiring
    assign opcode=instruction[31:26];
    assign funct=instruction[5:0];
	 
	 //output
	 assign M_Tnew = ((opcode == `lw) || (opcode == `lh) || (opcode == `lb) || ((opcode == `cal_c0) && (instruction[25:21] == `mfc0))) ? 1 : 0;
    assign M_stop_eret = ((opcode == `cal_c0) && (instruction[25:21] == `mtc0)) && (instruction[15:11] == 5'd14) ;

endmodule
