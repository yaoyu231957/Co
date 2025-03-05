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
    input [5:0] opcode,
    input [5:0] funct,
    output [1:0] Wreg_sel,
    output [1:0] Wdata_sel,
    output W_en,
    output [1:0] ALUop,
    output ALUsrc,
    output DM_sel,
    output DM_en,
    output branch,
    output EXT_sel,
    output Shift_sel
    );

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

    assign Wreg_sel = (((opcode == `ALU) && ((funct == `add) || (funct == `sub ))) || (opcode == `lui)) ? 2'b01 : 
                        (opcode == `jal) ? 2'b10 : 2'b00;
    assign Wdata_sel = ((opcode == `ALU) || (opcode == `ori)) ? 2'b00 : 
                        ((opcode == `lw) || (opcode == `sw)) ? 2'b01 :
                        (opcode == `lui) ? 2'b10 :
                        (opcode == `jal) ? 2'b11 :
                        2'b00;
    assign W_en = ((opcode == `sw) || (opcode == `beq) || ((opcode == `ALU) && (funct == `jr)) || ((opcode == `nop) && (funct == `nop))) ? 0 : 1;
    assign ALUop = ((opcode == `ALU) && ((funct == `add) || (funct == `sub ))) ? 2'b10 :
                    (opcode == `ori) ? 2'b11 :
                    ((opcode == `lw) || (opcode == `sw)) ? 2'b00 :
                    (opcode == `beq) ? 2'b01 :
                    2'b00;
    assign ALUsrc =(((opcode == `ALU) && ((funct == `add) || (funct == `sub ))) || (opcode == `beq)) ? 0 : 1;  
    assign DM_sel =(opcode == `sw) ? 1 : 0;
    assign DM_en =((opcode == `lw) || (opcode == `sw)) ? 1 : 0;
    assign branch =(opcode == `beq) ? 1 : 0;
    assign EXT_sel =(opcode == `ori) ? 1 : 0;
    assign Shift_sel =(opcode == `lui) ? 1 : 0;

endmodule
