`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:24:17 11/11/2023 
// Design Name: 
// Module Name:    EX-MEM 
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

module EX_MEM(
    input clk,
    input reset,
    input Req,
    input [31:0] in_PC,
	 input [31:0] in_instruction,
    input [31:0] in_ALUout,
    input [31:0] in_HI_LO,
	 input [31:0] in_data_rt,
    input [4:0] in_addr_rt,
    input [4:0] in_addr_rd,
    input [31:0] in_Shift,
    input in_IsDelay,
    input [4:0] in_E_ExcCode,
    output [31:0] out_PC,
	 output [31:0] out_instruction,
    output [31:0] out_ALUout,
    output [31:0] out_HI_LO,
	 output [31:0] out_data_rt,
    output [4:0] out_addr_rt,
    output [4:0] out_addr_rd,
    output [31:0] out_Shift,
    output out_IsDelay,
    output [4:0] out_E_ExcCode,
    output [31:0] M_RegWD
    );


    reg [31:0] PC;
	 reg [31:0] instruction;
    reg [31:0] ALUout;
    reg [31:0] HI_LO;
	 reg [31:0] data_rt;
    reg [4:0] addr_rt;
    reg [4:0] addr_rd;
    reg [31:0] Shift;
    reg IsDelay;
    reg [4:0] E_ExcCode;

    wire [5:0] opcode,funct;

    initial begin
        PC=0;
		  instruction=0;
        ALUout=0;
        HI_LO=0;
		  data_rt=0;
        addr_rt=0;
        addr_rd=0;
        Shift=0;
        IsDelay=0;
        E_ExcCode=`None;
    end

    assign opcode = out_instruction[31:26];
    assign funct = out_instruction[5:0];

    assign M_RegWD = (opcode == `lui) ? out_Shift : 
                     (opcode == `jal) ? out_PC + 8 : 
                     ((opcode == `cal_md) && ((funct == `mfhi) || (funct == `mflo))) ? out_HI_LO :
                      out_ALUout;

    assign out_PC=PC;
	 assign out_instruction=instruction;
    assign out_ALUout=ALUout;
    assign out_HI_LO = HI_LO;
	 assign out_data_rt=data_rt;
    assign out_addr_rt=addr_rt;
    assign out_addr_rd=addr_rd;
    assign out_Shift=Shift;
    assign out_IsDelay=IsDelay;
    assign out_E_ExcCode=E_ExcCode;


    always @(posedge clk ) begin
        if(reset==1)
        begin
            PC<=32'h00003000;
		  		instruction<=0;	
            ALUout<=0;
            HI_LO<=0;
				data_rt<=0;
            addr_rt<=0;
            addr_rd<=0;
            Shift<=0;
            IsDelay<=0;
            E_ExcCode<=`None;
        end
        else if(Req == 1)
            begin
                PC<=32'h00004180;
		  		instruction<=0;	
                ALUout<=0;
                HI_LO<=0;
                data_rt<=0;
                addr_rt<=0;
                addr_rd<=0;
                Shift<=0;
                IsDelay<=0;
                E_ExcCode<=`None;
            end
            else
            begin
                PC<=in_PC;
                    instruction<=in_instruction;	
                ALUout<=in_ALUout;
                HI_LO<=in_HI_LO;
                    data_rt<=in_data_rt;
                addr_rt<=in_addr_rt;
                addr_rd<=in_addr_rd;
                Shift<=in_Shift;
                IsDelay<=in_IsDelay;
                E_ExcCode<=in_E_ExcCode;
            end
    end

endmodule
