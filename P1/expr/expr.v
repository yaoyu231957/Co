`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:50:54 10/15/2023 
// Design Name: 
// Module Name:    expr 
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
module expr(
    input clk,
    input clr,
    input [7:0] in,
    output reg out
    );
    
    reg [1:0] state;
    reg [1:0] judge;

    parameter state0 = 0;
    parameter state1 = 1;
    parameter state2 = 2;
    parameter state3 = 3;

	 initial
	 begin
		state = state0;
		out = 0; 
	 end

    always @(*) 
    begin
        if(in >= 48 && in <=57)
        begin
            judge <= 1;
        end
        else if (in == 42 || in == 43) 
        begin
            judge <= 2;
        end else 
        begin
            judge <= 0;
        end
    end

    always @(*)
    begin
        if (clr == 1) 
        begin
            state <= state0;
            out <= 0;
        end
        else
        begin
            
        end
    end
   
	 
    always @(posedge clk ) 
    begin
        if (clr == 1) 
        begin
            state <= state0;
            out <= 0;
        end else 
        begin
        case (state)
            state0:
                begin
                    if (judge == 1) 
                    begin
                        out <= 1;
                        state <= state1;
                    end else 
                    begin
                        out <= 0;
                        state <= state3;
                    end
                end 
            state1:
                begin
                    if (judge == 2) 
                    begin
                        out <= 0;
                        state <= state2;
                    end else 
                    begin
                        out <= 0;
                        state <= state3;
                    end
                end
            state2:
                begin
                    if (judge == 1) 
                    begin
                        out <= 1;
                        state <= state1;
                    end else 
                    begin
                        out <= 0;
                        state <= state3;
                    end
                end
            default: ;
        endcase
        end
    end

endmodule
