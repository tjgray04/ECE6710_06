`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:33:00 12/15/2015 
// Design Name: 
// Module Name:    TESS_top 
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

module TESS_top
   (input clk,
    input rst,
    
    // CPU Inputs/Outputs
    input [15:0] dDst,           // Data input from desitination register
    input [15:0] dSrc,           // Data input from source register
    input [15:0] EXT_MEM_DATA,   // Data from the SRAM/ROM chips
    output ps,                   // Present State bit ouput to chip pad
    output CE,                   // Chip enable output for SRAM
    output OE,                   // Output enable ouptut for SRAM
    output WE,                   // Write enable output for SRAM
    output ROM_CE,               // Chip enable output for ROM
    output ROM_OE,               // Output enable output for ROM
    output write,                // Write enable for Regfile    
    output [3:0] rDst,           // Destination register for Regfile
    output [3:0] rSrc,           // Source register for Regfile
    output [4:0] psr,            // Program Status Register output to chip pads
    output [15:0] wb_data,       // Data to write back to registers
    output [15:0] EXT_MEM_ADDR,  // Address for memory chips
    output [15:0] DOUT_SRAM,     // Data to write to SRAM
    
    // Peripherials Inputs/Outputs
    input [1:0] CTRLR_DATA,      // Data from SNES controllers
    output CLK_PULSE,            // Pluse output for controllers
    output CTRLR_LATCH,          // Latch ouptut for controllers
    
    // SamplePlayer Inputs/Outputs
    input SPI_MISO,              // SPI input from serial ROM
    output i2s_mclk,             // Master clock for audio DAC
    output i2s_lrclk,            // Left/Right clock for audio DAC
    output i2s_sclk,             // Sample clock for audio DAC
    output i2s_sdata,            // Slave data from auido DAC
    output SPI_CE,               // SPI chip enable for serial ROM
    output SPI_CLK,              // SPI clock for serial ROM
    output SPI_MOSI,             // SPI output to serial ROM

    // VGA_CTRL Inputs/Outputs
    output hSync,                // Hrizontal sync pin
    output vSync,                // Vertical sync pin
    output [1:0] RGB             // Red/Green/Blue output for VGA
    );
   
   //////////////////////////
	// INTERNAL BUSES
   // CPU -> PERIPHERALS/SAMPLE PLAYER/VGA_CTRL
   wire timer_re;
   wire [15:0] din_timer;
   wire ctrlr_re;
   wire [1:0] addr_ctrlr;
   wire [11:0] din_ctrlrs; 
   wire audio_we;
   wire [1:0] addr_audio;
   wire [2:0] acnt;
   wire [15:0] dmem;
   wire [15:0] glyph_addr;
   
	//////////////////////////
	// CPU
   cpu CPU
   (.clk(clk),                   // System clock
    .rst(rst),                   // Active low reset 
    .EXT_MEM_DATA(EXT_MEM_DATA), // data from external memory
    .glyph_addr(glyph_addr),     // Address for accessing glyph in ROM
    .dDst(dDst),                 // Destination register data
    .dSrc(dSrc),                 // Source register data
    .din_ctrlrs(din_ctrlrs),     // Data in from SNES Controllers
    .din_timer(din_timer),       // Data in from Timmer
    .ps(ps),                     // Present Sate bit
    .CE(CE),                     // Chip enable for SRAM chip
    .OE(OE),                     // Output enable for SRAM chip
    .WE(WE),                     // Write enable for SRAM chip
    .ROM_CE(ROM_CE),             // Chip enable for ROM chip
    .ROM_OE(ROM_OE),             // Output enable for ROM chip
    .write(write),               // Control signal for write back to the reg file
    .ctrlr_re(ctrlr_re),         // Control signal for reading from SNES controller
    .audio_we(audio_we),         // Write signal for audio peripherial
    .timer_re(timer_re),         // Reading from timer peripherial
    .addr_ctrlr(addr_ctrlr),     // Address for SNES controller
    .addr_audio(addr_audio),     // Address for Audio register
    .acnt(acnt),                 // Arbiter count
    .psr(psr),                   // Program Status Register
    .rDst(rDst), .rSrc(rSrc),    // Registers in regfile  
    .wb_data(wb_data),           // Data to be written back to register file
    .DOUT_SRAM(DOUT_SRAM),       // Output data to the SRAM
    .EXT_MEM_ADDR(EXT_MEM_ADDR), // Address for external memory
    .dmem(dmem)                  // Output data from memory controller
    );
    
   /////////////////////////
   // VGA
   vga_ctrl VGA
   (.clk(clk), 
    .rst(rst),
    .acnt(acnt),                 // Arbiter clock count
    .glyph_num(dmem),            // glyph number from frame buffer in SRAM
    .glyph_pixels(EXT_MEM_DATA), // glyph pixel information from ROM
    .h_sync(hSync), 
    .v_sync(vSync),              // VGA sync pulse signals 
    .rgb(RGB),                   // 8-bit RGB value
    .glyph_addr(glyph_addr)      // frame buffer/glyph library address
   );
   
   /////////////////////////
   // SAMPLE PLAYER
   SamplePlayer SAMPLE_PLAYER
   (.clk(clk),
    .reset(rst),
    .read_enable(audio_we),
    .read_addr(addr_audio),
    .i2s_mclk(i2s_mclk),
    .i2s_lrclk(i2s_lrclk),
    .i2s_sclk(i2s_sclk),
    .i2s_sdata(i2s_sdata),
    .spi_miso(SPI_MISO),
    .spi_mosi(SPI_MOSI),
    .spi_clk(SPI_CLK),
    .spi_ce_n(SPI_CE)
   );
   
   
   /////////////////////////
   // PERIPHERALS
   peripherals PERIPHERALS
   (//Timer
    .clk(clk), .rst(rst),
    .read(timer_re),
    .count_out(din_timer),
    //SNES
    .read_enable(ctrlr_re),
    .address(addr_ctrlr),
    .snes_data(CTRLR_DATA),
    .snes_latch(CTRLR_LATCH),
    .snes_pulse(CLK_PULSE),
    .read_data(din_ctrlrs)
   );
   
endmodule
