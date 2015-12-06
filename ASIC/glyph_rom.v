`timescale 1ns / 1ps

`include "defines.v"

module glyph_rom
   (input clk,
    input enable,
    input [`DATAWIDTH-1:0] rom_address,
    output reg [`DATAWIDTH-1:0]  rom_out);
  
  //(* ROM_STYLE="DISTRIBUTED" *)
  reg [`DATAWIDTH-1:0] rom_core [(2**`ROM_ADDR_BITS)-1:0];

  initial
    $readmemb("glyphs.dat", rom_core, 10'd0, 10'd1023);

  always @(posedge clk)
    if (enable)
      rom_out <= rom_core[rom_address];
    else
      rom_out <= rom_out;

endmodule
