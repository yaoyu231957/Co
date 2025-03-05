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
    output [31:0] out_Shift
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