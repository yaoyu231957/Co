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
     
    wire [4:0] RegWreg;
    wire Regwrite,Memwrite,Shift_sel,ALUsrc;
    wire [1:0] MemtoReg,EXT_sel;
    wire [2:0] ALUop,branch;
    wire [31:0] instruction;
      
 
	  
	 Controller controller(instruction,RegWreg,MemtoReg,Regwrite,ALUop,ALUsrc,Memwrite,branch,EXT_sel,Shift_sel);
	 
    Datapath datapath(clk,reset,instruction);

endmodule   
   