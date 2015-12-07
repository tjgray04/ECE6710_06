`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:50:41 12/07/2015
// Design Name:   arbiter
// Module Name:   C:/Users/Steve Brown/Utah/Fall 2015/ECE 6710/Team Project/GIT/ASIC/arbiter_tb.v
// Project Name:  ASIC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: arbiter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`include "defines.v"

module arbiter_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [2:0] count;

	// Instantiate the Unit Under Test (UUT)
	arbiter uut (
		.clk(clk), 
		.rst(rst), 
		.count(count)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
      rst = 1;
      
      #1000000;
        
		// Add stimulus here
      $finish(2);
	end
   
   always #5 clk = ~clk;
      
endmodule

