`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:19:30 11/11/2023 
// Design Name: 
// Module Name:    ID-EX 
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

module ID_EX(
    input clk,
    input reset,
    input stall,
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
    input [4:0] in_D_ExcCode,
	 output [31:0] out_PC,
	 output [31:0] out_instruction,
    output [31:0] out_data_rs,
    output [31:0] out_data_rt,
    output [4:0] out_addr_rt,
    output [4:0] out_addr_rd,
    output [31:0] out_EXT,
    output [31:0] out_Shift,
    output out_IsDelay,
    output [4:0] out_D_ExcCode,
    output [31:0] E_RegWD
    );
	 
    wire [5:0] opcode,funct;

    reg [31:0] PC;
	 reg [31:0] instruction;
    reg [31:0] data_rs;
    reg [31:0] data_rt;
    reg [4:0] addr_rt;
    reg [4:0] addr_rd;
    reg [31:0] EXT;
    reg [31:0] Shift;
    reg IsDelay;
    reg [4:0] D_ExcCode;

    initial begin
		  PC=0;
		  instruction=0;
        data_rs=0;
        data_rt=0;
        addr_rd=0;
        EXT=0;
        Shift=0;
        IsDelay=0;
        D_ExcCode=`None;
    end

    assign opcode = out_instruction[31:26];
    assign funct = out_instruction[5:0];

    assign E_RegWD = (opcode == `lui) ? out_Shift : 
                     (opcode == `jal) ? out_PC + 8 : 
                     0;


    assign out_PC=PC;	 
	 assign out_instruction=instruction;
    assign out_data_rs=data_rs;
    assign out_data_rt=data_rt;
    assign out_addr_rt=addr_rt;
    assign out_addr_rd=addr_rd;
    assign out_EXT=EXT;
    assign out_Shift=Shift;
    assign out_D_ExcCode=D_ExcCode;
    assign out_IsDelay = IsDelay;

    always @(posedge clk ) begin
        if(reset==1)
        begin
            PC<=32'h0000_3000;
			   instruction<=0;
            data_rs<=0;
            data_rt<=0;
            addr_rt<=0;
            addr_rd<=0;
            EXT<=0;
            Shift<=0;
            IsDelay<=0;
            D_ExcCode<=`None;
        end
        else if(Req == 1) 
            begin
                PC<=32'h0000_4180;
                instruction<=0;
                data_rs<=0;
                data_rt<=0;
                addr_rt<=0;
                addr_rd<=0;
                EXT<=0;
                Shift<=0;
                IsDelay<=0;
                D_ExcCode<=`None;
            end
            else if(stall == 1)
                begin
                    PC<=in_PC;
                    instruction<=0;
                    data_rs<=0;
                    data_rt<=0;
                    addr_rt<=0;
                    addr_rd<=0;
                    EXT<=0;
                    Shift<=0;
                    IsDelay<= in_IsDelay;
                    D_ExcCode<=`None;
                end
                else
                begin
                    PC<=in_PC;
                        instruction<=in_instruction;
                    data_rs<=in_data_rs;
                    data_rt<=in_data_rt;
                    addr_rt<=in_addr_rt;
                    addr_rd<=in_addr_rd;
                    EXT<=in_EXT;
                    Shift<=in_Shift;
                    IsDelay<=in_IsDelay;
                    D_ExcCode<=in_D_ExcCode;
                end
    end

endmodule		