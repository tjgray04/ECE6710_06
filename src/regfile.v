`timescale 1ns / 1ps
//
// Provides 16 16-bit registers
//

`include "defines.v"

module regfile
	 (input  clk,
	  //input 	pulse_en,
	  input  write, 									// signal to write dDst to rDst
	  input  [`REGWIDTH-1:0] rSrc, rDst, 		// src and dst register locations
	  input  [`DATAWIDTH-1:0] pc,					// program counter
	  input  [`DATAWIDTH-1:0] write_data, 		// write back data
	  output [`DATAWIDTH-1:0] dSrc, dDst);		// src and dst register data

	reg  [`DATAWIDTH-1:0] reg_block [2**`REGWIDTH-1:0];

	// no use in clearing the registers
	always @(negedge clk)
      // r15 is the return address register ra
		if (write) reg_block[rDst] <= (&rDst) ? pc : write_data;
		// note: Let rSrc = 4'b1111, &rSrc is equivalent to 1 & 1 & 1 & 1. Results in 1'b1
	
	// r0 is a zero register with constant value 0 
	assign dSrc = (rSrc) ? reg_block[rSrc] : 16'b0;
	assign dDst = (rDst) ? reg_block[rDst] : 16'b0;

endmodule