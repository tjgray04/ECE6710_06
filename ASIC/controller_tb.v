`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:27:18 11/28/2015
// Design Name:   controller
// Module Name:   C:/Users/Steve Brown/Utah/Fall 2015/ECE 6710/Team Project/GIT/ASIC/controller_tb.v
// Project Name:  ASIC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`include "defines.v"

module controller_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [4:0] psr;
	reg [15:0] inst;

	// Outputs
	wire BRANCH;
	wire JUMP;
	wire ROM_MUX;
	wire MEMC_MUX;
	wire IMM_MUX;
//	wire PSR_EN;
	wire PC_EN;
	wire WRITE;
	wire SRAM_CE; // Chip enable for SRAM
	wire SRAM_OE; // Output enable for SRAM
	wire SRAM_WE; // Write enable for SRAM
	wire ROM_CE; // Chip enable for ROM
	wire ROM_OE; // Output enable for ROM
	wire COND_RSLT;
	wire WB_MUX0;
	wire [1:0] WB_MUX;
	wire [3:0] rDst;
	wire [3:0] rSrc;
	wire [7:0] imm_val;
	wire [4:0] ALU_OP;

	// FSM parameters
	reg [4:0] ps, ns;
	
	// Parameters
	parameter 	s0 = 5'h0, // 
					s1 = 5'h1, // 
					s2 = 5'h2, // 
					s3 = 5'h3, // 
					s4 = 5'h4, // 
					s5 = 5'h5, //  
					s6 = 5'h6, //  
					s7 = 5'h7, // 
					s8 = 5'h8, // 
					s9 = 5'h9, // 
					s10 = 5'ha, // 
					s11 = 5'hb, // 
					s12 = 5'hc, // 
					s13 = 5'hd, // 
					s14 = 5'he, // 
					s15 = 5'hf, //
					s16 = 5'h10, // 
					s17 = 5'h11, // 
					s18 = 5'h12, //
					s19 = 5'h13, // 
					s20 = 5'h14; //
	// Register Parameters
	parameter 	r0 = 4'h0,
					r1 = 4'h1,
					r2 = 4'h2,
					r3 = 4'h3,
					r4 = 4'h4,
					r5 = 4'h5, 
					r6 = 4'h6;
	
	// Integers
	integer i;
	
	// Instantiate the Unit Under Test (UUT)
	controller uut (
		.clk(clk), 
		.rst(rst), 
		.psr_in(psr), 
		.inst(inst), 
		.BRANCH(BRANCH), 
		.JUMP(JUMP), 
		.ROM_MUX(ROM_MUX), 
		.MEMC_MUX(MEMC_MUX), 
		.IMM_MUX(IMM_MUX), 
//		.PSR_EN(PSR_EN), 
		.PC_EN(PC_EN), 
		.WRITE(WRITE), 
		.SRAM_CE(SRAM_CE),
		.SRAM_OE(SRAM_OE),
		.SRAM_WE(SRAM_WE),
		.ROM_CE(ROM_CE),
		.ROM_OE(ROM_OE),
		.COND_RSLT(COND_RSLT), 
		.WB_MUX0(WB_MUX0),
		.WB_MUX(WB_MUX), 
		.rDst(rDst), 
		.rSrc(rSrc), 
		.imm_val(imm_val), 
		.ALU_OP(ALU_OP)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		psr = 0;
		inst = 0;

//		#20;
//		rst = 0;
		// Wait for reset to occur
		#85;
		
		$display("BEGINNING SIMULATION...");
      rst = 1;  
		#5;
		// Add stimulus here
		for(i = 0; i < 32; i = i + 1) begin
			#20;
			case(ps)
				s0: // MOV R1, R0
					begin
						if(BRANCH != 0) 	$display("ERROR @ time %d in state %d: BRANCH is %b, but should be %b.", 		$time, s0, BRANCH, 0);
						if(JUMP != 0) 		$display("ERROR @ time %d in state %d: JUMP is %b, but should be %b.", 			$time, s0, JUMP, 0);
						if(ROM_MUX != 0) 	$display("ERROR @ time %d in state %d: ROM_MUX is %b, but should be %b.", 		$time, s0, ROM_MUX, 0);
						if(MEMC_MUX != 0) 	$display("ERROR @ time %d in state %d: MEMC_MUX is %b, but should be %b.", 		$time, s0, MEMC_MUX, 0);
						if(IMM_MUX != 0) 	$display("ERROR @ time %d in state %d: IMM_MUX is %b, but should be %b.",		$time, s0, IMM_MUX, 0);
//						if(PSR_EN != 1) 	$display("ERROR @ time %d in state %d: PSR_EN is %b, but should be %b.", 		$time, s0, PSR_EN, 1);
						if(PC_EN != 1) 		$display("ERROR @ time %d in state %d: PC_EN is %b, but should be %b.", 		$time, s0, PC_EN, 1);
						if(WRITE != 1) 		$display("ERROR @ time %d in state %d: WRITE is %b, but should be %b.", 		$time, s0, WRITE, 1);
						//if(COND_RSLT != ) $display("ERROR @ time %d in state %d: COND_RSLT is %b, but should be %b.", 	$time, s0, COND_RSLT, 0);
						if(WB_MUX != 2'b10) 	$display("ERROR @ time %d in state %d: WB_MUX is %b, but should be %b.", 	$time, s0, WB_MUX, 2'b10);
						if(rDst != r1) 		$display("ERROR @ time %d in state %d: rDst is %b, but should be %b.", 			$time, s0, rDst, r1);
						if(rSrc != r0) 		$display("ERROR @ time %d in state %d: rSrc is %b, but should be %b.", 			$time, s0, rSrc, r0);
						//if(imm_val != ) 	$display("ERROR @ time %d in state %d: imm_val is %b, but should be %b.", 		$time, s0, imm_val, 0);
						if(ALU_OP != `ALUOp_MOV) 	$display("ERROR @ time %d in state %d: ALU_OP is %b, but should be %b.",$time, s0, ALU_OP, `ALUOp_MOV);
					end
				s1: // MOV R2, R0
					begin
						if(BRANCH != 0) 	$display("ERROR @ time %d in state %d: BRANCH is %b, but should be %b.", 		$time, s1, BRANCH, 0);
						if(JUMP != 0) 		$display("ERROR @ time %d in state %d: JUMP is %b, but should be %b.", 			$time, s1, JUMP, 0);
						if(ROM_MUX != 0) 	$display("ERROR @ time %d in state %d: ROM_MUX is %b, but should be %b.", 		$time, s1, ROM_MUX, 0);
						if(MEMC_MUX != 0) 	$display("ERROR @ time %d in state %d: MEMC_MUX is %b, but should be %b.", 		$time, s1, MEMC_MUX, 0);
						if(IMM_MUX != 0) 	$display("ERROR @ time %d in state %d: IMM_MUX is %b, but should be %b.",		$time, s1, IMM_MUX, 0);
//						if(PSR_EN != 1) 	$display("ERROR @ time %d in state %d: PSR_EN is %b, but should be %b.", 		$time, s1, PSR_EN, 1);
						if(PC_EN != 1) 		$display("ERROR @ time %d in state %d: PC_EN is %b, but should be %b.", 		$time, s1, PC_EN, 1);
						if(WRITE != 1) 		$display("ERROR @ time %d in state %d: WRITE is %b, but should be %b.", 		$time, s1, WRITE, 1);
						//if(COND_RSLT != ) $display("ERROR @ time %d in state %d: COND_RSLT is %b, but should be %b.", 	$time, s1, COND_RSLT, 0);
						if(WB_MUX != 2'b10) 	$display("ERROR @ time %d in state %d: WB_MUX is %b, but should be %b.", 	$time, s1, WB_MUX, 2'b10);
						if(rDst != r2) 		$display("ERROR @ time %d in state %d: rDst is %b, but should be %b.", 			$time, s1, rDst, r2);
						if(rSrc != r0) 		$display("ERROR @ time %d in state %d: rSrc is %b, but should be %b.", 			$time, s1, rSrc, r0);
						//if(imm_val != ) 	$display("ERROR @ time %d in state %d: imm_val is %b, but should be %b.", 		$time, s1, imm_val, 0);
						if(ALU_OP != `ALUOp_MOV) 	$display("ERROR @ time %d in state %d: ALU_OP is %b, but should be %b.",$time, s1, ALU_OP, `ALUOp_MOV);
					end
				s2: // ADDI R1, 64
					begin
						if(BRANCH != 0) 	$display("ERROR @ time %d in state %d: BRANCH is %b, but should be %b.", 		$time, s2, BRANCH, 0);
						if(JUMP != 0) 		$display("ERROR @ time %d in state %d: JUMP is %b, but should be %b.", 			$time, s2, JUMP, 0);
						if(ROM_MUX != 0) 	$display("ERROR @ time %d in state %d: ROM_MUX is %b, but should be %b.", 		$time, s2, ROM_MUX, 0);
						if(MEMC_MUX != 0) 	$display("ERROR @ time %d in state %d: MEMC_MUX is %b, but should be %b.", 		$time, s2, MEMC_MUX, 0);
						if(IMM_MUX != 1) 	$display("ERROR @ time %d in state %d: IMM_MUX is %b, but should be %b.",		$time, s2, IMM_MUX, 1);
//						if(PSR_EN != 1) 	$display("ERROR @ time %d in state %d: PSR_EN is %b, but should be %b.", 		$time, s2, PSR_EN, 1);
						if(PC_EN != 1) 		$display("ERROR @ time %d in state %d: PC_EN is %b, but should be %b.", 		$time, s2, PC_EN, 1);
						if(WRITE != 1) 		$display("ERROR @ time %d in state %d: WRITE is %b, but should be %b.", 		$time, s2, WRITE, 1);
						//if(COND_RSLT != ) $display("ERROR @ time %d in state %d: COND_RSLT is %b, but should be %b.", 	$time, s2, COND_RSLT, 0);
						if(WB_MUX != 2'b10) 	$display("ERROR @ time %d in state %d: WB_MUX is %b, but should be %b.", 	$time, s2, WB_MUX, 2'b10);
						if(rDst != r1) 		$display("ERROR @ time %d in state %d: rDst is %b, but should be %b.", 			$time, s2, rDst, r1);
						//if(rSrc != r0) 		$display("ERROR @ time %d in state %d: rSrc is %b, but should be %b.", 		$time, s2, rSrc, r0);
						if(imm_val != 8'd64) 	$display("ERROR @ time %d in state %d: imm_val is %b, but should be %b.", 	$time, s2, imm_val, 8'd64);
						if(ALU_OP != `ALUOp_ADD) 	$display("ERROR @ time %d in state %d: ALU_OP is %b, but should be %b.",$time, s2, ALU_OP, `ALUOp_ADD);
					end
				s3: // ADDI R2, 14
					begin
						if(BRANCH != 0) 	$display("ERROR @ time %d in state %d: BRANCH is %b, but should be %b.", 		$time, s3, BRANCH, 0);
						if(JUMP != 0) 		$display("ERROR @ time %d in state %d: JUMP is %b, but should be %b.", 			$time, s3, JUMP, 0);
						if(ROM_MUX != 0) 	$display("ERROR @ time %d in state %d: ROM_MUX is %b, but should be %b.", 		$time, s3, ROM_MUX, 0);
						if(MEMC_MUX != 0) 	$display("ERROR @ time %d in state %d: MEMC_MUX is %b, but should be %b.", 		$time, s3, MEMC_MUX, 0);
						if(IMM_MUX != 1) 	$display("ERROR @ time %d in state %d: IMM_MUX is %b, but should be %b.",		$time, s3, IMM_MUX, 1);
//						if(PSR_EN != 1) 	$display("ERROR @ time %d in state %d: PSR_EN is %b, but should be %b.", 		$time, s3, PSR_EN, 1);
						if(PC_EN != 1) 		$display("ERROR @ time %d in state %d: PC_EN is %b, but should be %b.", 		$time, s3, PC_EN, 1);
						if(WRITE != 1) 		$display("ERROR @ time %d in state %d: WRITE is %b, but should be %b.", 		$time, s3, WRITE, 1);
						//if(COND_RSLT != ) $display("ERROR @ time %d in state %d: COND_RSLT is %b, but should be %b.", 	$time, s3, COND_RSLT, 0);
						if(WB_MUX != 2'b10) 	$display("ERROR @ time %d in state %d: WB_MUX is %b, but should be %b.", 	$time, s3, WB_MUX, 2'b10);
						if(rDst != r2) 		$display("ERROR @ time %d in state %d: rDst is %b, but should be %b.", 			$time, s3, rDst, r2);
						//if(rSrc != r0) 		$display("ERROR @ time %d in state %d: rSrc is %b, but should be %b.", 		$time, s3, rSrc, r0);
						if(imm_val != 8'd14) 	$display("ERROR @ time %d in state %d: imm_val is %b, but should be %b.", 	$time, s3, imm_val, 8'd14);
						if(ALU_OP != `ALUOp_ADD) 	$display("ERROR @ time %d in state %d: ALU_OP is %b, but should be %b.",$time, s3, ALU_OP, `ALUOp_ADD);
					end
				s4: // MOV R3, R0
					begin
						if(BRANCH != 0) 	$display("ERROR @ time %d in state %d: BRANCH is %b, but should be %b.", 		$time, s4, BRANCH, 0);
						if(JUMP != 0) 		$display("ERROR @ time %d in state %d: JUMP is %b, but should be %b.", 			$time, s4, JUMP, 0);
						if(ROM_MUX != 0) 	$display("ERROR @ time %d in state %d: ROM_MUX is %b, but should be %b.", 		$time, s4, ROM_MUX, 0);
						if(MEMC_MUX != 0) 	$display("ERROR @ time %d in state %d: MEMC_MUX is %b, but should be %b.", 		$time, s4, MEMC_MUX, 0);
						if(IMM_MUX != 0) 	$display("ERROR @ time %d in state %d: IMM_MUX is %b, but should be %b.",		$time, s4, IMM_MUX, 0);
//						if(PSR_EN != 1) 	$display("ERROR @ time %d in state %d: PSR_EN is %b, but should be %b.", 		$time, s4, PSR_EN, 1);
						if(PC_EN != 1) 		$display("ERROR @ time %d in state %d: PC_EN is %b, but should be %b.", 		$time, s4, PC_EN, 1);
						if(WRITE != 1) 		$display("ERROR @ time %d in state %d: WRITE is %b, but should be %b.", 		$time, s4, WRITE, 1);
						//if(COND_RSLT != ) $display("ERROR @ time %d in state %d: COND_RSLT is %b, but should be %b.", 	$time, s4, COND_RSLT, 0);
						if(WB_MUX != 2'b10) 	$display("ERROR @ time %d in state %d: WB_MUX is %b, but should be %b.", 	$time, s4, WB_MUX, 2'b10);
						if(rDst != r3) 		$display("ERROR @ time %d in state %d: rDst is %b, but should be %b.", 			$time, s4, rDst, r3);
						if(rSrc != r0) 		$display("ERROR @ time %d in state %d: rSrc is %b, but should be %b.", 			$time, s4, rSrc, r0);
						//if(imm_val != ) 	$display("ERROR @ time %d in state %d: imm_val is %b, but should be %b.", 		$time, s4, imm_val, 0);
						if(ALU_OP != `ALUOp_MOV) 	$display("ERROR @ time %d in state %d: ALU_OP is %b, but should be %b.",$time, s4, ALU_OP, `ALUOp_MOV);
					end
				s5: // MOV R4, R0
					begin
						if(BRANCH != 0) 	$display("ERROR @ time %d in state %d: BRANCH is %b, but should be %b.", 		$time, s5, BRANCH, 0);
						if(JUMP != 0) 		$display("ERROR @ time %d in state %d: JUMP is %b, but should be %b.", 			$time, s5, JUMP, 0);
						if(ROM_MUX != 0) 	$display("ERROR @ time %d in state %d: ROM_MUX is %b, but should be %b.", 		$time, s5, ROM_MUX, 0);
						if(MEMC_MUX != 0) 	$display("ERROR @ time %d in state %d: MEMC_MUX is %b, but should be %b.", 		$time, s5, MEMC_MUX, 0);
						if(IMM_MUX != 0) 	$display("ERROR @ time %d in state %d: IMM_MUX is %b, but should be %b.",		$time, s5, IMM_MUX, 0);
//						if(PSR_EN != 1) 	$display("ERROR @ time %d in state %d: PSR_EN is %b, but should be %b.", 		$time, s5, PSR_EN, 1);
						if(PC_EN != 1) 		$display("ERROR @ time %d in state %d: PC_EN is %b, but should be %b.", 		$time, s5, PC_EN, 1);
						if(WRITE != 1) 		$display("ERROR @ time %d in state %d: WRITE is %b, but should be %b.", 		$time, s5, WRITE, 1);
						//if(COND_RSLT != ) $display("ERROR @ time %d in state %d: COND_RSLT is %b, but should be %b.", 	$time, s5, COND_RSLT, 0);
						if(WB_MUX != 2'b10) 	$display("ERROR @ time %d in state %d: WB_MUX is %b, but should be %b.", 	$time, s5, WB_MUX, 2'b10);
						if(rDst != r4) 		$display("ERROR @ time %d in state %d: rDst is %b, but should be %b.", 			$time, s5, rDst, r4);
						if(rSrc != r0) 		$display("ERROR @ time %d in state %d: rSrc is %b, but should be %b.", 			$time, s5, rSrc, r0);
						//if(imm_val != ) 	$display("ERROR @ time %d in state %d: imm_val is %b, but should be %b.", 		$time, s5, imm_val, 0);
						if(ALU_OP != `ALUOp_MOV) 	$display("ERROR @ time %d in state %d: ALU_OP is %b, but should be %b.",$time, s5, ALU_OP, `ALUOp_MOV);
					end
				s6: // ADDI R3, 1
					begin
						if(BRANCH != 0) 	$display("ERROR @ time %d in state %d: BRANCH is %b, but should be %b.", 		$time, s6, BRANCH, 0);
						if(JUMP != 0) 		$display("ERROR @ time %d in state %d: JUMP is %b, but should be %b.", 			$time, s6, JUMP, 0);
						if(ROM_MUX != 0) 	$display("ERROR @ time %d in state %d: ROM_MUX is %b, but should be %b.", 		$time, s6, ROM_MUX, 0);
						if(MEMC_MUX != 0) 	$display("ERROR @ time %d in state %d: MEMC_MUX is %b, but should be %b.", 		$time, s6, MEMC_MUX, 0);
						if(IMM_MUX != 1) 	$display("ERROR @ time %d in state %d: IMM_MUX is %b, but should be %b.",		$time, s6, IMM_MUX, 1);
//						if(PSR_EN != 1) 	$display("ERROR @ time %d in state %d: PSR_EN is %b, but should be %b.", 		$time, s6, PSR_EN, 1);
						if(PC_EN != 1) 		$display("ERROR @ time %d in state %d: PC_EN is %b, but should be %b.", 		$time, s6, PC_EN, 1);
						if(WRITE != 1) 		$display("ERROR @ time %d in state %d: WRITE is %b, but should be %b.", 		$time, s6, WRITE, 1);
						//if(COND_RSLT != ) $display("ERROR @ time %d in state %d: COND_RSLT is %b, but should be %b.", 	$time, s6, COND_RSLT, 0);
						if(WB_MUX != 2'b10) 	$display("ERROR @ time %d in state %d: WB_MUX is %b, but should be %b.", 	$time, s6, WB_MUX, 2'b10);
						if(rDst != r3) 		$display("ERROR @ time %d in state %d: rDst is %b, but should be %b.", 			$time, s6, rDst, r3);
						//if(rSrc != r0) 		$display("ERROR @ time %d in state %d: rSrc is %b, but should be %b.", 		$time, s6, rSrc, r0);
						if(imm_val != 8'd1) 	$display("ERROR @ time %d in state %d: imm_val is %b, but should be %b.", 	$time, s6, imm_val, 8'd1);
						if(ALU_OP != `ALUOp_ADD) 	$display("ERROR @ time %d in state %d: ALU_OP is %b, but should be %b.",$time, s6, ALU_OP, `ALUOp_ADD);
					end
				s7: // ADDI R4, -1
					begin
						if(BRANCH != 0) 	$display("ERROR @ time %d in state %d: BRANCH is %b, but should be %b.", 		$time, s7, BRANCH, 0);
						if(JUMP != 0) 		$display("ERROR @ time %d in state %d: JUMP is %b, but should be %b.", 			$time, s7, JUMP, 0);
						if(ROM_MUX != 0) 	$display("ERROR @ time %d in state %d: ROM_MUX is %b, but should be %b.", 		$time, s7, ROM_MUX, 0);
						if(MEMC_MUX != 0) 	$display("ERROR @ time %d in state %d: MEMC_MUX is %b, but should be %b.", 		$time, s7, MEMC_MUX, 0);
						if(IMM_MUX != 1) 	$display("ERROR @ time %d in state %d: IMM_MUX is %b, but should be %b.",		$time, s7, IMM_MUX, 1);
//						if(PSR_EN != 1) 	$display("ERROR @ time %d in state %d: PSR_EN is %b, but should be %b.", 		$time, s7, PSR_EN, 1);
						if(PC_EN != 1) 		$display("ERROR @ time %d in state %d: PC_EN is %b, but should be %b.", 		$time, s7, PC_EN, 1);
						if(WRITE != 1) 		$display("ERROR @ time %d in state %d: WRITE is %b, but should be %b.", 		$time, s7, WRITE, 1);
						//if(COND_RSLT != ) $display("ERROR @ time %d in state %d: COND_RSLT is %b, but should be %b.", 	$time, s7, COND_RSLT, 0);
						if(WB_MUX != 2'b10) 	$display("ERROR @ time %d in state %d: WB_MUX is %b, but should be %b.", 	$time, s7, WB_MUX, 2'b10);
						if(rDst != r4) 		$display("ERROR @ time %d in state %d: rDst is %b, but should be %b.", 			$time, s7, rDst, r4);
						//if(rSrc != r0) 		$display("ERROR @ time %d in state %d: rSrc is %b, but should be %b.", 		$time, s7, rSrc, r0);
						if(imm_val != 8'hff) 	$display("ERROR @ time %d in state %d: imm_val is %b, but should be %b.", 	$time, s7, imm_val, 8'hff);
						if(ALU_OP != `ALUOp_ADD) 	$display("ERROR @ time %d in state %d: ALU_OP is %b, but should be %b.",$time, s7, ALU_OP, `ALUOp_ADD);
					end
				s8: // LOOP: CMP  R3, R0
					begin
						if(BRANCH != 0) 	$display("ERROR @ time %d in state %d: BRANCH is %b, but should be %b.", 		$time, s8, BRANCH, 0);
						if(JUMP != 0) 		$display("ERROR @ time %d in state %d: JUMP is %b, but should be %b.", 			$time, s8, JUMP, 0);
						if(ROM_MUX != 0) 	$display("ERROR @ time %d in state %d: ROM_MUX is %b, but should be %b.", 		$time, s8, ROM_MUX, 0);
						if(MEMC_MUX != 0) 	$display("ERROR @ time %d in state %d: MEMC_MUX is %b, but should be %b.", 		$time, s8, MEMC_MUX, 0);
						if(IMM_MUX != 0) 	$display("ERROR @ time %d in state %d: IMM_MUX is %b, but should be %b.",		$time, s8, IMM_MUX, 0);
//						if(PSR_EN != 1) 	$display("ERROR @ time %d in state %d: PSR_EN is %b, but should be %b.", 		$time, s8, PSR_EN, 1);
						if(PC_EN != 1) 		$display("ERROR @ time %d in state %d: PC_EN is %b, but should be %b.", 		$time, s8, PC_EN, 1);
						if(WRITE != 0) 		$display("ERROR @ time %d in state %d: WRITE is %b, but should be %b.", 		$time, s8, WRITE, 0);
						//if(COND_RSLT != ) $display("ERROR @ time %d in state %d: COND_RSLT is %b, but should be %b.", 	$time, s8, COND_RSLT, 0);
						//if(WB_MUX != 2'b10) 	$display("ERROR @ time %d in state %d: WB_MUX is %b, but should be %b.", 	$time, s8, WB_MUX, 2'b10);
						if(rDst != r3) 		$display("ERROR @ time %d in state %d: rDst is %b, but should be %b.", 			$time, s8, rDst, r3);
						if(rSrc != r0) 		$display("ERROR @ time %d in state %d: rSrc is %b, but should be %b.", 			$time, s8, rSrc, r0);
						//if(imm_val != 8'd14) 	$display("ERROR @ time %d in state %d: imm_val is %b, but should be %b.", 	$time, s8, imm_val, 8'd14);
						if(ALU_OP != `ALUOp_SUB) 	$display("ERROR @ time %d in state %d: ALU_OP is %b, but should be %b.",$time, s8, ALU_OP, `ALUOp_SUB);
					end
				s9: ;// BEQ, END
				s10: // ADD R3, R4
					begin
						if(BRANCH != 0) 	$display("ERROR @ time %d in state %d: BRANCH is %b, but should be %b.", 		$time, s10, BRANCH, 0);
						if(JUMP != 0) 		$display("ERROR @ time %d in state %d: JUMP is %b, but should be %b.", 			$time, s10, JUMP, 0);
						if(ROM_MUX != 0) 	$display("ERROR @ time %d in state %d: ROM_MUX is %b, but should be %b.", 		$time, s10, ROM_MUX, 0);
						if(MEMC_MUX != 0) 	$display("ERROR @ time %d in state %d: MEMC_MUX is %b, but should be %b.", 		$time, s10, MEMC_MUX, 0);
						if(IMM_MUX != 0) 	$display("ERROR @ time %d in state %d: IMM_MUX is %b, but should be %b.",		$time, s10, IMM_MUX, 0);
//						if(PSR_EN != 1) 	$display("ERROR @ time %d in state %d: PSR_EN is %b, but should be %b.", 		$time, s10, PSR_EN, 1);
						if(PC_EN != 1) 		$display("ERROR @ time %d in state %d: PC_EN is %b, but should be %b.", 		$time, s10, PC_EN, 1);
						if(WRITE != 1) 		$display("ERROR @ time %d in state %d: WRITE is %b, but should be %b.", 		$time, s10, WRITE, 1);
						//if(COND_RSLT != ) $display("ERROR @ time %d in state %d: COND_RSLT is %b, but should be %b.", 	$time, s10, COND_RSLT, 0);
						if(WB_MUX != 2'b10) 	$display("ERROR @ time %d in state %d: WB_MUX is %b, but should be %b.", 	$time, s10, WB_MUX, 2'b10);
						if(rDst != r3) 		$display("ERROR @ time %d in state %d: rDst is %b, but should be %b.", 			$time, s10, rDst, r3);
						if(rSrc != r4) 		$display("ERROR @ time %d in state %d: rSrc is %b, but should be %b.", 			$time, s10, rSrc, r4);
						//if(imm_val != 8'd14) 	$display("ERROR @ time %d in state %d: imm_val is %b, but should be %b.", 	$time, s10, imm_val, 8'd14);
						if(ALU_OP != `ALUOp_ADD) 	$display("ERROR @ time %d in state %d: ALU_OP is %b, but should be %b.",$time, s10, ALU_OP, `ALUOp_ADD);
					end
				s11: // MOV R5, R3
					begin
						if(BRANCH != 0) 	$display("ERROR @ time %d in state %d: BRANCH is %b, but should be %b.", 		$time, s11, BRANCH, 0);
						if(JUMP != 0) 		$display("ERROR @ time %d in state %d: JUMP is %b, but should be %b.", 			$time, s11, JUMP, 0);
						if(ROM_MUX != 0) 	$display("ERROR @ time %d in state %d: ROM_MUX is %b, but should be %b.", 		$time, s11, ROM_MUX, 0);
						if(MEMC_MUX != 0) 	$display("ERROR @ time %d in state %d: MEMC_MUX is %b, but should be %b.", 		$time, s11, MEMC_MUX, 0);
						if(IMM_MUX != 0) 	$display("ERROR @ time %d in state %d: IMM_MUX is %b, but should be %b.",		$time, s11, IMM_MUX, 0);
//						if(PSR_EN != 1) 	$display("ERROR @ time %d in state %d: PSR_EN is %b, but should be %b.", 		$time, s11, PSR_EN, 1);
						if(PC_EN != 1) 		$display("ERROR @ time %d in state %d: PC_EN is %b, but should be %b.", 		$time, s11, PC_EN, 1);
						if(WRITE != 1) 		$display("ERROR @ time %d in state %d: WRITE is %b, but should be %b.", 		$time, s11, WRITE, 1);
						//if(COND_RSLT != ) $display("ERROR @ time %d in state %d: COND_RSLT is %b, but should be %b.", 	$time, s11, COND_RSLT, 0);
						if(WB_MUX != 2'b10) 	$display("ERROR @ time %d in state %d: WB_MUX is %b, but should be %b.", 	$time, s11, WB_MUX, 2'b10);
						if(rDst != r5) 		$display("ERROR @ time %d in state %d: rDst is %b, but should be %b.", 			$time, s11, rDst, r5);
						if(rSrc != r3) 		$display("ERROR @ time %d in state %d: rSrc is %b, but should be %b.", 			$time, s11, rSrc, r3);
						//if(imm_val != ) 	$display("ERROR @ time %d in state %d: imm_val is %b, but should be %b.", 		$time, s11, imm_val, 0);
						if(ALU_OP != `ALUOp_MOV) 	$display("ERROR @ time %d in state %d: ALU_OP is %b, but should be %b.",$time, s11, ALU_OP, `ALUOp_MOV);
					end
				s12: // MOV R3, R4
					begin
						if(BRANCH != 0) 	$display("ERROR @ time %d in state %d: BRANCH is %b, but should be %b.", 		$time, s12, BRANCH, 0);
						if(JUMP != 0) 		$display("ERROR @ time %d in state %d: JUMP is %b, but should be %b.", 			$time, s12, JUMP, 0);
						if(ROM_MUX != 0) 	$display("ERROR @ time %d in state %d: ROM_MUX is %b, but should be %b.", 		$time, s12, ROM_MUX, 0);
						if(MEMC_MUX != 0) 	$display("ERROR @ time %d in state %d: MEMC_MUX is %b, but should be %b.", 		$time, s12, MEMC_MUX, 0);
						if(IMM_MUX != 0) 	$display("ERROR @ time %d in state %d: IMM_MUX is %b, but should be %b.",		$time, s12, IMM_MUX, 0);
//						if(PSR_EN != 1) 	$display("ERROR @ time %d in state %d: PSR_EN is %b, but should be %b.", 		$time, s12, PSR_EN, 1);
						if(PC_EN != 1) 		$display("ERROR @ time %d in state %d: PC_EN is %b, but should be %b.", 		$time, s12, PC_EN, 1);
						if(WRITE != 1) 		$display("ERROR @ time %d in state %d: WRITE is %b, but should be %b.", 		$time, s12, WRITE, 1);
						//if(COND_RSLT != ) $display("ERROR @ time %d in state %d: COND_RSLT is %b, but should be %b.", 	$time, s12, COND_RSLT, 0);
						if(WB_MUX != 2'b10) 	$display("ERROR @ time %d in state %d: WB_MUX is %b, but should be %b.", 	$time, s12, WB_MUX, 2'b10);
						if(rDst != r3) 		$display("ERROR @ time %d in state %d: rDst is %b, but should be %b.", 			$time, s12, rDst, r3);
						if(rSrc != r4) 		$display("ERROR @ time %d in state %d: rSrc is %b, but should be %b.", 			$time, s12, rSrc, r4);
						//if(imm_val != ) 	$display("ERROR @ time %d in state %d: imm_val is %b, but should be %b.", 		$time, s12, imm_val, 0);
						if(ALU_OP != `ALUOp_MOV) 	$display("ERROR @ time %d in state %d: ALU_OP is %b, but should be %b.",$time, s12, ALU_OP, `ALUOp_MOV);
					end
				s13: // MOV R4, R5
					begin
						if(BRANCH != 0) 	$display("ERROR @ time %d in state %d: BRANCH is %b, but should be %b.", 		$time, s13, BRANCH, 0);
						if(JUMP != 0) 		$display("ERROR @ time %d in state %d: JUMP is %b, but should be %b.", 			$time, s13, JUMP, 0);
						if(ROM_MUX != 0) 	$display("ERROR @ time %d in state %d: ROM_MUX is %b, but should be %b.", 		$time, s13, ROM_MUX, 0);
						if(MEMC_MUX != 0) 	$display("ERROR @ time %d in state %d: MEMC_MUX is %b, but should be %b.", 		$time, s13, MEMC_MUX, 0);
						if(IMM_MUX != 0) 	$display("ERROR @ time %d in state %d: IMM_MUX is %b, but should be %b.",		$time, s13, IMM_MUX, 0);
//						if(PSR_EN != 1) 	$display("ERROR @ time %d in state %d: PSR_EN is %b, but should be %b.", 		$time, s13, PSR_EN, 1);
						if(PC_EN != 1) 		$display("ERROR @ time %d in state %d: PC_EN is %b, but should be %b.", 		$time, s13, PC_EN, 1);
						if(WRITE != 1) 		$display("ERROR @ time %d in state %d: WRITE is %b, but should be %b.", 		$time, s13, WRITE, 1);
						//if(COND_RSLT != ) $display("ERROR @ time %d in state %d: COND_RSLT is %b, but should be %b.", 	$time, s13, COND_RSLT, 0);
						if(WB_MUX != 2'b10) 	$display("ERROR @ time %d in state %d: WB_MUX is %b, but should be %b.", 	$time, s13, WB_MUX, 2'b10);
						if(rDst != r4) 		$display("ERROR @ time %d in state %d: rDst is %b, but should be %b.", 			$time, s13, rDst, r4);
						if(rSrc != r5) 		$display("ERROR @ time %d in state %d: rSrc is %b, but should be %b.", 			$time, s13, rSrc, r5);
						//if(imm_val != ) 	$display("ERROR @ time %d in state %d: imm_val is %b, but should be %b.", 		$time, s13, imm_val, 0);
						if(ALU_OP != `ALUOp_MOV) 	$display("ERROR @ time %d in state %d: ALU_OP is %b, but should be %b.",$time, s13, ALU_OP, `ALUOp_MOV);
					end
				s14: // STOR R4, R1
					begin
						if(BRANCH != 0) 	$display("ERROR @ time %d in state %d: BRANCH is %b, but should be %b.", 		$time, s14, BRANCH, 0);
						if(JUMP != 0) 		$display("ERROR @ time %d in state %d: JUMP is %b, but should be %b.", 			$time, s14, JUMP, 0);
						if(ROM_MUX != 0) 	$display("ERROR @ time %d in state %d: ROM_MUX is %b, but should be %b.", 		$time, s14, ROM_MUX, 0);
						if(MEMC_MUX != 1) 	$display("ERROR @ time %d in state %d: MEMC_MUX is %b, but should be %b.", 		$time, s14, MEMC_MUX, 1);
						if(IMM_MUX != 0) 	$display("ERROR @ time %d in state %d: IMM_MUX is %b, but should be %b.",		$time, s14, IMM_MUX, 0);
//						if(PSR_EN != 0) 	$display("ERROR @ time %d in state %d: PSR_EN is %b, but should be %b.", 		$time, s14, PSR_EN, 0);
						if(PC_EN != 1) 		$display("ERROR @ time %d in state %d: PC_EN is %b, but should be %b.", 		$time, s14, PC_EN, 1);
						if(WRITE != 0) 		$display("ERROR @ time %d in state %d: WRITE is %b, but should be %b.", 		$time, s14, WRITE, 0);
						if(SRAM_WE != 0) 		$display("ERROR @ time %d in state %d: SRAM_WE is %b, but should be %b.", 		$time, s14, SRAM_WE, 0);
						//if(COND_RSLT != ) $display("ERROR @ time %d in state %d: COND_RSLT is %b, but should be %b.", 	$time, s14, COND_RSLT, 0);
						if(WB_MUX != 2'b10) 	$display("ERROR @ time %d in state %d: WB_MUX is %b, but should be %b.", 	$time, s14, WB_MUX, 2'b10);
						if(rDst != r4) 		$display("ERROR @ time %d in state %d: rDst is %b, but should be %b.", 			$time, s14, rDst, r4);
						if(rSrc != r1) 		$display("ERROR @ time %d in state %d: rSrc is %b, but should be %b.", 			$time, s14, rSrc, r1);
						//if(imm_val != 8'hff) 	$display("ERROR @ time %d in state %d: imm_val is %b, but should be %b.", 	$time, s14, imm_val, 8'hff);
						//if(ALU_OP != `ALUOp_ADD) 	$display("ERROR @ time %d in state %d: ALU_OP is %b, but should be %b.",$time, s14, ALU_OP, `ALUOp_ADD);
					end
				s15: // ADDI R1, 1
					begin
						if(BRANCH != 0) 	$display("ERROR @ time %d in state %d: BRANCH is %b, but should be %b.", 		$time, s15, BRANCH, 0);
						if(JUMP != 0) 		$display("ERROR @ time %d in state %d: JUMP is %b, but should be %b.", 			$time, s15, JUMP, 0);
						if(ROM_MUX != 0) 	$display("ERROR @ time %d in state %d: ROM_MUX is %b, but should be %b.", 		$time, s15, ROM_MUX, 0);
						if(MEMC_MUX != 0) 	$display("ERROR @ time %d in state %d: MEMC_MUX is %b, but should be %b.", 		$time, s15, MEMC_MUX, 0);
						if(IMM_MUX != 1) 	$display("ERROR @ time %d in state %d: IMM_MUX is %b, but should be %b.",		$time, s15, IMM_MUX, 1);
//						if(PSR_EN != 1) 	$display("ERROR @ time %d in state %d: PSR_EN is %b, but should be %b.", 		$time, s15, PSR_EN, 1);
						if(PC_EN != 1) 		$display("ERROR @ time %d in state %d: PC_EN is %b, but should be %b.", 		$time, s15, PC_EN, 1);
						if(WRITE != 1) 		$display("ERROR @ time %d in state %d: WRITE is %b, but should be %b.", 		$time, s15, WRITE, 1);
						//if(COND_RSLT != ) $display("ERROR @ time %d in state %d: COND_RSLT is %b, but should be %b.", 	$time, s15, COND_RSLT, 0);
						if(WB_MUX != 2'b10) 	$display("ERROR @ time %d in state %d: WB_MUX is %b, but should be %b.", 	$time, s15, WB_MUX, 2'b10);
						if(rDst != r1) 		$display("ERROR @ time %d in state %d: rDst is %b, but should be %b.", 			$time, s15, rDst, r1);
						//if(rSrc != r0) 		$display("ERROR @ time %d in state %d: rSrc is %b, but should be %b.", 		$time, s15, rSrc, r0);
						if(imm_val != 8'd1) 	$display("ERROR @ time %d in state %d: imm_val is %b, but should be %b.", 	$time, s15, imm_val, 8'd1);
						if(ALU_OP != `ALUOp_ADD) 	$display("ERROR @ time %d in state %d: ALU_OP is %b, but should be %b.",$time, s15, ALU_OP, `ALUOp_ADD);
					end
				s16: // ADDI R2, -1
					begin
						if(BRANCH != 0) 	$display("ERROR @ time %d in state %d: BRANCH is %b, but should be %b.", 		$time, s16, BRANCH, 0);
						if(JUMP != 0) 		$display("ERROR @ time %d in state %d: JUMP is %b, but should be %b.", 			$time, s16, JUMP, 0);
						if(ROM_MUX != 0) 	$display("ERROR @ time %d in state %d: ROM_MUX is %b, but should be %b.", 		$time, s16, ROM_MUX, 0);
						if(MEMC_MUX != 0) 	$display("ERROR @ time %d in state %d: MEMC_MUX is %b, but should be %b.", 		$time, s16, MEMC_MUX, 0);
						if(IMM_MUX != 1) 	$display("ERROR @ time %d in state %d: IMM_MUX is %b, but should be %b.",		$time, s16, IMM_MUX, 1);
//						if(PSR_EN != 1) 	$display("ERROR @ time %d in state %d: PSR_EN is %b, but should be %b.", 		$time, s16, PSR_EN, 1);
						if(PC_EN != 1) 		$display("ERROR @ time %d in state %d: PC_EN is %b, but should be %b.", 		$time, s16, PC_EN, 1);
						if(WRITE != 1) 		$display("ERROR @ time %d in state %d: WRITE is %b, but should be %b.", 		$time, s16, WRITE, 1);
						//if(COND_RSLT != ) $display("ERROR @ time %d in state %d: COND_RSLT is %b, but should be %b.", 	$time, s16, COND_RSLT, 0);
						if(WB_MUX != 2'b10) 	$display("ERROR @ time %d in state %d: WB_MUX is %b, but should be %b.", 	$time, s16, WB_MUX, 2'b10);
						if(rDst != r2) 		$display("ERROR @ time %d in state %d: rDst is %b, but should be %b.", 			$time, s16, rDst, r2);
						//if(rSrc != r0) 		$display("ERROR @ time %d in state %d: rSrc is %b, but should be %b.", 		$time, s16, rSrc, r0);
						if(imm_val != 8'hff) 	$display("ERROR @ time %d in state %d: imm_val is %b, but should be %b.", 	$time, s16, imm_val, 8'hff);
						if(ALU_OP != `ALUOp_ADD) 	$display("ERROR @ time %d in state %d: ALU_OP is %b, but should be %b.",$time, s16, ALU_OP, `ALUOp_ADD);
					end
				s17: // MOV R6, R0	
					begin
						if(BRANCH != 0) 	$display("ERROR @ time %d in state %d: BRANCH is %b, but should be %b.", 		$time, s17, BRANCH, 0);
						if(JUMP != 0) 		$display("ERROR @ time %d in state %d: JUMP is %b, but should be %b.", 			$time, s17, JUMP, 0);
						if(ROM_MUX != 0) 	$display("ERROR @ time %d in state %d: ROM_MUX is %b, but should be %b.", 		$time, s17, ROM_MUX, 0);
						if(MEMC_MUX != 0) 	$display("ERROR @ time %d in state %d: MEMC_MUX is %b, but should be %b.", 		$time, s17, MEMC_MUX, 0);
						if(IMM_MUX != 0) 	$display("ERROR @ time %d in state %d: IMM_MUX is %b, but should be %b.",		$time, s17, IMM_MUX, 0);
//						if(PSR_EN != 1) 	$display("ERROR @ time %d in state %d: PSR_EN is %b, but should be %b.", 		$time, s17, PSR_EN, 1);
						if(PC_EN != 1) 		$display("ERROR @ time %d in state %d: PC_EN is %b, but should be %b.", 		$time, s17, PC_EN, 1);
						if(WRITE != 1) 		$display("ERROR @ time %d in state %d: WRITE is %b, but should be %b.", 		$time, s17, WRITE, 1);
						//if(COND_RSLT != ) $display("ERROR @ time %d in state %d: COND_RSLT is %b, but should be %b.", 	$time, s17, COND_RSLT, 0);
						if(WB_MUX != 2'b10) 	$display("ERROR @ time %d in state %d: WB_MUX is %b, but should be %b.", 	$time, s17, WB_MUX, 2'b10);
						if(rDst != r6) 		$display("ERROR @ time %d in state %d: rDst is %b, but should be %b.", 			$time, s17, rDst, r6);
						if(rSrc != r0) 		$display("ERROR @ time %d in state %d: rSrc is %b, but should be %b.", 			$time, s17, rSrc, r0);
						//if(imm_val != ) 	$display("ERROR @ time %d in state %d: imm_val is %b, but should be %b.", 		$time, s17, imm_val, 0);
						if(ALU_OP != `ALUOp_MOV) 	$display("ERROR @ time %d in state %d: ALU_OP is %b, but should be %b.",$time, s17, ALU_OP, `ALUOp_MOV);
					end
				s18: // ADDI R6, 8
					begin
						if(BRANCH != 0) 	$display("ERROR @ time %d in state %d: BRANCH is %b, but should be %b.", 		$time, s18, BRANCH, 0);
						if(JUMP != 0) 		$display("ERROR @ time %d in state %d: JUMP is %b, but should be %b.", 			$time, s18, JUMP, 0);
						if(ROM_MUX != 0) 	$display("ERROR @ time %d in state %d: ROM_MUX is %b, but should be %b.", 		$time, s18, ROM_MUX, 0);
						if(MEMC_MUX != 0) 	$display("ERROR @ time %d in state %d: MEMC_MUX is %b, but should be %b.", 		$time, s18, MEMC_MUX, 0);
						if(IMM_MUX != 1) 	$display("ERROR @ time %d in state %d: IMM_MUX is %b, but should be %b.",		$time, s18, IMM_MUX, 1);
//						if(PSR_EN != 1) 	$display("ERROR @ time %d in state %d: PSR_EN is %b, but should be %b.", 		$time, s18, PSR_EN, 1);
						if(PC_EN != 1) 		$display("ERROR @ time %d in state %d: PC_EN is %b, but should be %b.", 		$time, s18, PC_EN, 1);
						if(WRITE != 1) 		$display("ERROR @ time %d in state %d: WRITE is %b, but should be %b.", 		$time, s18, WRITE, 1);
						//if(COND_RSLT != ) $display("ERROR @ time %d in state %d: COND_RSLT is %b, but should be %b.", 	$time, s18, COND_RSLT, 0);
						if(WB_MUX != 2'b10) 	$display("ERROR @ time %d in state %d: WB_MUX is %b, but should be %b.", 	$time, s18, WB_MUX, 2'b10);
						if(rDst != r6) 		$display("ERROR @ time %d in state %d: rDst is %b, but should be %b.", 			$time, s18, rDst, r6);
						//if(rSrc != r0) 		$display("ERROR @ time %d in state %d: rSrc is %b, but should be %b.", 		$time, s18, rSrc, r0);
						if(imm_val != 8'h08) 	$display("ERROR @ time %d in state %d: imm_val is %b, but should be %b.", 	$time, s18, imm_val, 8'h08);
						if(ALU_OP != `ALUOp_ADD) 	$display("ERROR @ time %d in state %d: ALU_OP is %b, but should be %b.",$time, s18, ALU_OP, `ALUOp_ADD);
					end
				s19: // JUC LOOP
					begin
						if(BRANCH != 0) 	$display("ERROR @ time %d in state %d: BRANCH is %b, but should be %b.", 		$time, s19, BRANCH, 0);
						if(JUMP != 1) 		$display("ERROR @ time %d in state %d: JUMP is %b, but should be %b.", 			$time, s19, JUMP, 1'b1);
						if(ROM_MUX != 0) 	$display("ERROR @ time %d in state %d: ROM_MUX is %b, but should be %b.", 		$time, s19, ROM_MUX, 0);
						if(MEMC_MUX != 0) 	$display("ERROR @ time %d in state %d: MEMC_MUX is %b, but should be %b.", 		$time, s19, MEMC_MUX, 0);
						if(IMM_MUX != 0) 	$display("ERROR @ time %d in state %d: IMM_MUX is %b, but should be %b.",		$time, s19, IMM_MUX, 0);
//						if(PSR_EN != 0) 	$display("ERROR @ time %d in state %d: PSR_EN is %b, but should be %b.", 		$time, s19, PSR_EN, 0);
						if(PC_EN != 1) 		$display("ERROR @ time %d in state %d: PC_EN is %b, but should be %b.", 		$time, s19, PC_EN, 1);
						if(WRITE != 0) 		$display("ERROR @ time %d in state %d: WRITE is %b, but should be %b.", 		$time, s19, WRITE, 0);
						//if(COND_RSLT != ) $display("ERROR @ time %d in state %d: COND_RSLT is %b, but should be %b.", 	$time, s19, COND_RSLT, 0);
						if(WB_MUX != 2'b10) 	$display("ERROR @ time %d in state %d: WB_MUX is %b, but should be %b.", 	$time, s19, WB_MUX, 2'b10);
						//if(rDst != r4) 		$display("ERROR @ time %d in state %d: rDst is %b, but should be %b.", 		$time, s19, rDst, r4);
						//if(rSrc != r6) 		$display("ERROR @ time %d in state %d: rSrc is %b, but should be %b.", 			$time, s19, rSrc, r6);
						//if(imm_val != 8'hff) 	$display("ERROR @ time %d in state %d: imm_val is %b, but should be %b.", 	$time, s19, imm_val, 8'hff);
						//if(ALU_OP != `ALUOp_ADD) 	$display("ERROR @ time %d in state %d: ALU_OP is %b, but should be %b.",$time, s19, ALU_OP, `ALUOp_ADD);
					end
				s20: ;// END
				default: ;
			endcase
		end
		
		$display("SIMULATION FINISHED.");
		$finish(2);
	end
      
	always #5 clk = ~clk;
	
	reg count, ps_en;
	
	always@(posedge clk) begin
		if(!rst) begin
			ps_en = 0;
			count <= 0;
		end	
		else if(count) begin
			ps_en = 1;
			count = ~count;
		end
		else begin
			ps_en = 0;
			count = ~count;
		end
	end
			
	// Present state
	always@(posedge clk, negedge rst) begin
		if(!rst)
			ps <= s0;
		else if(ps_en)
			ps <= ns;
	end
	
	// Next state logic
	always@(ps) begin
		case(ps)
			s0: ns = s1;
			s1: ns = s2;
			s2: ns = s3;
			s3: ns = s4;
			s4: ns = s5;
			s5: ns = s6;
			s6: ns = s7;
			s7: ns = s8;
			s8: ns = s9;
			s9: ns = s10;
			s10: ns = s11;
			s11: ns = s12;
			s12: ns = s13;
			s13: ns = s14;
			s14: ns = s15;
			s15: ns = s16;
			s16: ns = s17;
			s17: ns = s18;
			s18: ns = s19;
			s19: ns = s20;
			s20: ns = s0;
			default:  ns = s0;
		endcase
	end
	
	// Output Logic
	always@(ps) begin
		psr = 5'b0;
		inst = 16'b0;
		case(ps)
			s0: // MOV R1, R0
				begin
//					psr = 5'b0;
					inst = {`RTYPE, r1, `MOV, r0};
				end
			s1: // MOV R2, R0
				begin
//					psr = 5'b0;
					inst = {`RTYPE, r2, `MOV, r0};
				end
			s2: // ADDI R1, 64
				begin
//					psr = 5'b0;
					inst = {`ADDI, r1, 8'h40};
				end
			s3: // ADDI R2, 14
				begin
//					psr = 5'b0;
					inst = {`ADDI, r2, 8'h0e};
				end
			s4: // MOV R3, R0
				begin
//					psr = 5'b0;
					inst = {`RTYPE, r3, `MOV, r0};
				end
			s5: // MOV R4, R0
				begin
//					psr = 5'b0;
					inst = {`RTYPE, r4, `MOV, r0};
				end
			s6: // ADDI R3, 1
				begin
//					psr = 5'b0;
					inst = {`ADDI, r3, 8'h01};
				end
			s7: // ADDI R4, -1
				begin
//					psr = 5'b0;
					inst = {`ADDI, r4, 8'hff};
				end
			s8: // LOOP: CMP  R3, R0
				begin
//					psr = 5'b0;
					inst = {`RTYPE, r3, `CMP, r0};
				end
			s9: // BEQ, END
				begin
//					psr = 5'b0;
					inst = {`BCOND, `EQ, 8'd11};
				end
			s10: // ADD R3, R4
				begin
//					psr = 5'b0;
					inst = {`RTYPE, r3, `ADD, r4};
				end
			s11: // MOV R5, R3
				begin
//					psr = 5'b0;
					inst = {`RTYPE, r5, `MOV, r3};
				end
			s12: // MOV R3, R4
				begin
//					psr = 5'b0;
					inst = {`RTYPE, r3, `MOV, r4};
				end
			s13: // MOV R4, R5
				begin
//					psr = 5'b0;
					inst = {`RTYPE, r4, `MOV, r5};
				end
			s14: // STOR R4, R1
				begin
//					psr = 5'b0;
					inst = {`OTYPE, r4, `STOR, r1};
				end
			s15: // ADDI R1, 1
				begin
//					psr = 5'b0;
					inst = {`ADDI, r1, 8'h01};
				end
			s16: // ADDI R2, -1
				begin
//					psr = 5'b0;
					inst = {`ADDI, r2, 8'hff};
				end
			s17: // MOV R6, R0
				begin
//					psr = 5'b0;
					inst = {`RTYPE, r6, `MOV, r0};
				end	
			s18: // ADDI R6, 8
				begin
//					psr = 5'b0;
					inst = {`ADDI, r6, 8'h08};
				end	
			s19: // JUC LOOP
				begin
//					psr = 5'b0;
					inst = {`OTYPE, `UC, `JCOND, r6};
				end	
			s20: // END
				begin
//					psr = 5'b0;
					inst = 16'b0;
				end				
			default: 
				begin
					psr = 5'b0;
					inst = 16'b0;
				end
		endcase
	end
	
	//alu ALU(.dSrc(), .dDst(), .opCode(), .psrOut(), .result());
	
endmodule

