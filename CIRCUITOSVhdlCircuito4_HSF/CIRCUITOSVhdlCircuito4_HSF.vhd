----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:41:02 10/21/2025 
-- Design Name: 
-- Module Name:    CIRCUITOSVhdlCircuito4_HSF - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CIRCUITOSVhdlCircuito4_HSF is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
			  t1 : inout  STD_LOGIC;
			  t2 : inout  STD_LOGIC;
			  t3 : inout  STD_LOGIC;
			  t4 : inout  STD_LOGIC;
			  t5 : inout  STD_LOGIC;
           s : out  STD_LOGIC);
end CIRCUITOSVhdlCircuito4_HSF;

architecture Behavioral of CIRCUITOSVhdlCircuito4_HSF is

begin
--First column
t1<=(not a) and b;
t2<=a and (not b);
t3<=c or d;

--Second column
t4<=(not t1) or (not t2) or (not c);

--Final
t5<=(not t4) and t3;
s<=t5;

end Behavioral;

