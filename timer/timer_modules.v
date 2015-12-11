`timescale 1ns / 1ps

module Timer_100us
(
   input             clk,
   input             reset,
   input             read,
   output reg [15:0] count_out
);

   // 1250 cycles is 100us @ 12.5MHz
   localparam TICKCOUNT = 1249;
   
   // system reset is active low
   wire inv_reset = ~reset;

   // increments every 100us, wraparound behavior
   reg [15:0] count = 0;

   // counts down the number of clock cycles until the next count increment
   reg [10:0] ticks = 0;

   // latch the count data to hold it stable during reads
   always @(posedge clk) begin
      if (read)
         count_out <= count;
      else
         count_out <= count_out;
   end

   // counter block
   always @(posedge clk) begin
      if (reset) begin
         ticks <= TICKCOUNT;
         count <= 0;
      end
      else if (ticks == 11'd0) begin
         ticks <= TICKCOUNT;
         count <= count + 1'b1;
      end
      else begin
         ticks <= ticks - 1'b1;
         count <= count;
      end
   end

endmodule
