`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:22:55 11/20/2015 
// Design Name: 
// Module Name:    tribuf16 
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
module tribuf16
	(input en,
	 input [`DATAWIDTH-1:0] din,
	 output [`DATAWIDTH-1:0] dout);

	tribuf _tb0 (.din(din[0]), .en(en), .dout(dout[0]));
	tribuf _tb1 (.din(din[1]), .en(en), .dout(dout[1]));
	tribuf _tb2 (.din(din[2]), .en(en), .dout(dout[2]));
	tribuf _tb3 (.din(din[3]), .en(en), .dout(dout[3]));
	tribuf _tb4 (.din(din[4]), .en(en), .dout(dout[4]));
	tribuf _tb5 (.din(din[5]), .en(en), .dout(dout[5]));
	tribuf _tb6 (.din(din[6]), .en(en), .dout(dout[6]));
	tribuf _tb7 (.din(din[7]), .en(en), .dout(dout[7]));
	tribuf _tb8 (.din(din[8]), .en(en), .dout(dout[8]));
	tribuf _tb9 (.din(din[9]), .en(en), .dout(dout[9]));
	tribuf _tb10(.din(din[10]), .en(en), .dout(dout[10]));
	tribuf _tb11(.din(din[11]), .en(en), .dout(dout[11]));
	tribuf _tb12(.din(din[12]), .en(en), .dout(dout[12]));
	tribuf _tb13(.din(din[13]), .en(en), .dout(dout[13]));
	tribuf _tb14(.din(din[14]), .en(en), .dout(dout[14]));
	tribuf _tb15(.din(din[15]), .en(en), .dout(dout[15]));

endmodule
