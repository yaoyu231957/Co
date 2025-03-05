`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:18:30 11/03/2023 
// Design Name: 
// Module Name:    EXT 
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
module EXT(
    input [15:0] EXT_in,
    input [1:0] EXT_sel,
    output [31:0] EXT_out
    );

    wire [31:0] add1=EXT_in<<<16;
    wire [31:0] add2=$signed(add1)>>>16;
    wire bit = EXT_in[15];

    assign EXT_out = (EXT_sel == 2'b00) ? add2 :
                 (EXT_sel == 2'b01) ? add1>>16 :
                 (EXT_sel == 2'b10) ? EXT_in<<16 :
                 (EXT_sel == 2'b11) ? add2<<2 :
                 0;   

endmodule
