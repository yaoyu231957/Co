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
module IF_ID(
    input clk,
    input reset,
    input stop_sel,
    input [31:0] in_PC,
    input [31:0] in_instruction,
    output [31:0] out_PC,
    output [31:0] out_instruction
    );

    reg [31:0] PC;
    reg [31:0] instruction;


    initial begin
        PC = 32'h3000;
        instruction=0;
    end

    assign out_PC=PC;
    assign out_instruction=instruction;

    always @(posedge clk ) 
    begin
        if(reset == 1)
        begin
            PC <= 32'h3000;
            instruction<=0;
        end    
        else if(stop_sel != 1)
        begin
            PC <= in_PC;
            instruction <= in_instruction;
        end
    end

endmodule
