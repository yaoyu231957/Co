`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:52:17 10/14/2023 
// Design Name: 
// Module Name:    code 
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
module code(
    input [31:0] A,
    output [7:0] O1,
    output [7:0] O2,
    output [7:0] O3,
    output [7:0] O4
    );

    assign O1 = A[31:24];
    assign O2 = A[23:16];
    assign O3 = A[15:8];
    assign O4 = A[7:0];

endmodule
