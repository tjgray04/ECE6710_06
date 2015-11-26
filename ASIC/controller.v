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
	(input clk,
	 input [`PRSWIDTH-1:0] psr,
	 input [`DATAWIDTH-1:0] inst,
	 output reg BRANCH, 
	 output reg JUMP, 
	 output reg RA_BUF, 
	 output reg ROM_MUX, 
	 output reg dDST_BUF, 
	 output reg SRAM_BUF, 
	 output reg SRAM_MUX, 
	 //output reg ALU_BUF, 
	 output reg VGA_BUF, 
	 output reg IMM_MUX,
	 output reg PSR_EN,
	 output reg PC_EN,
	 output reg WRITE,
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
	always@(ps) begin
		case(ps)
		
			`FETCH: ns = `DECODE;
			
			`DECODE: // Decode instruction 
				begin
					//inst[15:12]
					case(inst[`DATAWIDTH-1:`DATAWIDTH-`OPWIDTH]) 
						
						//////////////////////////
						// I-TYPES
						`ADDI:   ns = `EXECUTE;
						`ADDUI:  ns = `EXECUTE;
						`SUBI:   ns = `EXECUTE;
						`CMPI:   ns = `EXECUTE;
						`ANDI:   ns = `EXECUTE;
						`ORI:	   ns = `EXECUTE;
						`XORI:   ns = `EXECUTE;
						`MOVI:   ns = `EXECUTE;
						`LUI:	   ns = `EXECUTE;
						
						//////////////////////////
						// R-TYPE
						`RTYPE: 
							begin
								//inst[7:4]
								case(inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH])
									`ADD:	 ns = `EXECUTE;
									`ADDU: ns = `EXECUTE;
									`SUB:	 ns = `EXECUTE;
									`CMP:  ns = `EXECUTE;
									`AND:  ns = `EXECUTE;
									`OR:	 ns = `EXECUTE;
									`XOR:  ns = `EXECUTE;
									`MOV:	 ns = `EXECUTE;
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
									`STOR:  ns = `STORE;
									`SCOND: ns = `SCOND0;
									`JCOND: ns = `JUMP;
									`JAL:   ns = `JMPAL;
									default: ns = `FETCH;
								endcase
							end // end oType
						
						//////////////////////////
						// BRANCH-TYPE
						`BCOND: ns = `BRANCH;
						
						//////////////////////////
						// SHIFT-TYPE
						`STYPE:
							begin
							 //inst[7:4]
								case(inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH])
									`LSH: 	ns = `EXECUTE;
									`LLSHI:  ns = `EXECUTE;
									`LRSHI:  ns = `EXECUTE;
									`ASHU:   ns = `EXECUTE;
									`ALSHUI: ns = `EXECUTE; 
									`ARSHUI: ns = `EXECUTE; 
									default: ns = `FETCH;
								endcase
							end
						
						//////////////////////////
						// Unknown op-codes
						default: ns = `FETCH;
					endcase
				end // end DECODE case
				
			`EXECUTE: ns = `FETCH;			
			`BRANCH:  ns = `FETCH;			
			`JUMP: 	 ns = `FETCH;		
			`JMPAL: 	 ns = `FETCH;		
			`LOAD0: 	 ns = `LOAD1;			
			`LOAD1: 	 ns = `FETCH;			
			`STORE: 	 ns = `FETCH;
			default:  ns = `FETCH;
		endcase // end ps case
	end
	
	// Output Logic
	always@(ps) begin
		BRANCH = 0; 
		JUMP = 0;
		RA_BUF = 0;
		ROM_MUX = 0;
		dDST_BUF = 0;
		SRAM_BUF = 0;
		SRAM_MUX = 0;
		//ALU_BUF = 0;
		VGA_BUF = 0;
		IMM_MUX = 0;
		PSR_EN = 0;
		PC_EN = 0;
		WRITE = 0;
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
					//inst[15:12]
					case(inst[`DATAWIDTH-1:`DATAWIDTH-`OPWIDTH]) 
						
						//////////////////////////
						// I-TYPES
						`ADDI:
							begin
								BRANCH = 0; 
								JUMP = 0;
								RA_BUF = 0;
								ROM_MUX = 0;
								dDST_BUF = 0;
								SRAM_BUF = 0;
								SRAM_MUX = 0;
								//ALU_BUF = 0;
								VGA_BUF = 0;
								IMM_MUX = 0;
								PSR_EN = 0;
								PC_EN = 0;
								WRITE = 0;
								rDst = `REGWIDTH'b0;
								rSrc = `REGWIDTH'b0;
								imm_val = `IMMWIDTH'b0;
								ALU_OP = `ALUOPWIDTH'b0;
							end
						`ADDUI:
						`SUBI: 
						`CMPI: 
						`ANDI: 
						`ORI:	 
						`XORI: 
						`MOVI: 
						`LUI:	 
						
						//////////////////////////
						// R-TYPE
						`RTYPE: 
							begin
								//inst[7:4]
								case(inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH])
									`ADD:	
									`ADDU:
									`SUB:	
									`CMP: 
									`AND: 
									`OR:	
									`XOR: 
									`MOV:	
									default:
								endcase
							end // end rType
						
						//////////////////////////
						// O-TYPE
						`OTYPE:
							begin
								//inst[7:4]
								case(inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH])
									`LOAD:  
									`STOR:  
									`SCOND: 
									`JCOND: 
									`JAL:   
									default:
								endcase
							end // end oType
						
						//////////////////////////
						// BRANCH-TYPE
						`BCOND: ;
						
						//////////////////////////
						// SHIFT-TYPE
						`STYPE:
							begin
							 //inst[7:4]
								case(inst[`DATAWIDTH-`OPWIDTH-`REGWIDTH-1:`DATAWIDTH-`OPWIDTH-`REGWIDTH-`OPEXWIDTH])
									`LSH: 
									`LLSHI: 
									`LRSHI: 
									`ASHU:  
									`ALSHUI: 
									`ARSHUI: 
									default:
								endcase
							end
						
						//////////////////////////
						// Unknown op-codes
						default: ns = `FETCH;
					endcase
				end
			`EXECUTE:
				begin
					;
				end
			`BRANCH:
				begin
					;
				end
			`JUMP:
				begin
					;
				end
			`LOAD0:
				begin
					;
				end
			`LOAD1:
				begin
					;
				end
			`STORE:
				begin
					;
				end
			default:
				begin
					;
				end
		endcase
	end
	

endmodule
