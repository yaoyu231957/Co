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

    //Signal definition
    `include "define.v"

module Memory(
    input clk,
    input reset,
	 input [31:0] in_PC,
	 input [31:0] in_instruction,
    input [31:0] in_ALUout,
    input [31:0] in_HI_LO,
	 input [31:0] in_data_rt,
    input [31:0] in_addr_rt,
    input [31:0] in_addr_rd,
    input [31:0] in_Shift,
    input [31:0] m_data_rdata,
    input in_bw,
    output [31:0] out_PC,
	 output [31:0] out_instruction,	 
    output [31:0] out_ALUout,
    output [31:0] out_HI_LO,
    output [31:0] out_addr_rt,
    output [31:0] out_addr_rd,
    output [31:0] out_Shift,  
    output [31:0] out_DMout,
    output [31:0] m_data_addr,
    output [31:0] m_data_wdata,
    output [3:0] m_data_byteen,
    output [31:0] m_inst_addr,
    output [1:0] M_Tnew,
    output [4:0] M_RegWreg,
    output M_RegWrite,
    output out_bw
    );

    //wires
    wire [4:0] RegWreg;
	 wire [5:0] opcode,funct;
    wire [1:0] EXT_sel,addr;
    wire [2:0] ALUop,MemtoReg,Branch,Op,Memwrite;
    wire Shift_sel,Regwrite,DM_sel;
    wire [31:0] in1,in2,ALU_out,dm_pc,dm_addr,data,DM_out,Din,Dout;
 
    //output
	 assign opcode = in_instruction[31:26];
    assign funct = in_instruction[5:0];
    assign out_PC = in_PC;
	 assign out_instruction = in_instruction;	 
    assign out_addr_rt = in_addr_rt;
    assign out_addr_rd = in_addr_rd;
    assign out_Shift = in_Shift;
	 assign out_ALUout = in_ALUout;
    assign out_HI_LO = in_HI_LO;
    assign out_DMout = Dout;
    assign M_RegWreg = RegWreg;
    assign M_RegWrite = Regwrite;
    assign out_bw = in_bw;

    //wiring
	 assign opcode = in_instruction[31:26];
    assign m_inst_addr=in_PC;
    assign m_data_addr=in_ALUout;
    assign m_data_wdata=(opcode == `sw) ? in_data_rt :
                        (opcode == `sh) ? {2{in_data_rt[15:0]}} :
                        (opcode == `sb) ? {4{in_data_rt[7:0]}} :
                        0;
    assign m_data_byteen=(Memwrite == 1) ? 4'b1111 :
                         ((Memwrite == 2) && (in_ALUout[1] == 0)) ? 4'b0011 :
                         ((Memwrite == 2) && (in_ALUout[1] == 1)) ? 4'b1100 :
                         ((Memwrite == 3) && (in_ALUout[1:0] == 0)) ? 4'b0001 :
                         ((Memwrite == 3) && (in_ALUout[1:0] == 1)) ? 4'b0010 :
                         ((Memwrite == 3) && (in_ALUout[1:0] == 2)) ? 4'b0100 :
                         ((Memwrite == 3) && (in_ALUout[1:0] == 3)) ? 4'b1000 :
                         4'b0;
    assign addr = in_ALUout[1:0];
    assign Din = m_data_rdata;
    assign Op = (opcode == `lw) ? 3'b000 :
                (opcode == `lh) ? 3'b100 :
                (opcode == `lb) ? 3'b010 :
                3'b000;
 
    Controller m_controller(in_instruction,RegWreg,MemtoReg,Regwrite,ALUop,ALUsrc,Memwrite,Branch,EXT_sel,Shift_sel);
    
    M_AT m_at(in_instruction,M_Tnew);
	 
	 DM_EXT dm_ext(addr,Din,Op,Dout);

	 //DM dm(dm_pc,dm_addr,data,DM_sel,clk,reset,DM_out);

endmodule
