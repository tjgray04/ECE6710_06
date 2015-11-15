`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:50:20 10/02/2014 
// Design Name: 
// Module Name:    ALU 
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
//				IF ISSUES, CHECK THE LATCHES CREATED IN CASE STATEMENT
//
//////////////////////////////////////////////////////////////////////////////////
/* ARITHMETIC LOGIC UNIT - ALU
*	input: reset, global reset from top module
*	input: arg1, comes from the Rs register from the RegFile
*	input: arg2, from mux determining input from Rt of RegFile, or [WIDTH-1:0] immediate value
*	input: aluop, from Logic Controller
*	output: result, output from the ALU
*	output: PSRwrite, Program Status Register determined by ALU operation 
*/
module ALU#(parameter ALUOPBITS = 3, REGBITS = 5, WIDTH = 16)(
	 input reset,
    input [WIDTH-1:0] arg1,
    input [WIDTH-1:0] arg2,
	 input [ALUOPBITS-1:0] aluop,
    output reg [WIDTH-1:0] result,
    output reg [REGBITS-1:0] PSRwrite
    );

	//Parameters
	parameter ADD = 3'b000,
				 SUB = 3'b001,
				 OR  = 3'b010,
				 AND = 3'b011,
				 XOR = 3'b100,
				 NOT = 3'b101,
				 MULT= 3'b110,
				 CMP = 3'b111;

	//Adder
	wire [WIDTH:0] sum;
	assign sum = arg1 + arg2;
	
	//Addition overflow checker
	wire Fadd;
	assign Fadd = (arg1[WIDTH-1] & arg2[WIDTH-1]) ^ sum[WIDTH-1];
	
	//Subtractor
	wire [WIDTH-1:0] diff;
	wire Z;
	assign diff = $signed(arg1) - $signed(arg2);
	// for compare, set the Z flag high if the difference is zero
	assign Z = diff ? 1'b0 : 1'b1;
	
	//Subtraction overflow checker
	wire Fsub;
	assign Fsub = (arg1[WIDTH-1] & ~arg2[WIDTH-1] & ~sum[WIDTH-1]) + (~arg1[WIDTH-1] & arg2[WIDTH-1] & sum[WIDTH-1]);
	
	//Unsigned Comparator
	wire L;
	assign L = (arg1 < arg2);
	
	//Signed Comparator
	wire N;
	assign N = ($signed(arg1) < $signed(arg2));
	
	//ALU behavior
	always@(*)
	begin
		if(reset)
		begin
			PSRwrite = 5'b0;
			result = sum[WIDTH-1:0];
		end
		else
		begin
			case(aluop)
						// PSRwrite[4:0] = {C,L,F,Z,N}
				ADD:  begin
						result = sum[WIDTH-1:0];
						PSRwrite = {sum[WIDTH],1'b0,Fadd,2'b00};
						end
				SUB:  begin
						result = diff;
						PSRwrite = {(~arg1[WIDTH-1] & arg2[WIDTH-1]),1'b0,Fsub,2'b00};
						end
				OR:  begin
						result = arg1 | arg2;
						PSRwrite = 5'b0;
						end
				AND:  begin
						result = arg1 & arg2;
						PSRwrite = 5'b0;
						end
				XOR:  begin
						result = arg1 ^ arg2;
						PSRwrite = 5'b0;
						end
				NOT:  begin
						result = ~arg1;
						PSRwrite = 5'b0;
						end
				MULT: begin
						result = ($signed(arg1) * $signed(arg2));
						PSRwrite = 5'b0;
						end
				CMP:  begin
						result = diff;
						PSRwrite = {1'b0,L,1'b0,Z,N};
						end
			default: begin
						result = sum[WIDTH-1:0];
						PSRwrite = 5'b0;
						end
			endcase
		end
	end
				 
	
endmodule
