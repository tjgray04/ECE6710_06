`timescale 1ns / 1ps

module SampleFetcher
(
   input             clk,
   input             reset,
   input             trigger,
   input             lrclk,
   input       [7:0] spi_data,
   input             spi_data_ready,
   output     [23:0] spi_addr,
   output reg        start_read,
   output reg [10:0] sample_data
);

   reg [10:0] next_sample;
   
   wire [14:0] count_0;   
   assign spi_addr = { 9'b0, count_0 };

   AddressCounter addr_counter_0
   (
      .clk(clk),
      .reset(reset),
      .lrclk(lrclk),
      .count_reset(trigger),
      .count(count_0)
   );

   parameter RESET = 3'd0;
   parameter IDLE  = 3'd1;
   parameter FETCH = 3'd2;
   parameter WAIT  = 3'd3;
   parameter ACCUM = 3'd4;
   parameter WAIT2 = 3'd5;

   reg [2:0] state;
   always@(posedge clk) begin
      start_read  <= 1'b0;
      sample_data <= sample_data;
      next_sample <= next_sample;
      if (reset) begin
         state       <= RESET;
         sample_data <= 11'b0;
      end
      else begin
         case (state)
            RESET : begin
               state <= IDLE;
            end
            IDLE : begin
               if (lrclk) begin
                  state <= IDLE;
               end
               else begin
                  sample_data <= next_sample;
                  next_sample <= 11'b0;
                  state <= FETCH;
               end
            end
            FETCH : begin
               state      <= WAIT;
               start_read <= 1'b1;
            end
            WAIT : begin
               if (spi_data_ready) begin
                  state <= ACCUM;
               end
               else begin
                  state <= WAIT;
               end
            end
            ACCUM : begin
               state       <= WAIT2;
               next_sample <= $signed(next_sample) + $signed(spi_data);
            end
            WAIT2 : begin
               if (~lrclk) begin
                  state <= WAIT2;
               end
               else begin
                  state <= IDLE;
               end
            end
            default : begin
               state <= RESET;
            end
         endcase
      end
   end

endmodule // SampleFetcher

module AddressCounter
(
   input             clk,
   input             reset,
   input             lrclk,
   input             count_reset,
   output reg [14:0] count
);
   
   localparam [14:0] SAMPLE_COUNT = 15'd32767;
   
   // generate a pulse for every low-to-high transition of the LR clock
   reg a, b;
   wire lr_trig = a & ~b;
   always@(posedge clk) begin
      a <= lrclk;
      b <= a;
   end

   parameter RESET = 2'd0;
   parameter IDLE  = 2'd1;
   parameter COUNT = 2'd2;
   parameter DONE  = 2'd3;
   
   reg [1:0] state;
   always@(posedge clk) begin
      if (reset) begin
         state <= RESET;
         count <= 15'd0;
      end
      else if (count_reset) begin
         state <= COUNT;
         count <= 15'd0;
      end
      else begin
         case (state)
            RESET : begin
               state <= IDLE;
               count <= 15'd0;
            end
            IDLE : begin
               state <= IDLE;
               count <= 15'd0;
            end
            COUNT : begin
               if (count == SAMPLE_COUNT) begin
                  state <= IDLE;
                  count <= 15'd0;
               end
               else begin
                  state <= COUNT;
                  if (lr_trig)
                     count <= count + 1'b1;
                  else
                     count <= count;
               end
            end
            default : begin
               state <= IDLE;
               count <= 15'd0;
            end
         endcase
      end
   end

endmodule // AddressCounter
