`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:38:05 12/07/2015 
// Design Name: 
// Module Name:    arbiter 
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

module arbiter
   (input clk, rst,
    output reg [2:0] count);
   
   always@(posedge clk) begin
      if(!rst)
         count <= 0;
      else // Count will roll over every 8 cycles.
         count <= count + 1;
   end

endmodule
