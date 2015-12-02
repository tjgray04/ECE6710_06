`timescale 1ns / 1ps

module vga_controller(
  input         clock,
  input   [7:0] mem_data,
  output [10:0] mem_addr,
  output        h_sync, v_sync,
  output  [7:0] rgb
  );

  wire [9:0] h_count, v_count;
  wire [7:0] pixel_data;
  wire [6:0] glyph_num;
  wire invert, enable;

  assign glyph_num = mem_data[6:0];
  assign    invert = mem_data[7];  // <-- setting the MSB of the glyph address enables inversion

  // timegen generates the VGA timing pulses, and determines the coordinates
  // of the pixel that is currently being sent to the display.
  vga_timegen timegen(clock, enable, h_sync, v_sync, bright, h_count, v_count);

  // addrgen determines which glyph address in the 40x30 display grid needs
  // to be fetched from block RAM, based on the horizontal and vertical position
  vga_addrgen addrgen(clock, h_count[9:4], v_count[8:4], mem_addr);

  // pixgen contains the glyph ROM, and outputs the byte for the current
  // row of the current glyph, based on the glyph number and row number.
  vga_pixgen pixgen(clock, enable, v_count[3:1], glyph_num, pixel_data);

  // bitgen generates the RGB output based on the pixel_data output from pixgen.
  // bitgen will swap the 'on' and 'off' colors if the invert signal is asserted.
  vga_bitgen bitgen(clock, bright, invert, pixel_data, h_count[3:0], rgb);

endmodule

module vga_timegen(
  input  clock,
  output reg enable = 0,
  output h_sync, v_sync, bright,
  output [9:0] h_count, v_count
  );

  // reg enable = 0;
  reg [1:0] ticks = 0;

  // Derive a 25Mhz pulse to enable the counters.
  // Enable is latched on the falling edge of the clock to account
  // for the setup and hold times of downstream modules.
  always @(negedge clock) begin
    enable <= 0;
    if (ticks < 3)
      ticks <= ticks + 1'b1;
    else begin
      ticks  <= 1'b0;
      enable <= 1'b1;
    end
  end

  reg [9:0] h_ticks = 0, v_ticks = 0;

  // Count 800 horizontal ticks and 521 vertical ticks.
  always @(posedge clock) begin
    if (enable) begin
      if (h_ticks < 799)
        h_ticks <= h_ticks + 1'b1;
      else begin
        h_ticks <= 0;
        if (v_ticks < 520)
          v_ticks <= v_ticks + 1'b1;
        else
          v_ticks <= 0;
      end
    end
    else begin
      h_ticks <= h_ticks;
      v_ticks <= v_ticks;
    end
  end

  // Derive the pixel counts and sync signals from the horizontal and vertical positions.
  assign h_count = (h_ticks >= 144 && h_ticks < 784) ? h_ticks - 8'd144 : 1'b0;
  assign v_count = (v_ticks >= 31  && v_ticks < 511) ? v_ticks - 5'd31 : 1'b0;
  assign h_sync  = (h_ticks < 96) ? 1'b0 : 1'b1;
  assign v_sync  = (v_ticks < 2)  ? 1'b0 : 1'b1;
  assign bright  = (h_ticks >= 144 && h_ticks < 785 && v_ticks >= 31  && v_ticks < 511) ? 1'b1 : 1'b0;

endmodule

module vga_pixgen(
  input        clock,
  input        enable,
  input  [2:0] row, // <-- based on v_count
  input  [6:0] glyph_num,
  output [7:0] pixel_data
  );

  wire [9:0] rom_address;
  assign rom_address = (glyph_num * 4'd8) + row;

  glyph_rom rom(clock, enable, rom_address, pixel_data);

endmodule

module vga_bitgen(
  input            clk,
  input            bright,
  input            invert,
  input      [7:0] pixel_data,
  input      [3:0] index, // <-- based on h_count
  output reg [7:0] rgb
  );

  parameter black = 8'b000_000_00;
  parameter white = 8'b111_111_11;
  parameter red   = 8'b111_000_00;
  parameter green = 8'b000_111_00;
  parameter blue  = 8'b000_000_11;

  wire [7:0] on_color, off_color;
  assign on_color  = invert ? blue  : white;
  assign off_color = invert ? white : blue;

  // Latch the RGB data on the falling edge of the clock
  // to account for the setup time of the glyph ROM.
  always @(posedge clk) begin
    if (bright)
      if (pixel_data[((index - 1'b1) / 2'd2) % 4'd8]) // <-- weird indexing due to pixel doubling
        rgb <= on_color;
      else
        rgb <= off_color;
    else
      rgb <= black;
  end

endmodule

module vga_addrgen(
  input             clk,
  input       [5:0] col, // <-- based on h_count
  input       [4:0] row, // <-- based on v_count
  output reg [10:0] mem_addr
  );

  // The screen is 40 glyphs wide, so we need to multiply
  // row by 40 to get the right index.  Pointer math, yo.
  always @(posedge clk) begin
    mem_addr <= (row * 6'd40) + col;
  end

endmodule
