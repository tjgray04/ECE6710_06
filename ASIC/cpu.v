`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:25:38 11/30/2015 
// Design Name: 
// Module Name:    cpu 
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

module cpu
	(input clk, 									// System clock
	 input rst, 									// Active low reset 
	 input [`DATAWIDTH-1:0] sram_dout, 		// data from SRAM memory
	 input [`DATAWIDTH-1:0] rom_dout, 		// data froun ROM memory
	 input [`DATAWIDTH-1:0] glyph_addr, 	// Address for accessing glyph in ROM
	 output SRAM_CE,								// Chip enable for SRAM chip
	 output SRAM_OE,								// Output enable for SRAM chip
	 output SRAM_WE,								// Write enable for SRAM chip
	 output ROM_CE,								// Chip enable for ROM chip
	 output ROM_OE,								// Output enable for ROM chip
	 output [`DATAWIDTH-1:0] memc_din0,  	// Data to memory controller from cpu
	 output [`DATAWIDTH-1:0] rom_addr, 		// Address for ROM
	 output [`DATAWIDTH-1:0] mem_addr); 	// Address to memory (mem controller and ROM) from cpu

	// Internal Buses
	wire [`PRSWIDTH-1:0] psr; // Program Status Register
	wire [1:0] wb_mux; // Mux that controls what is written back to regfile
	wire [`REGWIDTH-1:0] rDst, rSrc; // Registers in regfile
	wire [`IMMWIDTH-1:0] imm; // Immediate value
	wire [`DATAWIDTH-1:0] dDst, dSrc; // Data from regfile register
	wire [`ALUOPWIDTH-1:0] alu_op; // ALU operation code
	wire [`DATAWIDTH-1:0] pc_ra; // Return address
	wire [`DATAWIDTH-1:0] pc; // Program counter
	
	controller LogicCtrl (.clk(clk), .rst(rst), .psr_in(psr), .instruction(rom_dout), .BRANCH(branch), .JUMP(jump),
								 .ROM_MUX(rom_mux), .MEMC_MUX(memc_mux), .IMM_MUX(imm_mux), .PC_EN(pc_en), .WRITE(write),
								 .SRAM_CE(SRAM_CE), .SRAM_OE(SRAM_OE), .SRAM_WE(SRAM_WE), .ROM_CE(ROM_CE), .ROM_OE(ROM_OE),		 
								 .COND_RSLT(cond_rslt), .WB_MUX0(WB_MUX0), .WB_MUX(wb_mux), .rDst(rDst), .rSrc(rSrc),
								 .imm_val(imm), .ALU_OP(alu_op));

	pc PrgmCount (.clk(clk), .rst(rst), .branch(branch), .jump(jump), .pcEn(pc_en), .disp(imm), .dSrc(dSrc), 
					  .pc_ra(pc_ra), .pc(pc));
	
	reg_alu Execute (.clk(clk), .write(write), .IMM_MUX(imm_mux), .COND_RSLT(cond_rslt), .WB_MUX0(WB_MUX0), .WB_MUX(wb_mux), 
						  .rSrc(rSrc), .rDst(rDst), .aluOp(alu_op), .drom(rom_dout), .pc_ra(pc_ra), .imm_in(imm), .mem_data(sram_dout),
						  .dSrc(dSrc), .dDst(dDst), .psrOut(psr));
	
	// ROM Address mux
	assign rom_addr = (rom_mux) ? mem_addr : pc;
	
	// Memory Controller mux
	assign mem_addr = (memc_mux) ? dSrc : glyph_addr;
	
	// Assign the din0 for memory controller
	assign memc_din0 = dDst;
	
endmodule
