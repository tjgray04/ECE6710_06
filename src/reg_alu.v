`timescale 1ns / 1ps
//
// Top-level connection of regfile and alu
//

`include "defines.v"

module reg_alu
	 (input  clk,
	  input  write, 									// signal to write dDst to rDst
	  input  IMM_MUX, 								// signal to input dSrc or immediate
	  input  SRAM_OUT, 								// signal to SRAM data out buffer
	  input  RA_BUF, 									// signal to Return Address buffer
	  input  [`REGWIDTH-1:0] 	rSrc, rDst, 	// src and dst register locations
	  input 	[`ALUOPWIDTH-1:0] aluOp, 			// alu Opcode
	  input  [`DATAWIDTH-1:0] 	pc,				// program counter
	  input  [`DATAWIDTH-1:0] 	imm,				// immediate value
	  input  [`DATAWIDTH-1:0] 	mem_data, 		// data from memory
	  output [`DATAWIDTH-1:0] 	dSrc, dDst,		// src and dst register data
	  output [`PRSWIDTH-1:0] 	psrOut);			// program status register

	wire [`DATAWIDTH-1:0] alu_rSrc; 				// value from IMM_MUX
	wire [`DATAWIDTH-1:0] alu_Result; 			// result from the alu
	wire  [`DATAWIDTH-1:0] regInBus; 				// input to reg file data in port
	
	alu _alu(.dSrc(alu_rSrc), .dDst(dDst), .opCode(aluOp), .psrOut(psrOut), .result(alu_Result));
	
	regfile _regfile(.clk(clk), .write(write), .rSrc(rSrc), .rDst(rDst), .pc(pc), .write_data(regInBus), .dSrc(dSrc), .dDst(dDst));

	// mux for immediate value
	assign alu_rSrc = IMM_MUX ? imm : dSrc;
	
	mux31x16 regin_mux(.cntrl({RA_BUF,SRAM_OUT}), .arg1(alu_Result), .arg2(mem_data), .arg3(pc), .dout(regInBus));
	
// buffer on ALU, PC and SRAM	
// tribuf16 _tbSRAM(.din(mem_data), .en(SRAM_OUT), .dout(regInBus)); 
// tribuf16 _tbALU (.din(alu_Result), .en(ALU_OUT), .dout(regInBus));
// tribuf16 _tbRA	 (.din(pc), .en(RA_BUF), .dout(regInBus));
	
//	assign regInBus = SRAM_OUT ? mem_data   : 16'bz;
//	assign regInBus = ALU_OUT 	? alu_Result : 16'bz;
//	assign regInBus = RA_BUF 	? pc 			 : 16'bz;

	
endmodule
