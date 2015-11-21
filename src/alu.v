`timescale 1ns / 1ps
//
// 16-bit Arithmetic Logic Unit
// Assigns all PSR flags on every operation (it's up to the next guy to latch the desired flags).
//

`include "defines.v"

module alu
	(input  [`DATAWIDTH-1:0] rSrc, rDst,
	 input  [`ALUOPWIDTH-1:0]opCode,
	 output [`PRSWIDTH-1:0]  psrOut,
	 output [`DATAWIDTH-1:0] result
	);

	reg [`DATAWIDTH:0] temp;

	wire signed [`DATAWIDTH-1:0] srcSigned = rSrc; // also acts as immediate
	wire signed [`DATAWIDTH-1:0] dstSigned = rDst;

	assign psrOut[`psrZ] = rSrc == rDst;
	assign psrOut[`psrL] = rDst < rSrc;
	assign psrOut[`psrN] = dstSigned < srcSigned;
	assign psrOut[`psrF] = (srcSigned < 0 && dstSigned < 0 && result > 0) || (srcSigned > 0 && dstSigned > 0 && result < 0);
	assign psrOut[`psrC] = temp[`DATAWIDTH];
	assign result = temp[`DATAWIDTH-1:0];


	always @(*)
		case(opCode)
			`ALUOp_ADD: 	temp = dstSigned + srcSigned;
			`ALUOp_ADDU: 	temp = rDst + rSrc;
			`ALUOp_SUB:		temp = dstSigned - srcSigned;
			//`ALUOp_MUL: 	temp = rDst[7:0] * rSrc[7:0];
			`ALUOp_AND: 	temp = rSrc & rDst;
			`ALUOp_OR: 		temp = rSrc | rDst;
			`ALUOp_XOR: 	temp = rSrc ^ rDst;
			`ALUOp_SLL:		temp = rDst << rSrc[`REGWIDTH-1:0]; // can only shift by +/- 2**REGWIDTH
			`ALUOp_SRL:		temp = rDst >> rSrc[`REGWIDTH-1:0];
			`ALUOp_SLA:		temp = dstSigned <<< rSrc[`REGWIDTH-1:0];
			`ALUOp_SRA:		temp = dstSigned >>> rSrc[`REGWIDTH-1:0];
			`ALUOp_LUI:		temp = {rSrc[`IMMSIZE-1:0], rDst[`IMMSIZE-1:0]};
			`ALUOp_MOV:		temp = rSrc;
			 default:		temp = 0;
		endcase

endmodule