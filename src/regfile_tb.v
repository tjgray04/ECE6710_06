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
	integer i,j;
	
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
		clk = 1;
		write = 0;
		rSrc = 4'b0;
		rDst = 4'b0;
		pc = 16'h0;
		write_data = 16'h0;

		$display("Start simulation...");
		
		// Wait 100 ns for global reset to finish
		#100;
		for(j = 0; j < 16; j = j + 1)begin
			#10;
			write_data = j;
			pc = ~j;
			write = 1;
			
			// Initialize all the registers to zero
			for(i = 0; i < 16; i = i + 1) begin
				#10;
				rDst = i;
			end
			
			// Now read from all the registers and make sure they are zero
			#10;
			write = 0;
			#50;
			for(i = 0; i < 16; i = i + 1) begin
				#10;
				rDst = i;
				rSrc = ~i;
				#10;
				// Check dDst
				if(rDst == 0)
					if(dDst != 0) $display("ERR0R @ time %d: dDst = %b, should be %b. rDst = %b.", $time, dDst, 0, rDst);
				else if(rDst == 15)
					if(dDst != pc) $display("ERR0R @ time %d: dDst = %b, should be %b. rDst = %b.", $time, dDst, pc, rDst);
				else
					if(dDst != write_data) $display("ERR0R @ time %d: dDst = %b, should be %b. rDst = %b.", $time, dDst, write_data, rDst);
				
				// Check dSrc
				if(rSrc == 0)
					if(dSrc != 0) $display("ERR0R @ time %d: dSrc = %b, should be %b. rSrc = %b.", $time, dSrc, 0, rSrc);
				else if(rSrc == 15)
					if(dSrc != pc) $display("ERR0R @ time %d: dSrc = %b, should be %b. rSrc = %b.", $time, dSrc, pc, rSrc);
				else
					if(dSrc != write_data) $display("ERR0R @ time %d: dSrc = %b, should be %b. rSrc = %b.", $time, dSrc, write_data, rSrc);
			end // k
		end // j
					
		$display("Simulation finished.");
		$finish(2);
	end
      
	always #5 clk = ~clk;

endmodule