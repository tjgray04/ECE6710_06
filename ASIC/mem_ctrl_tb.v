`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:53:21 12/02/2015
// Design Name:   mem_ctrl
// Module Name:   C:/Users/Steve Brown/Utah/Fall 2015/ECE 6710/Team Project/GIT/ASIC/mem_ctrl_tb.v
// Project Name:  ASIC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mem_ctrl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`include "defines.v"

module mem_ctrl_tb;

	// Inputs
	reg SRAM_CE;
	reg SRAM_OE;
	reg SRAM_WE;
	reg [15:0] din_cpu;
	reg [15:0] din_ctrlrs;
	reg [15:0] din_timer;
	reg [15:0] addrin_cpu;
	reg [15:0] din_sram;

	// Outputs
	wire CE;
	wire OE;
	wire WE;
	wire ctrlr_re;
	wire audio_we;
	wire timer_re;
	wire [1:0] addr_ctrlr;
	wire [1:0] addr_audio;
	wire [15:0] dsram;
	wire [15:0] addr_sram;
	wire [15:0] dmem_out;

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
	mem_ctrl uut (
		.SRAM_CE(SRAM_CE), 
		.SRAM_OE(SRAM_OE), 
		.SRAM_WE(SRAM_WE), 
		.din_cpu(din_cpu), 
		.din_ctrlrs(din_ctrlrs), 
		.din_timer(din_timer), 
		.addrin_cpu(addrin_cpu), 
		.din_sram(din_sram), 
		.CE(CE), 
		.OE(OE), 
		.WE(WE), 
		.ctrlr_re(ctrlr_re), 
		.audio_we(audio_we), 
		.timer_re(timer_re), 
		.addr_ctrlr(addr_ctrlr), 
		.addr_audio(addr_audio), 
		.dsram(dsram), 
		.addr_sram(addr_sram), 
		.dmem_out(dmem_out)
	);

	initial begin
		// Initialize Inputs
		SRAM_CE = 0;
		SRAM_OE = 0;
		SRAM_WE = 0;
		din_cpu = 0;
		din_ctrlrs = 0;
		din_timer = 0;
		addrin_cpu = 0;
		din_sram = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		$display("SIMULATION STARTED.");
		#100;
		rst = 1;
      
		for(i = 0; i < 32; i = i + 1) begin
			// delay time
			case(ps)
				
				default:
			endcase
		end
		
		// Add stimulus here
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
		SRAM_CE = 1;
		SRAM_OE = 1;
		SRAM_WE = 1;
		din_cpu = 0;
		din_ctrlrs = 0;
		din_timer = 0;
		addrin_cpu = 0;
		din_sram = 0;
		case(ps)
			s0: // STOR 0, 0
				begin
					SRAM_CE = 0;
					SRAM_OE = 0;
					SRAM_WE = 0;
					din_cpu = 16'd0;
					addrin_cpu = 16'd0;
				end
			s1: // STOR 1, 1
				begin
					SRAM_CE = 0;
					SRAM_OE = 0;
					SRAM_WE = 0;
					din_cpu = 16'd1;
					addrin_cpu = 16'd1;
				end
			s2: // STOR 2, 2
				begin
					SRAM_CE = 0;
					SRAM_OE = 0;
					SRAM_WE = 0;
					din_cpu = 16'd2;
					addrin_cpu = 16'd2;
				end
			s3: // STOR 3, 3
				begin
					SRAM_CE = 0;
					SRAM_OE = 0;
					SRAM_WE = 0;
					din_cpu = 16'd3;
					addrin_cpu = 16'd3;
				end
			s4: // STOR 0, AUDIOREG0
				begin
					SRAM_CE = 0;
					SRAM_OE = 0;
					SRAM_WE = 0;
					addrin_cpu = `AUDIOREG0;
				end
			s5: // STOR 0, AUDIOREG1
				begin
					SRAM_CE = 0;
					SRAM_OE = 0;
					SRAM_WE = 0;
					addrin_cpu = `AUDIOREG1;
				end
			s6: // STOR 0, AUDIOREG2
				begin
					SRAM_CE = 0;
					SRAM_OE = 0;
					SRAM_WE = 0;
					addrin_cpu = `AUDIOREG2;
				end
			s7: // STOR 0, AUDIOREG3
				begin
					SRAM_CE = 0;
					SRAM_OE = 0;
					SRAM_WE = 0;
					addrin_cpu = `AUDIOREG3;
				end
			s8: // LOAD 0, CTRLR0
				begin
					pcEn = 1;
					jump = 1;
					dSrc = 16'd0;
				end
			s9: // LOAD 0, CTRLR1
				begin
				end
			s10: // LOAD 0, CTRLR2
				begin
				end
			s11: // LOAD 0, CTRLR3
				begin
				end
			s12: // LOAD 0, TIMMER
				begin
				end
			s13: // LOAD 0, NON_EXISTANT_CTRLR
				begin
				end
			s14: // LOAD 1
				begin
				end
			s15: // LOAD 2
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

