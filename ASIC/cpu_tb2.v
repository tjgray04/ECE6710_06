`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:09:16 12/07/2015
// Design Name:   cpu
// Module Name:   C:/Users/Steve Brown/Utah/Fall 2015/ECE 6710/Team Project/GIT/ASIC/cpu_tb2.v
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

module cpu_tb2;

	// Inputs
	reg clk;
	reg rst;
	reg [15:0] EXT_MEM_DATA;
	reg [15:0] glyph_addr;
	reg [15:0] dDst;
	reg [15:0] dSrc;

	// Outputs
	wire CE;
	wire OE;
	wire WE;
	wire ROM_CE;
	wire ROM_OE;
	wire write;
	wire ctrlr_re;
	wire audio_we;
	wire timer_re;
	wire [1:0] addr_ctrlr;
	wire [1:0] addr_audio;
	wire [2:0] acnt;
	wire [3:0] rDst;
	wire [3:0] rSrc;
	wire [15:0] wb_data;
	wire [15:0] memc_din0;
	wire [15:0] DOUT_SRAM;
	wire [15:0] EXT_MEM_ADDR;
	wire [15:0] dmem;

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
	cpu uut (
		.clk(clk), 
		.rst(rst), 
		.EXT_MEM_DATA(EXT_MEM_DATA), 
		.glyph_addr(glyph_addr), 
		.dDst(dDst), 
		.dSrc(dSrc), 
		.CE(CE), 
		.OE(OE), 
		.WE(WE), 
		.ROM_CE(ROM_CE), 
		.ROM_OE(ROM_OE), 
		.write(write), 
		.ctrlr_re(ctrlr_re), 
		.audio_we(audio_we), 
		.timer_re(timer_re), 
		.addr_ctrlr(addr_ctrlr), 
		.addr_audio(addr_audio), 
		.acnt(acnt), 
		.rDst(rDst), 
		.rSrc(rSrc), 
		.wb_data(wb_data), 
		.memc_din0(memc_din0), 
		.DOUT_SRAM(DOUT_SRAM), 
		.EXT_MEM_ADDR(EXT_MEM_ADDR), 
		.dmem(dmem)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		EXT_MEM_DATA = 0;
		glyph_addr = 0;
		dDst = 0;
		dSrc = 0;

		// Wait 100 ns for global reset to finish
      $display("BEGINNING SIMULATION");
		#100;
      rst = 1;
      
      // Add stimulus here
      for(i = 0; i < 2**20; i = i + 1) begin
         #100000000;
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
   	EXT_MEM_DATA = 0;
		glyph_addr = 0;
		dDst = 0;
		dSrc = 0;
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

