----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:42:03 10/10/2025 
-- Design Name: 
-- Module Name:    circuito_1 - Behavioral 
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

entity circuito_1 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
			  t1 : inout STD_LOGIC;
			  t2 : inout STD_LOGIC;
			  negative_t2 : inout STD_LOGIC;
			  negative_b : inout STD_LOGIC;
			  t3 : inout STD_LOGIC;
			  negative_t3 : inout STD_LOGIC;
			  t4 : inout STD_LOGIC;
			  t5 : inout STD_LOGIC;
           s : out  STD_LOGIC);
end circuito_1;

architecture Behavioral of circuito_1 is

begin
t1<=a or b;

t2<=a and c;
negative_t2<= not t2;

negative_b<= not b;

t3<=negative_b and d;
negative_t3<= not t3;

t4<=negative_t2 and t1;

t5<=t4 or negative_t3;
s<= not t5;

end Behavioral;

