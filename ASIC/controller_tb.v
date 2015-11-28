`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:57:43 11/28/2015
// Design Name:   controller
// Module Name:   C:/Users/Steve Brown/Utah/Fall 2015/ECE 6710/Team Project/GIT/ASIC/controller_tb.v
// Project Name:  ASIC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module controller_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [4:0] psr;
	reg [15:0] inst;

	// Outputs
	wire BRANCH;
	wire JUMP;
	wire ROM_MUX;
	wire MEMC_MUX;
	wire VGA_BUF;
	wire IMM_MUX;
	wire PSR_EN;
	wire PC_EN;
	wire WRITE;
	wire COND_RSLT;
	wire [2:0] WB_MUX;
	wire [3:0] rDst;
	wire [3:0] rSrc;
	wire [7:0] imm_val;
	wire [4:0] ALU_OP;

	// Instantiate the Unit Under Test (UUT)
	controller uut (
		.clk(clk), 
		.rst(rst), 
		.psr(psr), 
		.inst(inst), 
		.BRANCH(BRANCH), 
		.JUMP(JUMP), 
		.ROM_MUX(ROM_MUX), 
		.MEMC_MUX(MEMC_MUX), 
		.VGA_BUF(VGA_BUF), 
		.IMM_MUX(IMM_MUX), 
		.PSR_EN(PSR_EN), 
		.PC_EN(PC_EN), 
		.WRITE(WRITE), 
		.COND_RSLT(COND_RSLT), 
		.WB_MUX(WB_MUX), 
		.rDst(rDst), 
		.rSrc(rSrc), 
		.imm_val(imm_val), 
		.ALU_OP(ALU_OP)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		psr = 0;
		inst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

