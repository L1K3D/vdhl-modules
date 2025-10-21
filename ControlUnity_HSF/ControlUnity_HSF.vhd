----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:54:29 10/21/2025 
-- Design Name: 
-- Module Name:    ControlUnity_HSF - Behavioral 
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

entity ControlUnity_HSF is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
			  LU_P1 : inout STD_LOGIC;
			  LU_P2 : inout STD_LOGIC;
			  negative_B : inout STD_LOGIC;
           F0 : in  STD_LOGIC;
           F1 : in  STD_LOGIC;
			  negative_F0 : inout STD_LOGIC;
			  negative_F1 : inout STD_LOGIC;
			  DEC_P1 : inout STD_LOGIC;
			  DEC_P2 : inout STD_LOGIC;
			  DEC_P3 : inout STD_LOGIC;
			  DEC_P4 : inout STD_LOGIC;
			  LU_DEC_P1 : inout STD_LOGIC;
			  LU_DEC_P2 : inout STD_LOGIC;
			  LU_DEC_P3 : inout STD_LOGIC;
			  CA_P1 : inout STD_LOGIC;
			  CA_P2 : inout STD_LOGIC;
			  CA_P3 : inout STD_LOGIC;
			  CA_P4 : inout STD_LOGIC;
			  CA_P5 : inout STD_LOGIC;
			  CA_P6 : inout STD_LOGIC;
           Vem_1 : in  STD_LOGIC;
           Saida : out  STD_LOGIC;
           Vai_1 : out  STD_LOGIC);
end ControlUnity_HSF;

architecture Behavioral of ControlUnity_HSF is

begin
--Logical Unity Basics
LU_P1 <= A and B;
LU_P2 <= A or B;
negative_B <= not B;

--Decoder Basics
DEC_P1 <= negative_F0 and negative_F1;
DEC_P2 <= negative_F0 and F1;
DEC_P3 <= F0 and negative_F1;
DEC_P4 <= F0 and F1;

--Logical Unity X Decoder
LU_DEC_P1 <= LU_P1 and DEC_P1;
LU_DEC_P2 <= LU_P2 and DEC_P2;
LU_DEC_P3 <= negative_B and DEC_P3;

--Complete Adder
CA_P1 <= (not A) and (not B);
CA_P2 <= A and B and DEC_P4;
CA_P3 <= Vem_1 and CA_P1 and DEC_P4;
CA_P4 <= (not Vem_1) or (not CA_P1);
CA_P5 <= CA_P2 and CA_P3;
Vai_1 <= CA_P5;
CA_P6 <= CA_P4 and DEC_P4;

--Final
Saida <= LU_DEC_P1 or LU_DEC_P2 or LU_DEC_P3 or CA_P6;

end Behavioral;

