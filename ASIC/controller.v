`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:11:14 11/25/2015 
// Design Name: 
// Module Name:    controller 
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

module controller
	(input clk, rst,
	 input [`PRSWIDTH-1:0] psr,
	 input [`DATAWIDTH-1:0] inst,
	 output reg BRANCH, 
	 output reg JUMP, 
	 output reg ROM_MUX, 
	 output reg MEMC_MUX, 
	 //output reg ALU_BUF, 
	 output reg VGA_BUF, 
	 output reg IMM_MUX,
	 output reg PSR_EN,
	 output reg PC_EN,
	 output reg WRITE,
	 output reg COND_RSLT,
	 output reg [2:0] WB_MUX, 
	 output reg [`REGWIDTH-1:0] rDst,
	 output reg [`REGWIDTH-1:0] rSrc,
	 output reg [`IMMWIDTH-1:0] imm_val, 
	 output reg [`ALUOPWIDTH-1:0] ALU_OP);

	// FSM states
	reg [4:0] ps, ns;
	
	// Present State
	always@(posedge clk) begin
		if(!rst)
			ps <= `FETCH;
		else
			ps <= ns;
	end
	
	// Next State
	always@(*) begin
		case(ps)
		
			`FETCH: ns = `DECODE;
			
			`DECODE: // Decode instruction 
				begin
					//inst[15:12]
					case(inst[`DATAWIDTH-1:`DATAWIDTH-`OPWIDTH]) 
						
						//////////////////////////
						// I-TYPES
						`ADDI:   ns = `FETCH;
						`ADDUI:  ns = `FETCH;
						`SUBI:   ns = `FETCH;
						`CMPI:   ns = `FETCH;
						`ANDI:   ns = `FETCH;
						`ORI:	   ns = `FETCH;
						`XORI:   ns = `FETCH;
						`MOVI:   ns = `FETCH;
						`LUI:	   ns = `FETCH;
						
						//////////////////////////
						// R-TYPE
						`RTYPE: 
							begin
								//inst[7:4]
								case(inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH])
									`ADD:	 ns = `FETCH;
									`ADDU: ns = `FETCH;
									`SUB:	 ns = `FETCH;
									`CMP:  ns = `FETCH;
									`AND:  ns = `FETCH;
									`OR:	 ns = `FETCH;
									`XOR:  ns = `FETCH;
									`MOV:	 ns = `FETCH;
									default: ns = `FETCH;
								endcase
							end // end rType
						
						//////////////////////////
						// O-TYPE
						`OTYPE:
							begin
								//inst[7:4]
								case(inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH])
									`LOAD:  ns = `LOAD0;
									`STOR:  ns = `FETCH;
									`SCOND: ns = `FETCH;
									`JCOND: ns = `FETCH;
									`JAL:   ns = `FETCH;
									default: ns = `FETCH;
								endcase
							end // end oType
						
						//////////////////////////
						// BRANCH-TYPE
						`BCOND: ns = `FETCH;
						
						//////////////////////////
						// SHIFT-TYPE
						`STYPE:
							begin
							 //inst[7:4]
								case(inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH])
									`LSH: 	ns = `FETCH;
									`LLSHI:  ns = `FETCH;
									`LRSHI:  ns = `FETCH;
									`ASHU:   ns = `FETCH;
									`ALSHUI: ns = `FETCH; 
									`ARSHUI: ns = `FETCH; 
									default: ns = `FETCH;
								endcase
							end
						
						//////////////////////////
						// Unknown op-codes
						default: ns = `FETCH;
					endcase
				end // end DECODE case
				
//			`EXECUTE: ns = `FETCH;			
//			`BRANCH:  ns = `FETCH;			
//			`JUMP: 	 ns = `FETCH;		
//			`JMPAL: 	 ns = `FETCH;		
			`LOAD0: 	 ns = `FETCH;			
//			`LOAD1: 	 ns = `FETCH;			
//			`STORE: 	 ns = `FETCH;
			default:  ns = `FETCH;
		endcase // end ps case
	end
	
	// Output Logic
	always@(*) begin
		BRANCH = 0; 
		JUMP = 0;
		ROM_MUX = 0;
		MEMC_MUX = 0;
		WB_MUX = 2'b10;
		//ALU_BUF = 0;
		VGA_BUF = 0;
		IMM_MUX = 0;
		PSR_EN = 0;
		PC_EN = 0;
		WRITE = 0;
		COND_RSLT = 0;
		rDst = `REGWIDTH'b0;
		rSrc = `REGWIDTH'b0;
		imm_val = `IMMWIDTH'b0;
		ALU_OP = `ALUOPWIDTH'b0;
		case(ps)
			`FETCH:
				begin
					;
				end
			`DECODE:
				begin
					//inst[15:12] - OPCODE
					case(inst[`DATAWIDTH-1:`DATAWIDTH-`OPWIDTH]) 
						
						//////////////////////////
						// I-TYPES
						`ADDI:
							begin
								rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
								imm_val = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-1:0];
								ALU_OP = `ALUOp_ADD;
								IMM_MUX = 1;
								WRITE = 1;
								PSR_EN = 1;
								PC_EN = 1;
							end
						`ADDUI:
							begin
								rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
								imm_val = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-1:0];
								ALU_OP = `ALUOp_ADDU;
								IMM_MUX = 1;
								WRITE = 1;
								PSR_EN = 1;
								PC_EN = 1;
							end
						`SUBI: 
							begin
								rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
								imm_val = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-1:0];
								ALU_OP = `ALUOp_SUB;
								IMM_MUX = 1;
								WRITE = 1;
								PSR_EN = 1;
								PC_EN = 1;
							end
						`CMPI: 
							begin
								rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
								imm_val = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-1:0];
								IMM_MUX = 1;
								PSR_EN = 1;
								PC_EN = 1;
							end
						`ANDI: 
							begin
								rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
								imm_val = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-1:0];
								ALU_OP = `ALUOp_AND;
								IMM_MUX = 1;
								WRITE = 1;
								PSR_EN = 1;
								PC_EN = 1;
							end
						`ORI: 
							begin
								rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
								imm_val = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-1:0];
								ALU_OP = `ALUOp_OR;
								IMM_MUX = 1;
								WRITE = 1;
								PSR_EN = 1;
								PC_EN = 1;
							end
						`XORI: 
							begin
								rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
								imm_val = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-1:0];
								ALU_OP = `ALUOp_XOR;
								IMM_MUX = 1;
								WRITE = 1;
								PSR_EN = 1;
								PC_EN = 1;
							end
						`MOVI: 
							begin
								rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
								imm_val = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-1:0];
								ALU_OP = `ALUOp_MOV;
								IMM_MUX = 1;
								WRITE = 1;
								PSR_EN = 1;
								PC_EN = 1;
							end
						`LUI: 
							begin
								rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
								imm_val = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-1:0];
								ALU_OP = `ALUOp_LUI;
								IMM_MUX = 1;
								WRITE = 1;
								PSR_EN = 1;
								PC_EN = 1;
							end						
						
						//////////////////////////
						// R-TYPE
						`RTYPE: 
							begin
								//inst[7:4]
								case(inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH])
									`ADD:	
										begin
											rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
											rSrc = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH-1:0];
											ALU_OP = `ALUOp_ADD;
											WRITE = 1;
											PSR_EN = 1;
											PC_EN = 1;
										end
									`ADDU:
										begin
											rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
											rSrc = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH-1:0];
											ALU_OP = `ALUOp_ADDU;
											WRITE = 1;
											PSR_EN = 1;
											PC_EN = 1;
										end
									`SUB:
										begin
											rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
											rSrc = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH-1:0];
											ALU_OP = `ALUOp_SUB;
											WRITE = 1;
											PSR_EN = 1;
											PC_EN = 1;
										end
									`CMP: 
										begin
											rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
											rSrc = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH-1:0];
											PSR_EN = 1;
											PC_EN = 1;
										end
									`AND:
										begin
											rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
											rSrc = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH-1:0];
											ALU_OP = `ALUOp_AND;
											WRITE = 1;
											PSR_EN = 1;
											PC_EN = 1;
										end
									`OR:
										begin
											rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
											rSrc = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH-1:0];
											ALU_OP = `ALUOp_OR;
											WRITE = 1;
											PSR_EN = 1;
											PC_EN = 1;
										end									
									`XOR: 
										begin
											rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
											rSrc = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH-1:0];
											ALU_OP = `ALUOp_XOR;
											WRITE = 1;
											PSR_EN = 1;
											PC_EN = 1;
										end
									`MOV:	
										begin
											rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
											rSrc = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH-1:0];
											ALU_OP = `ALUOp_MOV;
											WRITE = 1;
											PSR_EN = 1;
											PC_EN = 1;
										end
									default: // Don't change any of the defaults from top of always block
										begin
											;
										end
								endcase // case(R-TYPE)
							end // end rType
						
						//////////////////////////
						// O-TYPE
						`OTYPE:
							begin
								//inst[7:4]
								case(inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH])
									`LOAD: 
										begin
											rSrc = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH-1:0];
											MEMC_MUX = 1;
										end
									`STOR: 
										begin
											rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
											rSrc = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH-1:0];
											MEMC_MUX = 1;
											PC_EN = 1;
										end
									`SCOND: 
										begin
											rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
											WB_MUX = 2'b01;
											WRITE = 1;
											PC_EN = 1;
											// Check PSR
											case(inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH-1:0])
												`EQ: COND_RSLT = (psr[`psrZ]) ? 1'b1 : 1'b0;
												`CS: COND_RSLT = (psr[`psrC]) ? 1'b1 : 1'b0; 
												`HI: COND_RSLT = (psr[`psrL]) ? 1'b1 : 1'b0;
												`GT: COND_RSLT = (psr[`psrN]) ? 1'b1 : 1'b0;
												`FS: COND_RSLT = (psr[`psrF]) ? 1'b1 : 1'b0;
												`HS: COND_RSLT = (psr[`psrZ] | psr[`psrL]) ? 1'b1 : 1'b0;
												`GE: COND_RSLT = (psr[`psrZ] | psr[`psrN]) ? 1'b1 : 1'b0;
												`NE: COND_RSLT = (!psr[`psrZ]) ? 1'b1 : 1'b0;
												`CC: COND_RSLT = (!psr[`psrC]) ? 1'b1 : 1'b0;
												`LS: COND_RSLT = (!psr[`psrL]) ? 1'b1 : 1'b0;
												`LE: COND_RSLT = (!psr[`psrN]) ? 1'b1 : 1'b0;
												`FC: COND_RSLT = (!psr[`psrF]) ? 1'b1 : 1'b0;
												`LO: COND_RSLT = (!psr[`psrZ] & !psr[`psrL]) ? 1'b1 : 1'b0;
												`LT: COND_RSLT = (!psr[`psrZ] & !psr[`psrN]) ? 1'b1 : 1'b0;
												`UC: COND_RSLT = 1'b0;
												default: COND_RSLT = 1'b0;
											endcase
										end
									`JCOND: 
										begin
											rSrc = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH-1:0];
											PC_EN = 1;
											// Check PSR
											case(inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH])
												`EQ: JUMP = (psr[`psrZ]) ? 1'b1 : 1'b0;
												`CS: JUMP = (psr[`psrC]) ? 1'b1 : 1'b0; 
												`HI: JUMP = (psr[`psrL]) ? 1'b1 : 1'b0;
												`GT: JUMP = (psr[`psrN]) ? 1'b1 : 1'b0;
												`FS: JUMP = (psr[`psrF]) ? 1'b1 : 1'b0;
												`HS: JUMP = (psr[`psrZ] | psr[`psrL]) ? 1'b1 : 1'b0;
												`GE: JUMP = (psr[`psrZ] | psr[`psrN]) ? 1'b1 : 1'b0;
												`NE: JUMP = (!psr[`psrZ]) ? 1'b1 : 1'b0;
												`CC: JUMP = (!psr[`psrC]) ? 1'b1 : 1'b0;
												`LS: JUMP = (!psr[`psrL]) ? 1'b1 : 1'b0;
												`LE: JUMP = (!psr[`psrN]) ? 1'b1 : 1'b0;
												`FC: JUMP = (!psr[`psrF]) ? 1'b1 : 1'b0;
												`LO: JUMP = (!psr[`psrZ] & !psr[`psrL]) ? 1'b1 : 1'b0;
												`LT: JUMP = (!psr[`psrZ] & !psr[`psrN]) ? 1'b1 : 1'b0;
												`UC: JUMP = 1'b0;
												default: JUMP = 1'b0;
											endcase
										end
									`JAL: 
										begin
											JUMP = 1;
											rDst = `REGWIDTH'd15;
											rSrc = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH-1:0];
											WRITE = 1;
											WB_MUX = 2'b0;
											PC_EN = 1;
										end
									default: ;
								endcase // case(O-TYPE)
							end // end oType
						
						//////////////////////////
						// BRANCH-TYPE
						`BCOND:
							begin
								imm_val = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-1:0];
								IMM_MUX = 1;
								PC_EN = 1;
								// Check PSR
								case(inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH-1:0])
									`EQ: BRANCH = (psr[`psrZ]) ? 1'b1 : 1'b0;
									`CS: BRANCH = (psr[`psrC]) ? 1'b1 : 1'b0; 
									`HI: BRANCH = (psr[`psrL]) ? 1'b1 : 1'b0;
									`GT: BRANCH = (psr[`psrN]) ? 1'b1 : 1'b0;
									`FS: BRANCH = (psr[`psrF]) ? 1'b1 : 1'b0;
									`HS: BRANCH = (psr[`psrZ] | psr[`psrL]) ? 1'b1 : 1'b0;
									`GE: BRANCH = (psr[`psrZ] | psr[`psrN]) ? 1'b1 : 1'b0;
									`NE: BRANCH = (!psr[`psrZ]) ? 1'b1 : 1'b0;
									`CC: BRANCH = (!psr[`psrC]) ? 1'b1 : 1'b0;
									`LS: BRANCH = (!psr[`psrL]) ? 1'b1 : 1'b0;
									`LE: BRANCH = (!psr[`psrN]) ? 1'b1 : 1'b0;
									`FC: BRANCH = (!psr[`psrF]) ? 1'b1 : 1'b0;
									`LO: BRANCH = (!psr[`psrZ] & !psr[`psrL]) ? 1'b1 : 1'b0;
									`LT: BRANCH = (!psr[`psrZ] & !psr[`psrN]) ? 1'b1 : 1'b0;
									`UC: BRANCH = 1'b0;
									default: BRANCH = 1'b0;
								endcase
							end
						
						//////////////////////////
						// SHIFT-TYPE
						`STYPE:
							begin
							 //inst[7:4]
								case(inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH])
									`LSH: 
										begin
											rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
											rSrc = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH-1:0];
											ALU_OP = `ALUOp_SLL;
											WRITE = 1;
											PC_EN = 1;
										end
									`LLSHI:
										begin
											rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
											imm_val = {4'b0,inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH-1:0]};
											ALU_OP = `ALUOp_SLL;
											WRITE = 1;
											PC_EN = 1;
										end
									`LRSHI: 
										begin
											rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
											imm_val = {4'b0,inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH-1:0]};
											ALU_OP = `ALUOp_SRL;
											WRITE = 1;
											PC_EN = 1;
										end
									`ASHU:
										begin
											rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
											rSrc = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH-1:0];
											ALU_OP = `ALUOp_SLA;
											WRITE = 1;
											PC_EN = 1;
										end
									`ALSHUI: 
										begin
											rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
											imm_val = {4'b0,inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH-1:0]};
											ALU_OP = `ALUOp_SLA;
											WRITE = 1;
											PC_EN = 1;
										end
									`ARSHUI: 
										begin
											rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
											imm_val = {4'b0,inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH-1:0]};
											ALU_OP = `ALUOp_SRA;
											WRITE = 1;
											PC_EN = 1;
										end
									default: ;
								endcase // case(S-TYPE)
							end
						
						//////////////////////////
						// Unknown op-codes
						default: ;
					endcase // case(OPCODE)
				end
//			`EXECUTE:
//				begin
//					PC_EN = 1;
//				end
//			`BRANCH:
//				begin
//					PC_EN = 1;
//				end
//			`JUMP:
//				begin
//					PC_EN = 1;
//				end
			`LOAD0:
				begin
					rDst = inst[`DATAWIDTH-`OPWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH];
					rSrc = inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH-1:0];
					MEMC_MUX = 1;
					WRITE = 1;
					WB_MUX = 2'b11;
					PC_EN =1;
				end
//			`LOAD1:
//				begin
//					;
//				end
//			`STORE:
//				begin
//					PC_EN = 1;
//				end
			default: // Don't change the defualt values
				begin
					;
				end
		endcase // case(ps)
	end
	

endmodule
