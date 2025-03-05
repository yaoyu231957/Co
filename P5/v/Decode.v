`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:16:59 11/11/2023 
// Design Name: 
// Module Name:    Decode 
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
module Decode(
    input clk,
    input reset,
    input [31:0] in_D_PC,
    input [31:0] in_W_PC,
    input [31:0] in_instruction,
    input [31:0] D_rs_trans,
    input [31:0] D_rt_trans,
    input [31:0] D_RegWD,
    input [4:0] D_RegWreg,
    input D_Regwrite,
    output [31:0] out_D_PC, 
    output [31:0] out_instruction,
    output [31:0] data_rs,
    output [31:0] data_rt,
    output [31:0] addr_rt,
    output [31:0] addr_rd,
    output [31:0] EXT_out,
    output [31:0] Shift_out,
    output [2:0] PC_sel,
    output [1:0] Rs_Tuse,
    output [1:0] Rt_Tuse
    );
   
    //wires
    wire [31:0] WPC,RD1,RD2,Shift_in;
    wire [15:0] EXT_in;
    wire [4:0] RegWreg,Reg1,Reg2;
    wire [1:0] MemtoReg,EXT_sel;
    wire [2:0] ALUop,Branch;
    wire Shift_sel,Regwrite;
   
    //output
    assign out_D_PC=in_D_PC;
    assign out_instruction=in_instruction;
    assign data_rs=RD1;
    assign data_rt=RD2;
    assign addr_rt=in_instruction[20:16];
    assign addr_rd=in_instruction[15:11];


    //wiring
    assign WPC = in_W_PC;
    assign Reg1 = in_instruction[25:21];
    assign Reg2 = in_instruction[20:16];

    assign EXT_in = in_instruction[15:0];
    assign Shift_in = EXT_out;     
 

    Controller d_controller(in_instruction,RegWreg,MemtoReg,Regwrite,ALUop,ALUsrc,Memwrite,Branch,EXT_sel,Shift_sel);
	
     D_AT d_at(in_instruction,Rs_Tuse,Rt_Tuse);
    
    GRF grf(WPC,Reg1,Reg2,D_RegWD,D_RegWreg,D_Regwrite,clk,reset,RD1,RD2);
	
     EXT ext(EXT_in,EXT_sel,EXT_out);
    
    Shift shift(Shift_in,Shift_sel,Shift_out);
    
    Branch branch(Branch,D_rs_trans,D_rt_trans,PC_sel);
	 
	 
endmodule
