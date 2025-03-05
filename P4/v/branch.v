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
    input branch,
    input Jal,
    input Jr,
    input equal,
    output [2:0] PC_sel
    );
	
	
	assign PC_sel = (branch & equal) ? 3'b001 : 
                    (Jal == 1) ? 3'b010 : 
                    (Jr == 1) ? 3'b011 :
                    3'b000;

endmodule
