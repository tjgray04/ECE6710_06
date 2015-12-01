`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:50:27 11/25/2015
// Design Name:   StackMemory
// Module Name:   C:/Users/Travis/Documents/GitHub/ECE6710_06/Memory_Emulator/Memory_Emulator2/SRAM_TEST_BENCH.v
// Project Name:  Memory_Emulator2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: StackMemory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SRAM_TEST_BENCH;

	// Inputs
	reg clk;
	reg CE;
	reg OE;
	reg WE;
	reg [15:0] input_data;
	reg [16:0] address;

	// Outputs
	wire [15:0] stackData;

	// Instantiate the Unit Under Test (UUT)
	SRAM uut (
		.clk(clk), 
		.CE(CE), 
		.OE(OE), 
		.WE(WE), 
		.input_data(input_data), 
		.address(address), 
		.stackData(stackData)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		CE = 1;
		OE = 1;
		WE = 1;
		input_data = 0;
		address = 17'b0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100;
		CE = 0;
		OE = 1;
		WE = 0;
		input_data = 16'b1;
		#100;
		
		CE = 0;
		OE = 0;
		WE = 1;
		#100;
	end
      
	always #5 clk = ~clk;
endmodule

