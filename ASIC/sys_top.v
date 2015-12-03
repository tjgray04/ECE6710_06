`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:13:58 12/01/2015 
// Design Name: 
// Module Name:    sys_top 
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

module sys_top	
	(input clk, rst,
    );
	 
	//////////////////////////
	// Internal buses
	wire [`DATAWIDTH-1:0] sram_dout;		// Data from SRAM feeds into both CPU and VGA controller
	wire [`DATAWIDTH-1:0] rom_dout;		// Data from ROM feeds into both CPU and VGA controller
	wire [`DATAWIDTH-1:0] glyph_addr;	// Address from VGA to ROM
	wire [`DATAWIDTH-1:0] alu_result;	// Result of ALU to feed into Audio Controller
	wire [`DATAWIDTH-1:0] memc_din0;		// Data that feeds into Memory Controller
	wire [`DATAWIDTH-1:0] rom_addr;		// Output address to ROM chip
	wire [`DATAWIDTH-1:0] mem_addr;		// Address that feeds into Memory Controller
	
	
	wire [`DATAWIDTH-1:0] sram_dout;
	wire [`DATAWIDTH-1:0] sram_dout;
	wire [`DATAWIDTH-1:0] sram_dout;
	wire [`DATAWIDTH-1:0] sram_dout;
	wire [`DATAWIDTH-1:0] sram_dout;
	wire [`DATAWIDTH-1:0] sram_dout;
	wire [`DATAWIDTH-1:0] sram_dout;
	wire [`DATAWIDTH-1:0] sram_dout;
	
	//////////////////////////
	// Module instances
	cpu CPU(.clk(clk), .rst(rst), .sram_dout(sram_dout), .rom_dout(rom_dout), .glyph_addr(16'd0),
			  .SRAM_CE(SRAM_CE), .SRAM_OE(SRAM_OE), .SRAM_WE(SRAM_WE), .ROM_CE(ROM_CE), .ROM_OE(ROM_OE), 
			  .alu_result(alu_result), .memc_din0(memc_din0), .rom_addr(rom_addr), .mem_addr(mem_addr));
	
	// Note: hard-coded values will be tied to Vdd/Gnd on PCB breakout board. 
	sram SRAM(.clk(clk), .CE(SRAM_CE), .OE(SRAM_OE), .WE(SRAM_WE), .LB(1'b0), .UB(1'b0), .addr(), .din(), .dout(sram_dout));

	// Note: hard-coded values will be tied to Vdd/Gnd on PCB breakout board. 
	rom ROM(.clk(clk), .CE(ROM_CE), .OE(ROM_OE), .addr(rom_addr), .dout(rom_dout));
	
	//////////////////////////
	// Things left to instantiate
	// 1. Memory Controller
	// 2. VGA Controller
	// 3. Audio Controller
	// 4. Serial ROM?
	// 
	
endmodule
