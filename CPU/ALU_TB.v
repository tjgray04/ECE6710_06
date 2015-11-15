`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:42:28 11/14/2015
// Design Name:   ALU
// Module Name:   C:/Users/Steve Brown/Utah/Fall 2015/ECE 6710/Team Project/GIT/CPU/ALU_TB.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_TB;
		
	// Inputs
	reg reset;
	reg [15:0] arg1;
	reg [15:0] arg2;
	reg [2:0] aluop;

	// Outputs
	wire [15:0] result;
	wire [4:0] PSRwrite;

	// Integers
	integer i;
	
	// Parameters
	parameter ADD = 3'b000,
			 SUB = 3'b001,
			 OR  = 3'b010,
			 AND = 3'b011,
			 XOR = 3'b100,
			 NOT = 3'b101,
			 MULT= 3'b110,
			 CMP = 3'b111;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.reset(reset), 
		.arg1(arg1), 
		.arg2(arg2), 
		.aluop(aluop), 
		.result(result), 
		.PSRwrite(PSRwrite)
	);

	initial begin
		// Initialize Inputs
		reset = 0;
		arg1 = 0;
		arg2 = 0;
		aluop = 0;

		// Wait 100 ns for global reset to finish
		#10;
      $display("Beginning simulation...");
		// Add stimulus here
		for(i = 0; i < 2**20; i = i + 1) begin
			{aluop,arg1} = i;
			arg2 = i[19:4];
			case(aluop)
				 ADD : if(result != arg1+arg2)
							$display("ERROR! Result = %d, but should equal %d",result,arg1+arg2);
						
				 SUB :
				 OR  :
				 AND :
				 XOR :
				 NOT :
				 MULT:
				 CMP :
			
		end
		
	end
      
endmodule

