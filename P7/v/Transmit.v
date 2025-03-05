`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:39:06 11/12/2023 
// Design Name: 
// Module Name:    Transmit 
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
module Stop_Transmit(
    input [1:0] Rs_Tuse,
    input [1:0] Rt_Tuse,
    input [1:0] E_Tnew,
    input [1:0] M_Tnew,
    input [1:0] W_Tnew,
    input [4:0] D_rs_addr,
    input [4:0] E_rs_addr,
    input [4:0] D_rt_addr,
    input [4:0] E_rt_addr,
    input [4:0] M_rt_addr,
    input [4:0] E_RegWreg,
    input [4:0] M_RegWreg,
    input [4:0] W_RegWreg,
    input [31:0] D_rs_data,
    input [31:0] E_rs_data,
    input [31:0] D_rt_data,
    input [31:0] E_rt_data,
    input [31:0] M_rt_data,   
    input [31:0] E_RegWD,
    input [31:0] M_RegWD,
    input [31:0] W_RegWD,
    input E_RegWrite,     
    input M_RegWrite,   
    input W_RegWrite,  
    input MDen, 
    input Start,
    input Busy,
    input D_eret,
    input E_stop_eret,
    input M_stop_eret,
    output stop_sel,
    output [31:0] D_rs_trans,
    output [31:0] E_rs_trans,
    output [31:0] D_rt_trans,
    output [31:0] E_rt_trans,
    output [31:0] M_rt_trans
    );


    //wires

    wire stop_rs0_E2 , stop_rs0_E1 , stop_rs1_E2 , stop_rs0_M1,stop_rt0_E2 , stop_rt0_E1 , stop_rt1_E2 , stop_rt0_M1,stop_rs,stop_rt;
    wire [1:0] D_rs_trans_sel,E_rs_trans_sel,D_rt_trans_sel,E_rt_trans_sel,M_rt_trans_sel;
    //stop
    assign stop_rs0_E2 = (Rs_Tuse == 0) && (E_Tnew == 2) && (D_rs_addr == E_RegWreg) && (D_rs_addr != 0) && (E_RegWrite == 1);
    assign stop_rs0_E1 = (Rs_Tuse == 0) && (E_Tnew == 1) && (D_rs_addr == E_RegWreg) && (D_rs_addr != 0) && (E_RegWrite == 1);
    assign stop_rs1_E2 = (Rs_Tuse == 1) && (E_Tnew == 2) && (D_rs_addr == E_RegWreg) && (D_rs_addr != 0) && (E_RegWrite == 1);
    assign stop_rs0_M1 = (Rs_Tuse == 0) && (M_Tnew == 1) && (D_rs_addr == M_RegWreg) && (D_rs_addr != 0) && (M_RegWrite == 1);

    assign stop_rs = stop_rs0_E2 | stop_rs0_E1 | stop_rs1_E2 | stop_rs0_M1;

    assign stop_rt0_E2 = (Rt_Tuse == 0) && (E_Tnew == 2) && (D_rt_addr == E_RegWreg) && (D_rt_addr != 0) && (E_RegWrite == 1);
    assign stop_rt0_E1 = (Rt_Tuse == 0) && (E_Tnew == 1) && (D_rt_addr == E_RegWreg) && (D_rt_addr != 0) && (E_RegWrite == 1);
    assign stop_rt1_E2 = (Rt_Tuse == 1) && (E_Tnew == 2) && (D_rt_addr == E_RegWreg) && (D_rt_addr != 0) && (E_RegWrite == 1);
    assign stop_rt0_M1 = (Rt_Tuse == 0) && (M_Tnew == 1) && (D_rt_addr == M_RegWreg) && (D_rt_addr != 0) && (M_RegWrite == 1);

    assign stop_rt = stop_rt0_E2 | stop_rt0_E1 | stop_rt1_E2 | stop_rt0_M1;

    assign stop_md = (Start | Busy) & MDen;

    assign stop_eret = (D_eret) && (E_stop_eret || M_stop_eret);

    assign stop_sel = stop_rs | stop_rt | stop_md | stop_eret;

    //transmit
    assign D_rs_trans_sel = ((D_rs_addr == E_RegWreg) && (D_rs_addr != 0) && (E_Tnew == 0) && (E_RegWrite == 1)) ? 1 :
                         ((D_rs_addr == M_RegWreg) && (D_rs_addr != 0) && (M_Tnew == 0) && (M_RegWrite == 1)) ? 2 :
                         0;
    assign E_rs_trans_sel = ((E_rs_addr == M_RegWreg) && (E_rs_addr != 0) && (M_Tnew == 0) && (M_RegWrite == 1)) ? 1 :
                         ((E_rs_addr == W_RegWreg) && (E_rs_addr != 0) && (W_Tnew == 0) && (W_RegWrite == 1)) ? 2 :
                         0;            

    assign D_rt_trans_sel = ((D_rt_addr == E_RegWreg) && (D_rt_addr != 0) && (E_Tnew == 0) && (E_RegWrite == 1)) ? 1 :
                         ((D_rt_addr == M_RegWreg) && (D_rt_addr != 0) && (M_Tnew == 0) && (M_RegWrite == 1)) ? 2 :
                         0;
    assign E_rt_trans_sel = ((E_rt_addr == M_RegWreg) && (E_rt_addr != 0) && (M_Tnew == 0) && (M_RegWrite == 1)) ? 1 :
                         ((E_rt_addr == W_RegWreg) && (E_rt_addr != 0) && (W_Tnew == 0) && (W_RegWrite == 1)) ? 2 :
                         0;
    assign M_rt_trans_sel = ((M_rt_addr == W_RegWreg) && (M_rt_addr != 0) && (W_Tnew == 0) && (W_RegWrite == 1)) ? 1 : 
                         0;    


    assign D_rs_trans = (D_rs_trans_sel == 1) ? E_RegWD :
                        (D_rs_trans_sel == 2) ? M_RegWD :
                        D_rs_data;

    assign E_rs_trans = (E_rs_trans_sel == 1) ? M_RegWD :
                        (E_rs_trans_sel == 2) ? W_RegWD :
                        E_rs_data;

    assign D_rt_trans = (D_rt_trans_sel == 1) ? E_RegWD :
                        (D_rt_trans_sel == 2) ? M_RegWD :
                        D_rt_data;

    assign E_rt_trans = (E_rt_trans_sel == 1) ? M_RegWD :
                        (E_rt_trans_sel == 2) ? W_RegWD :
                        E_rt_data;
                        
    assign M_rt_trans = (M_rt_trans_sel == 1) ? W_RegWD :
                        M_rt_data;                        


endmodule
