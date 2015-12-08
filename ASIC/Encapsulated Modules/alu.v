`timescale 1ns / 1ps
//
// 16-bit Arithmetic Logic Unit
// Assigns all PSR flags on every operation (it's up to the next guy to latch the desired flags).
//

`include "defines.v"

module alu
	(input  [`DATAWIDTH-1:0] dSrc, dDst,
	 input  [`ALUOPWIDTH-1:0]opCode,
	 output [`PRSWIDTH-1:0]  psrOut,
	 output [`DATAWIDTH-1:0] result
	);

	reg [`DATAWIDTH:0] temp;

	wire signed [`DATAWIDTH-1:0] srcSigned = dSrc; // also acts as immediate
	wire signed [`DATAWIDTH-1:0] dstSigned = dDst;

	assign psrOut[`psrZ] = dSrc == dDst;
	assign psrOut[`psrL] = dDst < dSrc; // compare unsigned
	assign psrOut[`psrN] = dstSigned < srcSigned; // compare signed
	assign psrOut[`psrF] = (srcSigned < 0 && dstSigned < 0 && result > 0) || (srcSigned > 0 && dstSigned > 0 && result < 0);
	assign psrOut[`psrC] = temp[`DATAWIDTH];
	assign result = temp[`DATAWIDTH-1:0];


	always @(*)
		case(opCode)
			`ALUOp_ADD: 	temp = dstSigned + srcSigned;
			`ALUOp_ADDU: 	temp = dDst + dSrc;
			`ALUOp_SUB:		temp = dstSigned - srcSigned;
			//`ALUOp_MUL: 	temp = dDst[7:0] * dSrc[7:0];
			`ALUOp_AND: 	temp = dSrc & dDst;
			`ALUOp_OR: 		temp = dSrc | dDst;
			`ALUOp_XOR: 	temp = dSrc ^ dDst;
			`ALUOp_SLL:		temp = dDst << dSrc[`REGWIDTH-1:0]; // can only shift by +/- 2**REGWIDTH-1
			`ALUOp_SRL:		temp = dDst >> dSrc[`REGWIDTH-1:0];
			`ALUOp_SLA:		temp = dstSigned <<< dSrc[`REGWIDTH-1:0];
			`ALUOp_SRA:		temp = dstSigned >>> dSrc[`REGWIDTH-1:0];
			`ALUOp_LUI:		temp = {dSrc[`IMMWIDTH-1:0], dDst[`IMMWIDTH-1:0]};
			`ALUOp_MOV:		temp = dSrc;
			 default:		temp = 0;
		endcase

endmodule
