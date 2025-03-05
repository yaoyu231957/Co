`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:59:16 12/02/2023 
// Design Name: 
// Module Name:    CP0 
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

    //Signal definition
    `include "define.v"

    `define IP Cause[15:10]
    `define ExcCode Cause[6:2]
    `define EXL  SR[1]
    `define BD   Cause[31]
    `define IM   SR[15:10]
    `define IE   SR[0]

module CP0(
    input clk,
    input reset,
    input en,
    input [4:0] CP0_add,
    input [31:0] CP0_in,
    output [31:0] CP0_out,
    input [31:0] VPC,
    input BD_in,
    input [4:0] ExcCode_in,
    input [5:0] HWInt,
    input EXL_clr,
    output [31:0] EPC_out,
    output Req,
    output Out_IntReq
    );

    //wires
    reg [31:0] SR,Cause,EPC;
    wire [5:0] IM;
    wire [4:0] ExcCode_final;
    wire ExcReq;

    //wiring


    initial
    begin
        SR = 0;
        Cause = 0;
        EPC = 0;
    end


    //trans
    assign EXL = (CP0_add == 12 && en) ? CP0_in[1] : `EXL;
    assign IM = (CP0_add == 12 && en) ? CP0_in[15:10] : `IM;
    assign IE = (CP0_add == 12 && en) ? CP0_in[0] : `IE;
    assign EPC_out = (CP0_add == 14 && en) ? CP0_in : EPC;


    //Instruction
    always @(posedge clk) 
    begin
        if(reset == 1)
        begin
            SR <= 0;
            Cause <= 0;
            EPC <= 0;
        end    
        else 
        begin
            `IP <= HWInt;
            if(Req == 1)
            begin
                if(BD_in == 1)
                begin
                    EPC <= VPC - 4;
                    `BD <= 1;
                end
                else
                begin
                    EPC <= VPC;
                    `BD <= 0;
                end
                `ExcCode <= ExcCode_final;
                `EXL <= 1;
            end
            else if (en == 1)
                begin
                    case (CP0_add)
                        12: SR <= CP0_in ;
                        14: EPC <= CP0_in;
                        default: ;
                    endcase
                end
            if(EXL_clr == 1)
            begin
                `EXL <= 0;
            end
        end 
    end

    assign CP0_out = (CP0_add == 12) ? SR :
                     (CP0_add == 13) ? Cause :
                     (CP0_add == 14) ? EPC :
                     0;


    //Interrupt
    assign IntReq = (|(HWInt & IM)) & (~EXL) & IE;
    assign Out_IntReq = HWInt[2] & IM[2] & (~EXL) & IE;


    //Exception



    assign ExcReq = ((ExcCode_in != `None) & (~EXL)) ? 1 : 0;

    //All
    assign ExcCode_final = (IntReq == 1) ? `Int :
                     (ExcReq == 1) ? ExcCode_in :
                     `None;

    assign Req = IntReq | ExcReq;


endmodule
