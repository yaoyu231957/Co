`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:41:48 11/03/2023 
// Design Name: 
// Module Name:    IM 
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
module IM(
    input [31:0] addr,
	 input clk,
    input reset,
    output reg [31:0] instruction
    );
    integer i; 
    reg [31:0] im_reg [0:2047];
    reg [31:0] a;
    initial 
    begin
        $readmemh("code.txt", im_reg);
    end

    always @(posedge clk)
    begin
        if (reset == 1) 
        begin
            i <= 0;
        end 
        else 
        begin
            a <= (addr-3000) / 4;
            instruction <= im_reg[a];
        end
    end

endmodule
