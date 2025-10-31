----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Heitor
-- 
-- Create Date:    22:51:16 10/31/2025 
-- Design Name:    Counter_HSF
-- Module Name:    Counter_HSF - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    Contador decrescente de 4 bits com load síncrono e reset assíncrono
--
-- Dependencies:   IEEE.STD_LOGIC_1164, IEEE.NUMERIC_STD
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- necessário para operações aritméticas

entity Counter_HSF is
    Port (
        ck  : in  STD_LOGIC;                       -- clock
        ld  : in  STD_LOGIC;                       -- load síncrono
        rst : in  STD_LOGIC;                       -- reset assíncrono
        d   : in  STD_LOGIC_VECTOR(3 downto 0);    -- valor de entrada (4 bits)
        q   : out STD_LOGIC_VECTOR(3 downto 0)     -- saída (4 bits)
    );
end Counter_HSF;

architecture Behavioral of Counter_HSF is
    signal q_reg : unsigned(3 downto 0) := (others => '0'); -- registrador interno
begin

    process(ck, rst)
    begin
        if (rst = '1') then
            q_reg <= (others => '0');               -- reset assíncrono
        elsif rising_edge(ck) then
            if (ld = '1') then
                q_reg <= unsigned(d);               -- carrega valor de entrada
            else
                if (q_reg > 0) then
                    q_reg <= q_reg - 1;             -- decrementa
                else
                    q_reg <= "1111";                -- se zero, volta para 15
                end if;
            end if;
        end if;
    end process;

    q <= std_logic_vector(q_reg);                   -- saída
end Behavioral;