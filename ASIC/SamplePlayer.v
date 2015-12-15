`timescale 1ns / 1ps

module SamplePlayer(
   input        clk,
   input        reset,
   input        read_enable,
   input  [1:0] read_addr,
   output       i2s_mclk,
   output       i2s_lrclk,
   output       i2s_sclk,
   output       i2s_sdata,
   input        spi_miso,
   output       spi_mosi,
   output       spi_clk,
   output       spi_ce_n
);
   
   wire        spi_start_read;
   wire        spi_data_ready;
   wire  [7:0] spi_data;
   wire [23:0] spi_addr;
   wire [10:0] sample_data;
   
   // internal trigger signals
   wire trig_0 = read_enable & (read_addr == 2'd0);
   wire trig_1 = read_enable & (read_addr == 2'd1);;
   wire trig_2 = read_enable & (read_addr == 2'd2);;
   wire trig_3 = read_enable & (read_addr == 2'd3);;
   
   assign i2s_mclk = clk;
   
   // system reset is active low
   wire inv_reset = ~reset;
   
   ClockGenerator clkgen_0
   (
      .clk_in(clk),
      .reset(reset),
      .clk_out_0(i2s_lrclk),
      .clk_out_1(i2s_sclk)
   );
   
   SpiInterface spi_0
   (
      .clk_in(clk),
      .reset(reset),
      .start_read(spi_start_read),
      .read_addr(spi_addr),
      .miso(spi_miso),
      .mosi(spi_mosi),
      .ce_n(spi_ce_n),
      .sclk(spi_clk),
      .data_ready(spi_data_ready),
      .spi_data(spi_data)
   );
   
   SampleFetcher sample_fetcher_0
   (
      .clk(clk),
      .reset(reset),
      .trigger_0(trig_0),
      .trigger_1(trig_1),
      .trigger_2(trig_2),
      .trigger_3(trig_3),
      .lrclk(i2s_lrclk),
      .spi_data(spi_data),
      .spi_ce_n(spi_ce_n),
      .spi_addr(spi_addr),
      .start_read(spi_start_read),
      .sample_data(sample_data)
   );
   
   I2sInterface i2s_0
   (
      .clk(clk),
      .reset(reset),
      .lrclk(i2s_lrclk),
      .sclk(i2s_sclk),
      .sample_data(sample_data),
      .data_out(i2s_sdata)  
   );

endmodule // SamplePlayer
