--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:43:51 10/21/2025
-- Design Name:   
-- Module Name:   /home/ise/vdhl-modules/CIRCUITOSVhdlCircuito4_HSF/CIRCUITOSVhdlCircuito4_HSF_Test_Bench.vhd
-- Project Name:  CIRCUITOSVhdlCircuito4_HSF
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CIRCUITOSVhdlCircuito4_HSF
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
 
ENTITY CIRCUITOSVhdlCircuito4_HSF_Test_Bench IS
END CIRCUITOSVhdlCircuito4_HSF_Test_Bench;
 
ARCHITECTURE sim OF CIRCUITOSVhdlCircuito4_HSF_Test_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CIRCUITOSVhdlCircuito4_HSF
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         d : IN  std_logic;
         s : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a, b, c, d : std_logic;

 	--Outputs
   signal s : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CIRCUITOSVhdlCircuito4_HSF PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
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
