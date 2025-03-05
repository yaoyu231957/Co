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
    input [2:0] PC_sel,
    input stop_sel,
    input [31:0] D_PC,
    input [31:0] D_instruction,
    input [31:0] reg31,
    input [31:0] Shift_out,
	input clk,
	input reset,
    output reg [31:0] PC
    );
	
	initial
	begin
		PC = 32'h3000;
	end
	
	always @(posedge clk ) 
    begin
        if (reset == 1) 
        begin
            PC <= 32'h3000;
        end 
        else 
        begin
            if(stop_sel != 1)
            begin
                if(PC_sel == 3'b000)
                begin
                    PC <= PC + 4;
                end
                else if(PC_sel == 3'b001)
                    begin
                        PC <= D_PC + 4 + Shift_out;
                    end
                    else if(PC_sel == 3'b010)
                        begin
                            PC <= {{D_PC[31 : 28]}, D_instruction[25:0], {2'b00}};
                        end
                        else if(PC_sel == 3'b011)
                            begin
                                PC <= reg31;
                            end
                            else if(PC_sel == 3'b100)
                                begin
                                    
                                end
            end         
        end    
    end
	

endmodule
