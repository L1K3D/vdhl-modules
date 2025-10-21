----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:49:04 10/21/2025 
-- Design Name: 
-- Module Name:    LogicalUnity_HSF - Behavioral 
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
----------------------------------------------------------------------------------library IEEE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LogicalUnity_HSF is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           F0 : in  STD_LOGIC;
           F1 : in  STD_LOGIC;
           S  : out STD_LOGIC);
end LogicalUnity_HSF;

architecture Behavioral of LogicalUnity_HSF is
    -- sinais internos
    signal P1 : STD_LOGIC;  -- A AND B
    signal P2 : STD_LOGIC;  -- A OR B
    signal negative_A : STD_LOGIC;
    signal negative_B : STD_LOGIC;
    signal sel : STD_LOGIC_VECTOR(1 downto 0); -- seletor do MUX
begin
    -- operações básicas
    P1 <= A and B;
    P2 <= A or B;
    negative_A <= not A;
    negative_B <= not B;

    -- junta F1 e F0 em um vetor
    sel <= F1 & F0;

    -- MUX 4x1
    process(sel, P1, P2, negative_A, negative_B)
    begin
        case sel is
            when "00" => S <= P1;
            when "01" => S <= P2;
            when "10" => S <= negative_A;
            when "11" => S <= negative_B;
            when others => S <= '0';
        end case;
    end process;
end Behavioral;