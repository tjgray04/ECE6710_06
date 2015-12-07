`timescale 1ns / 1ps

module SpiInterface
(
	input             clk_in,      // system clock (12.5 MHz)
	input             reset,       // synchronous reset
   input             start_read,  // triggers a read from the input address
   input      [0:23] read_addr,   // read address
	input             miso,        // serial input from SPI slave	
	output reg        mosi,        // serial out to SPI slave
	output reg        ce_n,        // active-low chip enable for SPI slave
   output reg        sclk,        // SPI serial clock
   output reg        data_ready,  // signals that the data is ready to be read
   output reg  [7:0] spi_data     // the byte read from the SPI slave
);

	// FSM States
	parameter RESET        = 3'd0;
   parameter IDLE         = 3'd1;
   parameter ENABLE_CHIP  = 3'd2;
   parameter ISSUE_CMD    = 3'd3;
   parameter ISSUE_ADDR   = 3'd4;
   parameter RECEIVE_DATA = 3'd5;
   parameter DISABLE_CHIP = 3'd6;
   parameter MOVE_DATA    = 3'd7;   
	
	localparam [0:7] read_cmd  =  8'h03;

	reg [4:0] clk_count;
   
   // create an inverted clock signal to drive SCLK
   wire inv_clk_in = ~clk_in;

	// state assignment
   reg [2:0] state = RESET;
   always@(posedge clk_in) begin
      clk_count <= 5'd0;
      if (reset) begin
         state <= RESET;
      end
      else begin
         case (state)
            RESET : begin
               state <= IDLE;
            end
            IDLE : begin
               if (start_read) begin
                  state     <= ISSUE_CMD;
						clk_count <= clk_count;
					end
               else begin
                  state <= IDLE;
					end
            end
            ENABLE_CHIP : begin
               state <= ISSUE_CMD;					
            end
            ISSUE_CMD : begin
               if (clk_count < 5'd7) begin
                  state     <= ISSUE_CMD;
						clk_count <= clk_count + 1'b1;
					end
               else begin
                  state <= ISSUE_ADDR;
					end
            end
            ISSUE_ADDR : begin
               if (clk_count < 5'd23) begin
                  state     <= ISSUE_ADDR;
						clk_count <= clk_count + 1'b1;
					end
               else begin
                  state <= RECEIVE_DATA;
					end
            end
            RECEIVE_DATA : begin
               if (clk_count < 5'd7) begin
                  state     <= RECEIVE_DATA;
						clk_count <= clk_count + 1'b1;
					end
               else begin
                  state     <= DISABLE_CHIP;
						clk_count <= 5'd0;
					end
            end
            DISABLE_CHIP : begin
               state <= MOVE_DATA;
            end
            MOVE_DATA : begin
               if (clk_count < 5'd7) begin
                  state     <= MOVE_DATA;
						clk_count <= clk_count + 1'b1;
					end
               else begin
                  state     <= IDLE;
						clk_count <= 5'd0;
					end
            end
         endcase
		end
	end
   
   // latch the incoming SPI data
   always @(negedge inv_clk_in) begin
      case (state)
         ISSUE_ADDR   : spi_data <= 8'b0;
         RECEIVE_DATA : spi_data <= { spi_data[6:0], miso };
         DISABLE_CHIP : spi_data <= { spi_data[6:0], miso };
         default      : spi_data <= spi_data;
      endcase
   end
	
	// MOSI assignment
   always@(*) begin
      case (state)
         ISSUE_CMD  : mosi = read_cmd[clk_count];
         ISSUE_ADDR : mosi = read_addr[clk_count];
         default    : mosi = 1'b0;
      endcase
   end
   
   // chip-enable assignment
   always@(*) begin
      case (state)
         RESET        : ce_n = 1'b1;
         ENABLE_CHIP  : ce_n = 1'b0;
         ISSUE_CMD    : ce_n = 1'b0;
         ISSUE_ADDR   : ce_n = 1'b0;
         RECEIVE_DATA : ce_n = 1'b0;
         DISABLE_CHIP : ce_n = 1'b0;
         MOVE_DATA    : ce_n = 1'b1;
         default      : ce_n = 1'b1;
      endcase
   end
   
   // serial clock assignment
   always@(*) begin
      case (state)
         ISSUE_CMD    : sclk = inv_clk_in;
         ISSUE_ADDR   : sclk = inv_clk_in;
         RECEIVE_DATA : sclk = inv_clk_in;
         default      : sclk = 1'b0;
      endcase
   end
   
   // data ready flag assignment
   always@(posedge clk_in) begin
      case (state)
         RESET        : data_ready <= 1'b0;
         ISSUE_CMD    : data_ready <= 1'b0;
         DISABLE_CHIP : data_ready <= 1'b1;
         default      : data_ready <= data_ready;
      endcase
   end
	
	// state debugging output
	// assign state_out = state;

endmodule // SpiInterface

module I2sInterface
(
   input        clk,
   input        reset,
   input        lrclk,
   input        sclk,
   input [10:0] sample_data,
   output reg   data_out  
);

   // generate a pulse for every low-to-high transition of the LR clock
   reg a, b;
   wire lr_trig = a & ~b;
   always@(posedge clk) begin
      a <= lrclk;
      b <= a;
   end
   
   // generate a pulse for every low-to-high transition of the serial clock
   reg c, d;
   wire s_trig = c & ~d;
   always@(posedge clk) begin
      c <= ~sclk;
      d <= c;
   end

   reg [3:0] shift_count;

   parameter RESET       = 2'd0;
   parameter SYNC        = 2'd1;
   parameter SHIFT_RIGHT = 2'd2;
   parameter SHIFT_LEFT  = 2'd3;
   
   reg [1:0] state;
   always@(posedge clk) begin
      if (reset) begin
         state <= RESET;
         shift_count <= 4'd0;
      end
      else begin
         case (state)
            RESET : begin
               state <= SYNC;
               shift_count <= 4'd0;
            end
            // wait for an LR transition becore starting the shift count
            SYNC : begin
               if (lr_trig) begin
                  state <= SHIFT_RIGHT;
                  if (s_trig)
                     shift_count <= 4'd15;
                  else
                     shift_count <= shift_count;
               end
               else begin
                  state       <= SYNC;
                  shift_count <= 4'd0;
               end
            end
            SHIFT_RIGHT : begin
               if (shift_count == 4'd0) begin
                  if (s_trig) begin
                     shift_count <= 4'd15;
                     state       <= SHIFT_LEFT;
                  end
                  else begin
                     shift_count <= shift_count;
                     state       <= SHIFT_RIGHT;
                   end
               end
               else begin
                  state  <= SHIFT_RIGHT;
                  if (s_trig)
                     shift_count <= shift_count - 1'b1;
                  else
                     shift_count <= shift_count;
               end
            end
            SHIFT_LEFT : begin
               if (shift_count == 4'd0) begin                  
                  if (s_trig) begin
                     shift_count <= 4'd15;
                     state       <= SHIFT_RIGHT;
                  end
                  else begin
                     shift_count <= shift_count;
                     state       <= SHIFT_LEFT;
                   end
               end
               else begin
                  state <= SHIFT_LEFT;
                  if (s_trig)
                     shift_count <= shift_count - 1'b1;
                  else
                     shift_count <= shift_count;
               end
            end
         endcase
      end
   end
   
   // shift the sample data out the the I2S serial output, MSB first
   // fill the lowest 5 bits with zeros to boost the sample to full 16-bit scale
   always@(posedge clk) begin
      if (s_trig) begin
         if (shift_count > 3'd4) begin
            data_out <= sample_data[shift_count - 3'd5];
         end
         else begin
            data_out <= 1'b0;
         end
      end
      else begin
         data_out <= data_out;
      end
   end

endmodule
