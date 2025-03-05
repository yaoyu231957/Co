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
    output [31:0] out_Shift
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
