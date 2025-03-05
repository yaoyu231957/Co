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
module MEM_WB(
    input clk,
    input reset,
    input [31:0] in_PC,
	 input [31:0] in_instruction,
    input [31:0] in_ALUout,
    input [31:0] in_DMout,
    input [31:0] in_addr_rd,
    input [31:0] in_addr_rt,
    input [31:0] in_Shift,
    output [31:0] out_PC,
	 output [31:0] out_instruction,	 
    output [31:0] out_ALUout,
    output [31:0] out_DMout,
    output [31:0] out_addr_rd,
    output [31:0] out_addr_rt,
    output [31:0] out_Shift,
    output [31:0] W_RegWD
    );

    reg [31:0] PC;
	 reg [31:0] instruction;
    reg [31:0] ALUout;
    reg [31:0] DMout;
    reg [31:0] addr_rt;
    reg [31:0] addr_rd;
    reg [31:0] Shift;


    initial begin
        PC=0;
	 	  instruction=0;	 
        ALUout=0;
        DMout=0;
        addr_rt=0;
        addr_rd=0;
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

    assign W_RegWD = ((out_instruction[31:26] == `ALU) || (out_instruction[31:26] == `ori)) ? out_ALUout : 
                        ((out_instruction[31:26] == `lw) || (out_instruction[31:26] == `sw)) ? out_DMout :
                        (out_instruction[31:26] == `lui) ? out_Shift :
                        (out_instruction[31:26] == `jal) ? out_PC+8 :
                        0;


    assign out_PC=PC;
	 assign out_instruction=instruction;		
    assign out_ALUout=ALUout;
    assign out_DMout=DMout;
    assign out_addr_rt=addr_rt;
    assign out_addr_rd=addr_rd;
    assign out_Shift=Shift;


    always @(posedge clk ) begin
        if(reset==1)
        begin
            PC<=0;
		  	   instruction<=0;	
            ALUout<=0;
            DMout<=0;
            addr_rt<=0;
            addr_rd<=0;
            Shift<=0;
        end
        else
        begin
            PC<=in_PC;
		  		instruction<=in_instruction;	
            ALUout<=in_ALUout;
            DMout<=in_DMout;
            addr_rt<=in_addr_rt;
            addr_rd<=in_addr_rd;
            Shift<=in_Shift;
        end
    end

endmodule
