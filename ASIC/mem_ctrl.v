`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:57:27 12/01/2015 
// Design Name: 
// Module Name:    mem_ctrl 
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
//////////////////////////////////////////////////////////////////////////////////

`include "defines.v"

module mem_ctrl
	(input SRAM_CE,								// Chip enable for SRAM
	 input SRAM_OE,								// Output enable for SRAM - for loads
	 input SRAM_WE,								// Write enable for SRAM - for stores
	 input [`DATAWIDTH-1:0] din_cpu,			// Data in from the CPU
	 input [`DATAWIDTH-1:0] din_ctrlrs,		// Data in from the controllers
	 input [`DATAWIDTH-1:0] din_timer,		// Data in from the timer
	 input [`DATAWIDTH-1:0] addrin_cpu,		// Address in from the CPU
	 input [`DATAWIDTH-1:0] din_sram,		// Data in from the SRAM
	 output reg CE,										// Chip enable for SRAM
	 output reg OE,										// Output enable for SRAM - for loads
	 output reg WE,										// Write enable for SRAM - for stores
	 output reg ctrlr_re,								// Read enable for the controller
	 output reg audio_we,								// Write enable for the audio
	 output reg timer_re,								// Read enable for the timer
	 output reg [1:0] addr_ctrlr,					// Address for controllers
	 output reg [1:0] addr_audio,					// Address for auido registers
	 output reg [`DATAWIDTH-1:0] dsram,			// Data for the SRAM
	 output reg [`DATAWIDTH-1:0] addr_sram,		// Address for the SRAM
	 output reg [`DATAWIDTH-1:0] dmem_out);		// Output data from memory

	//////////////////////////
	// MEMORY PARTITION:
	// SRAM has 64k word addresses (16-bits addressing)
	// Memory is partitioned into 4k sections - determined by
	// top 12 bits of the address.
	// Highest partition, address 0xFFF0 = 65,520, is reserved form peripherials
	// all other partions belong to SRAM space
	// Within the peripherial space addresses are assigned as follows:
	// 	CTRLR0		16'hFFF0
	//		CTRLR1		16'hFFF1
	//		CTRLR2		16'hFFF2
	//		CTRLR3		16'hFFF3
	//		AUDIOREG0	16'hFFF4
	//		AUDIOREG1	16'hFFF5
	//		AUDIOREG2	16'hFFF6
	//		AUDIOREG3	16'hFFF7
	//		TIMER0		16'hFFF8
	//
	
	// Assign output data from memory controller
	
	
	// Determine which address is being written to, and route 
	// signals 
	always@(*) begin
		CE = 1;
		OE = 1;
		WE = 1;
		ctrlr_re = 0;
		audio_we = 0;
		timer_re = 0;
		addr_ctrlr = 0;
		addr_audio = 0;
		dsram = 0;
		addr_sram = 0;
		dmem_out = 0;
		case(addrin_cpu[15:4])
			12'hFFF: // Peripherial space
				begin
					case(addrin_cpu[3:0])
						`STATE_CTRLR0:
							begin
								addr_ctrlr = 2'b00;
								ctrlr_re = ~SRAM_OE & SRAM_WE;
								dmem_out = din_ctrlrs;
							end
						`STATE_CTRLR1:
							begin
								addr_ctrlr = 2'b01;
								ctrlr_re = ~SRAM_OE & SRAM_WE;
								dmem_out = din_ctrlrs;
							end
						`STATE_CTRLR2:
							begin
								addr_ctrlr = 2'b10;
								ctrlr_re = ~SRAM_OE & SRAM_WE;
								dmem_out = din_ctrlrs;
							end
						`STATE_CTRLR3:
							begin
								addr_ctrlr = 2'b11;
								ctrlr_re = ~SRAM_OE & SRAM_WE;
								dmem_out = din_ctrlrs;
							end
						`STATE_AUDIOREG0:
							begin
								addr_audio = 2'b00;
								audio_we = ~SRAM_OE;
							end
						`STATE_AUDIOREG1:
							begin
								addr_audio = 2'b01;
								audio_we = ~SRAM_OE;
							end
						`STATE_AUDIOREG2:
							begin
								addr_audio = 2'b10;
								audio_we = ~SRAM_OE;
							end
						`STATE_AUDIOREG3:
							begin
								addr_audio = 2'b11;
								audio_we = ~SRAM_OE;
							end
						`STATE_TIMER0:
							begin
								timer_re = ~SRAM_OE & SRAM_WE;
								dmem_out = din_timer;
							end
						default: ; // Address doesn't map to anything, so don't do anything
					endcase // case(din_cpu[3:0])
				end
			default: // Address reffers to SRAM data space
				begin
					CE = SRAM_CE;
					OE = SRAM_OE;
					WE = SRAM_WE;
					dsram = din_cpu;
					addr_sram = addrin_cpu;
					dmem_out = din_sram;
				end
		endcase // case(din_cpu[15:4])
	end

endmodule
