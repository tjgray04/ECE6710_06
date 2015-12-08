`timescale 1ns / 1ps
//
// Top-level connection of regfile and alu
//

`include "defines.v"

module reg_alu
	 (input  IMM_MUX, 								// signal to input dSrc or immediate
	  input 	COND_RSLT,								// result for Scond instruction
	  input 	WB_MUX0,									// Write back mux to into regfile
	  input 	[1:0] WB_MUX,							// Write Back multiplexor
//	  input  [`REGWIDTH-1:0] 	rSrc, rDst, 	// src and dst register locations
	  input 	[`ALUOPWIDTH-1:0] aluOp, 			// alu Opcode
	  input  [`DATAWIDTH-1:0] 	drom,				// data from rom
	  input  [`DATAWIDTH-1:0] 	pc_ra,			// program counter (return address)
	  input  [`IMMWIDTH-1:0] 	imm_in,			// immediate value
	  input  [`DATAWIDTH-1:0] 	mem_data, 		// data from memory
	  input  [`DATAWIDTH-1:0] 	dSrc, dDst,		// src and dst register data
     output [`DATAWIDTH-1:0]  wb_data,      // Data to be latched by RegFile
	  output [`PRSWIDTH-1:0] 	psrOut);			// program status register

   wire [`DATAWIDTH-1:0] alu_Result; 			// result from alu
	wire [`DATAWIDTH-1:0] imm_ex; 				// sign extended immediate value
	wire [`DATAWIDTH-1:0] alu_rSrc; 				// value from IMM_MUX
	wire [`DATAWIDTH-1:0] wb_mux0; 				// input to reg file data in port
//	wire [`DATAWIDTH-1:0] wb_data; 				// input to reg file data in port
	
	alu _alu(.dSrc(alu_rSrc), .dDst(dDst), .opCode(aluOp), .psrOut(psrOut), .result(alu_Result));
	
//	regfile _regfile(.clk(clk), .write(write), .rSrc(rSrc), .rDst(rDst), .pc(pc_ra), 
//                    .write_data(wb_data), .dSrc(dSrc), .dDst(dDst));

	// mux for immediate value
	assign alu_rSrc = IMM_MUX ? imm_ex : dSrc;
	
	mux41x16 regin_mux(.cntrl(WB_MUX), .arg0(pc_ra), .arg1({15'b0, COND_RSLT}), .arg2(alu_Result), 
                      .arg3(mem_data), .dout(wb_mux0));
   
	assign wb_data = (WB_MUX0) ? drom : wb_mux0; 
	
	signext SignExtend (.imm(imm_in), .immExt(imm_ex));
	
endmodule

///
/// Sign Extender
///
module signext
	(input  [`IMMWIDTH-1:0] imm,
	output [`DATAWIDTH-1:0] immExt);

	assign immExt = {{8{imm[`IMMWIDTH-1]}}, imm};

endmodule

///
/// Arithmetic Logic Unit
///
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

///
/// 4 Input to 1 Output Mux with 16-bit data width
///
module mux41x16
	(input [1:0] cntrl,
	 input [`DATAWIDTH-1:0] arg0,
	 input [`DATAWIDTH-1:0] arg1,
	 input [`DATAWIDTH-1:0] arg2,
	 input [`DATAWIDTH-1:0] arg3,
    output reg [`DATAWIDTH-1:0] dout
	 );
	 
	always@(*) begin
		case(cntrl)
			2'b00: dout = arg0;
			2'b01: dout = arg1;
			2'b10: dout = arg2;
			2'b11: dout = arg3;
			default: dout = 16'd0;
		endcase
	end

endmodule
