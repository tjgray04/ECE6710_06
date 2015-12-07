`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////

module ClockGenerator
(
   input  clk_in,
   input  reset,
   output clk_out_0,  // LRCLK
   output clk_out_1   // SCLK
);

   localparam [8:0] comp_val_0 = 9'd383;
   localparam [3:0] comp_val_1 = 4'd11;

   // I2S Left-Right Clock Divider
   ClockDivider #( .COUNT_WIDTH(9) ) clk_div_0	
	(
      .clk_in   (clk_in),
      .reset    (reset),
      .comp_val (comp_val_0),
      .clk_out  (clk_out_0)
   );

   // I2S Serial Clock Divider
   ClockDivider #( .COUNT_WIDTH(4) ) clk_div_1
	(
      .clk_in   (clk_in),
      .reset    (reset),
      .comp_val (comp_val_1),
      .clk_out  (clk_out_1)
   );

endmodule // ClockGenerator

//////////////////////////////////////////////////////////////////////////////////

module ClockDivider
#(
	parameter COUNT_WIDTH = 9
)
(
   input                       clk_in,
   input                       reset,
   input [COUNT_WIDTH - 1 : 0] comp_val,
   output reg                  clk_out
);

   reg [COUNT_WIDTH - 1 : 0] div_count;

   always @(posedge clk_in) begin
      if (reset) begin
         div_count <= 0;
         clk_out   <= 0;
      end
      else if (div_count < comp_val) begin
         div_count <= div_count + 1'b1;
         clk_out   <= clk_out;
      end
      else begin
         div_count <= 0;
         clk_out   <= ~clk_out;
      end
   end

endmodule // ClockDivider

//////////////////////////////////////////////////////////////////////////////////
