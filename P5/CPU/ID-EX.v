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
module ID_EX(
    input clk,
    input reset,
    input stop_sel,
	 input [31:0] in_PC,
	 input [31:0] in_instruction,
    input [31:0] in_data_rs,
    input [31:0] in_data_rt,
    input [31:0] in_addr_rt,
    input [31:0] in_addr_rd,
    input [31:0] in_EXT,
    input [31:0] in_Shift,
	 output [31:0] out_PC,
	 output [31:0] out_instruction,
    output [31:0] out_data_rs,
    output [31:0] out_data_rt,
    output [31:0] out_addr_rt,
    output [31:0] out_addr_rd,
    output [31:0] out_EXT,
    output [31:0] out_Shift,
    output [31:0] E_RegWD
    );
	 
    reg [31:0] PC;
	 reg [31:0] instruction;
    reg [31:0] data_rs;
    reg [31:0] data_rt;
    reg [31:0] addr_rt;
    reg [31:0] addr_rd;
    reg [31:0] EXT;
    reg [31:0] Shift;

    initial begin
		  PC=0;
		  instruction=0;
        data_rs=0;
        data_rt=0;
        addr_rd=0;
        EXT=0;
        Shift=0;
    end

    //Signal definition
    `define ALU 6'b000000
    `define nop 6'b000000
    `define add 6'b100000
    `define sub 6'b100010
    `define ori 6'b001101
    `define lw  6'b100011
    `define sw  6'b101011
    `define beq 6'b000100
    `define lui 6'b001111
    `define jal 6'b000011
    `define jr  6'b001000

     assign E_RegWD = (out_instruction[31:26] == `lui) ? out_Shift : 
                      (out_instruction[31:26] == `jal) ? out_PC + 8 :
                      0;

    assign out_PC=PC;	 
	 assign out_instruction=instruction;
    assign out_data_rs=data_rs;
    assign out_data_rt=data_rt;
    assign out_addr_rt=addr_rt;
    assign out_addr_rd=addr_rd;
    assign out_EXT=EXT;
    assign out_Shift=Shift;

    always @(posedge clk ) begin
        if(reset==1 || stop_sel== 1)
        begin
            PC<=0;
			   instruction<=0;
            data_rs<=0;
            data_rt<=0;
            addr_rt<=0;
            addr_rd<=0;
            EXT<=0;
            Shift<=0;
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
        end
    end

endmodule		