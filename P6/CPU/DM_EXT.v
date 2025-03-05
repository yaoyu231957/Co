`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:07:42 11/23/2023 
// Design Name: 
// Module Name:    DM_EXT 
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
module DM_EXT(
    input [1:0] addr,
    input [31:0] Din,
    input [2:0] Op,
    output [31:0] Dout
    );

wire [31:0] LH,LB,LH_out,LB_out;

assign LH = ((addr[1] == 1) ? Din[31:16] : Din[15:0]) <<< 16;
assign LB = ((addr == 0) ? Din[7:0] :
            (addr == 1) ? Din[15:8] :
            (addr == 2) ? Din[23:16] :
            (addr == 3) ? Din[31:24] :
            7'b0) <<< 24;

assign LH_out = $signed(LB) >>> 24;
assign LB_out = $signed(LH) >>> 16;

assign Dout = (Op == 3'b000) ? Din :
              (Op == 3'b010) ? LH_out :
              (Op == 3'b100) ? LB_out :
              0;
                 

endmodule
