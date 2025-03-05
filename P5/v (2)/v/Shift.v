`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:57:38 11/04/2023 
// Design Name: 
// Module Name:    Shift 
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
module Shift(
    input [31:0] Shift_in,
    input Shift_sel,
    output [31:0] Shift_out
    );

    assign Shift_out = (Shift_sel == 0) ? Shift_in<<2 : Shift_in<<16;

endmodule
