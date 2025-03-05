`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:32:38 11/03/2023 
// Design Name: 
// Module Name:    DM 
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
module DM(
    inout [31:0] pc,
    input [31:0] addr,
    input [31:0] data,
    input DM_sel,
    input clk,
    input reset,
    output reg [31:0] DM_out
    );

    reg [31:0] DM [0:1023];
    integer i;

    initial
    begin
        for (i = 0;i <= 1023;i = i + 1 ) 
        begin
            DM[i] = 0;
        end
    end

    always @(posedge clk ) 
    begin
       if (reset == 1) 
       begin
          for (i = 0;i <= 1023;i = i + 1 ) 
            begin
                DM[i] = 0;
            end
       end else 
       begin
          if (DM_sel == 1) 
          begin
              DM[addr] <= data;
              $display("@%h: *%h <= %h", pc, addr, data);
          end else 
          begin
            DM_out <= DM[addr];
          end
       end 
    end

endmodule
