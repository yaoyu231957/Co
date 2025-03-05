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
    output [31:0] instruction
    );
    integer i; 
    reg [31:0] im_reg [0:4096];
    wire [31:0] a;
    initial 
    begin
        $readmemh("code.txt", im_reg);
    end
	 
	 assign a =(addr-32'h3000) / 4;
	 assign instruction = im_reg[a];

endmodule
