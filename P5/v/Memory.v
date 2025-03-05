`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:28:05 11/11/2023 
// Design Name: 
// Module Name:    Memory 
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
module Memory(
    input clk,
    input reset,
	 input [31:0] in_PC,
	 input [31:0] in_instruction,
    input [31:0] in_ALUout,
	 input [31:0] in_data_rt,
    input [31:0] in_addr_rt,
    input [31:0] in_addr_rd,
    input [31:0] in_Shift,
    output [31:0] out_PC,
	 output [31:0] out_instruction,	 
    output [31:0] out_ALUout,
    output [31:0] out_addr_rt,
    output [31:0] out_addr_rd,
    output [31:0] out_Shift,  
    output [31:0] out_DMout,
    output [1:0] M_Tnew,
    output [4:0] M_RegWreg,
    output M_RegWrite
    );

    //signal definition
    `define lui 6'b001111
    `define jal 6'b000011

    //wires
    wire [4:0] RegWreg;
    wire [1:0] MemtoReg,EXT_sel;
    wire [2:0] ALUop,Branch;
    wire Shift_sel,Regwrite,DM_sel;
    wire [31:0] in1,in2,ALU_out,dm_pc,dm_addr,data,DM_out;
 
    //output
    assign out_PC = in_PC;
	 assign out_instruction = in_instruction;	 
    assign out_addr_rt = in_addr_rt;
    assign out_addr_rd = in_addr_rd;
    assign out_Shift = in_Shift;
	 assign out_ALUout = in_ALUout;
    assign out_DMout = DM_out;
    assign M_RegWreg = RegWreg;
    assign M_RegWrite = Regwrite;

    //wiring
    assign dm_pc=in_PC;
    assign dm_addr=in_ALUout;
    assign data=in_data_rt;
    assign DM_sel=Memwrite;

    Controller m_controller(in_instruction,RegWreg,MemtoReg,Regwrite,ALUop,ALUsrc,Memwrite,Branch,EXT_sel,Shift_sel);
    
    M_AT m_at(in_instruction,M_Tnew);

	 DM dm(dm_pc,dm_addr,data,DM_sel,clk,reset,DM_out);

endmodule
