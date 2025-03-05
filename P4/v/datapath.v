`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:13:58 11/05/2023 
// Design Name: 
// Module Name:    datapath 
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
module Datapath(
    input [1:0] Wreg_sel,
    input [1:0] Wdata_sel,
    input W_en,
    input [2:0] ALUop,
    input ALUsrc,
    input DM_sel,
    input Branch,
	 input Jal,
	 input Jr,
    input [1:0] EXT_sel,
    input Shift_sel,
    input clk,
    input reset,
    output [31:0] instruction
    );

    wire [31:0] PC,WPC,WD,RD1,RD2,in1,in2,dm_pc,ALU_out,DM_out,Shift_out,EXT_out,ALU,im_addr,dm_addr,data,Shift_in;
    wire [15:0] EXT_in;
    wire [5:0] Wreg;
	 wire [4:0] Reg1,Reg2;
	 wire [2:0] PC_sel;

    initial
    begin
        
    end

    assign im_addr = PC;
    assign WPC = PC;
    assign Reg1 = instruction[25:21];
    assign Reg2 = instruction[20:16];
    assign WD = (Wdata_sel == 0) ? ALU_out : 
                (Wdata_sel == 1) ? DM_out :
                (Wdata_sel == 2) ? Shift_out :
					 (Wdata_sel == 3) ? PC + 4 :
                0;
    assign Wreg = (Wreg_sel == 0) ? instruction[20:16] :
                  (Wreg_sel == 1) ? instruction[15:11] :
						(Wreg_sel == 2) ? 5'b11111 :
                  5'b00000;     
    assign in1 = RD1;
    assign in2 = (ALUsrc == 0) ? RD2 :
                 (ALUsrc == 1) ? EXT_out :
                 0;
    assign dm_pc = PC;
    assign dm_addr = ALU_out;
    assign data = RD2;
    assign EXT_in = instruction[15:0];
    assign Shift_in = EXT_out;
   

    PC pc(PC_sel,Shift_out,instruction,RD1,clk,reset,PC);
    IM im(im_addr,clk,reset,instruction);
    GRF grf(WPC,Reg1,Reg2,WD,Wreg,W_en,clk,reset,RD1,RD2);
    ALU alu(in1,in2,ALUop,zero,ALU_out);
    DM dm(dm_pc,dm_addr,data,DM_sel,clk,reset,DM_out);
    EXT ext(EXT_in,EXT_sel,EXT_out);
    Shift shift(Shift_in,Shift_sel,Shift_out);
    Branch branch(Branch,Jal,Jr,zero,PC_sel);

endmodule
