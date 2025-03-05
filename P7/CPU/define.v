`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:22:45 11/22/2023 
// Design Name: 
// Module Name:    define 
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
    `define cal_r   6'b000000
    `define nop     6'b000000
    `define cal_md  6'b000000
    `define add     6'b100000
    `define sub     6'b100010
    `define and     6'b100100
    `define or      6'b100101
    `define slt     6'b101010
    `define sltu    6'b101011
    `define ori     6'b001101
    `define andi    6'b001100
    `define addi    6'b001000
    `define lui     6'b001111
    `define lw      6'b100011
    `define lh      6'b100001
    `define lb      6'b100000
    `define sw      6'b101011
    `define sh      6'b101001
    `define sb      6'b101000
    `define mult    6'b011000
    `define multu   6'b011001
    `define div     6'b011010
    `define divu    6'b011011
    `define mfhi    6'b010000
    `define mflo    6'b010010
    `define mthi    6'b010001
    `define mtlo    6'b010011
    `define beq     6'b000100
    `define bne     6'b000101
    `define jal     6'b000011
    `define jr      6'b001000
    `define cal_c0  6'b010000
    `define mfc0    5'b00000
    `define mtc0    5'b00100
    `define eret    6'b011000
    `define syscall 6'b001100

    //ExcCode definition
    `define Int      5'd0
    `define AdEL     5'd4
    `define AdES     5'd5
    `define Syscall  5'd8 
    `define RI       5'd10
    `define Ov       5'd12
    `define None     5'd31

    //Addr definition
    `define DM_addr_start    32'h0000_0000
    `define DM_addr_end      32'h0000_2FFF
    `define Time0_addr_start 32'h0000_7F00
    `define Time0_addr_end   32'h0000_7F0B
    `define Time1_addr_start 32'h0000_7F10
    `define Time1_addr_end   32'h0000_7F1B
    `define Break_addr_start 32'h0000_7F20
    `define Break_addr_end   32'h0000_7F23

