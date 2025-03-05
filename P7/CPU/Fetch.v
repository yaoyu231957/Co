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

    //Signal definition
    `include "define.v"

module Fetch(
    input clk,
    input reset,
    input stop_sel,
    input Req,
	 input [2:0]PC_sel,
     input [31:0] D_PC,
     input [31:0] D_instruction,
	 input [31:0]Shift_out,
    input [31:0]reg31,
	 input [31:0] i_inst_rdata,
     input IsBranch,
     input D_eret,
     input [31:0] EPC,
	 output [31:0] F_PC,
	 output [31:0] i_inst_addr,
    output [31:0] instruction,
    output IsDelay,
    output [4:0] F_ExcCode
    );

    wire [31:0] PC,im_addr;

    //assign im_addr=PC;
	 assign F_PC=i_inst_addr;
	 assign instruction = (F_ExcCode == `AdEL) ? 32'b0 : i_inst_rdata;
	 assign i_inst_addr = (D_eret) ? EPC : PC;

     	
    assign PC_noequal = (PC % 4 == 0) ? 0 : 1;
    assign PC_overaddr = (PC < 32'h00003000 || PC > 32'h00006ffc) ? 1 : 0;
    assign F_ExcCode = (PC_noequal | PC_overaddr) ? `AdEL : `None;
    assign IsDelay = (IsBranch == 1) ? 1 : 0;

    PC pc(PC_sel,stop_sel,Req,D_PC,D_instruction,reg31,Shift_out,D_eret,EPC,clk,reset,PC);
    //IM im(im_addr,instruction);

endmodule
