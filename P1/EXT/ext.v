`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:47:05 10/15/2023 
// Design Name: 
// Module Name:    ext 
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
module ext(
    input [15:0] imm,
    input [1:0] EOp,
    output [31:0] ext
    );

    wire [31:0] add1=imm<<<16;
    wire [31:0] add2=$signed(add1)>>>16;
    wire bit = imm[15];

    assign ext = (EOp == 2'b00) ? add2 :
                 (EOp == 2'b01) ? add1>>16 :
                 (EOp == 2'b10) ? imm<<16 :
                 (EOp == 2'b11) ? add2<<2 :
                 0;   

endmodule
  