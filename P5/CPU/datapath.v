`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:13:58 11/05/2023 
// Design Name: 
// Module Name:    datapath 
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
module Datapath(
    input clk,
    input reset,
    output [31:0] instruction
    );

    //statement
    wire [31:0] D_rs_data,E_rs_data,D_rt_data,E_rt_data,M_rt_data,E_RegWD,M_RegWD,W_RegWD,D_rs_trans,E_rs_trans,D_rt_trans,E_rt_trans,M_rt_trans;
    wire [31:0] F_Shift,F_Reg31,F_PC,F_instruction,FD_in_PC,FD_in_instruction,FD_out_PC,FD_out_instruction,D_in_PC,D_in_W_PC,D_in_instruction,D_RegWD,D_out_PC,D_out_instruction,D_data_rs,D_data_rt,D_addr_rt,D_addr_rd,D_EXT_out,D_Shift_out;
    wire [31:0] DE_in_PC,DE_in_instruction,DE_in_data_rs,DE_in_data_rt,DE_in_addr_rt,DE_in_addr_rd,DE_in_EXT,DE_in_Shift,DE_out_PC,DE_out_instruction,DE_out_data_rs,DE_out_data_rt,DE_out_addr_rt,DE_out_addr_rd,DE_out_EXT,DE_out_Shift;
    wire [31:0] E_in_PC,E_in_instruction,E_in_data_rs,E_in_data_rt,E_in_addr_rt,E_in_addr_rd,E_in_EXT,E_in_Shift,E_out_PC,E_out_instruction,E_out_data_rt,E_out_addr_rt,E_out_addr_rd,E_out_Shift,E_out_ALUout;
    wire [31:0] EM_in_PC,EM_in_instruction,EM_in_ALUout,EM_in_data_rt,EM_in_addr_rt,EM_in_addr_rd,EM_in_Shift,EM_out_PC,EM_out_instruction,EM_out_ALUout,EM_out_data_rt,EM_out_addr_rt,EM_out_addr_rd,EM_out_Shift;
    wire [31:0] M_in_PC,M_in_instruction,M_in_ALUout,M_in_data_rt,M_in_addr_rt,M_in_addr_rd,M_in_Shift,M_out_PC,M_out_instruction,M_out_ALUout,M_out_addr_rt,M_out_addr_rd,M_out_Shift,M_out_DMout;
    wire [31:0] MW_in_PC,MW_in_instruction,MW_in_ALUout,MW_in_DMout,MW_in_addr_rd,MW_in_addr_rt,MW_in_Shift,MW_out_PC,MW_out_instruction,MW_out_ALUout,MW_out_DMout,MW_out_addr_rd,MW_out_addr_rt,MW_out_Shift;
    wire [31:0] W_in_PC,W_in_instruction,W_in_ALUout,W_in_DMout,W_in_addr_rd,W_in_addr_rt,W_in_Shift,F_in_D_PC,F_in_D_instruction,W_out_PC;
    wire [4:0] D_rs_addr,E_rs_addr,D_rt_addr,E_rt_addr,M_rt_addr,E_RegWreg,M_RegWreg,W_RegWreg,D_RegWreg;
	 wire [2:0] PC_sel;
     wire [1:0] Rs_Tuse,Rt_Tuse,E_Tnew,M_Tnew,W_Tnew;
     wire stop_sel,E_RegWrite,M_RegWrite,W_RegWrite,D_RegWrite;

    initial
    begin
        
    end

    //wiring
    assign F_Shift = D_Shift_out;
    assign F_Reg31 = D_rs_trans;//转发
    assign F_in_D_PC = D_in_PC;
    assign F_in_D_instruction = D_in_instruction;

    assign FD_in_PC = F_PC;
    assign FD_in_instruction = F_instruction;

    assign D_in_PC = FD_out_PC;
    assign D_in_W_PC = W_out_PC;
    assign D_in_instruction = FD_out_instruction;
    assign D_RegWD = W_RegWD;
    assign D_RegWreg = W_RegWreg;
    assign D_RegWrite = W_RegWrite;

    assign DE_in_PC = D_out_PC;
    assign DE_in_instruction = D_out_instruction;
    //D级转�
    //本来
    //assign DE_in_data_rs = D_data_rs;  
    //assign DE_in_data_rt = D_data_rt; 
    //转发�
    assign DE_in_data_rs = D_rs_trans;  
    assign DE_in_data_rt = D_rt_trans; 
    //
    assign DE_in_addr_rt = D_addr_rt;
    assign DE_in_addr_rd = D_addr_rd;
    assign DE_in_EXT = D_EXT_out;
    assign DE_in_Shift = D_Shift_out;

    assign E_in_PC = DE_out_PC;
    assign E_in_instruction = DE_out_instruction;
    //E级转�
    //本来
    //assign E_in_data_rs = DE_out_data_rs;
    //assign E_in_data_rt = DE_out_data_rt;
    //转发�
    assign E_in_data_rs = E_rs_trans;
    assign E_in_data_rt = E_rt_trans;
    //
    assign E_in_addr_rt = DE_out_addr_rt;
    assign E_in_addr_rd = DE_out_addr_rd;
    assign E_in_EXT = DE_out_EXT;
    assign E_in_Shift = DE_out_Shift;

    assign EM_in_PC = E_out_PC;
    assign EM_in_instruction = E_out_instruction;
    assign EM_in_ALUout = E_out_ALUout;
    assign EM_in_data_rt = E_out_data_rt;
    assign EM_in_addr_rt = E_out_addr_rt;
    assign EM_in_addr_rd = E_out_addr_rd;
    assign EM_in_Shift = E_out_Shift;

    assign M_in_PC = EM_out_PC;
    assign M_in_instruction = EM_out_instruction;
    assign M_in_ALUout = EM_out_ALUout;
    //M级转�
    //本来
    //assign M_in_data_rt = EM_out_data_rt;
    //转发�
    assign M_in_data_rt = M_rt_trans;
    //
    assign M_in_addr_rt = EM_out_addr_rt;
    assign M_in_addr_rd = EM_out_addr_rd;
    assign M_in_Shift = EM_out_Shift;

    assign MW_in_PC = M_out_PC;
    assign MW_in_instruction = M_out_instruction;
    assign MW_in_ALUout = M_out_ALUout;
    assign MW_in_DMout = M_out_DMout;
    assign MW_in_addr_rd = M_out_addr_rd;
    assign MW_in_addr_rt = M_out_addr_rt;
    assign MW_in_Shift = M_out_Shift;

    assign W_in_PC = MW_out_PC;
    assign W_in_instruction = MW_out_instruction;
    assign W_in_ALUout = MW_out_ALUout;
    assign W_in_DMout = MW_out_DMout;
    assign W_in_addr_rd = MW_out_addr_rd;
    assign W_in_addr_rt = MW_out_addr_rt;
    assign W_in_Shift = MW_out_Shift;

    assign D_rs_addr = D_in_instruction[25:21];
    assign E_rs_addr = E_in_instruction[25:21];
    assign D_rt_addr = D_in_instruction[20:16];
    assign E_rt_addr = E_in_instruction[20:16];
    assign M_rt_addr = M_in_instruction[20:16];
    assign D_rs_data = D_data_rs;
    assign E_rs_data = DE_out_data_rs;
    assign D_rt_data = D_data_rt;
    assign E_rt_data = DE_out_data_rt;
    assign M_rt_data = EM_out_data_rt;       

    //call
    Stop_Transmit st(Rs_Tuse,Rt_Tuse,E_Tnew,M_Tnew,W_Tnew,D_rs_addr,E_rs_addr,D_rt_addr,E_rt_addr,M_rt_addr,E_RegWreg,M_RegWreg,W_RegWreg,D_rs_data,E_rs_data,D_rt_data,E_rt_data,M_rt_data,E_RegWD,M_RegWD,W_RegWD,E_RegWrite,M_RegWrite,W_RegWrite,stop_sel,D_rs_trans,E_rs_trans,D_rt_trans,E_rt_trans,M_rt_trans);

	 Fetch fetch(clk,reset,stop_sel,PC_sel,F_in_D_PC,F_in_D_instruction,F_Shift,F_Reg31,F_PC,F_instruction);

    IF_ID if_id(clk,reset,stop_sel,FD_in_PC,FD_in_instruction,FD_out_PC,FD_out_instruction);

    Decode decode(clk,reset,D_in_PC,D_in_W_PC,D_in_instruction,D_rs_trans,D_rt_trans,D_RegWD,D_RegWreg,D_RegWrite,D_out_PC,D_out_instruction,D_data_rs,D_data_rt,D_addr_rt,D_addr_rd,D_EXT_out,D_Shift_out,PC_sel,Rs_Tuse,Rt_Tuse);

    ID_EX id_ex(clk,reset,stop_sel,DE_in_PC,DE_in_instruction,DE_in_data_rs,DE_in_data_rt,DE_in_addr_rt,DE_in_addr_rd,DE_in_EXT,DE_in_Shift,DE_out_PC,DE_out_instruction,DE_out_data_rs,DE_out_data_rt,DE_out_addr_rt,DE_out_addr_rd,DE_out_EXT,DE_out_Shift,E_RegWD);
    
    Execute execute(E_in_PC,E_in_instruction,E_in_data_rs,E_in_data_rt,E_in_addr_rt,E_in_addr_rd,E_in_EXT,E_in_Shift,E_out_PC,E_out_instruction,E_out_data_rt,E_out_addr_rt,E_out_addr_rd,E_out_Shift,E_out_ALUout,E_Tnew,E_RegWreg,E_RegWrite);
    
    EX_MEM ex_mem(clk,reset,EM_in_PC,EM_in_instruction,EM_in_ALUout,EM_in_data_rt,EM_in_addr_rt,EM_in_addr_rd,EM_in_Shift,EM_out_PC,EM_out_instruction,EM_out_ALUout,EM_out_data_rt,EM_out_addr_rt,EM_out_addr_rd,EM_out_Shift,M_RegWD);
    
    Memory memory(clk,reset,M_in_PC,M_in_instruction,M_in_ALUout,M_in_data_rt,M_in_addr_rt,M_in_addr_rd,M_in_Shift,M_out_PC,M_out_instruction,M_out_ALUout,M_out_addr_rt,M_out_addr_rd,M_out_Shift,M_out_DMout,M_Tnew,M_RegWreg,M_RegWrite);
    
    MEM_WB mem_wb(clk,reset,MW_in_PC,MW_in_instruction,MW_in_ALUout,MW_in_DMout,MW_in_addr_rd,MW_in_addr_rt,MW_in_Shift,MW_out_PC,MW_out_instruction,MW_out_ALUout,MW_out_DMout,MW_out_addr_rd,MW_out_addr_rt,MW_out_Shift,W_RegWD);
    
    Writeback writeback(W_in_PC,W_in_instruction,W_in_ALUout,W_in_DMout,W_in_addr_rd,W_in_addr_rt,W_in_Shift,W_out_PC,W_Tnew,W_RegWreg,W_RegWrite);

    





endmodule
