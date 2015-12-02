`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:49:40 12/01/2015
// Design Name:   rom
// Module Name:   C:/Users/Steve Brown/Utah/Fall 2015/ECE 6710/Team Project/GIT/ASIC/rom_tb.v
// Project Name:  ASIC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rom
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`include "defines.v"

module rom_tb;

	// Inputs
	reg clk;
	reg CE;
	reg OE;
	reg [15:0] addr;

	// Outputs
	wire [15:0] dout;

	// Internal registers
	reg rst;
	
	// FSM parameters
	reg [4:0] ps, ns;
	
	// Parameters
	parameter 	s0 = 5'h0, // 
					s1 = 5'h1, // 
					s2 = 5'h2, // 
					s3 = 5'h3, // 
					s4 = 5'h4, // 
					s5 = 5'h5, //  
					s6 = 5'h6, //  
					s7 = 5'h7, // 
					s8 = 5'h8, // 
					s9 = 5'h9, // 
					s10 = 5'ha, // 
					s11 = 5'hb, // 
					s12 = 5'hc, // 
					s13 = 5'hd, // 
					s14 = 5'he, // 
					s15 = 5'hf, //
					s16 = 5'h10, // 
					s17 = 5'h11, // 
					s18 = 5'h12, //
					s19 = 5'h13, // 
					s20 = 5'h14; //
	// Register Parameters
	parameter 	r0 = 4'h0,
					r1 = 4'h1,
					r2 = 4'h2,
					r3 = 4'h3,
					r4 = 4'h4,
					r5 = 4'h5, 
					r6 = 4'h6;
					
	// Integers
	integer i;
	
	// Instantiate the Unit Under Test (UUT)
	rom uut (
		.clk(clk), 
		.CE(CE), 
		.OE(OE), 
		.addr(addr), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		CE = 1;
		OE = 1;
		addr = 0;

		// Wait 100 ns for global reset to finish
		$display("BEGINNING SIMULATION");
		#100;
		// Add stimulus here
		rst = 1;
		CE = 0;
		OE = 0;
		#5;
		for(i = 0; i < 176; i = i + 1) begin
			case(ps)
				s1: // MOV R1, R0
					begin
						if(dout != {`RTYPE, r1, `MOV, r0}) 	$display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s1, dout, {`RTYPE, r1, `MOV, r0});
					end
				s2: // MOV R2, R0
					begin
						if(dout != {`RTYPE, r2, `MOV, r0}) 	$display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s2, dout, {`RTYPE, r2, `MOV, r0});
					end
				s3: // ADDI R1, 64
					begin
						if(dout != {`ADDI, r1, 8'h40}) 	$display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s3, dout, {`ADDI, r1, 8'h40});
					end
				s4: // ADDI R2, 14
					begin
						if(dout != {`ADDI, r2, 8'h0e}) 	$display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s4, dout, {`ADDI, r2, 8'h0e});
					end
				s5: // MOV R3, R0
					begin
						if(dout != {`RTYPE, r3, `MOV, r0}) 	$display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s5, dout, {`RTYPE, r3, `MOV, r0});
					end
				s6: // MOV R4, R0
					begin
						if(dout != {`RTYPE, r4, `MOV, r0}) 	$display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s6, dout, {`RTYPE, r4, `MOV, r0});
					end
				s7: // ADDI R3, 1
					begin
						if(dout != {`ADDI, r3, 8'h01}) 	$display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s7, dout, {`ADDI, r3, 8'h01});
					end
				s8: // ADDI R4, -1
					begin
						if(dout != {`ADDI, r4, 8'hff}) 	$display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s8, dout, {`ADDI, r4, 8'hff});
					end
				s9: // LOOP: CMP  R2, R0
					begin
						if(dout != {`RTYPE, r2, `CMP, r0}) 	$display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s9, dout, {`RTYPE, r2, `CMP, r0});
					end
				s10: // BEQ, END
					begin
						if(dout != {`BCOND, `EQ, 8'd11}) 	$display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s10, dout, {`BCOND, `EQ, 8'd11});
					end
				s11: // ADD R4, R3
					begin
						if(dout != {`RTYPE, r4, `ADD, r3}) 	$display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s11, dout, {`RTYPE, r4, `ADD, r3});
					end
				s12: // MOV R5, R4
					begin
						if(dout != {`RTYPE, r5, `MOV, r4}) 	$display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s12, dout, {`RTYPE, r5, `MOV, r4});
					end
				s13: // MOV R4, R3
					begin
						if(dout != {`RTYPE, r4, `MOV, r3}) 	$display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s13, dout, {`RTYPE, r4, `MOV, r3});
					end
				s14: // MOV R3, R5
					begin
						if(dout != {`RTYPE, r3, `MOV, r5}) 	$display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s14, dout, {`RTYPE, r3, `MOV, r5});
					end
				s15: // STOR R4, R1
					begin
						if(dout != {`OTYPE, r5, `STOR, r1}) 	$display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s15, dout, {`OTYPE, r5, `STOR, r1});
					end
				s16: // ADDI R1, 1
					begin
						if(dout != {`ADDI, r1, 8'h01}) 	$display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s16, dout, {`ADDI, r1, 8'h01});
					end
				s17: // ADDI R2, -1
					begin
						if(dout != {`ADDI, r2, 8'hff}) 	$display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s17, dout, {`ADDI, r2, 8'hff});
					end
				s18: // MOV R6, R0	
					begin
						if(dout != {`RTYPE, r6, `MOV, r0}) 	$display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s18, dout, {`RTYPE, r6, `MOV, r0});
					end
				s19: // ADDI R6, 8
					begin
						if(dout != {`ADDI, r6, 8'h08}) 	$display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s19, dout, {`ADDI, r6, 8'h08});
					end
				s20: // JUC LOOP
					begin
						if(dout != {`OTYPE, `UC, `JCOND, r6}) 	$display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s20, dout, {`OTYPE, `UC, `JCOND, r6});
					end
				//s0: #10;// END
				default: ;
			endcase
			#50;
		end

		$display("SIMULATION FINISHED.");
		$finish(2);
	end
   
	always #5 clk = ~clk;
	
		// Present state
	always@(dout, negedge rst) begin
		if(!rst)
			ps <= s0;
		else
			ps <= ns;
	end
	
	// Next state logic
	always@(ps) begin
		case(ps)
			s0: ns = s1;
			s1: ns = s2;
			s2: ns = s3;
			s3: ns = s4;
			s4: ns = s5;
			s5: ns = s6;
			s6: ns = s7;
			s7: ns = s8;
			s8: ns = s9;
			s9: ns = s10;
			s10: ns = s11;
			s11: ns = s12;
			s12: ns = s13;
			s13: ns = s14;
			s14: ns = s15;
			s15: ns = s16;
			s16: ns = s17;
			s17: ns = s18;
			s18: ns = s19;
			s19: ns = s8;
			s20: ns = s0;
			default:  ns = s0;
		endcase
	end
	
	// Output Logic
	always@(ps) begin
		addr = 16'b0;
		case(ps)
			s0: // MOV R1, R0
				begin
					addr = 16'd0;
				end
			s1: // MOV R2, R0
				begin
					addr = 16'd1;
				end
			s2: // ADDI R1, 64
				begin
					addr = 16'd2;
				end
			s3: // ADDI R2, 14
				begin
					addr = 16'd3;
				end
			s4: // MOV R3, R0
				begin
					addr = 16'd4;
				end
			s5: // MOV R4, R0
				begin
					addr = 16'd5;
				end
			s6: // ADDI R3, 1
				begin
					addr = 16'd6;
				end
			s7: // ADDI R4, -1
				begin
					addr = 16'd7;
				end
			s8: // LOOP: CMP  R2, R0
				begin
					addr = 16'd8;
				end
			s9: // BEQ, END
				begin
					addr = 16'd9;
				end
			s10: // ADD R4, R3 
				begin
					addr = 16'd10;
				end
			s11: // MOV R5, R4
				begin
					addr = 16'd11;
				end
			s12: // MOV R4, R3
				begin
					addr = 16'd12;
				end
			s13: // MOV R3, R5
				begin
					addr = 16'd13;
				end
			s14: // STOR R5, R1
				begin
					addr = 16'd14;
				end
			s15: // ADDI R1, 1
				begin
					addr = 16'd15;
				end
			s16: // ADDI R2, -1
				begin
					addr = 16'd16;
				end
			s17: // MOV R6, R0
				begin
					addr = 16'd17;
				end	
			s18: // ADDI R6, 8
				begin
					addr = 16'd18;
				end	
			s19: // JUC LOOP
				begin
					addr = 16'd19;
				end	
			s20: // END
				begin
					addr = 16'd20;
				end				
			default: 
				begin
					addr = 16'd0;
				end
		endcase
	end
		
endmodule

