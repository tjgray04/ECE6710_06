`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:28:19 11/25/2015 
// Design Name: 
// Module Name:    pc 
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

module pc
	(input clk, rst, branch, jump, pcEn,
	 input [`IMMWIDTH-1:0] disp,
	 input [`DATAWIDTH-1:0] dSrc,
	 output [`DATAWIDTH-1:0] pc_ra,
	 output reg [`DATAWIDTH-1:0] pc);

	wire signed [`DATAWIDTH-1:0] bmux_out, pc_next;
	
	always@(posedge clk, negedge rst) begin
		if(!rst)
			pc <= 0;
		else if(pcEn)
			pc <= pc_next;
      else
         pc <= pc;
	end

	// Sign extend the displacement if branching => 8-bit branch [-127,127]
	assign bmux_out = (branch) ? {{8{disp[`IMMWIDTH-1]}},disp} : 16'd1;
	
	// Add the dispalcement
	assign pc_ra = pc + bmux_out;
	
	// Consider jumps
	assign pc_next = (jump) ? dSrc : pc_ra;

endmodule
