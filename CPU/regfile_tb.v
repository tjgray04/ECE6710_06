`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:38:46 11/20/2015
// Design Name:   regfile
// Module Name:   C:/Users/Steve Brown/Utah/Fall 2015/ECE 6710/Team Project/GIT/CPU/regfile_tb.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: regfile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module regfile_tb;

	// Inputs
	reg clk;
	reg write;
	reg [3:0] rSrc;
	reg [3:0] rDst;
	reg [15:0] pc;
	reg [15:0] write_data;

	// Outputs
	wire [15:0] dSrc;
	wire [15:0] dDst;

	// Integer
	integer i;
	
	// Instantiate the Unit Under Test (UUT)
	regfile uut (
		.clk(clk), 
		.write(write), 
		.rSrc(rSrc), 
		.rDst(rDst), 
		.pc(pc), 
		.write_data(write_data), 
		.dSrc(dSrc), 
		.dDst(dDst)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		write = 0;
		rSrc = 0;
		rDst = 0;
		pc = 0;
		write_data = 16'hff;

		$display("Start simulation...");
		
		// Wait 100 ns for global reset to finish
		#95;
		
      // Write into regfile first
		#10 write = 1;
		for(i = 0; i < 2**4; i = i + 1) begin
			#10
			rDst = i; 
		end
		
		// Read from regfile
		#20 write = 0;
		for(i = 0; i < 2**4; i = i + 1) begin
			#10;
			rDst = i; 
			rSrc = ~i;
			if(dDst != write_data) $display("ERROR @ time %d: dDst is %b, should be %b. rDst is %d", $time, dDst, write_data, rDst);
			if(dSrc != write_data) $display("ERROR @ time %d: dSrc is %b, should be %b. rSrc is %d", $time, dSrc, write_data, rSrc);
		end
		
		// Write into regfile
		#10 write = 1;
		write_data = 0;
		for(i = 0; i < 2**4; i = i + 1) begin
			#20;
			rDst = i; 
		end
		
		// reset registers
		rDst = 0;
		rSrc = 0;
		
		// Read from regfile
		#10 write = 0; 
		for(i = 0; i < 2**4; i = i + 1) begin
			rDst = i; 
			rSrc = ~i;
			#20;
			if(dDst != write_data) $display("ERROR @ time %d: dDst is %b, should be %b. rDst is %d", $time, dDst, write_data, rDst);
			if(dSrc != write_data) $display("ERROR @ time %d: dSrc is %b, should be %b. rSrc is %d", $time, dSrc, write_data, rSrc);
		end
		
		$display("Simulation finished.");
		$finish(2);
	end
      
	always #5 clk = ~clk;
		
endmodule

