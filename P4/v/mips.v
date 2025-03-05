`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:30:28 11/03/2023 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset
    ); 
     
    wire [5:0] opcode;
    wire [5:0] funct;
    wire W_en,ALUsrc,DM_sel,DM_en,branch,Jal,Jr,Shift_sel;
    wire [1:0] Wreg_sel,Wdata_sel,EXT_sel;
    wire [2:0] ALUop;
    wire [31:0] instruction;
    assign opcode = instruction[31:26];
    assign funct = instruction[5:0];
 
      
	 
	 Controller controller(opcode,funct,Wreg_sel,Wdata_sel,W_en,ALUop,ALUsrc,DM_sel,branch,Jal,Jr,EXT_sel,Shift_sel);
    Datapath datapath(Wreg_sel,Wdata_sel,W_en,ALUop,ALUsrc,DM_sel,branch,Jal,Jr,EXT_sel,Shift_sel,clk,reset,instruction);

endmodule   
   