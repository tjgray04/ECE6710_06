`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:14:50 11/20/2015
// Design Name:   alu
// Module Name:   C:/Users/Steve Brown/Utah/Fall 2015/ECE 6710/Team Project/GIT/CPU/alu_tb.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`include "defines.v"

module alu_tb;

	// Inputs
	reg [`DATAWIDTH-1:0] rSrc;
	reg [`DATAWIDTH-1:0] rDst;
	reg [`ALUOPWIDTH-1:0] opCode;

	// Outputs
	wire [`PRSWIDTH-1:0] psrOut;
	wire [`DATAWIDTH-1:0] result;

	// Integer
	integer i,j,k;
	
	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.rSrc(rSrc), 
		.rDst(rDst), 
		.opCode(opCode), 
		.psrOut(psrOut), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		rSrc = 0;
		rDst = 0;
		opCode = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		$display("Starting simulation....");
		
		// Add stimulus here
		for(i = 0; i < 2**`DATAWIDTH; i = i + 1) begin
			for(j = 2**`DATAWIDTH-1; j >= 0; j = j - 1) begin
				for(k = 0; k < 2**`ALUOPWIDTH; k = k + 1) begin
					rDst = i[`DATAWIDTH-1:0];
					rSrc = j[`DATAWIDTH-1:0];
					opCode = k[`ALUOPWIDTH-1:0];
					#10;
					case(opCode)
						`ALUOp_ADD: 	if(result != ($signed(rDst) + $signed(rSrc))) $display("ERROR: On ADD at time %d. Result = %d, should be %d", $time, result, ($signed(rDst) + $signed(rSrc)));
						`ALUOp_ADDU: 	if(result != (rDst + rSrc)) $display("ERROR: On ADDU at time %d. Result = %d, should be %d", $time, result, (rDst + rSrc));
						`ALUOp_SUB:		if(result != ($signed(rDst) - $signed(rSrc))) $display("ERROR: On SUB at time %d. Result = %d, should be %d", $time, result, ($signed(rDst) - $signed(rSrc)));
						`ALUOp_AND: 	if(result != (rDst & rSrc)) $display("ERROR: On AND at time %d. Result = %b, should be %b. rDst = %b and rSrc = %b", $time, result, (rDst & rSrc),rDst,rSrc);
						`ALUOp_OR: 		if(result != (rDst | rSrc)) $display("ERROR: On OR at time %d. Result = %b, should be %b. rDst = %b and rSrc = %b", $time, result, (rDst | rSrc),rDst,rSrc);
						`ALUOp_XOR: 	if(result != (rDst ^ rSrc)) $display("ERROR: On XOR at time %d. Result = %b, should be %b. rDst = %b and rSrc = %b", $time, result, (rDst ^ rSrc),rDst,rSrc);
						`ALUOp_SLL:		if(result != (rDst << rSrc[`REGWIDTH-1:0])) $display("ERROR: On SLL at time %d. Result = %d, should be %d", $time, result, (rDst << rSrc[`REGWIDTH-1:0]));
						`ALUOp_SRL:		if(result != (rDst >> rSrc[`REGWIDTH-1:0])) $display("ERROR: On SRL at time %d. Result = %d, should be %d", $time, result, (rDst >> rSrc[`REGWIDTH-1:0]));
						`ALUOp_SLA:		if(result != (rDst <<< rSrc[`REGWIDTH-1:0])) $display("ERROR: On SLA at time %d. Result = %d, should be %d", $time, result, (rDst <<< rSrc[`REGWIDTH-1:0]));
						`ALUOp_SRA:		if(result != (rDst >>> rSrc[`REGWIDTH-1:0])) $display("ERROR: On SRA at time %d. Result = %d, should be %d", $time, result, (rDst >>> rSrc[`REGWIDTH-1:0]));
						`ALUOp_LUI:		if(result != {rSrc[`IMMSIZE-1:0], rDst[`IMMSIZE-1:0]}) $display("ERROR: On LUI at time %d. Result = %d, should be %d", $time, result, ({rSrc[`IMMSIZE-1:0], rDst[`IMMSIZE-1:0]}));
						`ALUOp_MOV:		if(result != rSrc) $display("ERROR: On MOV at time %d. Result = %d, should be %d", $time, result, rSrc);
						 default:		if(result != 0) $display("ERROR: On default at time %d. Result = %d, should be %d", $time, result, 0);
					endcase
				end // k
			end // j
		end // i
		$display("Simulation finished.");
		$finish(2);
	end // initial
      
endmodule