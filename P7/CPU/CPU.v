`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:27:31 12/01/2023 
// Design Name: 
// Module Name:    CPU 
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
module CPU(
	 input clk,
    input reset,
    input [31:0] i_inst_rdata,
    input [31:0] m_data_rdata,
    input [5:0] HWInt,
    output [31:0] i_inst_addr,
    output [31:0] m_data_addr,
    output [31:0] m_data_wdata,
    output [3:0] m_data_byteen,
    output [31:0] m_inst_addr,
    output w_grf_we,
    output [4:0] w_grf_addr,
    output [31:0] w_grf_wdata,
    output [31:0] w_inst_addr,
    output IntReq
    ); 
    
    wire [4:0] RegWreg;
    wire Regwrite,Shift_sel,ALUsrc;
    wire [1:0] EXT_sel;
    wire [2:0] ALUop,branch,Memwrite,MemtoReg;
    wire [31:0] instruction;
      
    assign instruction = i_inst_rdata;
	  
	 Controller controller(instruction,RegWreg,MemtoReg,Regwrite,ALUop,ALUsrc,Memwrite,branch,EXT_sel,Shift_sel);
	 
    Datapath datapath(clk,reset,HWInt,i_inst_rdata,m_data_rdata,i_inst_addr,m_data_addr,m_data_wdata,m_data_byteen,m_inst_addr,w_grf_we,w_grf_addr,w_grf_wdata,w_inst_addr,IntReq);


endmodule
