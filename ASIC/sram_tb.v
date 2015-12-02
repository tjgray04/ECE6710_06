`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:11:00 12/01/2015
// Design Name:   sram
// Module Name:   C:/Users/Steve Brown/Utah/Fall 2015/ECE 6710/Team Project/GIT/ASIC/sram_tb.v
// Project Name:  ASIC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sram
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`include "defines.v"

module sram_tb;

	// Inputs
	reg clk;
	reg CE;
	reg OE;
	reg WE;
	reg LB;
	reg UB;
	reg [15:0] addr;
	reg [15:0] din;	

	// Bidirs
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
					
	// Integers
	integer i;

	// Instantiate the Unit Under Test (UUT)
	sram uut (
		.clk(clk), 
		.CE(CE), 
		.OE(OE), 
		.WE(WE), 
		.LB(LB), 
		.UB(UB), 
		.addr(addr),
		.din(din),
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		CE = 1;
		OE = 1;
		WE = 1;
		LB = 1;
		UB = 1;
		addr = 0;
		din = 0;
		
		// Wait 100 ns for global reset to finish
		$display("BEGINNING SIMULATION...");
		#95;
      rst = 1; 
		
		// Add stimulus here
		CE = 0;
		OE = 0;
		LB = 0;
		UB = 0;

		for(i = 0; i < 32; i = i + 1) begin
			case(ps)
				s0: // STOR 0, 0
					begin
						if(addr != 16'd0) $display("ERROR @ time %d in state %d: addr is %h, but should be %h.", 	$time, s0, addr, 16'd0);
						if(din != 16'd0) $display("ERROR @ time %d in state %d: din is %h, but should be %h.", 	$time, s0, din, 16'd0);
						if(WE != 0) 		$display("ERROR @ time %d in state %d: WE is %h, but should be %h.", 	$time, s0, WE, 0);
					end
				s1: // STOR 10, 10
					begin
						if(addr != 16'd10) $display("ERROR @ time %d in state %d: addr is %h, but should be %h.", 	$time, s1, addr, 16'd10);
						if(din != 16'd10) $display("ERROR @ time %d in state %d: din is %h, but should be %h.", 	$time, s1, din, 16'd10);
						if(WE != 0) 		 $display("ERROR @ time %d in state %d: WE is %h, but should be %h.", $time, s1, WE, 0);
					end
				s2: // STOR 1234, 1234
					begin
						if(addr != 16'd1234) $display("ERROR @ time %d in state %d: addr is %h, but should be %h.", 	$time, s2, addr, 16'd1234);
						if(din != 16'd1234) $display("ERROR @ time %d in state %d: din is %h, but should be %h.", 	$time, s2, din, 16'd1234);
						if(WE != 0) 		 	$display("ERROR @ time %d in state %d: WE is %h, but should be %h.", 	$time, s2, WE, 0);
					end
				s3: // STOR 5678, 5678
					begin
						if(addr != 16'd5678) $display("ERROR @ time %d in state %d: addr is %h, but should be %h.", 	$time, s3, addr, 16'd5678);
						if(din != 16'd5678) $display("ERROR @ time %d in state %d: din is %h, but should be %h.", 	$time, s3, din, 16'd5678);
						if(WE != 0) 		 	$display("ERROR @ time %d in state %d: WE is %h, but should be %h.", 	$time, s3, WE, 0);
					end
				s4: // LOAD 0 
					begin
						if(addr != 16'd0) $display("ERROR @ time %d in state %d: addr is %h, but should be %h.", 	$time, s4, addr, 16'd0);
						if(WE != 1) 		$display("ERROR @ time %d in state %d: WE is %h, but should be %h.", 	$time, s4, WE, 1);
						// Add time delay for checking                                                                      
						if(dout != 16'd0) $display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s4, dout, 16'd0);
						
					end
				s5: // LOAD 10
					begin
						if(addr != 16'd10) 	$display("ERROR @ time %d in state %d: addr is %h, but should be %h.", 	$time, s5, addr, 16'd10);
						if(WE != 1) 		$display("ERROR @ time %d in state %d: WE is %h, but should be %h.", 	$time, s5, WE, 1);
						// Add time delay for checking                                                                      
						if(dout != 16'd10) 	$display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s5, dout, 16'd10);
					end
				s6: // LOAD 1234
					begin
						if(addr != 16'd1234) $display("ERROR @ time %d in state %d: addr is %h, but should be %h.", 	$time, s6, addr, 16'd1234);
						if(WE != 1) 			$display("ERROR @ time %d in state %d: WE is %h, but should be %h.", 	$time, s6, WE, 1);
						// Add time delay for checking                                                                          
						if(dout != 16'd1234) $display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s6, dout, 16'd1234);
					end
				s7: // LOAD 5678
					begin
						if(addr != 16'd5678) $display("ERROR @ time %d in state %d: addr is %h, but should be %h.", 	$time, s7, addr, 16'd5678);
						if(WE != 1) 			$display("ERROR @ time %d in state %d: WE is %h, but should be %h.", 	$time, s7, WE, 1);
						// Add time delay for checking                                                                          
						if(dout != 16'd5678) $display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s7, dout, 16'd5678);
					end
				s8: // STOR 0, 1234
					begin
						if(addr != 16'd1234) $display("ERROR @ time %d in state %d: addr is %h, but should be %h.", 	$time, s8, addr, 16'd1234);
						if(din != 16'd0) 	 $display("ERROR @ time %d in state %d: din is %h, but should be %h.", 	$time, s8, din, 16'd0);
						if(WE != 0) 		 $display("ERROR @ time %d in state %d: WE is %h, but should be %h.", 	$time, s8, WE, 0);
					end
				s9: // STOR 0xffff 5678
					begin
						if(addr != 16'd5678) $display("ERROR @ time %d in state %d: addr is %h, but should be %h.", 	$time, s9, addr, 16'd5678);
						if(din != 16'hffff) $display("ERROR @ time %d in state %d: din is %h, but should be %h.", 	$time, s9, din, 16'hffff);
						if(WE != 0) 		 	$display("ERROR @ time %d in state %d: WE is %h, but should be %h.", 	$time, s9, WE, 0);
					end
				s10: // LOAD 1234
					begin
						if(addr != 16'd1234)$display("ERROR @ time %d in state %d: addr is %h, but should be %h.", 	$time, s10, addr, 16'd1234);
						if(WE != 1) 		$display("ERROR @ time %d in state %d: WE is %h, but should be %h.", 	$time, s10, WE, 1);
						// Add time delay for checking                                                                       
						if(dout != 16'd0) 	$display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s10, dout, 16'd0);
					end
				s11: // LOAD 5678
					begin
						if(addr != 16'd5678) $display("ERROR @ time %d in state %d: addr is %h, but should be %h.", 	$time, s11, addr, 16'd5678);
						if(WE != 1) 			$display("ERROR @ time %d in state %d: WE is %h, but should be %h.", 	$time, s11, WE, 1);
						// Add time delay for checking                                                                           
						if(dout != 16'hffff) $display("ERROR @ time %d in state %d: dout is %h, but should be %h.", 	$time, s11, dout, 16'hffff);
					end
				s12: // STOR 0, 5678
					begin
						if(addr != 16'd5678) $display("ERROR @ time %d in state %d: addr is %h, but should be %h.", 	$time, s12, addr, 16'd5678);
						if(din != 16'd0) 	 $display("ERROR @ time %d in state %d: din is %h, but should be %h.", 	$time, s12, din, 16'd0);
						if(WE != 0) 		 $display("ERROR @ time %d in state %d: WE is %h, but should be %h.", 	$time, s12, WE, 0);
					end
				s13: // LOAD 5678
					begin
						if(addr != 16'd5678) $display("ERROR @ time %d in state %d: addr is %h, but should be %h.", 	$time, s13, addr, 16'd5678);
						if(WE != 1) 		 $display("ERROR @ time %d in state %d: WE is %h, but should be %h.", 	$time, s13, WE, 1);
						// Add time delay for checking                                                                           
						if(dout != 16'd0) 	 $display("ERROR @ time %d in state %d: dout is %h, but should be %h.", $time, s13, dout, 16'd0);
					end
				default: ;
			endcase
			#40;
		end
		$display("SIMULATION FINISHED.");
		$finish(2);		
	end

	always #5 clk = ~clk;
	
	reg [1:0] count_tb;
	reg en;
	
	// Clock divider
	always@(posedge clk) begin
		if(!rst) begin
			count_tb <= 0;
			en <= 0;
		end
		else if(count_tb == 3) begin
			count_tb <= 0;
			en <= 1;
		end
		else begin
			count_tb <= count_tb + 1;
			en <= 0;
		end
	end
	
	// Present state
	always@(posedge clk, negedge rst) begin
		if(!rst)
			ps <= s0;
		else if(en)
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
			s13: ns = s0;
//			s14: ns = s15;
//			s15: ns = s16;
//			s16: ns = s17;
//			s17: ns = s18;
//			s18: ns = s19;
//			s19: ns = s8;
//			s20: ns = s0;
			default:  ns = s0;
		endcase
	end
	
	// Output Logic
	always@(ps) begin
		addr = 16'b0;
		din = 16'd0;
		WE = 1; // write enable is active low
		case(ps)
			s0: // STOR 0, 0
				begin
					addr = 16'd0;
					din = 16'd0;
					WE = 0;
				end
			s1: // STOR 10, 10
				begin
					addr = 16'd10;
					din = 16'd10;
					WE = 0;
				end
			s2: // STOR 1234, 1234
				begin
					addr = 16'd1234;
					din = 16'd1234;
					WE = 0;
				end
			s3: // STOR 5678, 5678
				begin
					addr = 16'd5678;
					din = 16'd5678;
					WE = 0;
				end
			s4: // LOAD 0 
				begin
					addr = 16'd0;
				end
			s5: // LOAD 10
				begin
					addr = 16'd10;
				end
			s6: // LOAD 1234
				begin
					addr = 16'd1234;
				end
			s7: // LOAD 5678
				begin
					addr = 16'd5678;
				end
			s8: // STOR 0, 1234
				begin
					addr = 16'd1234;
					din = 16'd0;
					WE = 0;
				end
			s9: // STOR 0xffff 5678
				begin
					addr = 16'd5678;
					din = 16'hffff;
					WE = 0;
				end
			s10: // LOAD 1234
				begin
					addr = 16'd1234;
				end
			s11: // LOAD 5678
				begin
					addr = 16'd5678;
				end
			s12: // STOR 0, 5678
				begin
					addr = 16'd5678;
					din = 16'd0;
					WE = 0;
				end
			s13: // LOAD 5678
				begin
					addr = 16'd5678;
				end
//			s14: // STOR R5, R1
//				begin
//					addr = 16'd14;
//				end
//			s15: // ADDI R1, 1
//				begin
//					addr = 16'd15;
//				end
//			s16: // ADDI R2, -1
//				begin
//					addr = 16'd16;
//				end
//			s17: // MOV R6, R0
//				begin
//					addr = 16'd17;
//				end	
//			s18: // ADDI R6, 8
//				begin
//					addr = 16'd18;
//				end	
//			s19: // JUC LOOP
//				begin
//					addr = 16'd19;
//				end	
//			s20: // END
//				begin
//					addr = 16'd20;
//				end				
			default: 
				begin
					addr = 16'd0;
					din = 16'd0;
					WE = 1;
				end
		endcase
	end
 
endmodule

