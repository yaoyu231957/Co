`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:54:00 11/05/2023
// Design Name:   mips
// Module Name:   C:/Users/86139/Desktop/courses/co/P4/CPU/mips_test.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
   
module mips_test;
 
	// Inputs 
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset)
	); 
    
	initial begin
		// Initialize Inputs
		reset = 1;
		#10
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		/*#100;
        reset = 1;
		 #10
			reset = 0;
		*/
		// Add stimulus here
 
	end
	
	always #5 clk=~clk;
       
endmodule

