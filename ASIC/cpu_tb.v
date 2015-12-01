`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:11:51 11/30/2015
// Design Name:   cpu
// Module Name:   C:/Users/Steve Brown/Utah/Fall 2015/ECE 6710/Team Project/GIT/ASIC/cpu_tb.v
// Project Name:  ASIC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cpu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`include "defines.v"

module cpu_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [15:0] sram_dout; // data from sram
	reg [15:0] rom_dout; // data from rom (instruction)
	reg [15:0] glyph_addr; // address from glyph

	// Outputs
	wire [15:0] alu_result; // result from alu
	wire [15:0] memc_din0; // data from dSrc for jumps and data SRAM
	wire [15:0] rom_addr; // instruction address 
	wire [15:0] mem_addr; // address for SRAM

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

	// instantiate the Unit Under Test (UUT)
	cpu uut (
		.clk(clk), 
		.rst(rst), 
		.sram_dout(sram_dout), 
		.rom_dout(rom_dout), 
		.glyph_addr(glyph_addr), 
		.alu_result(alu_result), 
		.memc_din0(memc_din0), 
		.rom_addr(rom_addr), 
		.mem_addr(mem_addr)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		sram_dout = 0;
		rom_dout = 0;
		glyph_addr = 0;

		// Wait 100 ns for global reset to finish
		$display("BEGINNING SIMULATION.");
		#100;
		rst = 1;
      $display("Reset done. Starting in state %d: ", ps);
		// Add stimulus here
		for(i = 0; i < 176; i = i + 1) begin
			#5;
			case(ps)
				s0: // MOV R1, R0
					begin
						#5;
						if(alu_result != 16'd0) 	$display("ERROR @ time %d in state %d: alu_result is %h, but should be %h.", 	$time, s0, alu_result, 16'd0);
//						if(memc_din0 != 16'd0) 		$display("ERROR @ time %d in state %d: memc_din0 is %h, but should be %h.", 	$time, s0, memc_din0, 16'd0);
						if(rom_addr != 16'h0) 		$display("ERROR @ time %d in state %d: rom_addr is %h, but should be %h.", 	$time, s0, rom_addr, 16'h0);
						if(mem_addr != glyph_addr) $display("ERROR @ time %d in state %d: mem_addr is %h, but should be %h.", 	$time, s0, mem_addr, glyph_addr);
					end
				s1: // MOV R2, R0
					begin
						#10;
						if(alu_result != 16'd0) 	$display("ERROR @ time %d in state %d: alu_result is %h, but should be %h.",$time, s1, alu_result, 16'd0);
//						if(memc_din0 != 16'd0) 		$display("ERROR @ time %d in state %d: memc_din0 is %h, but should be %h.", $time, s1, memc_din0, 16'd0);
						if(rom_addr != 16'h1) 		$display("ERROR @ time %d in state %d: rom_addr is %h, but should be %h.", 	$time, s1, rom_addr, 16'h1);
						if(mem_addr != glyph_addr) $display("ERROR @ time %d in state %d: mem_addr is %h, but should be %h.", 	$time, s1, mem_addr, glyph_addr);
					end
				s2: // ADDI R1, 64
					begin
						#10;
						if(alu_result != 16'd64) 	$display("ERROR @ time %d in state %d: alu_result is %h, but should be %h.",$time, s2, alu_result, 16'd64);
//						if(memc_din0 != 16'd0) 		$display("ERROR @ time %d in state %d: memc_din0 is %h, but should be %h.", $time, s2, memc_din0, 16'd0);
						if(rom_addr != 16'h2) 		$display("ERROR @ time %d in state %d: rom_addr is %h, but should be %h.", 	$time, s2, rom_addr, 16'h2);
						if(mem_addr != glyph_addr) $display("ERROR @ time %d in state %d: mem_addr is %h, but should be %h.", 	$time, s2, mem_addr, glyph_addr);
					end
				s3: // ADDI R2, 14
					begin
						#10;
						if(alu_result != 16'd14) 	$display("ERROR @ time %d in state %d: alu_result is %h, but should be %h.",$time, s3, alu_result, 16'd14);
//						if(memc_din0 != 16'd0) 		$display("ERROR @ time %d in state %d: memc_din0 is %h, but should be %h.", $time, s3, memc_din0, 16'd0);
						if(rom_addr != 16'h3) 		$display("ERROR @ time %d in state %d: rom_addr is %h, but should be %h.", 	$time, s3, rom_addr, 16'h3);
						if(mem_addr != glyph_addr) $display("ERROR @ time %d in state %d: mem_addr is %h, but should be %h.", 	$time, s3, mem_addr, glyph_addr);
					end
				s4: // MOV R3, R0
					begin
						#10;
						if(alu_result != 16'd0) 	$display("ERROR @ time %d in state %d: alu_result is %h, but should be %h.",$time, s4, alu_result, 16'd0);
//						if(memc_din0 != 16'd0) 		$display("ERROR @ time %d in state %d: memc_din0 is %h, but should be %h.", $time, s4, memc_din0, 16'd0);
						if(rom_addr != 16'h4) 		$display("ERROR @ time %d in state %d: rom_addr is %h, but should be %h.", 	$time, s4, rom_addr, 16'h4);
						if(mem_addr != glyph_addr) $display("ERROR @ time %d in state %d: mem_addr is %h, but should be %h.", 	$time, s4, mem_addr, glyph_addr);
					end
				s5: // MOV R4, R0
					begin
						#10;
						if(alu_result != 16'd0) 	$display("ERROR @ time %d in state %d: alu_result is %h, but should be %h.",$time, s5, alu_result, 16'd0);
//						if(memc_din0 != 16'd0) 		$display("ERROR @ time %d in state %d: memc_din0 is %h, but should be %h.", $time, s5, memc_din0, 16'd0);
						if(rom_addr != 16'h5) 		$display("ERROR @ time %d in state %d: rom_addr is %h, but should be %h.", 	$time, s5, rom_addr, 16'h5);
						if(mem_addr != glyph_addr) $display("ERROR @ time %d in state %d: mem_addr is %h, but should be %h.", 	$time, s5, mem_addr, glyph_addr);
					end
				s6: // ADDI R3, 1
					begin
						#10;
						if(alu_result != 16'd1) 	$display("ERROR @ time %d in state %d: alu_result is %h, but should be %h.",$time, s6, alu_result, 16'd1);
//						if(memc_din0 != 16'd0) 		$display("ERROR @ time %d in state %d: memc_din0 is %h, but should be %h.", $time, s6, memc_din0, 16'd0);
						if(rom_addr != 16'h6) 		$display("ERROR @ time %d in state %d: rom_addr is %h, but should be %h.", 	$time, s6, rom_addr, 16'h6);
						if(mem_addr != glyph_addr) $display("ERROR @ time %d in state %d: mem_addr is %h, but should be %h.", 	$time, s6, mem_addr, glyph_addr);
					end
				s7: // ADDI R4, -1
					begin
						#10;
						if(alu_result != 16'hffff) $display("ERROR @ time %d in state %d: alu_result is %h, but should be %h.", $time, s7, alu_result, 16'hffff);
//						if(memc_din0 != 16'd0) 		$display("ERROR @ time %d in state %d: memc_din0 is %h, but should be %h.", $time, s7, memc_din0, 16'd0);
						if(rom_addr != 16'h7) 		$display("ERROR @ time %d in state %d: rom_addr is %h, but should be %h.", 	$time, s7, rom_addr, 16'h7);
						if(mem_addr != glyph_addr) $display("ERROR @ time %d in state %d: mem_addr is %h, but should be %h.", 	$time, s7, mem_addr, glyph_addr);
					end
				s8: // LOOP: CMP  R2, R0
					begin
						#10
//						if(alu_result != 16'd0) 	$display("ERROR @ time %d in state %d: alu_result is %h, but should be %h.",$time, s8, alu_result, 16'd0);
//						if(memc_din0 != 16'd0) 		$display("ERROR @ time %d in state %d: memc_din0 is %h, but should be %h.", $time, s8, memc_din0, 16'd0);
						if(rom_addr != 16'h8) 		$display("ERROR @ time %d in state %d: rom_addr is %h, but should be %h.", 	$time, s8, rom_addr, 16'h8);
						if(mem_addr != glyph_addr) $display("ERROR @ time %d in state %d: mem_addr is %h, but should be %h.", 	$time, s8, mem_addr, glyph_addr);
					end
				s9: // BEQ, END
					begin
						#10
//						if(alu_result != 16'd0) 	$display("ERROR @ time %d in state %d: alu_result is %h, but should be %h.",$time, s9, alu_result, 16'd0);
//						if(memc_din0 != 16'd0) 		$display("ERROR @ time %d in state %d: memc_din0 is %h, but should be %h.", $time, s9, memc_din0, 16'd0);
//						if(rom_addr != 16'h9) 		$display("ERROR @ time %d in state %d: rom_addr is %h, but should be %h.", 	$time, s9, rom_addr, 16'h9);
						if(mem_addr != glyph_addr) $display("ERROR @ time %d in state %d: mem_addr is %h, but should be %h.", 	$time, s9, mem_addr, glyph_addr);
					end
				s10: // ADD R3, R4
					begin
						#10;
//						if(alu_result != 16'd0) 	$display("ERROR @ time %d in state %d: alu_result is %h, but should be %h.",$time, s10, alu_result, 16'd0);
//						if(memc_din0 != 16'd0) 		$display("ERROR @ time %d in state %d: memc_din0 is %h, but should be %h.", $time, s10, memc_din0, 16'd0);
						if(rom_addr != 16'ha) 		$display("ERROR @ time %d in state %d: rom_addr is %h, but should be %h.", 	$time, s10, rom_addr, 16'ha);
						if(mem_addr != glyph_addr) $display("ERROR @ time %d in state %d: mem_addr is %h, but should be %h.", 	$time, s10, mem_addr, glyph_addr);
					end
				s11: // MOV R5, R3
					begin
						#10;
//						if(alu_result != 16'd0) 	$display("ERROR @ time %d in state %d: alu_result is %h, but should be %h.",$time, s11, alu_result, 16'd0);
//						if(memc_din0 != 16'd0) 		$display("ERROR @ time %d in state %d: memc_din0 is %h, but should be %h.", $time, s11, memc_din0, 16'd0);
						if(rom_addr != 16'hb) 		$display("ERROR @ time %d in state %d: rom_addr is %h, but should be %h.", 	$time, s11, rom_addr, 16'hb);
						if(mem_addr != glyph_addr) $display("ERROR @ time %d in state %d: mem_addr is %h, but should be %h.", 	$time, s11, mem_addr, glyph_addr);
					end
				s12: // MOV R3, R4
					begin
						#10;
//						if(alu_result != 16'd0) 	$display("ERROR @ time %d in state %d: alu_result is %h, but should be %h.",$time, s12, alu_result, 16'd0);
//						if(memc_din0 != 16'd0) 		$display("ERROR @ time %d in state %d: memc_din0 is %h, but should be %h.", $time, s12, memc_din0, 16'd0);
						if(rom_addr != 16'hc) 		$display("ERROR @ time %d in state %d: rom_addr is %h, but should be %h.", 	$time, s12, rom_addr, 16'hc);
						if(mem_addr != glyph_addr) $display("ERROR @ time %d in state %d: mem_addr is %h, but should be %h.", 	$time, s12, mem_addr, glyph_addr);
					end
				s13: // MOV R4, R5
					begin
						#10;
//						if(alu_result != 16'd0) 	$display("ERROR @ time %d in state %d: alu_result is %h, but should be %h.",$time, s13, alu_result, 16'd0);
//						if(memc_din0 != 16'd0) 		$display("ERROR @ time %d in state %d: memc_din0 is %h, but should be %h.", $time, s13, memc_din0, 16'd0);
						if(rom_addr != 16'hd) 		$display("ERROR @ time %d in state %d: rom_addr is %h, but should be %h.", 	$time, s13, rom_addr, 16'hd);
						if(mem_addr != glyph_addr) $display("ERROR @ time %d in state %d: mem_addr is %h, but should be %h.", 	$time, s13, mem_addr, glyph_addr);
					end
				s14: // STOR R4, R1
					begin
						#10;
//						if(alu_result != 16'd0) 	$display("ERROR @ time %d in state %d: alu_result is %h, but should be %h.",$time, s14, alu_result, 16'd0);
//						if(memc_din0 != 16'd0) 		$display("ERROR @ time %d in state %d: memc_din0 is %h, but should be %h.", $time, s14, memc_din0, 16'd0);
						if(rom_addr != 16'he) 		$display("ERROR @ time %d in state %d: rom_addr is %h, but should be %h.", 	$time, s14, rom_addr, 16'he);
//						if(mem_addr != 16'd) $display("ERROR @ time %d in state %d: mem_addr is %h, but should be %h.", 	$time, s14, mem_addr, glyph_addr);
					end
				s15: // ADDI R1, 1
					begin
						#10;
//						if(alu_result != 16'd0) 	$display("ERROR @ time %d in state %d: alu_result is %h, but should be %h.",$time, s15, alu_result, 16'd0);
//						if(memc_din0 != 16'd0) 		$display("ERROR @ time %d in state %d: memc_din0 is %h, but should be %h.", $time, s15, memc_din0, 16'd0);
						if(rom_addr != 16'hf) 		$display("ERROR @ time %d in state %d: rom_addr is %h, but should be %h.", 	$time, s15, rom_addr, 16'hf);
						if(mem_addr != glyph_addr) $display("ERROR @ time %d in state %d: mem_addr is %h, but should be %h.", 	$time, s15, mem_addr, glyph_addr);
					end
				s16: // ADDI R2, -1
					begin
						#10;
//						if(alu_result != 16'd0) 	$display("ERROR @ time %d in state %d: alu_result is %h, but should be %h.",$time, s16, alu_result, 16'd0);
//						if(memc_din0 != 16'd0) 		$display("ERROR @ time %d in state %d: memc_din0 is %h, but should be %h.", $time, s16, memc_din0, 16'd0);
						if(rom_addr != 16'h10) 		$display("ERROR @ time %d in state %d: rom_addr is %h, but should be %h.", 	$time, s16, rom_addr, 16'h10);
						if(mem_addr != glyph_addr) $display("ERROR @ time %d in state %d: mem_addr is %h, but should be %h.", 	$time, s16, mem_addr, glyph_addr);
					end
				s17: // MOV R6, R0	
					begin
						#10;
						if(alu_result != 16'd0) 	$display("ERROR @ time %d in state %d: alu_result is %h, but should be %h.",$time, s17, alu_result, 16'd0);
//						if(memc_din0 != 16'd0) 		$display("ERROR @ time %d in state %d: memc_din0 is %h, but should be %h.", $time, s17, memc_din0, 16'd0);
						if(rom_addr != 16'h11) 		$display("ERROR @ time %d in state %d: rom_addr is %h, but should be %h.", 	$time, s17, rom_addr, 16'h11);
						if(mem_addr != glyph_addr) $display("ERROR @ time %d in state %d: mem_addr is %h, but should be %h.", 	$time, s17, mem_addr, glyph_addr);
					end
				s18: // ADDI R6, 8
					begin
						#10;
						if(alu_result != 16'd8) 	$display("ERROR @ time %d in state %d: alu_result is %h, but should be %h.",$time, s18, alu_result, 16'd8);
//						if(memc_din0 != 16'd0) 		$display("ERROR @ time %d in state %d: memc_din0 is %h, but should be %h.", $time, s18, memc_din0, 16'd0);
						if(rom_addr != 16'h12) 		$display("ERROR @ time %d in state %d: rom_addr is %h, but should be %h.", 	$time, s18, rom_addr, 16'h12);
						if(mem_addr != glyph_addr) $display("ERROR @ time %d in state %d: mem_addr is %h, but should be %h.", 	$time, s18, mem_addr, glyph_addr);
					end
				s19: // JUC LOOP
					begin
						#10;
//						if(alu_result != 16'd0) 	$display("ERROR @ time %d in state %d: alu_result is %h, but should be %h.",$time, s19, alu_result, 16'd0);
//						if(memc_din0 != 16'd0) 		$display("ERROR @ time %d in state %d: memc_din0 is %h, but should be %h.", $time, s19, memc_din0, 16'd0);
						if(rom_addr != 16'h13) 		$display("ERROR @ time %d in state %d: rom_addr is %h, but should be %h.", 	$time, s19, rom_addr, 16'h13);
						if(mem_addr != glyph_addr) $display("ERROR @ time %d in state %d: mem_addr is %h, but should be %h.", 	$time, s19, mem_addr, glyph_addr);
					end
				s20: #10;// END
				default: #10;
			endcase
			#5;
		end
		
		$display("SIMULATION FINISHED.");
		$finish(2);
	end
      
	always #5 clk = ~clk;	
		
	// Present state
	always@(rom_addr) begin
		if(!rst)
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
			s10: ns = s11;
			s11: ns = s12;
			s12: ns = s13;
			s13: ns = s14;
			s14: ns = s15;
			s15: ns = s16;
			s16: ns = s17;
			s17: ns = s18;
			s18: ns = s19;
			s19: ns = s8;
			s20: ns = s0;
			default:  ns = s0;
		endcase
	end
	
	// Output Logic
	always@(ps) begin
		rom_dout = 16'b0;
		case(ps)
			s0: // MOV R1, R0
				begin
					rom_dout = {`RTYPE, r1, `MOV, r0};
				end
			s1: // MOV R2, R0
				begin
					rom_dout = {`RTYPE, r2, `MOV, r0};
				end
			s2: // ADDI R1, 64
				begin
					rom_dout = {`ADDI, r1, 8'h40};
				end
			s3: // ADDI R2, 14
				begin
					rom_dout = {`ADDI, r2, 8'h0e};
				end
			s4: // MOV R3, R0
				begin
					rom_dout = {`RTYPE, r3, `MOV, r0};
				end
			s5: // MOV R4, R0
				begin
					rom_dout = {`RTYPE, r4, `MOV, r0};
				end
			s6: // ADDI R3, 1
				begin
					rom_dout = {`ADDI, r3, 8'h01};
				end
			s7: // ADDI R4, -1
				begin
					rom_dout = {`ADDI, r4, 8'hff};
				end
			s8: // LOOP: CMP  R2, R0
				begin
					rom_dout = {`RTYPE, r2, `CMP, r0};
				end
			s9: // BEQ, END
				begin
					rom_dout = {`BCOND, `EQ, 8'd11};
				end
			s10: // ADD R4, R3 
				begin
					rom_dout = {`RTYPE, r4, `ADD, r3};
				end
			s11: // MOV R5, R4
				begin
					rom_dout = {`RTYPE, r5, `MOV, r4};
				end
			s12: // MOV R4, R3
				begin
					rom_dout = {`RTYPE, r4, `MOV, r3};
				end
			s13: // MOV R3, R5
				begin
					rom_dout = {`RTYPE, r3, `MOV, r5};
				end
			s14: // STOR R5, R1
				begin
					rom_dout = {`OTYPE, r5, `STOR, r1};
				end
			s15: // ADDI R1, 1
				begin
					rom_dout = {`ADDI, r1, 8'h01};
				end
			s16: // ADDI R2, -1
				begin
					rom_dout = {`ADDI, r2, 8'hff};
				end
			s17: // MOV R6, R0
				begin
					rom_dout = {`RTYPE, r6, `MOV, r0};
				end	
			s18: // ADDI R6, 8
				begin
					rom_dout = {`ADDI, r6, 8'h08};
				end	
			s19: // JUC LOOP
				begin
					rom_dout = {`OTYPE, `UC, `JCOND, r6};
				end	
			s20: // END
				begin
					rom_dout = 16'b0;
				end				
			default: 
				begin
					rom_dout = 16'b0;
				end
		endcase
	end
	
endmodule

