`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:27:50 11/25/2015
// Design Name:   pc
// Module Name:   C:/Users/Steve Brown/Utah/Fall 2015/ECE 6710/Team Project/GIT/ASIC/pc_tb.v
// Project Name:  ASIC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`include "defines.v"

module pc_tb;

	// Inputs
	reg clk;
	reg rst;
	reg branch;
	reg jump;
	reg pcEn;
	reg [7:0] disp;
	reg [15:0] dSrc;

	// Outputs
	wire [15:0] pc_ra;
	wire [15:0] pc;
	
	// FSM parameters
	reg [3:0] ps, ns;

	// Parameters
	parameter 	s0 = 4'h0, // AND r1, 0
					s1 = 4'h1, // AND r2, 0
					s2 = 4'h2, // ADDI r1, 10
					s3 = 4'h3, // LUI r2, 255
					s4 = 4'h4, // STOR r1, r2 -- r1 = datain, r2 = addr
					s5 = 4'h5, // LOAD r3, r2 -- r3 = memdata, r2 = addr 
					s6 = 4'h6, // CMP r1, r3
					s7 = 4'h7, // Bcond - check flags
					s8 = 4'h8, // 
					s9 = 4'h9, // 
					s10 = 4'ha, // 
					s11 = 4'hb, // 
					s12 = 4'hc, // 
					s13 = 4'hd, // 
					s14 = 4'he, // 
					s15 = 4'hf; // LSH
	
	// Integers
	integer i;
	
	// Instantiate the Unit Under Test (UUT)
	pc uut (
		.clk(clk), 
		.rst(rst), 
		.branch(branch), 
		.jump(jump), 
		.pcEn(pcEn), 
		.disp(disp), 
		.dSrc(dSrc), 
		.pc_ra(pc_ra),
		.pc(pc)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 0;
		branch = 0;
		jump = 0;
		pcEn = 0;
		disp = 0;
		dSrc = 0;

		// Wait 100 ns for global reset to finish
		#90;
		$display("SIMULATION BEGINNING...");
      rst = 1; 
		#10; 
		// Add stimulus here
		for(i = 0; i < 32; i = i + 1) begin
			// add a wait time
			#5;
			case(ps)
				s0: // increment by 1
					begin
						if(pc != 16'h0000) $display("ERROR @ time %d in state %d: pc = %h, but should be %h.", $time, ps, pc, 16'h0000);
						if(pc_ra != 16'h0001) $display("ERROR @ time %d in state %d: pc_ra = %h, but should be %h.", $time, ps, pc_ra, 16'h0001);
					end
				s1: //branch by +127
					begin
						if(pc != 16'd1) $display("ERROR @ time %d in state %d: pc = %h, but should be %h.", $time, ps, pc, 16'd1);
						if(pc_ra != ($signed(pc) + $signed({{8{disp[`IMMWIDTH-1]}},disp}))) $display("ERROR @ time %d in state %d: pc_ra = %h, but should be %h.", $time, ps, pc_ra, ($signed(pc) + $signed({{8{disp[`IMMWIDTH-1]}},disp})));
					end
				s2: //branch by -127
					begin
						if(pc != 16'd128) $display("ERROR @ time %d in state %d: pc = %h, but should be %h.", $time, ps, pc, 16'd128);
						if(pc_ra != ($signed(pc) + $signed({{8{disp[`IMMWIDTH-1]}},disp}))) $display("ERROR @ time %d in state %d: pc_ra = %h, but should be %h.", $time, ps, pc_ra, ($signed(pc) + $signed({{8{disp[`IMMWIDTH-1]}},disp})));
					end
				s3: // jump to 0
					begin
						if(pc != 16'h0001) $display("ERROR @ time %d in state %d: pc = %h, but should be %h.", $time, ps, pc, 16'h0001);
						if(pc_ra != 16'd2) $display("ERROR @ time %d in state %d: pc_ra = %h, but should be %h.", $time, ps, pc_ra, 16'h0002);
					end
				s4: // jump to 0x8000
					begin
						if(pc != 16'h0000) $display("ERROR @ time %d in state %d: pc = %h, but should be %h.", $time, ps, pc, 16'h0000);
						if(pc_ra != 16'd1) $display("ERROR @ time %d in state %d: pc_ra = %h, but should be %h.", $time, ps, pc_ra, 16'h0001);
					end
				s5: // disable pcEn
					begin
						if(pc != 16'h8000) $display("ERROR @ time %d in state %d: pc = %h, but should be %h.", $time, ps, pc, 16'h8000);
						if(pc_ra != 16'h8001) $display("ERROR @ time %d in state %d: pc_ra = %h, but should be %h.", $time, ps, pc_ra, 16'h8001);
					end
				s6: // jal to 0xffff 
					begin
						if(pc != 16'h8000) $display("ERROR @ time %d in state %d: pc = %h, but should be %h.", $time, ps, pc, 16'h8000);
						if(pc_ra != 16'h8001) $display("ERROR @ time %d in state %d: pc_ra = %h, but should be %h.", $time, ps, pc_ra, 16'h8001);
					end
				s7: // jump to ra
					begin
						if(pc != 16'hffff) $display("ERROR @ time %d in state %d: pc = %h, but should be %h.", $time, ps, pc, 16'hffff);
						if(pc_ra != 16'd0) $display("ERROR @ time %d in state %d: pc_ra = %h, but should be %h.", $time, ps, pc_ra, 16'h0000);
					end
				s8: // jump to 0x0000
					begin
						if(pc != 16'h8001) $display("ERROR @ time %d in state %d: pc = %h, but should be %h.", $time, ps, pc, 16'h8001);
						if(pc_ra != 16'h8002) $display("ERROR @ time %d in state %d: pc_ra = %h, but should be %h.", $time, ps, pc_ra, 16'h8002);
					end
				//-------- PC disabled for remaining states ----------------//
				s9: 
					begin
						if(pc != 16'h0000) $display("ERROR @ time %d in state %d: pc = %h, but should be %h.", $time, ps, pc, 16'h0000);
						if(pc_ra != 16'h0001) $display("ERROR @ time %d in state %d: pc_ra = %h, but should be %h.", $time, ps, pc_ra, 16'h0001);
					end
				s10: 
					begin
						if(pc != 16'h0000) $display("ERROR @ time %d in state %d: pc = %h, but should be %h.", $time, ps, pc, 16'h0000);
						if(pc_ra != 16'h0001) $display("ERROR @ time %d in state %d: pc_ra = %h, but should be %h.", $time, ps, pc_ra, 16'h0001);
					end
				s11: 
					begin
						if(pc != 16'h0000) $display("ERROR @ time %d in state %d: pc = %h, but should be %h.", $time, ps, pc, 16'h0000);
						if(pc_ra != 16'h0001) $display("ERROR @ time %d in state %d: pc_ra = %h, but should be %h.", $time, ps, pc_ra, 16'h0001);
					end
				s12: 
					begin
						if(pc != 16'h0000) $display("ERROR @ time %d in state %d: pc = %h, but should be %h.", $time, ps, pc, 16'h0000);
						if(pc_ra != 16'h0001) $display("ERROR @ time %d in state %d: pc_ra = %h, but should be %h.", $time, ps, pc_ra, 16'h0001);
					end
				s13: 
					begin
						if(pc != 16'h0000) $display("ERROR @ time %d in state %d: pc = %h, but should be %h.", $time, ps, pc, 16'h0000);
						if(pc_ra != 16'h0001) $display("ERROR @ time %d in state %d: pc_ra = %h, but should be %h.", $time, ps, pc_ra, 16'h0001);
					end
				s14: 
					begin
						if(pc != 16'h0000) $display("ERROR @ time %d in state %d: pc = %h, but should be %h.", $time, ps, pc, 16'h0000);
						if(pc_ra != 16'h0001) $display("ERROR @ time %d in state %d: pc_ra = %h, but should be %h.", $time, ps, pc_ra, 16'h0001);
					end
				s15: 
					begin
						if(pc != 16'h0000) $display("ERROR @ time %d in state %d: pc = %h, but should be %h.", $time, ps, pc, 16'h0000);
						if(pc_ra != 16'h0001) $display("ERROR @ time %d in state %d: pc_ra = %h, but should be %h.", $time, ps, pc_ra, 16'h0001);
					end
				default: 
					begin
						if(pc != 16'h0000) $display("ERROR @ time %d in state %d: pc = %h, but should be %h.", $time, ps, pc, 16'h0000);
						if(pc_ra != 16'h0001) $display("ERROR @ time %d in state %d: pc_ra = %h, but should be %h.", $time, ps, pc_ra, 16'h0001);
					end
			endcase
			#5;
		end
		
		$display("SIMULATION FINISHED.");
		$finish(2);
	end
      
	always #5 clk = ~clk;
	
	//FSM to prove PC functionality
	always@(posedge clk) begin
		if(!rst)
			ps <= s0;
		else
			ps <= ns;
	end
	
	//NS block
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
			s15: ns = s0;
			default: ns = s0;
		endcase
	end
	
	//Output Logic
	always@(ps) begin
		//rst = 1;
		branch = 0;
		jump = 0;
		pcEn = 0;
		disp = 0;
		dSrc = 0;
		case(ps)
			s0: // increment by 1
				begin
					pcEn = 1;
				end
			s1: //branch by +127
				begin
					pcEn = 1;
					branch = 1;
					disp = 8'h7f;
				end
			s2: //branch by -127
				begin
					pcEn = 1;
					branch = 1;
					disp = 8'h81;
				end
			s3: // jump to 0
				begin
					pcEn = 1;
					jump = 1;
					dSrc = 16'd0;
				end
			s4: // jump to 0x8000
				begin
					pcEn = 1;
					jump = 1;
					dSrc = 16'h8000;
				end
			s5: // disable pcEn
				begin
				end
			s6: // jal to 0xffff 
				begin
					pcEn = 1;
					jump = 1;
					dSrc = 16'hffff;
				end
			s7: // jump to ra
				begin
					pcEn = 1;
					jump = 1;
					dSrc = 16'h8001;
				end
			s8: // jump to 0x0000
				begin
					pcEn = 1;
					jump = 1;
					dSrc = 16'd0;
				end
			s9: 
				begin
				end
			s10: 
				begin
				end
			s11: 
				begin
				end
			s12: 
				begin
				end
			s13: 
				begin
				end
			s14: 
				begin
				end
			s15: 
				begin
				end
			default: // jump back to zero
				begin
					pcEn = 1;
					jump = 1;
					dSrc = 16'd0;
				end
		endcase
	end
	
endmodule

