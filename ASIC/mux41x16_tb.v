`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:14:54 11/21/2015
// Design Name:   mux31x16
// Module Name:   C:/Users/Steve Brown/Utah/Fall 2015/ECE 6710/Team Project/GIT/ASIC/mux31x16_tb.v
// Project Name:  ASIC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux31x16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux41x16_tb;

	// Inputs
	reg [1:0] cntrl;
	reg [15:0] arg0;
	reg [15:0] arg1;
	reg [15:0] arg2;
	reg [15:0] arg3;

	// Outputs
	wire [15:0] dout;

	// Integer
	integer i;
	
	// Instantiate the Unit Under Test (UUT)
	mux41x16 uut (
		.cntrl(cntrl), 
		.arg0(arg0),
		.arg1(arg1), 
		.arg2(arg2), 
		.arg3(arg3), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		cntrl = 0;
		arg0 = 0;
		arg1 = 0;
		arg2 = 0;
		arg3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
      $display("BEGINNING SIMULATION...");
		// Add stimulus here
		for(i = 0; i < 2**16; i = i + 1) begin
			cntrl = i;
			arg0 = i >> 4;
			arg1 = i;
			arg2[15:8] = i;
			arg3 = i[15:8] >> 8;
			#10;
			case(cntrl)
				2'b00: if(dout != arg0) $display("ERROR @ time %d: dout is %h, but should be %h.", $time, dout,arg0);
				2'b01: if(dout != arg1) $display("ERROR @ time %d: dout is %h, but should be %h.", $time, dout,arg1);
				2'b10: if(dout != arg2) $display("ERROR @ time %d: dout is %h, but should be %h.", $time, dout,arg2);
				2'b11: if(dout != arg3) $display("ERROR @ time %d: dout is %h, but should be %h.", $time, dout,arg3);
				default: if(dout != 16'd0) $display("ERROR @ time %d: dout is %h, but should be %h.", $time, dout,16'd0);
			endcase
		end
		
		$display("SIMULATION FINISHED.");
		$finish(2);
	end
      
endmodule

