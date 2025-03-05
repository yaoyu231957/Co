`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:41:07 11/03/2023 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input [31:0] PC_in,
	 input clk,
	 input reset,
    output reg [31:0] PC_out
    );
	
	always @(posedge clk ) begin
        if (reset == 1) begin
            PC_out <= 3000;
        end 
        else begin
            PC_out <= PC_in;
        end
        
    end
	

endmodule
