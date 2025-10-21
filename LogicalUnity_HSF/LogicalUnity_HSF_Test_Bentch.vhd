----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
--
-- Create Date:    05:20:00 10/21/2025
-- Design Name:    Testbench for LogicalUnity_HSF
-- Module Name:    LogicalUnity_HSF_tb - sim
-- Project Name:   LogicalUnity_HSF
-- Target Devices: 
-- Tool versions: 
-- Description:    Testbench para simulação da unidade lógica com MUX 4x1
--
----------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY LogicalUnity_HSF_tb IS
END LogicalUnity_HSF_tb;

ARCHITECTURE sim OF LogicalUnity_HSF_tb IS

    -- Componente a ser testado
    COMPONENT LogicalUnity_HSF
        PORT(
            A  : IN  std_logic;
            B  : IN  std_logic;
            F0 : IN  std_logic;
            F1 : IN  std_logic;
            S  : OUT std_logic
        );
    END COMPONENT;

    -- Entradas
    signal A, B, F0, F1 : std_logic := '0';

    -- Saída
    signal S : std_logic;

BEGIN

    -- Instanciação do UUT (Unit Under Test)
    uut: LogicalUnity_HSF
        PORT MAP (
            A => A,
            B => B,
            F0 => F0,
            F1 => F1,
            S => S
        );

    -- Processo de estímulos
    stim_proc: process
    begin
        -- 16 combinações possíveis (A,B,F1,F0)
        A <= '0'; B <= '0'; F1 <= '0'; F0 <= '0'; wait for 10 ns;
        A <= '0'; B <= '0'; F1 <= '0'; F0 <= '1'; wait for 10 ns;
        A <= '0'; B <= '0'; F1 <= '1'; F0 <= '0'; wait for 10 ns;
        A <= '0'; B <= '0'; F1 <= '1'; F0 <= '1'; wait for 10 ns;

        A <= '0'; B <= '1'; F1 <= '0'; F0 <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; F1 <= '0'; F0 <= '1'; wait for 10 ns;
        A <= '0'; B <= '1'; F1 <= '1'; F0 <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; F1 <= '1'; F0 <= '1'; wait for 10 ns;

        A <= '1'; B <= '0'; F1 <= '0'; F0 <= '0'; wait for 10 ns;
        A <= '1'; B <= '0'; F1 <= '0'; F0 <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; F1 <= '1'; F0 <= '0'; wait for 10 ns;
        A <= '1'; B <= '0'; F1 <= '1'; F0 <= '1'; wait for 10 ns;

        A <= '1'; B <= '1'; F1 <= '0'; F0 <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; F1 <= '0'; F0 <= '1'; wait for 10 ns;
        A <= '1'; B <= '1'; F1 <= '1'; F0 <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; F1 <= '1'; F0 <= '1'; wait for 10 ns;
    end process;

END sim;