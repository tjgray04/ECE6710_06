`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:53:47 11/23/2015
// Design Name:   signext
// Module Name:   C:/Users/Steve Brown/Utah/Fall 2015/ECE 6710/Team Project/GIT/ASIC/signext_tb.v
// Project Name:  ASIC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: signext
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`include "defines.v"

module signext_tb;

	// Inputs
	reg [7:0] imm;

	// Outputs
	wire [15:0] immExt;

	// Integer
	integer i;
	
	// Instantiate the Unit Under Test (UUT)
	signext uut (
		.imm(imm), 
		.immExt(immExt)
	);

	initial begin
		// Initialize Inputs
		imm = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		$display("SIMULATION STARTED...");
		  
		// Add stimulus here
		
		for(i = 0; i < 2**8; i = i + 1) begin
			#10 imm = i;
			#5; // Wait for assignment to happen
			if(immExt != ({{8{imm[`IMMWIDTH-1]}}, imm})) $display("ERROR @ time %d: immExt is %h, but should be %h.", $time, immExt, ({{8{imm[`IMMWIDTH-1]}}, imm}));
		end
		
		$display("SIMULATION FINISHED.");
		$finish(2);
	end
      
endmodule

