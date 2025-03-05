`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:15:17 11/11/2023 
// Design Name: 
// Module Name:    IF-ID 
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

module IF_ID(
    input clk,
    input reset,
    input stall,
    input Req,
    input [31:0] in_PC,
    input [31:0] in_instruction,
    input in_IsDelay,
    input [4:0] in_F_ExcCode,
    output [31:0] out_PC,
    output [31:0] out_instruction,
    output out_IsDelay,
    output [4:0] out_F_ExcCode
    );

    reg [31:0] PC;
    reg [31:0] instruction;
    reg IsDelay;
    reg [4:0]F_ExcCode;


    initial begin
        PC = 32'h3000;
        instruction=0;
        IsDelay=0;
        F_ExcCode=`None;
    end

    assign out_PC=PC;
    assign out_instruction=instruction;
    assign out_IsDelay=IsDelay;
    assign out_F_ExcCode=F_ExcCode;

    always @(posedge clk ) 
    begin
        if(reset == 1)
        begin
            PC <= 32'h3000;
            instruction<=0;
            IsDelay<=0;
            F_ExcCode<= `None;
        end    
        else if(Req == 1) 
            begin
                PC <= 32'h0000_4180;
                instruction<=0;
                IsDelay<=0;
                F_ExcCode<=`None;
            end
            else if(stall != 1)
                begin
                    PC <= in_PC;
                    instruction <= in_instruction;
                    IsDelay <= in_IsDelay;
                    F_ExcCode<=in_F_ExcCode;
                end
    end

endmodule
