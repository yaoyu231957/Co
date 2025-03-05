`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:54:47 10/15/2023
// Design Name:   ext
// Module Name:   C:/Users/86139/Desktop/courses/co/P1/EXT/ext_test.v
// Project Name:  EXT
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ext
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ext_test;

	// Inputs
	reg [15:0] imm;
	reg [1:0] EOp;

	// Outputs
	wire [31:0] ext;

	// Instantiate the Unit Under Test (UUT)
	ext uut (
		.imm(imm), 
		.EOp(EOp), 
		.ext(ext)
	);

	initial begin
		// Initialize Inputs
		imm = 16'b0001001000110100;
		EOp = 2'b00;
		
		#20
		imm = 16'b0001001000110100;
		EOp = 2'b01;
		
		#20
		imm = 16'b0001001000110100;
		EOp = 2'b10;
		
		#20
		imm = 16'b0001001000110100;
		EOp = 2'b11;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

