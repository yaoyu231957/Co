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
module Controller(
    input [31:0] instruction,
    output [4:0] RegWreg,
    output [1:0] MemtoReg,
    output Regwrite,
    output [2:0] ALUop,
    output ALUsrc,
    output Memwrite,
    output [2:0] branch,
    output [1:0] EXT_sel,
    output Shift_sel
    );

    //wires
    wire [5:0] opcode,funct;
    wire [1:0] RegDst;

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


    //Signal determination
    assign opcode=instruction[31:26];
    assign funct=instruction[5:0];


    assign RegDst = ((opcode == `ALU) && ((funct == `add) || (funct == `sub ))) ? 2'b01 : 
                        (opcode == `jal) ? 2'b10 : 2'b00;
    assign MemtoReg = ((opcode == `ALU) || (opcode == `ori)) ? 2'b00 : 
                        ((opcode == `lw) || (opcode == `sw)) ? 2'b01 :
                        (opcode == `lui) ? 2'b10 :
                        (opcode == `jal) ? 2'b11 :
                        2'b00;
    assign Regwrite = ((opcode == `sw) || (opcode == `beq) || ((opcode == `ALU) && (funct == `jr)) || ((opcode == `nop) && (funct == `nop))) ? 1'b0 : 1'b1;
    assign ALUop = (((opcode == `ALU) && (funct == `add)) || (opcode == `lw) || (opcode == `sw)) ? 3'b010 :
                   (((opcode == `ALU) && (funct == `sub)) || (opcode == `beq)) ? 3'b110 :
                   (opcode == `ori) ? 3'b001 :
                   3'b000;
    assign ALUsrc =(((opcode == `ALU) && ((funct == `add) || (funct == `sub ))) || (opcode == `beq)) ? 1'b0 : 1'b1;  
    assign Memwrite =(opcode == `sw) ? 1'b1 : 1'b0;
    assign branch = (opcode == `beq) ? 3'b001 : 
                    (opcode == `jal) ? 3'b010 : 
                    ((opcode == `ALU) && (funct == `jr)) ? 3'b011 : 
                    3'b0;
    assign EXT_sel =(opcode == `ori) ? 2'b01 : 2'b00;
    assign Shift_sel =(opcode == `lui) ? 1'b1 : 1'b0;
    
    assign RegWreg = (RegDst == 0) ? instruction[20:16] :
                  (RegDst == 1) ? instruction[15:11] :
						(RegDst == 2) ? 5'b11111 :
                  5'b00000;   
    assign RegWen =Regwrite; 

endmodule
