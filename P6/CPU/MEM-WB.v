`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:30:05 11/11/2023 
// Design Name: 
// Module Name:    MEM-WB 
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

module MEM_WB(
    input clk,
    input reset,
    input [31:0] in_PC,
	 input [31:0] in_instruction,
    input [31:0] in_ALUout,
    input [31:0] in_HI_LO,
    input [31:0] in_DMout,
    input [31:0] in_addr_rd,
    input [31:0] in_addr_rt,
    input [31:0] in_Shift,
    input in_bw,
    output [31:0] out_PC,
	 output [31:0] out_instruction,	 
    output [31:0] out_ALUout,
    output [31:0] out_HI_LO,
    output [31:0] out_DMout,
    output [31:0] out_addr_rd,
    output [31:0] out_addr_rt,
    output [31:0] out_Shift,
    output [31:0] W_RegWD,
    output out_bw
    );

    wire [5:0] opcode,funct;

    reg [31:0] PC;
	 reg [31:0] instruction;
    reg [31:0] ALUout;
    reg [31:0] HI_LO;
    reg [31:0] DMout;
    reg [31:0] addr_rt;
    reg [31:0] addr_rd;
    reg [31:0] Shift;
    reg bw;


    initial begin
        PC=0;
	 	  instruction=0;	 
        ALUout=0;
        HI_LO=0;
        DMout=0;
        addr_rt=0;
        addr_rd=0;
        Shift=0;
        bw=0;
    end

    assign opcode = out_instruction[31:26];
    assign funct = out_instruction[5:0];

    assign W_RegWD = ((opcode == `cal_r) && ((funct == `add) || (funct == `sub ) || (funct == `and) || (funct == `or) || (funct == `slt) || (funct == `sltu)) || (opcode == `ori) || (opcode == `andi) || (opcode == `addi)) ? out_ALUout : 
                        ((opcode == `lw) || (opcode == `lh) || (opcode == `lb) || (opcode == `sw) || (opcode == `sh) || (opcode == `sb)) ? out_DMout :
                        (opcode == `lui) ? out_Shift :
                        (opcode == `jal) ? out_PC+8 :
                        ((opcode == `cal_md) && (funct == `mfhi || funct == `mflo)) ? out_HI_LO :
                        0;

    
    assign out_PC=PC;
	 assign out_instruction=instruction;		
    assign out_ALUout=ALUout;
    assign out_HI_LO = HI_LO;
    assign out_DMout=DMout;
    assign out_addr_rt=addr_rt;
    assign out_addr_rd=addr_rd;
    assign out_Shift=Shift;
    assign out_bw=bw;


    always @(posedge clk ) begin
        if(reset==1)
        begin
            PC<=0;
		  	   instruction<=0;	
            ALUout<=0;
            HI_LO<=0;
            DMout<=0;
            addr_rt<=0;
            addr_rd<=0;
            Shift<=0;
            bw<=0;
        end
        else
        begin
            PC<=in_PC;
		  		instruction<=in_instruction;	
            ALUout<=in_ALUout;
            HI_LO<=in_HI_LO;
            DMout<=in_DMout;
            addr_rt<=in_addr_rt;
            addr_rd<=in_addr_rd;
            Shift<=in_Shift;
            bw<=in_bw;
        end
    end

endmodule
