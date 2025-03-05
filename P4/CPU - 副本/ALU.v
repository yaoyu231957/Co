`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:30:44 11/03/2023 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0] in1,
    input [31:0] in2,
    input [2:0] ALU_sel,
    output zero,
    output [31:0] ALU_out
    );

	wire [31:0] shift = $signed(in1)>>>in2;
    wire [31:0] z = in1 - in2;
    assign ALU_out = (ALU_sel == 3'b010) ? in1 + in2 :
                      (ALU_sel == 3'b110) ? z :
                      (ALU_sel == 3'b000) ? in1 & in2 :
                      (ALU_sel == 3'b001) ? in1 | in2 :
                      (ALU_sel == 3'b100) ? in1>>in2:
                      (ALU_sel == 3'b101) ? shift:
                      4'b000;
    assign zero = (z == 0) ? 1 : 0;

endmodule
