`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:03:44 11/03/2023 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
    input [31:0] WPC,
    input [4:0] Reg1,
    input [4:0] Reg2,
    input [31:0] WD,
    input [4:0] Wreg,
    input Wen,
    input clk,
    input reset,
    output [31:0] RD1,
    output [31:0] RD2
    );

    reg [31:0] register [0:31];
    integer i;
    initial
    begin
        for (i = 0;i <= 31;i = i + 1 ) 
        begin
            register[i] = 0;
        end
    end
	 
	 assign  RD1 = ((Wreg == Reg1) && (Wen == 1) && (Wreg != 0)) ? WD : register[Reg1];
    assign  RD2 =  ((Wreg == Reg2) && (Wen == 1) && (Wreg != 0)) ? WD : register[Reg2];

    always @(posedge clk)
    begin
        if (reset == 1) begin
            for (i = 0;i <= 31;i = i + 1 ) 
            begin
                register[i] <= 0;
            end
        end else
        begin
            if (Wen == 1) begin
					if(Wreg != 0)
					begin
                  register[Wreg] <= WD;
                  //$display("%d@%h: $%d <= %h", $time, WPC, Wreg, WD);
					end
					else 
					begin
						//$display("%d@%h: $%d <= %h", $time, WPC, Wreg, 0);
					end
            end else 
            begin
                
            end
        end 
    end 

endmodule
