`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:34:35 11/20/2015
// Design Name:   reg_alu
// Module Name:   C:/Users/Steve Brown/Utah/Fall 2015/ECE 6710/Team Project/GIT/CPU/reg_alu_tb.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: reg_alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`include "defines.v"

module reg_alu_tb;

	// Inputs
	reg clk;
	reg write;
	reg IMM_MUX;
	reg COND_RSLT;
	reg WB_MUX0;
	reg [1:0] WB_MUX;
	reg [3:0] rSrc;
	reg [3:0] rDst;
	reg [4:0] aluOp;
	reg [15:0] drom;
	reg [15:0] pc_ra;
	reg [7:0] imm_in;
	reg [15:0] mem_data;

	// Outputs
	wire [15:0] dSrc;
	wire [15:0] dDst;
	wire [15:0] alu_Result;
	wire [4:0]  psrOut;

	// Reset 
	reg rst;
	
	// FSM parameters
	reg [3:0] ps, ns;
	
	// Parameters
	parameter 	s0 = 4'h0, // AND r1, 0
					s1 = 4'h1, // AND r2, 0
					s2 = 4'h2, // ADDI r1, 10
					s3 = 4'h3, // LUI r2, 255
					s4 = 4'h4, // STOR r1, r2 -- r1 = datain, r2 = addr
					s5 = 4'h5, // LOAD r3, r2 -- r3 = memdata, r2 = addr 
					s6 = 4'h6, // CMP r1, r3
					s7 = 4'h7, // Bcond - check flags
					s8 = 4'h8, // 
					s9 = 4'h9, // 
					s10 = 4'ha, // 
					s11 = 4'hb, // 
					s12 = 4'hc, // 
					s13 = 4'hd, // 
					s14 = 4'he, // 
					s15 = 4'hf; // LSH
					
	// Integers
	integer i;

	// Instantiate the Unit Under Test (UUT)
	reg_alu uut (
		.clk(clk), 
		.write(write), 
		.IMM_MUX(IMM_MUX), 
		.COND_RSLT(COND_RSLT),
		.WB_MUX0(WB_MUX0),
		.WB_MUX(WB_MUX),
		.rSrc(rSrc), 
		.rDst(rDst), 
		.aluOp(aluOp),
		.drom(drom),
		.pc_ra(pc_ra), 
		.imm_in(imm_in), 
		.mem_data(mem_data), 
		.dSrc(dSrc), 
		.dDst(dDst), 
		.alu_Result(alu_Result),
		.psrOut(psrOut)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		write = 0;
		IMM_MUX = 0;
		COND_RSLT = 0;
		WB_MUX0 = 0;
		WB_MUX = 0;
		rSrc = 0;
		rDst = 0;
		aluOp = 0;
		drom = 0;
		pc_ra = 0;
		imm_in = 0;
		mem_data = 0;
		
		$display("BEGINNING SIMULATION...");
		// Wait 100 ns for global reset to finish
		#90;
      rst = 0;
		#5;
		// Add stimulus here
		// The purpose of this testbench is to test various functionality of the regfile and alu connection
		// An exaustive test is impractical, so a simple FSM was designed to run through various possibilities
		// of the data path. 
		for(i = 0; i < 16; i = i + 1) begin
			#2;
			case(ps)
				s0: begin //s0: begin // ANDI r1, 0
						//if(psrOut != 5'b00000) $display("ERROR @ time %d in state %d: psrOut is %b, but should be %b.", $time, s0, psrOut, ___);
						#5;
						//if(dSrc != 16'd0) 		$display("ERROR @ time %d in state %d: dSrc is %h, but should be %h.", $time, s0, dSrc, ___);
						if(dDst != 16'd0) 		$display("ERROR @ time %d in state %d: dDst is %h, but should be %h.", $time, s0, dDst, 16'd0);
					 end 
				s1: begin //s1: begin // MOV r2, r0
						//if(psrOut != 5'b) $display("ERROR @ time %d in state %d: psrOut is %b, but should be %b.", $time, s1, psrOut, ___);
						#5;
						//if(dSrc != 16'd) 	$display("ERROR @ time %d in state %d: dSrc is %h, but should be %h.", $time, s1, dSrc, ___);
						if(dDst != 16'd0) 	$display("ERROR @ time %d in state %d: dDst is %h, but should be %h.", $time, s1, dDst, 16'd0);
					 end 
				s2: begin //s2: begin // ADDI r1, 10
						if(psrOut != 5'b10010) $display("ERROR @ time %d in state %d: psrOut is %b, but should be %b.", $time, s2, psrOut, 5'b10010);
						#5;
						//if(dSrc != 16'd) 	$display("ERROR @ time %d in state %d: dSrc is %h, but should be %h.", $time, s2, dSrc, ___);
						if(dDst != 16'd10) 	$display("ERROR @ time %d in state %d: dDst is %h, but should be %h.", $time, s2, dDst, 16'd10);
					 end 
				s3: begin //s3: begin // LUI r2, 255
						if(psrOut != 5'b00010) $display("ERROR @ time %d in state %d: psrOut is %b, but should be %b.", $time, s3, psrOut, 5'b00010);
						#5;
						//if(dSrc != 16'd) 	$display("ERROR @ time %d in state %d: dSrc is %h, but should be %h.", $time, s3, dSrc, ___);
						if(dDst != ({8'd255,8'b0})) 	$display("ERROR @ time %d in state %d: dDst is %h, but should be %h.", $time, s3, dDst, ({8'd255,8'b0}));
					 end 
				s4: begin //s4: begin  // STOR r1, r2 -- r1 = datain, r2 = addr 
						if(psrOut != 5'b00010) $display("ERROR @ time %d in state %d: psrOut is %b, but should be %b.", $time, s4, psrOut, 5'b10010);
						#5;
						if(dSrc != ({8'd255,8'b0})) 	$display("ERROR @ time %d in state %d: dSrc is %h, but should be %h.", $time, s4, dSrc, ({8'd255,8'b0}));
						if(dDst != 16'd10) 	$display("ERROR @ time %d in state %d: dDst is %h, but should be %h.", $time, s4, dDst, 16'd10);
					 end 
				s5: begin //s1: begin // MOV r3, r0
						//if(psrOut != 5'b) $display("ERROR @ time %d in state %d: psrOut is %b, but should be %b.", $time, s5, psrOut, ___);
						#5;
						//if(dSrc != 16'd) 	$display("ERROR @ time %d in state %d: dSrc is %h, but should be %h.", $time, s5, dSrc, ___);
						if(dDst != 16'd0) 	$display("ERROR @ time %d in state %d: dDst is %h, but should be %h.", $time, s5, dDst, 16'd0);
					 end 
				s6: begin //s5: begin // LOAD r3, r2 -- r3 = memdata, r2 = addr
						if(psrOut != 5'b00010) $display("ERROR @ time %d in state %d: psrOut is %b, but should be %b.", $time, s6, psrOut, 5'b00010);
						#5;
						if(dSrc != ({8'd255,8'b0})) 	$display("ERROR @ time %d in state %d: dSrc is %h, but should be %h.", $time, s6, dSrc, ({8'd255,8'b0}));
						if(dDst != 16'd10) 	$display("ERROR @ time %d in state %d: dDst is %h, but should be %h.", $time, s6, dDst, 16'd10);
					 end 
				s7: begin //s6: begin // CMP r1, r3
						if(psrOut != 5'b01000) $display("ERROR @ time %d in state %d: psrOut is %b, but should be %b.", $time, s7, psrOut, 5'b01000);
						#5;
						if(dSrc != 16'd10) 	$display("ERROR @ time %d in state %d: dSrc is %h, but should be %h.", $time, s7, dSrc, 16'd10);
						if(dDst != 16'd10) 	$display("ERROR @ time %d in state %d: dDst is %h, but should be %h.", $time, s7, dDst, 16'd10);
					 end 
				s8: begin //s7: begin // Bcond - check flags
						//if(psrOut != 5'b) $display("ERROR @ time %d in state %d: psrOut is %b, but should be %b.", $time, s8, psrOut, ___);
						#5;
						//if(dSrc != 16'd) 	$display("ERROR @ time %d in state %d: dSrc is %h, but should be %h.", $time, s8, dSrc, ___);
						//if(dDst != 16'd) 	$display("ERROR @ time %d in state %d: dDst is %h, but should be %h.", $time, s8, dDst, ___);
					 end 
				s9: begin //s8: begin // MOVI r4, 1
						//if(psrOut != 5'b) $display("ERROR @ time %d in state %d: psrOut is %b, but should be %b.", $time, s9, psrOut, ___);
						#5;
						//if(dSrc != 16'd) 	$display("ERROR @ time %d in state %d: dSrc is %h, but should be %h.", $time, s9, dSrc, ___);
						if(dDst != 16'd1) 	$display("ERROR @ time %d in state %d: dDst is %h, but should be %h.", $time, s9, dDst, 16'd1);
					 end 
				s10: begin //s9: begin // LLSHI r4, 15
						if(psrOut != 5'b10010) $display("ERROR @ time %d in state %d: psrOut is %b, but should be %b.", $time, s10, psrOut, 5'b10010);
						#5;
						//if(dSrc != 16'd) 	$display("ERROR @ time %d in state %d: dSrc is %h, but should be %h.", $time, s10, dSrc, ___);
						if(dDst != 16'h8000) 	$display("ERROR @ time %d in state %d: dDst is %h, but should be %h.", $time, s10, dDst, 16'h8000);
					 end
				s11: begin //s10: begin // ARSHUI r4, 15
						if(psrOut != 5'b10000) $display("ERROR @ time %d in state %d: psrOut is %b, but should be %b.", $time, s11, psrOut, 5'b10001);
						#5;
						//if(dSrc != 16'd) 	$display("ERROR @ time %d in state %d: dSrc is %h, but should be %h.", $time, s11, dSrc, ___);
						if(dDst != 16'hffff) 	$display("ERROR @ time %d in state %d: dDst is %h, but should be %h.", $time, s11, dDst, 16'hffff);
					 end
//				s12: begin
//						if(psrOut != 5'b) $display("ERROR @ time %d in state %d: psrOut is %b, but should be %b.", $time, s12, psrOut, ___);
//						#5;
//						if(dSrc != 16'd) 	$display("ERROR @ time %d in state %d: dSrc is %h, but should be %h.", $time, s12, dSrc, ___);
//						if(dDst != 16'd) 	$display("ERROR @ time %d in state %d: dDst is %h, but should be %h.", $time, s12, dDst, ___);
//					 end
//				s13: begin
//						if(psrOut != 5'b) $display("ERROR @ time %d in state %d: psrOut is %b, but should be %b.", $time, s13, psrOut, ___);
//						#5;
//						if(dSrc != 16'd) 	$display("ERROR @ time %d in state %d: dSrc is %h, but should be %h.", $time, s13, dSrc, ___);
//						if(dDst != 16'd) 	$display("ERROR @ time %d in state %d: dDst is %h, but should be %h.", $time, s13, dDst, ___);
//					 end
//				s14: begin	
//						if(psrOut != 5'b) $display("ERROR @ time %d in state %d: psrOut is %b, but should be %b.", $time, s14, psrOut, ___);
//						#5;
//						if(dSrc != 16'd) 	$display("ERROR @ time %d in state %d: dSrc is %h, but should be %h.", $time, s14, dSrc, ___);
//						if(dDst != 16'd) 	$display("ERROR @ time %d in state %d: dDst is %h, but should be %h.", $time, s14, dDst, ___);
//					 end
//				s15: begin
//						if(psrOut != 5'b) $display("ERROR @ time %d in state %d: psrOut is %b, but should be %b.", $time, s15, psrOut, ___);
//						#5;
//						if(dSrc != 16'd) 	$display("ERROR @ time %d in state %d: dSrc is %h, but should be %h.", $time, s15, dSrc, ___);
//						if(dDst != 16'd) 	$display("ERROR @ time %d in state %d: dDst is %h, but should be %h.", $time, s15, dDst, ___);
//					 end
				default: begin
								if(psrOut != 5'b01000) $display("ERROR @ time %d in state %d: psrOut is %b, but should be %b.", $time, s10, psrOut, 5'b01000);
								#5;
								if(dSrc != 16'd0) 	$display("ERROR @ time %d in state %d: dSrc is %h, but should be %h.", $time, s10, dSrc, 16'd0);
								if(dDst != 16'd0) 	$display("ERROR @ time %d in state %d: dDst is %h, but should be %h.", $time, s10, dDst, 16'd0);
							end
			endcase
			#3; // Wait an additional 5 clock ticks
		end
		
		// Close simulation
		$display("SIMULATION FINISHED");
		$finish(2);
	end
   
	always #5 clk = ~clk; // 100MHz
	
	// Present state
	always@(posedge clk) begin
		if(rst)
			ps <= s0;
		else
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
			s10: ns = s0;
//			s11: ns = s12;
//			s12: ns = s13;
//			s13: ns = s14;
//			s14: ns = s15;
//			s15: ns = s0;
			default:  ns = s0;
		endcase
	end
		
	// Output logic
	always@(ps) begin
		write = 1'b0; 		// 1-bit
		IMM_MUX = 1'b0; 	// 1-bit
		COND_RSLT = 1'b0;	// 1-bit
		WB_MUX0 = 1'b0;
		WB_MUX = 2'b10;		// 2-bit	
		rSrc = 4'b0; 		// 4-bit
		rDst = 4'b0; 		// 4-bit
		aluOp = 5'b0; 		// 5-bit
		drom = 16'b0;
		pc_ra = 16'b0; 		// 16-bit
		imm_in = 8'b0; 		// 16-bit
		mem_data = 16'b0; // 16-bit
		case(ps)
			s0: begin // ANDI r1, 0
					write = 1'b1;
					IMM_MUX = 1'b1;
					rDst = 4'b0001;
					aluOp = `ALUOp_AND;
					imm_in = 8'b0;
				end	
			s1: begin // MOV r2, r0
					write = 1'b1;
					rSrc = 4'b0;
					rDst = 4'b10;
					aluOp = `ALUOp_MOV;
				end	
			s2: begin // ADDI r1, 10
					write = 1'b1; 	
					IMM_MUX = 1'b1;	
					rDst = 4'b1; 	
					aluOp = `ALUOp_ADD; 		
					imm_in = 8'd10;
				end	
			s3: begin // LUI r2, 255
					write = 1'b1; 	
					IMM_MUX = 1'b1;
					rDst = 4'd2; 	
					aluOp = `ALUOp_LUI; 		
					imm_in = 8'd255;
				end	
			s4: begin  // STOR r1, r2 -- r1 = datain, r2 = addr 	
					rSrc = 4'd2; 	
					rDst = 4'd1; 	
				end	
			s5: begin // MOV r3, r0
					write = 1'b1;
					rSrc = 4'b0;
					rDst = 4'd3;
					aluOp = `ALUOp_MOV;
				end	
			s6: begin // LOAD r3, r2 -- r3 = memdata, r2 = addr 
					write = 1'b1; 	
					rSrc = 4'd2; 	
					rDst = 4'd3; 
					WB_MUX = 2'b11;
					mem_data = 16'd10;
				end	
			s7: begin // CMP r1, r3
					rSrc = 4'd3; 	
					rDst = 4'b1; 	 	
				end	
			s8: begin // Bcond - check flags
					//Check PSR
				end	
			s9: begin // MOVI r4, 1
					write = 1'b1; 	
					IMM_MUX = 1'b1;	
					rDst = 4'd4; 	
					aluOp = `ALUOp_MOV; 		
					imm_in = 8'b1;
				end	
			s10: begin // LLSHI r4, 15
					write = 1'b1; 	
					IMM_MUX = 1'b1;	
					rDst = 4'd4; 	
					aluOp = `ALUOp_SLL; 		
					imm_in = 8'hf;
				end	
			s11: begin // ARSHUI r4, 15
					write = 1'b1; 	
					IMM_MUX = 1'b1;
					rDst = 4'd4; 	
					aluOp = `ALUOp_SRA; 		
					imm_in = 8'hf;
				end		
//			s12: begin
//					write = 1'b0; 	
//					IMM_MUX = 1'b0;
//					rSrc = 4'b0; 	
//					rDst = 4'b0; 	
//					aluOp = 5'b0; 	
//					pc_ra = 16'b0; 	
//					imm_in = 8'b0;
//					mem_data = 16'b0;
//				end	
//			s13: begin
//					write = 1'b0; 	
//					IMM_MUX = 1'b0;
//					rSrc = 4'b0; 	
//					rDst = 4'b0; 	
//					aluOp = 5'b0; 	
//					pc_ra = 16'b0; 	
//					imm_in = 8'b0;
//					mem_data = 16'b0;
//				end	
//			s14: begin
//					write = 1'b0; 	
//					IMM_MUX = 1'b0;
//					rSrc = 4'b0; 	
//					rDst = 4'b0; 	
//					aluOp = 5'b0; 	
//					pc_ra = 16'b0; 	
//					imm_in = 8'b0;
//					mem_data = 16'b0;
//				end	
//			s15: begin
//					write = 1'b0; 	
//					IMM_MUX = 1'b0;
//					rSrc = 4'b0; 	
//					rDst = 4'b0; 	
//					aluOp = 5'b0; 	
//					pc_ra = 16'b0; 	
//					imm_in = 8'b0;
//					mem_data = 16'b0;
//				end	
			default: begin
							write = 1'b0; 	
							IMM_MUX = 1'b0; 
							rSrc = 4'b0; 	
							rDst = 4'b0; 	
							aluOp = 5'b0; 	
							pc_ra = 16'b0; 	
							imm_in = 8'b0; 	
							mem_data = 16'b0;
						end
		endcase
	end
	
endmodule
