`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:02:33 11/24/2015
// Design Name:   ROM
// Module Name:   C:/Users/Travis/Documents/GitHub/ECE6710_06/Memory_Emulator/Memory_Emulator/ROM_TEST_BENCH.v
// Project Name:  Memory_Emulator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ROM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ROM_TEST_BENCH;

	// Inputs
	reg clk;
	reg CE;
	reg OE;
	reg [11:0] PCadr;
	integer i;

	// Outputs
	wire [15:0] instruction;

	// Instantiate the Unit Under Test (UUT)
	ROM uut (
		.clk(clk), 
		.CE(CE), 
		.OE(OE), 
		.PCadr(PCadr), 
		.instruction(instruction)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		CE = 1;
		OE = 1;
		PCadr = 18'b0;

		// Wait 100 ns for global reset to finish
		#10;
       i = 0;
		// Add stimulus here
		for(i = 0; i < 16 ; i = i+1)
		begin
			PCadr = i;
			CE = ~CE;
			OE = ~OE;
			#150;
		end

	end
      
		
	always
		begin
			#5;
			clk = ~clk;
		end
endmodule

