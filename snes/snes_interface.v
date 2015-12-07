`timescale 1ns / 1ps

module SnesInterface
(
   input             sys_clk,       // 12.5MHz Clock
   input             sys_reset,
   input      [1:0]  address,
   input             read_enable,   // Reads the latched data for the controller specified by the read address
   output reg [11:0] read_data,     // The button data for the specified controller
   input      [1:0]  snes_data,     // Data returned from the SNES controller shift registers
   output reg        snes_latch,    // Pulse sent to the SNES controller to latch the state of the buttons
   output reg        snes_pulse     // Pulses sent to shift out the button values from the SNES controller
);

   // count used for dividing the 12.5MHz system clock
   reg [1:0] count;

   // keep track of how many button values have been shifted in
   reg [3:0] button_count;

   // put the selected controller's button values on the output
   always@(posedge sys_clk) begin
      if (sys_reset) begin
         read_data <= 12'd0;
      end
      else if (read_enable) begin
         case (address)
            0       : read_data <= buttons_0;
            1       : read_data <= buttons_1;
            default : read_data <= read_data; 
         endcase
      end
      else begin
         read_data <= read_data;
      end
   end

   // FSM States
   parameter RESET    = 3'd0;
   parameter IDLE     = 3'd1;
   parameter LATCH    = 3'd2;
   parameter WAIT1    = 3'd3;
   parameter SHIFT_HI = 3'd4;
   parameter SHIFT_LO = 3'd5;

   // FSM
   reg [2:0] state;
   always@(posedge sys_clk) begin
      snes_latch     <= 1'b0;
      snes_pulse     <= 1'b0;
      count          <= 2'd0;
      button_count   <= button_count;
      if (sys_reset) begin
         state          <= RESET;
         count          <= 2'd0;
         button_count   <= 1'b0;
      end
      else begin
         case (state)
            RESET : begin
               state        <= IDLE;
               button_count <= 1'b0;
            end
            IDLE : begin
               if (read_enable & address[1]) begin
                  state      <= LATCH;
                  snes_latch <= 1'b1;
               end
               else begin
                  state <= IDLE;
               end
            end
            // hold the latch signal high for more than 200ns
            LATCH : begin
               if (count < 2'd3) begin
                  state      <= LATCH;
                  snes_latch <= 1'b1;
                  count      <= count + 1'd1;
               end
               else begin
                  state <= WAIT1;
                  count <= 2'd0;
               end
            end
            // wait for 1/2 period of the snes_pulse clock
            WAIT1 : begin
               if (count < 2'd1) begin
                  state <= WAIT1;
                  count <= 2'd1;
               end
               else begin
                  state        <= SHIFT_HI;
                  snes_pulse   <= 1'b1;
                  button_count <= 4'd1;
                  count        <= 2'd0;
               end
            end
            SHIFT_HI : begin
               if (count < 2'd1) begin
                  state      <= SHIFT_HI;
                  snes_pulse <= 1'b1;
                  count      <= 2'd1;
               end
               else begin
                  state      <= SHIFT_LO;
                  snes_pulse <= 1'b0;
                  count      <= 2'd0;
               end
            end
            SHIFT_LO : begin
               if (count < 2'd1) begin
                  state <= SHIFT_LO;
                  count <= 2'd1;
               end
               else begin
                  count <= 2'd0;
                  if (button_count < 4'd11) begin
                     state        <= SHIFT_HI;
                     snes_pulse   <= 1'b1;
                     button_count <= button_count + 1'd1;
                  end
                  else begin
                     state        <= IDLE;
                     button_count <= 4'd0;
                  end
               end
            end
            default  : begin
               state <= IDLE;
            end
         endcase
      end
   end

   // registers to hold the data shifted in from each controller
   reg [11:0] buttons_0;
   reg [11:0] buttons_1;

   wire   data_latch;
   assign data_latch = snes_latch | snes_pulse;

   // latch the button data on the falling edge of the latch and pulse signals
   always @(negedge data_latch) begin
      if (state == LATCH | state == WAIT1 | state == SHIFT_HI | state == SHIFT_LO) begin
         buttons_0 <= { buttons_0[10:0], ~snes_data[0] };
         buttons_1 <= { buttons_1[10:0], ~snes_data[1] };
      end
      else begin
         buttons_0 <= buttons_0;
         buttons_1 <= buttons_1;
      end
   end

endmodule // SnesInterface
