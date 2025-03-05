`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:41:22 11/22/2023 
// Design Name: 
// Module Name:    Mult_Div 
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
    
    //signal definition
    `include "define.v"

module Mult_Div(
    input clk,
    input reset,
    input [31:0] instruction,
    input [31:0] data1,
    input [31:0] data2,
	    output Start,
    output reg Busy,
    output [31:0] HI_LO
    );

    //
    wire [63:0] mult_out,multu_out;
    wire [5:0] opcode,funct;
    wire [2:0] MDop;
    wire MDwrite,MFsrc,MTDst;
    reg [31:0] HI,LO,temp_HI,temp_LO;
    reg [3:0] md_time;
    
    //
    initial begin
        HI=0;
        LO=0;
        temp_HI=0;
        temp_LO=0;
        md_time=0;
        Busy=0;
    end

    //
    assign mult_out = $signed(data1) * $signed(data2);
    assign multu_out = data1 * data2;
    assign opcode=instruction[31:26];
    assign funct=instruction[5:0];

    //signals
    assign MDop = ((opcode == `cal_md) && (funct == `mult)) ? 3'b001 :
                  ((opcode == `cal_md) && (funct == `multu)) ? 3'b010 :
                  ((opcode == `cal_md) && (funct == `div)) ? 3'b011 :
                  ((opcode == `cal_md) && (funct == `divu)) ? 3'b100 :
                  ((opcode == `cal_md) && (funct == `new_md)) ? 3'b101 :
                  3'b0;
    assign MFsrc = ((opcode == `cal_md) && (funct == `mfhi)) ? 0 : 1;
    assign MTDst = ((opcode == `cal_md) && (funct == `mthi)) ? 0 : 1;
    assign MDwrite = ((opcode == `cal_md) && ((funct == `mthi) || (funct == `mtlo))) ? 1 : 0;
    assign Start =((opcode == `cal_md) && ((funct == `mult) || (funct == `multu) || (funct == `div) || (funct == `divu) || (funct == `new_md))) ? 1 : 0;

    //out
    assign HI_LO = (MFsrc == 0) ? HI : LO;

    always @(posedge clk ) 
    begin
        if(reset == 1)
        begin
            HI<=0;
            LO<=0;
            temp_HI<=0;
            temp_LO<=0;
            md_time<=0;
            Busy<=0;
        end
        else 
        begin
            if(MDwrite == 1)
            begin
                if(MTDst == 0)
                begin
                    HI <= data1;
                end
                else
                begin
                    LO <= data1;
                end
            end
            if(md_time == 0)
            begin
                if(Start == 1)
                begin
                    Busy <= 1;
                    if (MDop == 3'b001) 
                    begin
                        md_time <= 5;
                        temp_HI <= mult_out[63:32];
                        temp_LO <= mult_out[31:0];
                    end 
                    else if(MDop == 3'b010)
                        begin
                            md_time <= 5;
                            temp_HI <= multu_out[63:32];
                            temp_LO <= multu_out[31:0];
                        end
                        else if (MDop == 3'b011)
                            begin
                                md_time <= 10;
                                temp_HI <= $signed(data1) % $signed(data2);
                                temp_LO <= $signed(data1) / $signed(data2);
                            end
                            else if(MDop == 3'b100)
                                begin
                                    md_time <= 10;
                                    temp_HI <= data1 % data2;
                                    temp_LO <= data1 / data2;
                                end
                                else if(MDop == 3'b101)
                                    begin
                                        
                                    end
                end 
                else 
                begin
                    md_time <= 0;
                end 
            end               
            else if(md_time == 1)
                begin
                    HI <= temp_HI;
                    LO <= temp_LO;
                    Busy <= 0;
                    md_time <= 0;
                end       
                else
                begin
                    md_time <= md_time - 1;
                end
        end
    end    
                           
    

endmodule
