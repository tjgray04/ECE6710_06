`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:34:35 11/20/2015
// Design Name:   reg_alu
// Module Name:   C:/Users/Steve Brown/Utah/Fall 2015/ECE 6710/Team Project/GIT/CPU/reg_alu_tb.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: reg_alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`include "defines.v"

module reg_alu_tb;

	// Inputs
	reg clk;
	reg write;
	reg IMM_MUX;
	reg [3:0] rSrc;
	reg [3:0] rDst;
	reg [4:0] aluOp;
	reg [15:0] pc;
	reg [15:0] imm;
	reg [15:0] mem_data;

	// Outputs
	wire [15:0] dSrc;
	wire [15:0] dDst;
	wire [4:0] psrOut;

	// Instantiate the Unit Under Test (UUT)
	reg_alu uut (
		.clk(clk), 
		.write(write), 
		.IMM_MUX(IMM_MUX), 
		.rSrc(rSrc), 
		.rDst(rDst), 
		.aluOp(aluOp), 
		.pc(pc), 
		.imm(imm), 
		.mem_data(mem_data), 
		.dSrc(dSrc), 
		.dDst(dDst), 
		.psrOut(psrOut)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		write = 0;
		IMM_MUX = 0;
		rSrc = 0;
		rDst = 0;
		aluOp = 0;
		pc = 0;
		imm = 0;
		mem_data = 0;
		
		$display("BEGINNING SIMULATION...");
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		aluOp = `ALUOp_ADD;
		
		#10;
		// Close simulation
		$display("SIMULATION FINISHED");
		$finish(2);
	end
   
	always #5 clk = ~clk;
endmodule
