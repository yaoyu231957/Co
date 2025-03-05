`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:21:45 11/11/2023 
// Design Name: 
// Module Name:    Execute 
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

module Execute(
    input clk,
    input reset,
    input [31:0] in_PC,
	 input [31:0] in_instruction,
    input [31:0] in_data_rs,
    input [31:0] in_data_rt,
    input [31:0] in_addr_rt,
    input [31:0] in_addr_rd,
    input [31:0] in_EXT,
    input [31:0] in_Shift,
    input in_bw,
    output [31:0] out_PC,
	 output [31:0] out_instruction,
	 output [31:0] out_data_rt,
    output [31:0] out_addr_rt,
    output [31:0] out_addr_rd,
    output [31:0] out_Shift,
    output [31:0] out_ALUout,
    output [31:0] HI_LO,
    output [1:0] E_Tnew,
    output [4:0] E_RegWreg,
    output E_RegWrite,
    output Start,
    output Busy,
    output out_bw
    );


    //wires
    wire [5:0] opcode,funct;
    wire [4:0] RegWreg;
    wire [1:0] EXT_sel;
    wire [2:0] ALUop,Branch,MemtoReg,Memwrite;
    wire Shift_sel,Regwrite;
    wire [31:0] in1,in2,ALU_out;
    
    //output
    assign opcode = in_instruction[31:26];
    assign funct = in_instruction[5:0];
    assign out_PC = in_PC;
	 assign out_instruction = in_instruction;
	 assign out_data_rt = in_data_rt;
    assign out_addr_rt = in_addr_rt;
    assign out_addr_rd = in_addr_rd;
    assign out_Shift = in_Shift;
	 assign out_ALUout = ALU_out;
     assign E_RegWreg = RegWreg;
     assign E_RegWrite = Regwrite;
     assign out_bw = in_bw;


    //wiring
    assign in1= in_data_rs;
    assign in2= (ALUsrc == 0) ? in_data_rt :
                (ALUsrc == 1) ? in_EXT :
                0;

    Controller e_controller(in_instruction,RegWreg,MemtoReg,Regwrite,ALUop,ALUsrc,Memwrite,Branch,EXT_sel,Shift_sel);
    
    E_AT e_at(in_instruction,E_Tnew);

	 ALU alu(in1,in2,ALUop,ALU_out);
	 
	 Mult_Div mult_div(clk,reset,in_instruction,in1,in2,Start,Busy,HI_LO);


endmodule
