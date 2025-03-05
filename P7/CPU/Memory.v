`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:28:05 11/11/2023 
// Design Name: 
// Module Name:    Memory 
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

module Memory(
    input clk,
    input reset,
    input [5:0] HWInt,
	 input [31:0] in_PC,
	 input [31:0] in_instruction,
    input [31:0] in_ALUout,
    input [31:0] in_HI_LO,
	 input [31:0] in_data_rt,
    input [4:0] in_addr_rt,
    input [4:0] in_addr_rd,
    input [31:0] in_Shift,
    input IsDelay,
    input D_eret,
    input [4:0] E_ExcCode,
    input [31:0] m_data_rdata,
    output [31:0] out_PC,
	 output [31:0] out_instruction,	 
    output [31:0] out_ALUout,
    output [31:0] out_HI_LO,
    output [31:0] out_CP0,
    output [4:0] out_addr_rt,
    output [4:0] out_addr_rd,
    output [31:0] out_Shift,  
    output [31:0] out_DMout,
    output [31:0] m_data_addr,
    output [31:0] m_data_wdata,
    output [3:0] m_data_byteen,
    output [31:0] m_inst_addr,
    output [1:0] M_Tnew,
    output M_stop_eret,
    output [4:0] M_RegWreg,
    output M_RegWrite,
    output [31:0] EPC_out,
    output Req,
    output IntReq
    );


    //wires
    wire [4:0] RegWreg,CP0_add,ExcCode_in,M_ExcCode;
	 wire [5:0] opcode,funct;
    wire [1:0] EXT_sel,addr;
    wire [2:0] ALUop,MemtoReg,Branch,Op,Memwrite,ins_op;
    wire Shift_sel,Regwrite,DM_sel;
    wire [31:0] in1,in2,ALU_out,dm_pc,dm_addr,data,DM_out,Din,Dout,m_addr,CP0_in,CP0_out,VPC;
 
    //output
	 assign opcode = in_instruction[31:26];
    assign funct = in_instruction[5:0];
    assign out_PC = in_PC;
	 assign out_instruction = (M_ExcCode != `None) ? 32'b0 : in_instruction;	 
    assign out_addr_rt = in_addr_rt;
    assign out_addr_rd = in_addr_rd;
    assign out_Shift = in_Shift;
	 assign out_ALUout = in_ALUout;
    assign out_HI_LO = in_HI_LO;
    assign out_CP0 = CP0_out;
    assign out_DMout = Dout;
    assign M_RegWreg = RegWreg;
    /*assign M_RegWD = (in_instruction[31:26] == `lui) ? in_Shift : 
                     (in_instruction[31:26] == `jal) ? in_PC + 8 :
                     ((opcode == `cal_md) && ((funct == `mfhi) || (funct == `mflo))) ? in_HI_LO :
                     ((opcode == `cal_c0) && (in_instruction[25:21] == `mfc0)) ? CP0_out :
                      in_ALUout;*/
    assign M_RegWrite = Regwrite;

    assign M_ExcCode = (E_ExcCode != `None) ? E_ExcCode :
                       (M_EXC_AdEL == 1) ? `AdEL : 
                       (M_EXC_AdES == 1) ? `AdES :
                       `None;



    //wiring
	 assign opcode = in_instruction[31:26];
    assign m_inst_addr=in_PC;
    assign m_data_addr=in_ALUout;
    assign m_data_wdata=(opcode == `sw) ? in_data_rt :
                        (opcode == `sh) ? {2{in_data_rt[15:0]}} :
                        (opcode == `sb) ? {4{in_data_rt[7:0]}} :
                        0;
    assign m_data_byteen= (Req) ? 0 :
                         (Memwrite == 1) ? 4'b1111 :
                         ((Memwrite == 2) && (in_ALUout[1] == 0)) ? 4'b0011 :
                         ((Memwrite == 2) && (in_ALUout[1] == 1)) ? 4'b1100 :
                         ((Memwrite == 3) && (in_ALUout[1:0] == 0)) ? 4'b0001 :
                         ((Memwrite == 3) && (in_ALUout[1:0] == 1)) ? 4'b0010 :
                         ((Memwrite == 3) && (in_ALUout[1:0] == 2)) ? 4'b0100 :
                         ((Memwrite == 3) && (in_ALUout[1:0] == 3)) ? 4'b1000 :
                         4'b0;
    assign addr = in_ALUout[1:0];
    assign Din = m_data_rdata;
    assign Op = (opcode == `lw) ? 3'b000 :
                (opcode == `lh) ? 3'b100 :
                (opcode == `lb) ? 3'b010 :
                3'b000;
    assign ins_op = (opcode == `lw) ? 3'b001 :
                    (opcode == `lh) ? 3'b010 :
                    (opcode == `lb) ? 3'b011 :
                    (opcode == `sw) ? 3'b100 :
                    (opcode == `sh) ? 3'b101 :
                    (opcode == `sb) ? 3'b110 :
                    3'b000;

    assign en = ((opcode == `cal_c0) && (in_instruction[25:21] == `mtc0)) ? 1 : 0;
    assign CP0_add = in_addr_rd;
    assign CP0_in = in_data_rt;
    assign VPC = in_PC;
    assign BD_in = IsDelay;
    assign ExcCode_in = M_ExcCode;
    assign EXL_clr = (D_eret) ? 1 : 0;
    assign m_addr = in_ALUout;


    assign M_EXC_AdEL = (((opcode == `lw) || (opcode == `lh) || (opcode == `lb)) && EXC_AdEL);
    assign M_EXC_AdES = (((opcode == `sw) || (opcode == `sh) || (opcode == `sb)) && EXC_AdES);
 
    Controller m_controller(in_instruction,RegWreg,MemtoReg,Regwrite,ALUop,ALUsrc,Memwrite,Branch,EXT_sel,Shift_sel);
    
    M_AT m_at(in_instruction,M_Tnew,M_stop_eret);
	 
	 DM_EXT dm_ext(addr,Din,Op,Dout);
	 
	 M_EXC m_exc(m_addr,ins_op,EXC_AdES,EXC_AdEL);

    CP0 cp0(clk,reset,en,CP0_add,CP0_in,CP0_out,VPC,BD_in,ExcCode_in,HWInt,EXL_clr,EPC_out,Req,IntReq);


	 //DM dm(dm_pc,dm_addr,data,DM_sel,clk,reset,DM_out);

endmodule
