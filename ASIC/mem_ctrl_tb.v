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
   parameter    s0 = 5'h0, // 
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
   parameter    r0 = 4'h0,
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
      clk = 0;

      // Wait 100 ns for global reset to finish
      $display("SIMULATION STARTED.");
      #100;
      rst = 1;
      
      for(i = 0; i < 32; i = i + 1) begin
         #10;
         case(ps)
            s0: // STOR 0, 0
               begin
                  if(CE != 0)             $display("ERROR @ time %d in state %d: CE is %b, but should be %b.",          $time, s0, CE, 1'b0);
                  if(OE != 0)             $display("ERROR @ time %d in state %d: OE is %b, but should be %b.",          $time, s0, OE, 1'b0);
                  if(WE != 0)             $display("ERROR @ time %d in state %d: WE is %b, but should be %b.",          $time, s0, WE, 1'b0);
                  if(ctrlr_re != 0)       $display("ERROR @ time %d in state %d: ctrlr_re is %b, but should be %b.",    $time, s0, ctrlr_re, 1'b0);
                  if(audio_we != 0)       $display("ERROR @ time %d in state %d: audio_we is %b, but should be %b.",    $time, s0, audio_we, 1'b0);
                  if(timer_re != 0)       $display("ERROR @ time %d in state %d: timer_re is %b, but should be %b.",    $time, s0, timer_re, 1'b0);
//                  if(addr_ctrlr != 2'd0)  $display("ERROR @ time %d in state %d: addr_ctrlr is %b, but should be %b.",  $time, s4, addr_ctrlr, 2'd0);
//                  if(addr_audio != )      $display("ERROR @ time %d in state %d: addr_audio is %b, but should be %b.",  $time, s0, addr_audio, 16'd0);
                  if(dsram != 16'd0)      $display("ERROR @ time %d in state %d: dsram is %b, but should be %b.",       $time, s0, dsram, 16'd0);
                  if(addr_sram != 16'd0)  $display("ERROR @ time %d in state %d: addr_sram is %b, but should be %b.",   $time, s0, addr_sram, 16'd0);
//                  if(dmem_out != )        $display("ERROR @ time %d in state %d: dmem_out is %b, but should be %b.",    $time, s0, dmem_out, 16'd0);
               end
            s1: // STOR 1, 1
               begin
                  if(CE != 0)             $display("ERROR @ time %d in state %d: CE is %b, but should be %b.",          $time, s1, CE, 1'b0);
                  if(OE != 0)             $display("ERROR @ time %d in state %d: OE is %b, but should be %b.",          $time, s1, OE, 1'b0);
                  if(WE != 0)             $display("ERROR @ time %d in state %d: WE is %b, but should be %b.",          $time, s1, WE, 1'b0);
                  if(ctrlr_re != 0)       $display("ERROR @ time %d in state %d: ctrlr_re is %b, but should be %b.",    $time, s1, ctrlr_re, 1'b0);
                  if(audio_we != 0)       $display("ERROR @ time %d in state %d: audio_we is %b, but should be %b.",    $time, s1, audio_we, 1'b0);
                  if(timer_re != 0)       $display("ERROR @ time %d in state %d: timer_re is %b, but should be %b.",    $time, s1, timer_re, 1'b0);
//                  if(addr_ctrlr != 2'd0)  $display("ERROR @ time %d in state %d: addr_ctrlr is %b, but should be %b.",  $time, s4, addr_ctrlr, 2'd0);
//                  if(addr_audio != )      $display("ERROR @ time %d in state %d: addr_audio is %b, but should be %b.",  $time, s1, addr_audio, 16'd0);
                  if(dsram != 16'd1)      $display("ERROR @ time %d in state %d: dsram is %b, but should be %b.",       $time, s1, dsram, 16'd1);
                  if(addr_sram != 16'd1)  $display("ERROR @ time %d in state %d: addr_sram is %b, but should be %b.",   $time, s1, addr_sram, 16'd1);
//                  if(dmem_out != )        $display("ERROR @ time %d in state %d: dmem_out is %b, but should be %b.",    $time, s1, dmem_out, 16'd0);
               end
            s2: // STOR 2, 2
               begin
                  if(CE != 0)             $display("ERROR @ time %d in state %d: CE is %b, but should be %b.",          $time, s2, CE, 1'b0);
                  if(OE != 0)             $display("ERROR @ time %d in state %d: OE is %b, but should be %b.",          $time, s2, OE, 1'b0);
                  if(WE != 0)             $display("ERROR @ time %d in state %d: WE is %b, but should be %b.",          $time, s2, WE, 1'b0);
                  if(ctrlr_re != 0)       $display("ERROR @ time %d in state %d: ctrlr_re is %b, but should be %b.",    $time, s2, ctrlr_re, 1'b0);
                  if(audio_we != 0)       $display("ERROR @ time %d in state %d: audio_we is %b, but should be %b.",    $time, s2, audio_we, 1'b0);
                  if(timer_re != 0)       $display("ERROR @ time %d in state %d: timer_re is %b, but should be %b.",    $time, s2, timer_re, 1'b0);
//                  if(addr_ctrlr != 2'd0)  $display("ERROR @ time %d in state %d: addr_ctrlr is %b, but should be %b.",  $time, s4, addr_ctrlr, 2'd0);
//                  if(addr_audio != )      $display("ERROR @ time %d in state %d: addr_audio is %b, but should be %b.",  $time, s2, addr_audio, 16'd0);
                  if(dsram != 16'd2)      $display("ERROR @ time %d in state %d: dsram is %b, but should be %b.",       $time, s2, dsram, 16'd2);
                  if(addr_sram != 16'd2)  $display("ERROR @ time %d in state %d: addr_sram is %b, but should be %b.",   $time, s2, addr_sram, 16'd2);
//                  if(dmem_out != )        $display("ERROR @ time %d in state %d: dmem_out is %b, but should be %b.",    $time, s2, dmem_out, 16'd0);
               end
            s3: // STOR 3, 3
               begin
                  if(CE != 0)             $display("ERROR @ time %d in state %d: CE is %b, but should be %b.",          $time, s3, CE, 1'b0);
                  if(OE != 0)             $display("ERROR @ time %d in state %d: OE is %b, but should be %b.",          $time, s3, OE, 1'b0);
                  if(WE != 0)             $display("ERROR @ time %d in state %d: WE is %b, but should be %b.",          $time, s3, WE, 1'b0);
                  if(ctrlr_re != 0)       $display("ERROR @ time %d in state %d: ctrlr_re is %b, but should be %b.",    $time, s3, ctrlr_re, 1'b0);
                  if(audio_we != 0)       $display("ERROR @ time %d in state %d: audio_we is %b, but should be %b.",    $time, s3, audio_we, 1'b0);
                  if(timer_re != 0)       $display("ERROR @ time %d in state %d: timer_re is %b, but should be %b.",    $time, s3, timer_re, 1'b0);
//                  if(addr_ctrlr != 2'd0)  $display("ERROR @ time %d in state %d: addr_ctrlr is %b, but should be %b.",  $time, s4, addr_ctrlr, 2'd0);
//                  if(addr_audio != )      $display("ERROR @ time %d in state %d: addr_audio is %b, but should be %b.",  $time, s3, addr_audio, 16'd0);
                  if(dsram != 16'd3)      $display("ERROR @ time %d in state %d: dsram is %b, but should be %b.",       $time, s3, dsram, 16'd3);
                  if(addr_sram != 16'd3)  $display("ERROR @ time %d in state %d: addr_sram is %b, but should be %b.",   $time, s3, addr_sram, 16'd3);
//                  if(dmem_out != )        $display("ERROR @ time %d in state %d: dmem_out is %b, but should be %b.",    $time, s3, dmem_out, 16'd0);
               end
            s4: // STOR 0, AUDIOREG0
               begin
                  if(CE != 1)             $display("ERROR @ time %d in state %d: CE is %b, but should be %b.",          $time, s4, CE, 1'b1);
                  if(OE != 1)             $display("ERROR @ time %d in state %d: OE is %b, but should be %b.",          $time, s4, OE, 1'b1);
                  if(WE != 1)             $display("ERROR @ time %d in state %d: WE is %b, but should be %b.",          $time, s4, WE, 1'b1);
                  if(ctrlr_re != 0)       $display("ERROR @ time %d in state %d: ctrlr_re is %b, but should be %b.",    $time, s4, ctrlr_re, 1'b0);
                  if(audio_we != 1)       $display("ERROR @ time %d in state %d: audio_we is %b, but should be %b.",    $time, s4, audio_we, 1'b1);
                  if(timer_re != 0)       $display("ERROR @ time %d in state %d: timer_re is %b, but should be %b.",    $time, s4, timer_re, 1'b0);
                  if(addr_ctrlr != 2'd0)  $display("ERROR @ time %d in state %d: addr_ctrlr is %b, but should be %b.",  $time, s4, addr_ctrlr, 2'd0);
                  if(addr_audio != 2'b0)  $display("ERROR @ time %d in state %d: addr_audio is %b, but should be %b.",  $time, s4, addr_audio, 2'b0);
                  if(dsram != 16'd0)      $display("ERROR @ time %d in state %d: dsram is %b, but should be %b.",       $time, s4, dsram, 16'd0);
                  if(addr_sram != 16'd0)  $display("ERROR @ time %d in state %d: addr_sram is %b, but should be %b.",   $time, s4, addr_sram, 16'd0);
                  if(dmem_out != 16'd0)   $display("ERROR @ time %d in state %d: dmem_out is %b, but should be %b.",    $time, s4, dmem_out, 16'd0);
               end
            s5: // STOR 0, AUDIOREG1
               begin
                  if(CE != 1)             $display("ERROR @ time %d in state %d: CE is %b, but should be %b.",          $time, s5, CE, 1'b1);
                  if(OE != 1)             $display("ERROR @ time %d in state %d: OE is %b, but should be %b.",          $time, s5, OE, 1'b1);
                  if(WE != 1)             $display("ERROR @ time %d in state %d: WE is %b, but should be %b.",          $time, s5, WE, 1'b1);
                  if(ctrlr_re != 0)       $display("ERROR @ time %d in state %d: ctrlr_re is %b, but should be %b.",    $time, s5, ctrlr_re, 1'b0);
                  if(audio_we != 1)       $display("ERROR @ time %d in state %d: audio_we is %b, but should be %b.",    $time, s5, audio_we, 1'b1);
                  if(timer_re != 0)       $display("ERROR @ time %d in state %d: timer_re is %b, but should be %b.",    $time, s5, timer_re, 1'b0);
                  if(addr_ctrlr != 2'd0)  $display("ERROR @ time %d in state %d: addr_ctrlr is %b, but should be %b.",  $time, s5, addr_ctrlr, 2'd0);
                  if(addr_audio != 2'b01) $display("ERROR @ time %d in state %d: addr_audio is %b, but should be %b.",  $time, s5, addr_audio, 2'b01);
                  if(dsram != 16'd0)      $display("ERROR @ time %d in state %d: dsram is %b, but should be %b.",       $time, s5, dsram, 16'd0);
                  if(addr_sram != 16'd0)  $display("ERROR @ time %d in state %d: addr_sram is %b, but should be %b.",   $time, s5, addr_sram, 16'd0);
                  if(dmem_out != 16'd0)   $display("ERROR @ time %d in state %d: dmem_out is %b, but should be %b.",    $time, s5, dmem_out, 16'd0);
               end
            s6: // STOR 0, AUDIOREG2
               begin
                  if(CE != 1)             $display("ERROR @ time %d in state %d: CE is %b, but should be %b.",          $time, s6, CE, 1'b1);
                  if(OE != 1)             $display("ERROR @ time %d in state %d: OE is %b, but should be %b.",          $time, s6, OE, 1'b1);
                  if(WE != 1)             $display("ERROR @ time %d in state %d: WE is %b, but should be %b.",          $time, s6, WE, 1'b1);
                  if(ctrlr_re != 0)       $display("ERROR @ time %d in state %d: ctrlr_re is %b, but should be %b.",    $time, s6, ctrlr_re, 1'b0);
                  if(audio_we != 1)       $display("ERROR @ time %d in state %d: audio_we is %b, but should be %b.",    $time, s6, audio_we, 1'b1);
                  if(timer_re != 0)       $display("ERROR @ time %d in state %d: timer_re is %b, but should be %b.",    $time, s6, timer_re, 1'b0);
                  if(addr_ctrlr != 2'd0)  $display("ERROR @ time %d in state %d: addr_ctrlr is %b, but should be %b.",  $time, s6, addr_ctrlr, 2'd0);
                  if(addr_audio != 2'b10) $display("ERROR @ time %d in state %d: addr_audio is %b, but should be %b.",  $time, s6, addr_audio, 2'b10);
                  if(dsram != 16'd0)      $display("ERROR @ time %d in state %d: dsram is %b, but should be %b.",       $time, s6, dsram, 16'd0);
                  if(addr_sram != 16'd0)  $display("ERROR @ time %d in state %d: addr_sram is %b, but should be %b.",   $time, s6, addr_sram, 16'd0);
                  if(dmem_out != 16'd0)   $display("ERROR @ time %d in state %d: dmem_out is %b, but should be %b.",    $time, s6, dmem_out, 16'd0);
               end
            s7: // STOR 0, AUDIOREG3
               begin
                  if(CE != 1)             $display("ERROR @ time %d in state %d: CE is %b, but should be %b.",          $time, s7, CE, 1'b1);
                  if(OE != 1)             $display("ERROR @ time %d in state %d: OE is %b, but should be %b.",          $time, s7, OE, 1'b1);
                  if(WE != 1)             $display("ERROR @ time %d in state %d: WE is %b, but should be %b.",          $time, s7, WE, 1'b1);
                  if(ctrlr_re != 0)       $display("ERROR @ time %d in state %d: ctrlr_re is %b, but should be %b.",    $time, s7, ctrlr_re, 1'b0);
                  if(audio_we != 1)       $display("ERROR @ time %d in state %d: audio_we is %b, but should be %b.",    $time, s7, audio_we, 1'b1);
                  if(timer_re != 0)       $display("ERROR @ time %d in state %d: timer_re is %b, but should be %b.",    $time, s7, timer_re, 1'b0);
                  if(addr_ctrlr != 2'd0)  $display("ERROR @ time %d in state %d: addr_ctrlr is %b, but should be %b.",  $time, s7, addr_ctrlr, 2'd0);
                  if(addr_audio != 2'b11) $display("ERROR @ time %d in state %d: addr_audio is %b, but should be %b.",  $time, s7, addr_audio, 2'b11);
                  if(dsram != 16'd0)      $display("ERROR @ time %d in state %d: dsram is %b, but should be %b.",       $time, s7, dsram, 16'd0);
                  if(addr_sram != 16'd0)  $display("ERROR @ time %d in state %d: addr_sram is %b, but should be %b.",   $time, s7, addr_sram, 16'd0);
                  if(dmem_out != 16'd0)   $display("ERROR @ time %d in state %d: dmem_out is %b, but should be %b.",    $time, s7, dmem_out, 16'd0);
               end
            s8: // LOAD 0, CTRLR0
               begin
                  if(CE != 1)             $display("ERROR @ time %d in state %d: CE is %b, but should be %b.",          $time, s8, CE, 1'b0);
                  if(OE != 1)             $display("ERROR @ time %d in state %d: OE is %b, but should be %b.",          $time, s8, OE, 1'b0);
                  if(WE != 1)             $display("ERROR @ time %d in state %d: WE is %b, but should be %b.",          $time, s8, WE, 1'b0);
                  if(ctrlr_re != 1)       $display("ERROR @ time %d in state %d: ctrlr_re is %b, but should be %b.",    $time, s8, ctrlr_re, 1'b1);
                  if(audio_we != 0)       $display("ERROR @ time %d in state %d: audio_we is %b, but should be %b.",    $time, s8, audio_we, 1'b0);
                  if(timer_re != 0)       $display("ERROR @ time %d in state %d: timer_re is %b, but should be %b.",    $time, s8, timer_re, 1'b0);
                  if(addr_ctrlr != 2'd0)  $display("ERROR @ time %d in state %d: addr_ctrlr is %b, but should be %b.",  $time, s8, addr_ctrlr, 2'd0);
                  if(addr_audio != 2'd0)  $display("ERROR @ time %d in state %d: addr_audio is %b, but should be %b.",  $time, s8, addr_audio, 2'd0);
                  if(dsram != 16'd0)      $display("ERROR @ time %d in state %d: dsram is %b, but should be %b.",       $time, s8, dsram, 16'd0);
                  if(addr_sram != 16'd0)  $display("ERROR @ time %d in state %d: addr_sram is %b, but should be %b.",   $time, s8, addr_sram, 16'd0);
                  if(dmem_out != 16'd15)  $display("ERROR @ time %d in state %d: dmem_out is %b, but should be %b.",    $time, s8, dmem_out, 16'd15);
               end
            s9: // LOAD 0, CTRLR1
               begin
                  if(CE != 1)             $display("ERROR @ time %d in state %d: CE is %b, but should be %b.",          $time, s9, CE, 1'b0);
                  if(OE != 1)             $display("ERROR @ time %d in state %d: OE is %b, but should be %b.",          $time, s9, OE, 1'b0);
                  if(WE != 1)             $display("ERROR @ time %d in state %d: WE is %b, but should be %b.",          $time, s9, WE, 1'b0);
                  if(ctrlr_re != 1)       $display("ERROR @ time %d in state %d: ctrlr_re is %b, but should be %b.",    $time, s9, ctrlr_re, 1'b1);
                  if(audio_we != 0)       $display("ERROR @ time %d in state %d: audio_we is %b, but should be %b.",    $time, s9, audio_we, 1'b0);
                  if(timer_re != 0)       $display("ERROR @ time %d in state %d: timer_re is %b, but should be %b.",    $time, s9, timer_re, 1'b0);
                  if(addr_ctrlr != 2'd1)  $display("ERROR @ time %d in state %d: addr_ctrlr is %b, but should be %b.",  $time, s9, addr_ctrlr, 2'd1);
                  if(addr_audio != 2'd0)  $display("ERROR @ time %d in state %d: addr_audio is %b, but should be %b.",  $time, s9, addr_audio, 2'd0);
                  if(dsram != 16'd0)      $display("ERROR @ time %d in state %d: dsram is %b, but should be %b.",       $time, s9, dsram, 16'd0);
                  if(addr_sram != 16'd0)  $display("ERROR @ time %d in state %d: addr_sram is %b, but should be %b.",   $time, s9, addr_sram, 16'd0);
                  if(dmem_out != 16'd1)   $display("ERROR @ time %d in state %d: dmem_out is %b, but should be %b.",    $time, s9, dmem_out, 16'd11);          
               end
            s10: // LOAD 0, CTRLR2
               begin
                  if(CE != 1)             $display("ERROR @ time %d in state %d: CE is %b, but should be %b.",          $time, s10, CE, 1'b0);
                  if(OE != 1)             $display("ERROR @ time %d in state %d: OE is %b, but should be %b.",          $time, s10, OE, 1'b0);
                  if(WE != 1)             $display("ERROR @ time %d in state %d: WE is %b, but should be %b.",          $time, s10, WE, 1'b0);
                  if(ctrlr_re != 1)       $display("ERROR @ time %d in state %d: ctrlr_re is %b, but should be %b.",    $time, s10, ctrlr_re, 1'b1);
                  if(audio_we != 0)       $display("ERROR @ time %d in state %d: audio_we is %b, but should be %b.",    $time, s10, audio_we, 1'b0);
                  if(timer_re != 0)       $display("ERROR @ time %d in state %d: timer_re is %b, but should be %b.",    $time, s10, timer_re, 1'b0);
                  if(addr_ctrlr != 2'd2)  $display("ERROR @ time %d in state %d: addr_ctrlr is %b, but should be %b.",  $time, s10, addr_ctrlr, 2'd2);
                  if(addr_audio != 2'd0)  $display("ERROR @ time %d in state %d: addr_audio is %b, but should be %b.",  $time, s10, addr_audio, 2'd0);
                  if(dsram != 16'd0)      $display("ERROR @ time %d in state %d: dsram is %b, but should be %b.",       $time, s10, dsram, 16'd0);
                  if(addr_sram != 16'd0)  $display("ERROR @ time %d in state %d: addr_sram is %b, but should be %b.",   $time, s10, addr_sram, 16'd0);
                  if(dmem_out != 16'd2)   $display("ERROR @ time %d in state %d: dmem_out is %b, but should be %b.",    $time, s10, dmem_out, 16'd2);          
               end
            s11: // LOAD 0, CTRLR3
               begin
                  if(CE != 1)             $display("ERROR @ time %d in state %d: CE is %b, but should be %b.",          $time, s11, CE, 1'b0);
                  if(OE != 1)             $display("ERROR @ time %d in state %d: OE is %b, but should be %b.",          $time, s11, OE, 1'b0);
                  if(WE != 1)             $display("ERROR @ time %d in state %d: WE is %b, but should be %b.",          $time, s11, WE, 1'b0);
                  if(ctrlr_re != 1)       $display("ERROR @ time %d in state %d: ctrlr_re is %b, but should be %b.",    $time, s11, ctrlr_re, 1'b1);
                  if(audio_we != 0)       $display("ERROR @ time %d in state %d: audio_we is %b, but should be %b.",    $time, s11, audio_we, 1'b0);
                  if(timer_re != 0)       $display("ERROR @ time %d in state %d: timer_re is %b, but should be %b.",    $time, s11, timer_re, 1'b0);
                  if(addr_ctrlr != 2'd3)  $display("ERROR @ time %d in state %d: addr_ctrlr is %b, but should be %b.",  $time, s11, addr_ctrlr, 2'd3);
                  if(addr_audio != 2'd0)  $display("ERROR @ time %d in state %d: addr_audio is %b, but should be %b.",  $time, s11, addr_audio, 2'd0);
                  if(dsram != 16'd0)      $display("ERROR @ time %d in state %d: dsram is %b, but should be %b.",       $time, s11, dsram, 16'd0);
                  if(addr_sram != 16'd0)  $display("ERROR @ time %d in state %d: addr_sram is %b, but should be %b.",   $time, s11, addr_sram, 16'd0);
                  if(dmem_out != 16'd3)   $display("ERROR @ time %d in state %d: dmem_out is %b, but should be %b.",    $time, s11, dmem_out, 16'd3);          
               end
            s12: // LOAD 0, TIMMER
               begin
                  if(CE != 1)             $display("ERROR @ time %d in state %d: CE is %b, but should be %b.",          $time, s12, CE, 1'b0);
                  if(OE != 1)             $display("ERROR @ time %d in state %d: OE is %b, but should be %b.",          $time, s12, OE, 1'b0);
                  if(WE != 1)             $display("ERROR @ time %d in state %d: WE is %b, but should be %b.",          $time, s12, WE, 1'b0);
                  if(ctrlr_re != 0)       $display("ERROR @ time %d in state %d: ctrlr_re is %b, but should be %b.",    $time, s12, ctrlr_re, 1'b0);
                  if(audio_we != 0)       $display("ERROR @ time %d in state %d: audio_we is %b, but should be %b.",    $time, s12, audio_we, 1'b0);
                  if(timer_re != 1)       $display("ERROR @ time %d in state %d: timer_re is %b, but should be %b.",    $time, s12, timer_re, 1'b1);
                  if(addr_ctrlr != 2'd0)  $display("ERROR @ time %d in state %d: addr_ctrlr is %b, but should be %b.",  $time, s12, addr_ctrlr, 2'd0);
                  if(addr_audio != 2'd0)  $display("ERROR @ time %d in state %d: addr_audio is %b, but should be %b.",  $time, s12, addr_audio, 2'd0);
                  if(dsram != 16'd0)      $display("ERROR @ time %d in state %d: dsram is %b, but should be %b.",       $time, s12, dsram, 16'd0);
                  if(addr_sram != 16'd0)  $display("ERROR @ time %d in state %d: addr_sram is %b, but should be %b.",   $time, s12, addr_sram, 16'd0);
                  if(dmem_out != 16'd2048)$display("ERROR @ time %d in state %d: dmem_out is %b, but should be %b.",    $time, s12, dmem_out, 16'd2048);            
               end
            s13: // LOAD 0, NON_EXISTANT_CTRLR
               begin
                  if(CE != 1)             $display("ERROR @ time %d in state %d: CE is %b, but should be %b.",          $time, s13, CE, 1'b0);
                  if(OE != 1)             $display("ERROR @ time %d in state %d: OE is %b, but should be %b.",          $time, s13, OE, 1'b0);
                  if(WE != 1)             $display("ERROR @ time %d in state %d: WE is %b, but should be %b.",          $time, s13, WE, 1'b0);
                  if(ctrlr_re != 0)       $display("ERROR @ time %d in state %d: ctrlr_re is %b, but should be %b.",    $time, s13, ctrlr_re, 1'b0);
                  if(audio_we != 0)       $display("ERROR @ time %d in state %d: audio_we is %b, but should be %b.",    $time, s13, audio_we, 1'b0);
                  if(timer_re != 0)       $display("ERROR @ time %d in state %d: timer_re is %b, but should be %b.",    $time, s13, timer_re, 1'b0);
                  if(addr_ctrlr != 2'd0)  $display("ERROR @ time %d in state %d: addr_ctrlr is %b, but should be %b.",  $time, s13, addr_ctrlr, 2'd0);
                  if(addr_audio != 2'd0)  $display("ERROR @ time %d in state %d: addr_audio is %b, but should be %b.",  $time, s13, addr_audio, 2'd0);
                  if(dsram != 16'd0)      $display("ERROR @ time %d in state %d: dsram is %b, but should be %b.",       $time, s13, dsram, 16'd0);
                  if(addr_sram != 16'd0)  $display("ERROR @ time %d in state %d: addr_sram is %b, but should be %b.",   $time, s13, addr_sram, 16'd0);
                  if(dmem_out != 16'd0)   $display("ERROR @ time %d in state %d: dmem_out is %b, but should be %b.",    $time, s13, dmem_out, 16'd0);               
               end
            s14: // LOAD 1
               begin
                  if(CE != 0)             $display("ERROR @ time %d in state %d: CE is %b, but should be %b.",          $time, s14, CE, 1'b0);
                  if(OE != 0)             $display("ERROR @ time %d in state %d: OE is %b, but should be %b.",          $time, s14, OE, 1'b0);
                  if(WE != 1)             $display("ERROR @ time %d in state %d: WE is %b, but should be %b.",          $time, s14, WE, 1'b1);
                  if(ctrlr_re != 0)       $display("ERROR @ time %d in state %d: ctrlr_re is %b, but should be %b.",    $time, s14, ctrlr_re, 1'b0);
                  if(audio_we != 0)       $display("ERROR @ time %d in state %d: audio_we is %b, but should be %b.",    $time, s14, audio_we, 1'b0);
                  if(timer_re != 0)       $display("ERROR @ time %d in state %d: timer_re is %b, but should be %b.",    $time, s14, timer_re, 1'b0);
                  if(addr_ctrlr != 2'd0)  $display("ERROR @ time %d in state %d: addr_ctrlr is %b, but should be %b.",  $time, s14, addr_ctrlr, 2'd0);
                  if(addr_audio != 2'd0)  $display("ERROR @ time %d in state %d: addr_audio is %b, but should be %b.",  $time, s14, addr_audio, 2'd0);
                  if(dsram != 16'd0)      $display("ERROR @ time %d in state %d: dsram is %b, but should be %b.",       $time, s14, dsram, 16'd0);
                  if(addr_sram != 16'd1)  $display("ERROR @ time %d in state %d: addr_sram is %b, but should be %b.",   $time, s14, addr_sram, 16'd1);
                  if(dmem_out != 16'd1)   $display("ERROR @ time %d in state %d: dmem_out is %b, but should be %b.",    $time, s14, dmem_out, 16'd1);              
               end
            s15: // LOAD 2
               begin
                  if(CE != 0)             $display("ERROR @ time %d in state %d: CE is %b, but should be %b.",          $time, s14, CE, 1'b0);
                  if(OE != 0)             $display("ERROR @ time %d in state %d: OE is %b, but should be %b.",          $time, s14, OE, 1'b0);
                  if(WE != 1)             $display("ERROR @ time %d in state %d: WE is %b, but should be %b.",          $time, s14, WE, 1'b1);
                  if(ctrlr_re != 0)       $display("ERROR @ time %d in state %d: ctrlr_re is %b, but should be %b.",    $time, s14, ctrlr_re, 1'b0);
                  if(audio_we != 0)       $display("ERROR @ time %d in state %d: audio_we is %b, but should be %b.",    $time, s14, audio_we, 1'b0);
                  if(timer_re != 0)       $display("ERROR @ time %d in state %d: timer_re is %b, but should be %b.",    $time, s14, timer_re, 1'b0);
                  if(addr_ctrlr != 2'd0)  $display("ERROR @ time %d in state %d: addr_ctrlr is %b, but should be %b.",  $time, s14, addr_ctrlr, 2'd0);
                  if(addr_audio != 2'd0)  $display("ERROR @ time %d in state %d: addr_audio is %b, but should be %b.",  $time, s14, addr_audio, 2'd0);
                  if(dsram != 16'd0)      $display("ERROR @ time %d in state %d: dsram is %b, but should be %b.",       $time, s14, dsram, 16'd0);
                  if(addr_sram != 16'd2)  $display("ERROR @ time %d in state %d: addr_sram is %b, but should be %b.",   $time, s14, addr_sram, 16'd2);
                  if(dmem_out != 16'd2)   $display("ERROR @ time %d in state %d: dmem_out is %b, but should be %b.",    $time, s14, dmem_out, 16'd2);         
               end
            default: // jump back to zero
               begin
                  ;
               end
         endcase
         #10;
      end
      
      // Add stimulus here
      $display("SIMULATION FINISHED.");
      $finish(2);
   end
   
   reg rst, clk;
   
   always #10 clk = ~clk;
   
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
               SRAM_CE = 0;
               SRAM_OE = 0;
               din_ctrlrs = 16'd15;
               addrin_cpu = `CTRLR0;
            end
         s9: // LOAD 0, CTRLR1
            begin
               SRAM_CE = 0;
               SRAM_OE = 0;
               din_ctrlrs = 16'd1;
               addrin_cpu = `CTRLR1;            
            end
         s10: // LOAD 0, CTRLR2
            begin
               SRAM_CE = 0;
               SRAM_OE = 0;
               din_ctrlrs = 16'd2;
               addrin_cpu = `CTRLR2;            
            end
         s11: // LOAD 0, CTRLR3
            begin
               SRAM_CE = 0;
               SRAM_OE = 0;
               din_ctrlrs = 16'd3;
               addrin_cpu = `CTRLR3;            
            end
         s12: // LOAD 0, TIMMER
            begin
               SRAM_CE = 0;
               SRAM_OE = 0;
               din_timer = 16'd2048;
               addrin_cpu = `TIMER0;            
            end
         s13: // LOAD 0, NON_EXISTANT_CTRLR
            begin
               SRAM_CE = 0;
               SRAM_OE = 0;
               din_cpu = 16'd12;
               din_ctrlrs = 16'd1234;
               din_timer = 16'd68;
               din_sram = 16'd24;
               addrin_cpu = `TIMER0 + 2;               
            end
         s14: // LOAD 1
            begin
               SRAM_CE = 0;
               SRAM_OE = 0;
               din_sram = 16'd1;
               addrin_cpu = 16'd1;               
            end
         s15: // LOAD 2
            begin
               SRAM_CE = 0;
               SRAM_OE = 0;
               din_sram = 16'd2;
               addrin_cpu = 16'd2;            
            end
         default: // jump back to zero
            begin
               ;
            end
      endcase
   end   
   
endmodule

