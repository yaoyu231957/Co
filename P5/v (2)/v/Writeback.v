`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:32:04 11/11/2023 
// Design Name: 
// Module Name:    Writeback 
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
module Writeback(
    input [31:0] in_PC,
	 input [31:0] in_instruction,
    input [31:0] in_ALUout,
    input [31:0] in_DMout,
    input [31:0] in_addr_rd,
    input [31:0] in_addr_rt,
    input [31:0] in_Shift,
    output [31:0] out_PC,
    output [1:0] W_Tnew,
    output [4:0] W_RegWreg,
    output [31:0] W_RegWD,
    output W_Regwrite
    );

    //wires
    wire [4:0] RegWreg;
    wire [1:0] MemtoReg,EXT_sel;
    wire [2:0] ALUop,Branch;
    wire Shift_sel,Regwrite,DM_sel;
    wire [31:0] in1,in2,ALU_out,dm_pc,dm_addr,data,DM_out,RegWD;

    
    //wiring
    assign RegWD = (MemtoReg == 0) ? in_ALUout : 
                (MemtoReg == 1) ? in_DMout :
                (MemtoReg == 2) ? in_Shift :
					 (MemtoReg == 3) ? in_PC+8 :
                0;
    
    //output
    assign out_PC = in_PC;
    assign W_Regwrite = Regwrite;  
    assign W_RegWreg = RegWreg;
    assign W_RegWD = RegWD;


	 Controller w_controller(in_instruction,RegWreg,MemtoReg,Regwrite,ALUop,ALUsrc,Memwrite,Branch,EXT_sel,Shift_sel);
    
    W_AT w_at(in_instruction,W_Tnew);

endmodule
