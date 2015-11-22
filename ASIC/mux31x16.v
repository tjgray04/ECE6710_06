`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:59:14 11/21/2015 
// Design Name: 
// Module Name:    mux_bus2regfile 
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
module mux31x16
	(input [1:0] cntrl,
	 input [`DATAWIDTH-1:0] arg1,
	 input [`DATAWIDTH-1:0] arg2,
	 input [`DATAWIDTH-1:0] arg3,
    output reg [`DATAWIDTH-1:0] dout
	 );
	 
	always@(*) begin
		case(cntrl)
			2'b01: dout = arg2;
			2'b10: dout = arg3;
			default: dout = arg1;
		endcase
	end

endmodule
