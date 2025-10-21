----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:33:43 10/20/2025 
-- Design Name: 
-- Module Name:    CIRCUITOSVhdlCircuito2_HSF - Behavioral 
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

entity CIRCUITOSVhdlCircuito2_HSF is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
			  t1 : inout STD_LOGIC;
			  t2 : inout STD_LOGIC;
			  t3 : inout STD_LOGIC;
			  t4 : inout STD_LOGIC;
			  t5 : inout STD_LOGIC;
			  t6 : inout STD_LOGIC;
			  t7 : inout STD_LOGIC;
			  t8 : inout STD_LOGIC;
			  t9 : inout STD_LOGIC;
			  t10 : inout STD_LOGIC;
			  t11 : inout STD_LOGIC;
           s : out  STD_LOGIC);
end CIRCUITOSVhdlCircuito2_HSF;

architecture Behavioral of CIRCUITOSVhdlCircuito2_HSF is

begin
--First column
t1<=b and (not d);
t2<=(not b) and d;
t3<=c and d;
t4<=(not a) or c;
t5<=b and d;

--Second column
t6<=t1 or a;
t7<=t2 or t3;
t8<=t4 and (not t5);

--Third column
t9<=(not t6) and t7;
t10<=c or t8;

--Final
t11<=(not t9) and (not t10);
s<=t11;

end Behavioral;

