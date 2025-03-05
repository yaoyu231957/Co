`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:13:45 11/11/2023 
// Design Name: 
// Module Name:    Fetch 
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
module Fetch(
    input clk,
    input reset,
    input stop_sel,
	 input [2:0]PC_sel,
     input [31:0] D_PC,
     input [31:0] D_instruction,
	 input [31:0]Shift_out,
    input [31:0]reg31,
	 output [31:0] F_PC,
    output [31:0] instruction
    );

    wire [31:0] PC,im_addr;

    assign im_addr=PC;
	 assign F_PC=PC;

    PC pc(PC_sel,stop_sel,D_PC,D_instruction,reg31,Shift_out,clk,reset,PC);
    IM im(im_addr,instruction);

endmodule
