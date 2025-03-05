`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:47:21 11/04/2023 
// Design Name: 
// Module Name:    branch 
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
module Branch(
    input [2:0] branch,
    input [31:0] RD1,
    input [31:0] RD2,
    output [2:0] PC_sel
    );
	
	wire equal = (RD1 == RD2);

	assign PC_sel = (((branch == 1) && equal) || ((branch == 4) && (!equal))) ? 3'b001 : 
                    (branch == 2) ? 3'b010 : 
                    (branch == 3) ? 3'b011 :
                    (branch == 5) ? 3'b100 :
                    3'b000;

endmodule
