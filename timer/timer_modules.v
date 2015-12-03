`timescale 1ns / 1ps

module Timer_100us(
  input             clk,
  input             reset,  
  input             read,
  output reg [15:0] count_out
  );

  reg [15:0] count = 0;
  reg [10:0] ticks = 0;
  reg tock;
  
  always @(posedge clk) begin
    if (read)
      count_out <= count;
    else
      count_out <= count_out;
  end
  
  // generate a tock pulse every 100us
  always @(posedge clk) begin
    tock <= 0;
    if (reset)
      ticks <= 0;
    else if (ticks < 1249)  // NOTE: 1250 ticks is 100us @ 12.5Mhz
      ticks <= ticks + 1'b1;
    else begin
      ticks <= 0;
      tock  <= 1;
    end      
  end
  
  // count the number of tocks, using wrap-around addition
  always @(posedge tock) begin
    if (reset)
      count <= 0;
    else
      count <= count + 1'b1;      
  end

endmodule
