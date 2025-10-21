--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:55:29 10/20/2025
-- Design Name:   
-- Module Name:   /home/ise/vdhl/CIRCUITOSVhdlCircuito1_HSF/CIRCUITOSVhdlCircuito1_HSF_test_bench.vhd
-- Project Name:  CIRCUITOSVhdlCircuito1_HSF
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CIRCUITOSVhdlCircuito1_HSF
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
 
ENTITY CIRCUITOSVhdlCircuito1_HSF_test_bench IS
END CIRCUITOSVhdlCircuito1_HSF_test_bench;
 
ARCHITECTURE sim OF CIRCUITOSVhdlCircuito1_HSF_test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CIRCUITOSVhdlCircuito1_HSF
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         d : IN  std_logic;
         t1 : INOUT  std_logic;
         t2 : INOUT  std_logic;
         negative_t2 : INOUT  std_logic;
         negative_b : INOUT  std_logic;
         t3 : INOUT  std_logic;
         negative_t3 : INOUT  std_logic;
         t4 : INOUT  std_logic;
         t5 : INOUT  std_logic;
         s : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';

	--BiDirs
   signal t1 : std_logic;
   signal t2 : std_logic;
   signal negative_t2 : std_logic;
   signal negative_b : std_logic;
   signal t3 : std_logic;
   signal negative_t3 : std_logic;
   signal t4 : std_logic;
   signal t5 : std_logic;

 	--Outputs
   signal s : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CIRCUITOSVhdlCircuito1_HSF PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          t1 => t1,
          t2 => t2,
          negative_t2 => negative_t2,
          negative_b => negative_b,
          t3 => t3,
          negative_t3 => negative_t3,
          t4 => t4,
          t5 => t5,
          s => s
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
	a <= '0'; b <= '0'; c <= '0'; d <= '0'; wait for 10 ns;
	a <= '0'; b <= '0'; c <= '0'; d <= '1'; wait for 10 ns;
	a <= '0'; b <= '0'; c <= '1'; d <= '0'; wait for 10 ns;
	a <= '0'; b <= '0'; c <= '1'; d <= '1'; wait for 10 ns;
	a <= '0'; b <= '1'; c <= '0'; d <= '0'; wait for 10 ns;
	a <= '0'; b <= '1'; c <= '0'; d <= '1'; wait for 10 ns;
	a <= '0'; b <= '1'; c <= '1'; d <= '0'; wait for 10 ns;
	a <= '0'; b <= '1'; c <= '1'; d <= '1'; wait for 10 ns;
	a <= '1'; b <= '0'; c <= '0'; d <= '0'; wait for 10 ns;
	a <= '1'; b <= '0'; c <= '0'; d <= '1'; wait for 10 ns;
	a <= '1'; b <= '0'; c <= '1'; d <= '0'; wait for 10 ns;
	a <= '1'; b <= '0'; c <= '1'; d <= '1'; wait for 10 ns;
	a <= '1'; b <= '1'; c <= '0'; d <= '0'; wait for 10 ns;
	a <= '1'; b <= '1'; c <= '0'; d <= '1'; wait for 10 ns;
	a <= '1'; b <= '1'; c <= '1'; d <= '0'; wait for 10 ns;
	a <= '1'; b <= '1'; c <= '1'; d <= '1'; wait for 10 ns;
   end process;

END;
