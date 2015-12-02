`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:50:00 12/01/2015 
// Design Name: 
// Module Name:    rom 
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

`include "defines.v"

module rom
	(input clk,						// System clock
	 input CE,						// Chip enable - active low
	 input OE,						// Output enable - active low
	 input [15:0] addr,			// Address
	 output reg [15:0] dout);	// Data output

	// Two dimensional rom arrray
   reg [15:0] rom [(2**16)-1:0]; 
	
	// Counter
	reg [2:0] count;
	
	// Initialize the rom with the test file.
   initial begin
      $readmemb("FibBinary.txt", rom, 0, ((2**16)-1)); 
	end
	
	////////////////////////////
	// CHIP DETAILS
	//
	// Fast read access time - 45ns (modeled as 50 ns)
	// 16-bit address
	// 16-bit data
	// CE is active low - chip enable
	// OE is active low - output enable
	// 
	
	// This is the counter block
	always @(posedge clk) begin
		if(!CE) begin
			if(!OE) begin
				if(count == 4) begin
					dout <= rom[addr];
					count <= 0;
				end
				else
					count <= count + 1;
			end // if(!OE)
			else
				count <= 0;
		end // if(!CE)
		else
				count <= 0;
	end // always		

endmodule
