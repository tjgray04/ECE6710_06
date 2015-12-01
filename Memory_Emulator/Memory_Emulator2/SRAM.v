`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:06:59 11/11/2014 
// Design Name: 
// Module Name:    StackMemory 
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
module SRAM #(parameter WIDTH = 16, RAM_ADDR_BITS = 17)
	(input clk, CE, OE, WE,
	 input [WIDTH-1:0] input_data,
	 input [RAM_ADDR_BITS-1:0] address,
	 output reg [WIDTH-1:0] stackData);

   (* RAM_STYLE="{AUTO | BLOCK |  BLOCK_POWER1 | BLOCK_POWER2}" *)
   reg [WIDTH-1:0] stackRAM [(2**RAM_ADDR_BITS)-1:0];
	reg [3:0] count = 4'b0;
		
	//This is the counter block
	always @(posedge clk)
	begin
		//If the count == 2 (80nS) and the chip is enabled read out the data
		if(count == 5 && (!CE && !OE && WE))
			begin
				stackData <= stackRAM[address[RAM_ADDR_BITS-1:0]];
				//Reset the counter
				count  <= 4'b0;
			end
		if(count == 5 && (!CE && OE && !WE))
			begin
				stackRAM[address[RAM_ADDR_BITS-1:0]] <= input_data;
				//Reset the counter
				count  <= 4'b0;
			end
		//Else if the chip was enabled increase teh counter
		if(!CE)
			begin
				count <= count + 1'b1;
			end
		if(count >= 6 || (CE))
			begin
				count <= 0;
			end
	end
	
		
endmodule
