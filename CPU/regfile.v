`timescale 1ns / 1ps
//
// Provides 16 16-bit registers
//

`include "defines.v"

module regfile
	 (input  clk,
	  //input 	pulse_en,
	  input  write, 									// signal to write ddest to rdest
	  input  [`REGWIDTH-1:0] rSrc, rDst, 		// src and dst register locations
	  input  [`DATAWIDTH-1:0] pc,					// program counter
	  input  [`DATAWIDTH-1:0] write_data, 		// write back data
	  output [`DATAWIDTH-1:0] dSrc, dDst);		// src and dst register data

	reg  [`DATAWIDTH-1:0] reg_block [2**`REGWIDTH-1:0];

	// no use in clearing the registers
	always @(posedge clk)
      //if (pulse_en && write) mem_block[rdest] <= write_data;
		if (write) reg_block[rDst] <= write_data;
	
	// pc is read only at register address 15 (r15 is the return address register ra)
	assign dSrc = &rSrc ? pc : reg_block[rSrc]; // note: Let rSrc = 4’b1111, &rSrc is equivalent to 1 & 1 & 1 & 1. Results in 1'b1
	assign dDst = &rDst ? pc : reg_block[rDst];

endmodule
