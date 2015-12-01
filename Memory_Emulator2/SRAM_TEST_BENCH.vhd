--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:49:24 11/25/2015
-- Design Name:   
-- Module Name:   C:/Users/Travis/Documents/GitHub/ECE6710_06/Memory_Emulator/Memory_Emulator2/SRAM_TEST_BENCH.vhd
-- Project Name:  Memory_Emulator2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: StackMemory
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY SRAM_TEST_BENCH IS
END SRAM_TEST_BENCH;
 
ARCHITECTURE behavior OF SRAM_TEST_BENCH IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT StackMemory
    PORT(
         clk : IN  std_logic;
         CE : IN  std_logic;
         OE : IN  std_logic;
         WE : IN  std_logic;
         input_data : IN  std_logic_vector(31 downto 0);
         address : IN  std_logic_vector(9 downto 0);
         stackData : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal CE : std_logic := '0';
   signal OE : std_logic := '0';
   signal WE : std_logic := '0';
   signal input_data : std_logic_vector(31 downto 0) := (others => '0');
   signal address : std_logic_vector(9 downto 0) := (others => '0');

 	--Outputs
   signal stackData : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: StackMemory PORT MAP (
          clk => clk,
          CE => CE,
          OE => OE,
          WE => WE,
          input_data => input_data,
          address => address,
          stackData => stackData
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
