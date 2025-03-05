`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:13:16 11/03/2023 
// Design Name: 
// Module Name:    Controller 
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

module Controller(
    input [31:0] instruction,
    output [4:0] RegWreg,
    output [2:0] MemtoReg,
    output Regwrite,
    output [2:0] ALUop,
    output ALUsrc,
    output [2:0] Memwrite,
    output [2:0] branch,
    output [1:0] EXT_sel,
    output Shift_sel
    );

    //wires
    wire [5:0] opcode,funct;
    wire [1:0] RegDst;

    //Signal determination
    assign opcode=instruction[31:26];
    assign funct=instruction[5:0];


    assign RegDst = ((opcode == `cal_r) && ((funct == `add) || (funct == `sub ) || (funct == `and) || (funct == `or) || (funct == `slt) || (funct == `sltu) || (funct == `mfhi) || (funct == `mflo))) ? 2'b01 : 
                        (opcode == `jal) ? 2'b10 : 2'b00;
    assign MemtoReg = ((opcode == `cal_r) && ((funct == `add) || (funct == `sub ) || (funct == `and) || (funct == `or) || (funct == `slt) || (funct == `sltu)) || (opcode == `ori) || (opcode == `andi) || (opcode == `addi)) ? 3'b000 : 
                        ((opcode == `lw) || (opcode == `lh) || (opcode == `lb) || (opcode == `sw) || (opcode == `sh) || (opcode == `sb)) ? 3'b001 :
                        (opcode == `lui) ? 3'b010 :
                        (opcode == `jal) ? 3'b011 :
                        ((opcode == `cal_md) && (funct == `mfhi || funct == `mflo)) ? 3'b100 :
                        3'b000;
    assign Regwrite = ((opcode == `sw) || (opcode == `sh) || (opcode == `sb) || (opcode == `beq) || (opcode == `bne) || ((opcode == `cal_r) && (funct == `jr)) || ((opcode == `nop) && (funct == `nop)) || ((opcode == `cal_md) && ((funct == `mult) || (funct == `multu) || (funct == `div) || (funct == `divu) || (funct == `mthi) || (funct == `mtlo)))) ? 1'b0 : 1'b1;
    assign ALUop = (((opcode == `cal_r) && (funct == `add)) || (opcode == `addi) || (opcode == `lw) || (opcode == `lh) || (opcode == `lb) || (opcode == `sw) || (opcode == `sh) || (opcode == `sb)) ? 3'b010 :
                   (((opcode == `cal_r) && (funct == `sub)) || (opcode == `beq) || (opcode == `bne)) ? 3'b110 :
                   (((opcode == `cal_r) && (funct == `or)) || (opcode == `ori)) ? 3'b001 :
                   (opcode == `andi) ? 3'b000 :
                   ((opcode == `cal_r) && (funct == `slt)) ? 3'b011 :
                   ((opcode == `cal_r) && (funct == `sltu)) ? 3'b100 :
                   3'b000;
    assign ALUsrc =(((opcode == `cal_r) && ((funct == `add) || (funct == `sub ) || (funct == `and) || (funct == `or) || (funct == `slt) || (funct == `sltu))) || (opcode == `beq) || (opcode == `bne) || ((opcode == `cal_md) && ((funct == `mult) || (funct == `multu) || (funct == `div) || (funct == `divu) || (funct == `mthi) || (funct == `mtlo)))) ? 1'b0 : 1'b1;  
    assign Memwrite =(opcode == `sw) ? 3'b001 : 
                     (opcode == `sh) ? 3'b010 :
                     (opcode == `sb) ? 3'b011 :
                     3'b0;
    assign branch = (opcode == `beq) ? 3'b001 : 
                    (opcode == `jal) ? 3'b010 : 
                    ((opcode == `cal_r) && (funct == `jr)) ? 3'b011 : 
                    (opcode == `bne) ? 3'b100 :
                    3'b0;
    assign EXT_sel =((opcode == `ori) || (opcode == `andi)) ? 2'b01 : 2'b00;
    assign Shift_sel =(opcode == `lui) ? 1'b1 : 1'b0;
    
    assign RegWreg = (RegDst == 0) ? instruction[20:16] :
                  (RegDst == 1) ? instruction[15:11] :
						(RegDst == 2) ? 5'b11111 :
                  5'b00000;   
    assign RegWen =Regwrite; 

endmodule
