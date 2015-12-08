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
    output [`DATAWIDTH-1:0] dmem_out,
    output [`DATAWIDTH-1:0] rom_dout
    );
	 
	//////////////////////////
	// Internal buses
	wire [`DATAWIDTH-1:0] sram_dout;		// Data from SRAM feeds into both CPU and VGA controller
	wire [`DATAWIDTH-1:0] rom_dout;		// Data from ROM feeds into both CPU and VGA controller
	wire [`DATAWIDTH-1:0] glyph_addr;	// Address from VGA to ROM
	wire [`DATAWIDTH-1:0] alu_result;	// Result of ALU to feed into Audio Controller
	wire [`DATAWIDTH-1:0] din_cpu;		// Data that feeds into Memory Controller
	wire [`DATAWIDTH-1:0] rom_addr;		// Output address to ROM chip
	wire [`DATAWIDTH-1:0] mem_addr;		// Address that feeds into Memory Controller
	wire [`DATAWIDTH-1:0] dmem_out;     // Data out from the memory controller back into cpu/vga
	wire [`DATAWIDTH-1:0] dsram;        // Data from memory controller as data_in for SRAM
	wire [`DATAWIDTH-1:0] addr_sram;    // Address from memcory controller to addr for SRAM
	wire [1:0] addr_ctrlr;              // Address from mem controller to controller logic
	wire [1:0] addr_audio;              // Address from mem controller to audio logic   
	wire [`REGWIDTH-1:0] rDst, rSrc;    // Destination and Source register encodings
   wire [`DATAWIDTH-1:0] dDst, dSrc;   // Destination and Source register data
	wire [`DATAWIDTH-1:0] wb_data;      // Data to be written back to register file
   
   
   
//	wire [`DATAWIDTH-1:0] sram_dout;
	
	//////////////////////////
	// Module instances
   
   // TODO: memc_din0 should be renamed to din_cpu
   // TODO: GET RID OF alu_result
	cpu CPU(.clk(clk), .rst(rst), .sram_dout(dmem_out), .rom_dout(rom_dout), .glyph_addr(16'd0), .dDst(dDst), .dSrc(dSrc),
			  .SRAM_CE(SRAM_CE), .SRAM_OE(SRAM_OE), .SRAM_WE(SRAM_WE), .ROM_CE(ROM_CE), .ROM_OE(ROM_OE), 
			  .write(write), .acnt(acnt), .rDst(rDst), .rSrc(rSrc), .wb_data(wb_data), .memc_din0(din_cpu), .rom_addr(rom_addr), .mem_addr(mem_addr));
	
	// Note: hard-coded values will be tied to Vdd/Gnd on PCB breakout board. 
	sram SRAM(.clk(clk), .CE(CE), .OE(OE), .WE(WE), .LB(1'b0), .UB(1'b0), .addr(addr_sram), .din(dsram), .dout(sram_dout));

	// Note: hard-coded values will be tied to Vdd/Gnd on PCB breakout board. 
	rom ROM(.clk(clk), .CE(ROM_CE), .OE(ROM_OE), .addr(rom_addr), .dout(rom_dout));
	
   // Models register file outside of CPU (as with our ASIC)
   regfile RegFile(.clk(clk), .write(write), .rSrc(rSrc), .rDst(rDst), .write_data(wb_data), .dSrc(dSrc), .dDst(dDst));
   
	//////////////////////////////
	// Things left to instantiate
	// 1. Memory Controller -- DONE
	// 2. VGA Controller
	// 3. Audio Controller
	// 4. Serial ROM?
	// 5. SNES Controller Logic
   // 6. Timmer
   // 7. Arbiter
	
endmodule
