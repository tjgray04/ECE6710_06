`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:21:03 11/20/2015 
// Design Name: 
// Module Name:    tribuf 
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
module tribuf
	(input din, 
	 input en,
    output dout);

	assign dout = en ? din : 1'bz;

endmodule