`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:44:02 12/01/2015 
// Design Name: 
// Module Name:    sram 
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

module sram
	(input clk,						// System clock
	 input CE,						// Chip enable
	 input OE,						// Output enable
	 input WE,						//	Write enable 
	 input LB,						// Lower bit
	 input UB,						// Upper bit
	 input [15:0] addr,			// Address
    input [15:0] din,		// Input data
	 output reg [15:0] dout);	// Output data
	 	
		// Two dimensional rom arrray
   reg [15:0] sram [(2**16)-1:0]; 
	
	// Counter
	reg [1:0] wcount, rcount;
	
	////////////////////////////
	// CHIP DETAILS
	//
	// Fast read/write access time - 12ns, 15ns (modeled as 20ns, 30ns)
	// 16-bit address
	// 16-bit data
	// CE is active low - chip enable
	// OE is active low - output enable
	// WE is active low - write enable
	// LB is active low - lower byte
	// UB is active low - upper byte
	// 
	
	// This is the counter block
	always @(posedge clk) begin
		if(!CE) begin
			if(!OE) begin
				// Writing
				if(!WE) begin
					if(wcount == 2) begin
						sram[addr] <= din;
						wcount <= 0;
					end
					else
						wcount <= wcount + 1;
				end // if(!WE)
				// Reading
				else begin
					if(rcount == 1) begin
						dout <= sram[addr];
						rcount <= 0;
					end
					else
						rcount <= rcount + 1;
				end // else
			end // if(!OE)
			else begin
				wcount <= 0;
				rcount <= 0;
			end
		end // if(!CE)
		else begin
			wcount <= 0;
			rcount <= 0;
		end
	end // always		

endmodule
