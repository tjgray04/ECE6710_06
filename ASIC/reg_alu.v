`timescale 1ns / 1ps
//
// Top-level connection of regfile and alu
//

`include "defines.v"

module reg_alu
	 (input  clk,
	  input  write, 									// signal to write dDst to rDst
	  input  IMM_MUX, 								// signal to input dSrc or immediate
	  input 	COND_RSLT,								// result for Scond instruction
	  input 	WB_MUX0,									// Write back mux to into regfile
	  input 	[1:0] WB_MUX,							// Write Back multiplexor
	  input  [`REGWIDTH-1:0] 	rSrc, rDst, 	// src and dst register locations
	  input 	[`ALUOPWIDTH-1:0] aluOp, 			// alu Opcode
	  input  [`DATAWIDTH-1:0] 	drom,				// data from rom
	  input  [`DATAWIDTH-1:0] 	pc_ra,			// program counter (return address)
	  input  [`IMMWIDTH-1:0] 	imm_in,			// immediate value
	  input  [`DATAWIDTH-1:0] 	mem_data, 		// data from memory
	  output [`DATAWIDTH-1:0] 	dSrc, dDst,		// src and dst register data
	  output [`DATAWIDTH-1:0] 	alu_Result,		// result from the alu
	  output [`PRSWIDTH-1:0] 	psrOut);			// program status register

	wire [`DATAWIDTH-1:0] imm_ex; 				// sign extended immediate value
	wire [`DATAWIDTH-1:0] alu_rSrc; 				// value from IMM_MUX
	wire [`DATAWIDTH-1:0] wb_mux0; 				// input to reg file data in port
	wire [`DATAWIDTH-1:0] regInBus; 				// input to reg file data in port
	
	alu _alu(.dSrc(alu_rSrc), .dDst(dDst), .opCode(aluOp), .psrOut(psrOut), .result(alu_Result));
	
	regfile _regfile(.clk(clk), .write(write), .rSrc(rSrc), .rDst(rDst), .pc(pc_ra), .write_data(regInBus), .dSrc(dSrc), .dDst(dDst));

	// mux for immediate value
	assign alu_rSrc = IMM_MUX ? imm_ex : dSrc;
	
	mux41x16 regin_mux(.cntrl(WB_MUX), .arg0(pc_ra), .arg1({15'b0, COND_RSLT}), .arg2(alu_Result), .arg3(mem_data), .dout(wb_mux0));
   
	assign regInBus = (WB_MUX0) ? drom : wb_mux0; 
	
	signext SignExtend (.imm(imm_in), .immExt(imm_ex));
	
endmodule
