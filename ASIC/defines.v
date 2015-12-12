//
// This file defines all our constants used throughout
// the processor's hardware modules.
//

//////////////////////////
// Processor Sizing
`define DATAWIDTH 	16 // register size
`define OPWIDTH 		4
`define OPEXWIDTH		4
`define PRSWIDTH 		5
`define ALUOPWIDTH	5
`define REGWIDTH		4
`define IMMWIDTH		8
// Memory data
`define ROM_ADDR_BITS   16
`define SRAM_ADDR_BITS  16

//////////////////////////
// Conditional Types
`define EQ 4'b0000 // equal
`define CS 4'b0010 // carry set
`define HI 4'b0100 // higher than (unsigned)
`define GT 4'b0110 // greater than (signed)
`define FS 4'b1000 // flag set - overflow
`define HS 4'b1011 // higher than or same as (unsigned)
`define GE 4'b1101 // greater than or equal (signed)

`define NE 4'b0001 // not equal
`define CC 4'b0011 // carry clear
`define LS 4'b0101 // lower than or same as (unsigned)
`define LE 4'b0111 // less than or equal (signed)
`define FC 4'b1001 // flag clear - no overflow
`define LO 4'b1010 // lower than (unsigned)
`define LT 4'b1100 // less than (signed)

`define UC 4'b1110 // branch unconditionally

`define CondType_Ig 4'b1111 // Ignore

//////////////////////////
// Conditional Op codes
`define CondOp_JAL 	2'b01
`define CondOp_BJ	2'b10
`define CondOp_Ig 	2'b00

//////////////////////////
// PSR indexes
`define psrN 4
`define psrZ 3
`define psrF 2
`define psrL 1
`define psrC 0

//////////////////////////
// Op codes (bits 15-12)
`define ADDI 	4'b0101
`define ADDUI 	4'b0110
//`define MULI 	4'b1110
`define SUBI 	4'b1001
`define CMPI 	4'b1011
`define ANDI 	4'b0001
`define ORI 	4'b0010
`define XORI 	4'b0011
`define MOVI 	4'b1101
`define LUI 	4'b1111
`define BCOND 	4'b1100
`define RTYPE	4'b0000 // Register type
`define STYPE	4'b1000 // Shift type
`define OTYPE	4'b0100 // Other type (load/store/jal/branch...)

//////////////////////////
// Ext Op codes (bits 7-4)
// top op code is 4'b0000 == RTYPE
	`define ADD 	4'b0101
	`define ADDU 	4'b0110
	//`define MUL 	4'b1110
	`define SUB 	4'b1001
	`define CMP 	4'b1011
	`define AND 	4'b0001
	`define OR 		4'b0010
	`define XOR 	4'b0011
	`define MOV 	4'b1101
// top op code is 4'b1000 == ShiftTYPE
	//`define SLL 	4'b0001
	//`define SLLI 	4'b1001
	//`define SRL 	4'b0010
	//`define SRLI 	4'b1010
	//`define SRA		4'b0011
	//`define SRAI	4'b1011
	`define LSH		4'b0100 // Logical shift (2's compliment)
	`define LLSHI	4'b0000 // Logical left shift
	`define LRSHI	4'b0001 // Logical right shift
	`define ASHU	4'b0110 // Arithmetic shift (2's compliment)
	`define ALSHUI	4'b0010 // Arithmetic left shift
	`define ARSHUI	4'b0011 // Arithmetic right shift
// top op code is 4'b0100 == OtherType
	`define LOAD 	4'b0000
	`define STOR 	4'b0100
	`define SCOND 	4'b1101
	`define JCOND 	4'b1100
	`define JAL 	4'b1000
	`define RLOAD	4'b1111

//////////////////////////
// ALU Op codes
`define ALUOp_ADD		5'b00101
`define ALUOp_ADDU		5'b00110
`define ALUOp_SUB		5'b01001
//`define ALUOp_MUL		5'b01110
`define ALUOp_AND		5'b00001
`define ALUOp_OR		5'b00010
`define ALUOp_XOR		5'b00011 
`define ALUOp_MOV		5'b01101 // move
`define ALUOp_LUI		5'b01111 // load upper immediate
`define ALUOp_SLL		5'b10100 // shift left logical
`define ALUOp_SRL		5'b10001 // shift right logical
`define ALUOp_SLA		5'b10010 // shift left arithmetic
`define ALUOp_SRA		5'b10011 // shift right arithmetic

//////////////////////////
// Datapath configurations {BRANCH, JUMP, RA_MUX, ROM_MUX, MEMC_MUX, SRAM_MUX, ALU_BUF, VGA_BUF, IMM_MUX}
`define DP_ITYPE	10'b0_0_0_0_
`define DP_BCOND	10'b0_0_0_1_1_11
`define DP_RTYPE	10'b1_0_0_0_0_11
`define DP_CMP		10'b0_0_0_0_0_11
`define DP_CMPI	10'b0_0_0_0_1_11
`define DP_LOAD	10'b1_0_1_0_0_10
`define DP_STOR	10'b0_1_0_0_0_10
`define DP_SCOND	10'b1_0_0_0_0_01
`define DP_JCOND	10'b0_0_0_0_0_01
`define DP_JAL		10'b1_0_0_0_0_00

// VGA 256x256 60Hz w/12.5MHz clk
// h* is in clocks
`define hdisp  9'd320
`define hfp    4'd8
`define hpw    6'd48
`define hbp    5'd24
`define hMAX   9'd400
// v* is in lines (relative to h)
`define vdisp  9'd480
`define vfp    4'd10
`define vpw    3'd2
`define vbp    5'd29
`define vMAX   10'd521

// VGA timing generator
//`define HLINES 	640
//`define VLINES 	480
//`define HMAX 	   800
//`define VMAX 	   525
//`define HFP 	   656
//`define HSP 	   752
//`define VFP 	   490
//`define VSP 	   492

// `define HLINES 800
// `define VLINES 600
// `define HMAX 1056
// `define VMAX 628
// `define HFP 840
// `define HSP 968
// `define VFP 601
// `define VSP 605

//////////////////////////
// FSM state codes 
`define FETCH		0
`define DECODE 	1
`define EXECUTE 	2
`define BRANCH		3
`define JUMP		4
`define JMPAL		5
`define LOAD0		6
`define LOAD1		7
`define STORE		8
`define SCOND0		9

//////////////////////////
// MMIO Peripherial Addresses
`define CTRLR0		16'hFB40
`define CTRLR1		16'hFB41
`define CTRLR2		16'hFB42
`define CTRLR3		16'hFB43
`define AUDIOREG0	16'hFB44
`define AUDIOREG1	16'hFB45
`define AUDIOREG2	16'hFB46
`define AUDIOREG3	16'hFB47
`define TIMER0		16'hFB48

//////////////////////////
// MMIO Peripherial State Encoding
`define STATE_CTRLR0		4'h0
`define STATE_CTRLR1		4'h1
`define STATE_CTRLR2		4'h2
`define STATE_CTRLR3		4'h3
`define STATE_AUDIOREG0	4'h4
`define STATE_AUDIOREG1	4'h5
`define STATE_AUDIOREG2	4'h6
`define STATE_AUDIOREG3	4'h7
`define STATE_TIMER0		4'h8

//////////////////////////
// Frame Buffer Base Address
`define FRAMEBUF  16'hFB50