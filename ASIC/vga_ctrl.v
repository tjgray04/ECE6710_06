`timescale 1ns / 1ps

`include "defines.v"

module vga_ctrl
   (input  clk, rst,
    input  [2:0] acnt,                       // Arbiter clock count
    input  [`DATAWIDTH-1:0] glyph_num,       // glyph number from frame buffer in SRAM
    input  [`DATAWIDTH-1:0] glyph_pixels,    // glyph pixel information from ROM
    output h_sync, v_sync,                   // VGA sync pulse signals 
    output [7:0] rgb,                        // 8-bit RGB value
    output reg [`DATAWIDTH-1:0] glyph_addr); // frame buffer/glyph library address

   wire [8:0] h_pixel;
   wire [7:0] v_pixel;
   wire [`DATAWIDTH-1:0] sram_addr, rom_addr;
   
   // timegen generates the VGA timing pulses, and determines the coordinates
   // of the pixel that is currently being sent to the display.
   vga_timegen TimeGen(.clk(clk), .rst(rst), .h_sync(h_sync), .v_sync(v_sync), .bright(bright), 
                       .h_pixel(h_pixel), .v_pixel(v_pixel));

   // addrgen determines which glyph address in the 40x30 display grid needs
   // to be fetched from block RAM, based on the horizontal and vertical position
   vga_FBaddr FrameBufAddr(.col(h_pixel[8:4]), .row(v_pixel[7:3]), .sram_addr(sram_addr));

   // pixgen contains the glyph ROM, and outputs the byte for the current
   // row of the current glyph, based on the glyph number and row number.
   vga_GLaddr GlyphLibAddr(.col(h_pixel[3]), .row(v_pixel[2:0]), .glyph(glyph_num), .rom_addr(rom_addr));

   // bitgen generates the RGB output based on the pixel_data output from pixgen.
   // bitgen will swap the 'on' and 'off' colors if the invert signal is asserted.
   vga_bitgen Bitgen(.bright(bright), .pixel_data(glyph_pixels), .h_pixel(h_pixel[2:0]), .rgb(rgb));

   // Assign memory address depending on current clock cycle
   always@(posedge clk) begin
      case(acnt)
         3'd0: glyph_addr = sram_addr;
         3'd1: glyph_addr = rom_addr;
         default: glyph_addr = glyph_addr;
      endcase
   end

endmodule

///
/// Counting clock ticks (h_count) and horizontal lines (v_count)
///
module vga_timegen
   (input clk, rst,
    output h_sync, v_sync, bright,
    output [8:0] h_pixel, // pixel counts
    output [7:0] v_pixel);  

   reg [8:0] h_ticks;
   reg [9:0] v_ticks;
   
   // Count 400 horizontal ticks and 521 vertical ticks.
   always @(posedge clk) begin
      if(!rst) begin
         h_ticks <= 0;
         v_ticks <= 0;
      end
      else if (h_ticks < `hMAX - 1) begin
         h_ticks <= h_ticks + 1'b1;
         v_ticks <= v_ticks;
      end
      else begin
         h_ticks <= 0;
         if (v_ticks < `vMAX - 1)
            v_ticks <= v_ticks + 1'b1;
         else
            v_ticks <= 0;
      end
   end

   wire [8:0] temp_v_pixel;
   
   // Derive the pixel counts and sync signals from the horizontal and vertical positions.
   assign h_pixel = (h_ticks >= (`hpw + `hbp) && h_ticks < (`hMAX - `hfp)) ? (h_ticks - (`hpw + `hbp)) : 1'b0;
   assign temp_v_pixel = (v_ticks >= (`vpw + `vbp) && v_ticks < (`vMAX - `vfp)) ? (v_ticks - (`vpw + `vbp)) : 1'b0;
   assign v_pixel = temp_v_pixel >> 1;
   assign h_sync  = (h_ticks < `hpw) ? 1'b0 : 1'b1;
   assign v_sync  = (v_ticks < `vpw) ? 1'b0 : 1'b1;
   assign bright  = (h_ticks >= (`hpw + `hbp) && h_ticks < (`hMAX - `hfp) && v_ticks >= (`vpw + `vbp) && v_ticks < (`vMAX - `vfp)) ? 1'b1 : 1'b0;

endmodule

///
/// Calculates frame buffer address
///
module vga_FBaddr
   (input [4:0] col, // <-- based on h_pixel
    input [4:0] row, // <-- based on v_pixel
    output [`ROM_ADDR_BITS-1:0] sram_addr); // address to SRAM to access frame buffer

   // The screen is 40 glyphs wide, so we need to multiply
   // row by 40 to get the right index.   Pointer math, yo.
   assign sram_addr = (row * 5'd20) + col + `FRAMEBUF;

endmodule

///
/// Gets pixel data from ROM
///
module vga_GLaddr
   (input  col,                 // <-- based on h_pixel
    input  [2:0] row,           // <-- based on v_pixel
    input  [`DATAWIDTH-1:0] glyph,     // one of 256 glyphs
    output [`DATAWIDTH-1:0] rom_addr);   // pixel data for entire horizontal row (8 pixels)

   wire [(`DATAWIDTH/2)-1:0] glyph_num = col ? glyph[`DATAWIDTH-1:(`DATAWIDTH/2)] : glyph[(`DATAWIDTH/2)-1:0];
   
   assign rom_addr = {5'b0, glyph_num, row};

endmodule

///
/// Generates RGB value based on current pixel
///
module vga_bitgen
   (input  bright,
    input [`DATAWIDTH-1:0] pixel_data,
    input [2:0] h_pixel,
    output reg [7:0] rgb);
   
   reg[7:0] temp_rgb;
   
   always@(*) begin
      case(h_pixel)
         3'd0: temp_rgb = (bright) ? pixel_data[1:0] : 2'b0;
         3'd1: temp_rgb = (bright) ? pixel_data[3:2] : 2'b0;
         3'd2: temp_rgb = (bright) ? pixel_data[5:4] : 2'b0; 
         3'd3: temp_rgb = (bright) ? pixel_data[7:6] : 2'b0;
         3'd4: temp_rgb = (bright) ? pixel_data[9:8] : 2'b0;
         3'd5: temp_rgb = (bright) ? pixel_data[11:10] : 2'b0;
         3'd6: temp_rgb = (bright) ? pixel_data[13:12] : 2'b0;
         3'd7: temp_rgb = (bright) ? pixel_data[15:14] : 2'b0;
         default: temp_rgb = 2'b0;
      endcase
   end
   
   always@(*) begin
      case(temp_rgb)
         2'd0: rgb = 8'b111_000_00; // RED
         2'd1: rgb = 8'b000_111_00; // GREEN
         2'd2: rgb = 8'b000_000_11; // BLUE
         2'd3: rgb = 8'b111_111_11; // WHITE
         default: rgb = 8'b000_000_00; // BLACK -- should never get here
      endcase
   end
  
endmodule
