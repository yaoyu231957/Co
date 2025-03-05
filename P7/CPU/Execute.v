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
    input Req,
    input [31:0] in_PC,
	 input [31:0] in_instruction,
    input [31:0] in_data_rs,
    input [31:0] in_data_rt,
    input [4:0] in_addr_rt,
    input [4:0] in_addr_rd,
    input [31:0] in_EXT,
    input [31:0] in_Shift,
    input in_IsDelay,
    input [4:0] D_ExcCode,
    output [31:0] out_PC,
	 output [31:0] out_instruction,
	 output [31:0] out_data_rt,
    output [4:0] out_addr_rt,
    output [4:0] out_addr_rd,
    output [31:0] out_Shift,
    output [31:0] out_ALUout,
    output [31:0] HI_LO,
    output [1:0] E_Tnew,
    output E_stop_eret,
    output [4:0] E_RegWreg,
    output E_RegWrite,
    output Start,
    output Busy,
    output out_IsDelay,
    output [4:0] E_ExcCode
    );


    //wires
    wire [5:0] opcode,funct;
    wire [4:0] RegWreg;
    wire [1:0] EXT_sel;
    wire [2:0] ALUop,Branch,MemtoReg,Memwrite;
    wire Shift_sel,Regwrite;
    wire [31:0] in1,in2,ALU_out;
    wire [1:0] cal_op;
    
    //output
    assign opcode = in_instruction[31:26];
    assign funct = in_instruction[5:0];
    assign out_PC = in_PC;
	 assign out_instruction = (E_ExcCode != `None) ? 32'b0 : in_instruction;
	 assign out_data_rt = in_data_rt;
    assign out_addr_rt = in_addr_rt;
    assign out_addr_rd = in_addr_rd;
    assign out_Shift = in_Shift;
	 assign out_ALUout = ALU_out;
     assign E_RegWreg = RegWreg;
     /*assign E_RegWD = (opcode == `lui) ? in_Shift : 
                      (opcode == `jal) ? in_PC + 8 :
                      ((opcode == `cal_md) && ((funct == `mfhi) || (funct == `mflo))) ? HI_LO :
                      ALU_out;*/
     assign E_RegWrite = Regwrite;

    assign out_IsDelay = in_IsDelay;
    assign E_ExcCode = (D_ExcCode != `None) ? D_ExcCode :
                       (EXC_Ari_Ov == 1) ? `Ov : 
                       ((EXC_DM_Ov == 1) && (cal_op == 2'b10)) ? `AdEL :
                       ((EXC_DM_Ov == 1) && (cal_op == 2'b11)) ? `AdES :
                       `None;

    //wiring
    assign in1= in_data_rs;
    assign in2= (ALUsrc == 0) ? in_data_rt :
                (ALUsrc == 1) ? in_EXT :
                0;
    assign cal_op = (((opcode == `cal_r) && ((funct == `add) || (funct == `sub))) || (opcode == `addi)) ? 2'b01 : 
                    ((opcode == `lw) || (opcode == `lh) || (opcode == `lb)) ? 2'b10 :
                    ((opcode == `sw) || (opcode == `sh) || (opcode == `sb)) ? 2'b11 :
                    2'b00;

    Controller e_controller(in_instruction,RegWreg,MemtoReg,Regwrite,ALUop,ALUsrc,Memwrite,Branch,EXT_sel,Shift_sel);
    
    E_AT e_at(in_instruction,E_Tnew,E_stop_eret);

	 ALU alu(in1,in2,ALUop,cal_op,ALU_out,EXC_Ari_Ov,EXC_DM_Ov);
	 
	 Mult_Div mult_div(clk,reset,in_instruction,in1,in2,Req,Start,Busy,HI_LO);


endmodule
