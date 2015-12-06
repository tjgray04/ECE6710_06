`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:31:53 12/05/2015
// Design Name:   vga_ctrl
// Module Name:   C:/Users/Steve Brown/Utah/Fall 2015/ECE 6710/Team Project/GIT/ASIC/vga_ctrl_tb.v
// Project Name:  ASIC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vga_ctrl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`include "defines.v"

module vga_ctrl_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [2:0] acnt;
	reg [15:0] glyph_num;
	reg [15:0] glyph_pixels;

	// Outputs
	wire h_sync;
	wire v_sync;
	wire [7:0] rgb;
	wire [15:0] glyph_addr;
   
   integer i;

	// Instantiate the Unit Under Test (UUT)
	vga_ctrl uut (
		.clk(clk), 
		.rst(rst), 
		.acnt(acnt), 
		.glyph_num(glyph_num), 
		.glyph_pixels(glyph_pixels), 
		.h_sync(h_sync), 
		.v_sync(v_sync), 
		.rgb(rgb), 
		.glyph_addr(glyph_addr)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		glyph_num = 0;
		glyph_pixels = 0;

		// Wait 100 ns for global reset to finish
		$display("BEGINNING SIMULATION.");
      #100;
      rst = 1;
      
		// Add stimulus here
      for(i = 0; i < 2**30; i = i + 1) begin
         #1000;
      end
      
      $display("SIMULATION FINISHED");
      $finish(2);
	end
   
   // Generate clock
   always #5 clk = ~clk;
   
   // Generate arbiter count
   always@(posedge clk) begin
      if(!rst)
         acnt <= 0;
      else
         acnt <= acnt + 1;
   end
   
   // Generate the glyph number from the frame buffer address
   always@(glyph_addr) begin
      case(acnt)
         3'd0: // the address should relate to the frame buffer
            begin
               if(glyph_addr < (16'hFB50 + 16'd40)) //0xFB78
                  glyph_num = 16'd0;
               else if(glyph_addr < (16'hFB50 + 16'd80)) //0xFBA0
                  glyph_num = 16'h0101;
               else if(glyph_addr < (16'hFB50 + 16'd120))//0xFBC8
                  glyph_num = 16'h0202;
               else if(glyph_addr < (16'hFB50 + 16'd160))//0xFBF0
                  glyph_num = 16'h0303;
               else if(glyph_addr < (16'hFB50 + 16'd180))//0xFC04
                  glyph_num = 16'h0404;
               else if(glyph_addr < (16'hFB50 + 16'd220))//0xFC2C
                  glyph_num = 16'h0505;
               else if(glyph_addr < (16'hFB50 + 16'd260))//0xFC54
                  glyph_num = 16'h0606;
               else
                  glyph_num = 16'h0809;
            end
         default: // the address should relate to the glyph library
             begin
               if(glyph_addr < 16'h8)        //Glyph 0
                  glyph_pixels = 16'hFFFF;
               else if(glyph_addr < 16'h10)  //Glyph 1
                  glyph_pixels = 16'h0000;
               else if(glyph_addr < 16'h18)  //Glyph 2
                  glyph_pixels = 16'h5555;
               else if(glyph_addr < 16'h20)  //Glyph 3
                  glyph_pixels = 16'h8888;
               else if(glyph_addr < 16'h28)  //Glyph 4
                  glyph_pixels = 16'hAAAA;
               else if(glyph_addr < 16'h30)  //Glyph 5
                  glyph_pixels = 16'h1356;
               else if(glyph_addr < 16'h38)  //Glyph 6
                  glyph_pixels = 16'h0606;
               else if(glyph_addr < 16'h40)  //Glyph 7
                  glyph_pixels = 16'hF0F0;
               else if(glyph_addr < 16'h48)  //Glyph 8
                  glyph_pixels = 16'hAEF0;
               else
                  glyph_pixels = 16'h3012;
            end
      endcase
   end
   
endmodule

