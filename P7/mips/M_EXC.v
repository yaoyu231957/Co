`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:02:44 12/01/2023 
// Design Name: 
// Module Name:    M_EXC 
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

module M_EXC(
    input [31:0] addr,
    input [2:0] ins_op,
    output EXC_AdES,
    output EXC_AdEL
    );


    wire EXC_L_noequal,EXC_S_noequal,EXC_L_timer,EXC_S_timer,EXC_S_count,EXC_L_overaddr,EXC_S_overaddr;

    assign EXC_L_noequal = (((ins_op == 3'b001) && (addr[1:0] != 0)) || 
                           ((ins_op == 3'b010) && (addr[0] != 0))) 
                           ? 1 : 0;
    
    assign EXC_L_timer = (((ins_op == 3'b010) || (ins_op == 3'b011)) && 
                         (((addr >= `Time0_addr_start) && (addr <= `Time0_addr_end)) || 
                         ((addr >= `Time1_addr_start) && (addr <= `Time1_addr_end))))
                         ? 1 : 0;
    
    assign EXC_L_overaddr = (((addr >= `DM_addr_start) && (addr <= `DM_addr_end)) || 
                            ((addr >= `Time0_addr_start) && (addr <= `Time0_addr_end)) ||
                            ((addr >= `Time1_addr_start) && (addr <= `Time1_addr_end)) || 
                            ((addr >= `Break_addr_start) && (addr <= `Break_addr_end))) 
                            ? 0 : 1;

    assign EXC_S_noequal = (((ins_op == 3'b100) && (addr[1:0] != 0)) || 
                           ((ins_op == 3'b101) && (addr[0] != 0))) 
                           ? 1 : 0;
    
    assign EXC_S_timer = (((ins_op == 3'b101) || (ins_op == 3'b110)) && 
                         (((addr >= `Time0_addr_start) && (addr <= `Time0_addr_end)) || 
                         ((addr >= `Time1_addr_start) && (addr <= `Time1_addr_end))))
                         ? 1 : 0;
    
    assign EXC_S_overaddr = (((addr >= `DM_addr_start) && (addr <= `DM_addr_end)) || 
                            ((addr >= `Time0_addr_start) && (addr <= `Time0_addr_end)) ||
                            ((addr >= `Time1_addr_start) && (addr <= `Time1_addr_end)) || 
                            ((addr >= `Break_addr_start) && (addr <= `Break_addr_end))) 
                            ? 0 : 1;

    assign EXC_S_count = ((addr >= 32'h0000_7f08 && addr <= 32'h0000_7f0b) ||
                         (addr >= 32'h0000_7f18 && addr <= 32'h0000_7f1b))
                         ? 1 : 0;

    assign EXC_AdEL = EXC_L_noequal | EXC_L_overaddr | EXC_L_timer;
    assign EXC_AdES = EXC_S_noequal | EXC_S_overaddr | EXC_S_timer | EXC_S_count;

                
endmodule
