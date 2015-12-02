`timescale 1ns / 1ps

module glyph_rom(
  input            clk,
  input            enable,
  input      [9:0] rom_address,
  output reg [7:0] rom_out = 0
  );

  parameter ROM_WIDTH = 8;
  parameter ROM_ADDR_BITS = 10; // should equal 1024 8-bit words

  (* ROM_STYLE="DISTRIBUTED" *)
  reg [ROM_WIDTH-1:0] rom_core [(2**ROM_ADDR_BITS)-1:0];

  initial
    $readmemb("glyphs.dat", rom_core, 10'd0, 10'd1023);

  always @(posedge clk)
    if (enable)
      rom_out <= rom_core[rom_address];

endmodule
