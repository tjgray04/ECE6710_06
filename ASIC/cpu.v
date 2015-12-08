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
   (input clk,                               // System clock
    input rst,                               // Active low reset 
    input [`DATAWIDTH-1:0] EXT_MEM_DATA,     // data from external memory
    input [`DATAWIDTH-1:0] glyph_addr,       // Address for accessing glyph in ROM
    input [`DATAWIDTH-1:0] dDst,             // Destination register data
    input [`DATAWIDTH-1:0] dSrc,             // Source register data
    output CE,                               // Chip enable for SRAM chip
    output OE,                               // Output enable for SRAM chip
    output WE,                               // Write enable for SRAM chip
    output ROM_CE,                           // Chip enable for ROM chip
    output ROM_OE,                           // Output enable for ROM chip
    output write,                            // Control signal for write back to the reg file
    output ctrlr_re,                         // Control signal for reading from SNES controller
    output audio_we,                         // Write signal for audio peripherial
    output timer_re,                         // Reading from timer peripherial
    output [1:0] addr_ctrlr,                 // Address for SNES controller
    output [1:0] addr_audio,                 // Address for Audio register
    output [2:0] acnt,                       // Arbiter count
    output [`REGWIDTH-1:0] rDst, rSrc,       // Registers in regfile  
    output [`DATAWIDTH-1:0] wb_data,         // Data to be written back to register file
    output [`DATAWIDTH-1:0] memc_din0,       // Data to memory controller from cpu
    output [`DATAWIDTH-1:0] DOUT_SRAM,       // Output data to the SRAM
    output [`DATAWIDTH-1:0] EXT_MEM_ADDR,    // Address for external memory
    output [`DATAWIDTH-1:0] dmem);           // Output data from memory controller

   // Internal Buses
   wire [`PRSWIDTH-1:0] psr;              // Program Status Register
   wire [1:0] wb_mux;                     // Mux that controls what is written back to regfile   
   wire [`IMMWIDTH-1:0] imm;              // Immediate value
   wire [`ALUOPWIDTH-1:0] alu_op;         // ALU operation code
   wire [`DATAWIDTH-1:0] pc_ra;           // Return address
   wire [`DATAWIDTH-1:0] pc;              // Program counter
   wire [`DATAWIDTH-1:0] mem_addr;        // Output of mux determining address from CPU or VGA
   wire [`DATAWIDTH-1:0] rom_addr;        // Output of mux determining address from PC or VGA
   
      
   ///////////////////////////
   // Module instances
   
   // Logic Controller
   controller LogicCtrl (.clk(clk), .rst(rst), .psr_in(psr), .instruction(dmem), .acnt(acnt), .BRANCH(branch), .JUMP(jump),
                         .ROM_MUX(rom_mux), .MEMC_MUX(memc_mux), .IMM_MUX(imm_mux), .PC_EN(pc_en), .WRITE(write),
                         .SRAM_CE(SRAM_CE), .SRAM_OE(SRAM_OE), .SRAM_WE(SRAM_WE), .ROM_CE(ROM_CE), .ROM_OE(ROM_OE),       
                         .COND_RSLT(cond_rslt), .WB_MUX0(WB_MUX0), .WB_MUX(wb_mux), .rDst(rDst), .rSrc(rSrc),
                         .imm_val(imm), .ALU_OP(alu_op));
   // Program Counter
   pc PrgmCount (.clk(clk), .rst(rst), .branch(branch), .jump(jump), .pcEn(pc_en), .disp(imm), .dSrc(dSrc), 
                 .pc_ra(pc_ra), .pc(pc));
   
   // ALU Datapath module
   reg_alu Execute (.IMM_MUX(imm_mux), .COND_RSLT(cond_rslt), .WB_MUX0(WB_MUX0), .WB_MUX(wb_mux), 
                    .aluOp(alu_op), .drom(dmem), .pc_ra(pc_ra), .imm_in(imm), .mem_data(dmem),
                    .dSrc(dSrc), .dDst(dDst), .wb_data(wb_data), .psrOut(psr));
   
   // Memory Controller
   mem_ctrl MEM_CTRL(.SRAM_CE(SRAM_CE), .SRAM_OE(SRAM_OE), .SRAM_WE(SRAM_WE), .ROM_CE(ROM_CE), .ROM_OE(ROM_OE), .din_cpu(dDst), 
                     .din_ctrlrs(16'd0), .din_timer(16'd0), .addrin_cpu(mem_addr), .EXT_MEM_DATA(EXT_MEM_DATA), .rom_addr(rom_addr), .CE(CE), 
                     .OE(OE), .WE(WE), .ctrlr_re(ctrlr_re), .audio_we(audio_we), .timer_re(timer_re), 
                     .addr_ctrlr(addr_ctrlr), .addr_audio(addr_audio), .DOUT_SRAM(DOUT_SRAM), .EXT_MEM_ADDR(EXT_MEM_ADDR), .dmem(dmem));
   
   // Arbiter
   arbiter Arbiter(.clk(clk), .rst(rst), .count(acnt));
   
   // ROM Address mux
   assign rom_addr = (rom_mux) ? mem_addr : pc;
   
   // Memory Controller mux
   assign mem_addr = (memc_mux) ? dSrc : glyph_addr;
   
   // Assign the din0 for memory controller
   assign memc_din0 = dDst;
   
endmodule

///
/// Arbiter to schedule memory access between CPU and VGA
///
module arbiter
   (input clk, rst,
    output reg [2:0] count);
   
   always@(posedge clk) begin
      if(!rst)
         count <= 0;
      else // Count will roll over every 8 cycles.
         count <= count + 1;
   end

endmodule
