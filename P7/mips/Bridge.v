`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:40:39 12/02/2023 
// Design Name: 
// Module Name:    Bridge 
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


module Bridge(
    input [31:0] Vaddr,
    input [3:0] byteen,
    input [31:0] DM_out,
    input [31:0] TC0_out,
    input [31:0] TC1_out,
    output [31:0] DM_addr,
    output [31:2] TC0_addr,
    output [31:2] TC1_addr,
    output [3:0] DM_byteen,
    output TC0_wen,
    output TC1_wen,
    output [31:0] BE_out
    );


    assign DM_addr = ((Vaddr >= `DM_addr_start) && (Vaddr <= `DM_addr_end)) ? Vaddr : 0;
    assign DM_byteen = ((Vaddr >= `DM_addr_start) && (Vaddr <= `DM_addr_end)) ? byteen : 0;

    assign TC0_addr = ((Vaddr >= `Time0_addr_start) && (Vaddr <= `Time0_addr_end)) ? Vaddr[31:2] : 0;
    assign TC0_wen = ((Vaddr >= `Time0_addr_start) && (Vaddr <= `Time0_addr_end)) ? ((|byteen) ? 1 : 0) : 0;

    assign TC1_addr = ((Vaddr >= `Time1_addr_start) && (Vaddr <= `Time1_addr_end)) ? Vaddr[31:2] : 0;
    assign TC1_wen = ((Vaddr >= `Time1_addr_start) && (Vaddr <= `Time1_addr_end)) ? ((|byteen) ? 1 : 0) : 0;

    assign BE_out = ((Vaddr >= `DM_addr_start) && (Vaddr <= `DM_addr_end)) ? DM_out :
                    ((Vaddr >= `Time0_addr_start) && (Vaddr <= `Time0_addr_end)) ? TC0_out :
                    ((Vaddr >= `Time1_addr_start) && (Vaddr <= `Time1_addr_end)) ? TC1_out :
                    0;

/*
    always @(*) 
    begin
        if((Vaddr >= `DM_addr_start) && (Vaddr <= `DM_addr_end))
        begin
            DM_addr = Vaddr;
            DM_byteen = byteen;
            BE_out = DM_out;
        end    
        else if((Vaddr >= `Time0_addr_start) && (Vaddr <= `Time0_addr_end))
            begin
                TC0_addr = Vaddr[31:2];
                TC0_wen = (|byteen) ? 1 : 0;
                BE_out = TC0_out;
            end
            else if((Vaddr >= `Time1_addr_start) && (Vaddr <= `Time1_addr_end))
                begin
                    TC1_addr = Vaddr[31:2];
                    TC1_wen = (|byteen) ? 1 : 0;
                    BE_out = TC1_out;
                end
    end
*/

endmodule
