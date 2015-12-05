`timescale 1ns / 1ps

module SnesRegister
(
   input             sys_clk,
   input             sys_reset,
   input             latch_data,
   input      [11:0] snes_buttons,
   output reg [ 3:0] button_num
);

   always@(posedge sys_clk) begin
      if (sys_reset) begin
         button_num <= 4'd0;
      end
      else if (latch_data) begin
         casex (snes_buttons)
            12'b1xxxxxxxxxxx : button_num <= 4'd6;  // B
            12'b01xxxxxxxxxx : button_num <= 4'd8;  // Y
            12'b001xxxxxxxxx : button_num <= 4'd11; // select
            12'b0001xxxxxxxx : button_num <= 4'd12; // start 
            12'b00001xxxxxxx : button_num <= 4'd1;  // up
            12'b000001xxxxxx : button_num <= 4'd2;  // down
            12'b0000001xxxxx : button_num <= 4'd3;  // left
            12'b00000001xxxx : button_num <= 4'd4;  // right
            12'b000000001xxx : button_num <= 4'd5;  // A
            12'b0000000001xx : button_num <= 4'd7;  // X
            12'b00000000001x : button_num <= 4'd9;  // L
            12'b000000000001 : button_num <= 4'd10; // R
            default          : button_num <= 4'd0;            
         endcase
      end
      else begin
         button_num <= button_num;
      end
   end

endmodule

module SnesInterface
(
   input             sys_clk,       // 16MHz Clock
   input             sys_reset,
   input             read_enable,   // Triggers a read from the SNES controller
   input             snes_data,     // Data from the SNES controller shift registers
   output reg        snes_latch,    // Pulse sent to the SNES controller to latch the state of the buttons
   output reg        snes_pulse,    // Pulses sent to shift out the button values from the SNES controller
   output reg [11:0] snes_buttons,  // Button states read from the SNES controller
   output reg        read_complete
);

   // FSM States
   parameter RESET    = 3'd0;
   parameter IDLE     = 3'd1;
   parameter LATCH    = 3'd2;
   parameter WAIT1    = 3'd3;
   parameter SHIFT_HI = 3'd4;
   parameter SHIFT_LO = 3'd5;
   
   reg [2:0] state;   
   
   // count used for dividing the 16MHz system clock
   reg [1:0] count;   
   
   // keep track of how many buttons have been shifted in
   reg [3:0] button_count;
   
   // FSM
   always@(posedge sys_clk) begin
      snes_latch    <= 1'b0;
      snes_pulse    <= 1'b0;
      count         <= 2'd0;
      button_count  <= button_count;
      read_complete <= 1'b0;
      if (sys_reset) begin
         state        <= RESET;
         button_count <= 1'b0;
      end
      else begin
         case (state)
            RESET : begin
               state        <= IDLE;
               button_count <= 1'b0;
            end
            IDLE : begin
               if (read_enable) begin
                  state      <= LATCH;
                  snes_latch <= 1'b1;
               end
               else begin
                  state <= IDLE;
               end
            end
            // hold the latch high for ~250ns
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
            // wait for 1/2 period of the snes_pulse clock (62.5ns)
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
                     state         <= IDLE;
                     button_count  <= 4'd0;
                     read_complete <= 1'b1;
                  end
               end
            end
            default  : begin
               state <= IDLE;
            end
         endcase
      end   
   end   
   
   wire   data_latch;
   assign data_latch = snes_latch | snes_pulse;
   
   // latch the button data on the falling edge of the latch and pulse signals
   always @(negedge data_latch) begin      
      snes_buttons <= snes_buttons;
      case (state)
         LATCH    : snes_buttons <= { snes_buttons[10:0], ~snes_data };
         WAIT1    : snes_buttons <= { snes_buttons[10:0], ~snes_data };
         SHIFT_HI : snes_buttons <= { snes_buttons[10:0], ~snes_data };
         SHIFT_LO : snes_buttons <= { snes_buttons[10:0], ~snes_data };
         default  : snes_buttons <= snes_buttons;
      endcase
   end

endmodule // SnesInterface
