`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:55:55 12/02/2023 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset,
    input interrupt,
    output [31:0] macroscopic_pc,
    output [31:0] i_inst_addr,
    input [31:0] i_inst_rdata,
    output [31:0] m_data_addr,
    input [31:0] m_data_rdata,
    output [31:0] m_data_wdata,
    output [3:0] m_data_byteen,
    output [31:0] m_int_addr,
    output [3:0] m_int_byteen,
    output [31:0] m_inst_addr,
    output w_grf_we,
    output [4:0] w_grf_addr,
    output [31:0] w_grf_wdata,
    output [31:0] w_inst_addr
    );
   
    //wires
    wire [31:0] Vaddr,CPU_m_data_addr,CPU_m_data_rdata,CPU_m_data_wdata,DM_out,TC0_out,TC1_out,DM_addr,BE_out,TC0_Din,TC0_Dout,TC1_Din,TC1_Dout;
    wire [31:2] TC0_addr,TC1_addr;
    wire [3:0] CPU_m_data_byteen,byteen,DM_byteen;
    wire [5:0] HWInt;

    //output
    assign m_data_addr = DM_addr;
    assign m_int_addr = (IntReq) ? 32'h0000_7f20 : 0;
    assign m_int_byteen = (IntReq) ? 4'b1 : 4'b0;
    assign m_data_wdata = CPU_m_data_wdata;
    assign m_data_byteen = DM_byteen;
    assign macroscopic_pc = m_inst_addr;

    //wiring
    assign HWInt = {3'd0, interrupt, TC1_IRQ, TC0_IRQ};
    assign Vaddr = CPU_m_data_addr;
    assign TC0_Din = CPU_m_data_wdata;
    assign TC1_Din = CPU_m_data_wdata;
    assign DM_out = m_data_rdata;
    assign TC0_out = TC0_Dout;
    assign TC1_out = TC1_Dout;
    assign TC0_WE = TC0_wen;
    assign TC1_WE = TC1_wen;
    assign CPU_m_data_rdata = BE_out;
    assign byteen = CPU_m_data_byteen;



    CPU cpu(clk,reset,i_inst_rdata,CPU_m_data_rdata,HWInt,i_inst_addr,CPU_m_data_addr,CPU_m_data_wdata,CPU_m_data_byteen,m_inst_addr,w_grf_we,w_grf_addr,w_grf_wdata,w_inst_addr,IntReq);
    Bridge bridge (Vaddr,byteen,DM_out,TC0_out,TC1_out,DM_addr,TC0_addr,TC1_addr,DM_byteen,TC0_wen,TC1_wen,BE_out);
    TC TC0(clk,reset,TC0_addr,TC0_WE,TC0_Din,TC0_Dout,TC0_IRQ);
    TC TC1(clk,reset,TC1_addr,TC1_WE,TC1_Din,TC1_Dout,TC1_IRQ);

endmodule
