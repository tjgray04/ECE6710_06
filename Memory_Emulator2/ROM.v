`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:59:48 10/15/2014 
// Design Name: 
// Module Name:    InstructionROM 
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
module ROM#(parameter WIDTH = 16, ROM_ADDR_BITS = 18)// assures 2^12 address space for ~4k application size (16Kbytes)
						(input clk,
						 input CE,OE,
						 input [11:0] PCadr, // PC is 32 bits, not 17
						 output reg [WIDTH-1:0] instruction);


	//Create the ROM
   reg [WIDTH-1:0] ROM [(2**ROM_ADDR_BITS)-1:0]; 
	//Create a count variable
	reg [3:0] count = 4'b0;
	
	//Initialize the ROM with the test file.
   initial
	begin
      $readmemb("Test.dat.txt", ROM, 0, ((2**ROM_ADDR_BITS)-1)); 
	end
	
	//This is the counter block
	always @(posedge clk)
	begin
		//If the count == 2 (80nS) and the chip is enabled read out the data
		if(count == 5 && !CE && !OE)
			begin
				instruction <= ROM[PCadr];
				//Reset the counter
				count  <= 4'b0;
			end
		//Else if the chip was enabled increase teh counter
		else if(!CE && !OE)
			begin
				count <= count + 1'b1;
			end
		else if((CE && count > 0) || count >= 6)
			begin
				count <= 0;
			end
	end

endmodule
