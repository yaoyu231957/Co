`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:10:40 10/15/2023
// Design Name:   expr
// Module Name:   C:/Users/86139/Desktop/courses/co/P1/expr/expr_test.v
// Project Name:  expr
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: expr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module expr_test;

	// Inputs
	reg clk;
	reg clr;
	reg [7:0] in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	expr uut (
		.clk(clk), 
		.clr(clr), 
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clr = 0;
		in = "1";
		#10
		in = "+";
		#10
		in = "2";
		#10
		in = "*";
		#10
		in = "3";
		#30
		clr = 1;
		#10
		clr = 0;
		in = "1";
		#10
		in = "+";
		#10
		in = "2";
		#10
		in = "*";
		#10
		in = "3";
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	end
   always #5 clk = ~clk;
endmodule

