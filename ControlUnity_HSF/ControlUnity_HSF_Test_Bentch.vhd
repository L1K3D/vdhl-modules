----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
--
-- Create Date:    04:55:00 10/21/2025
-- Design Name:    Testbench for ControlUnity_HSF
-- Module Name:    ControlUnity_HSF_tb - sim
-- Project Name:   ControlUnity_HSF
-- Target Devices: 
-- Tool versions: 
-- Description:    Testbench simplificado (apenas entradas e saídas principais)
--
----------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ControlUnity_HSF_tb IS
END ControlUnity_HSF_tb;

ARCHITECTURE sim OF ControlUnity_HSF_tb IS

    -- Componente a ser testado
    COMPONENT ControlUnity_HSF
        PORT(
            A      : IN  std_logic;
            B      : IN  std_logic;
            F0     : IN  std_logic;
            F1     : IN  std_logic;
            Vem_1  : IN  std_logic;
            Saida  : OUT std_logic;
            Vai_1  : OUT std_logic
        );
    END COMPONENT;

    -- Entradas
    signal A, B, F0, F1, Vem_1 : std_logic;

    -- Saídas
    signal Saida, Vai_1 : std_logic;

BEGIN

    -- Instanciação do UUT
    uut: ControlUnity_HSF
        PORT MAP (
            A => A,
            B => B,
            F0 => F0,
            F1 => F1,
            Vem_1 => Vem_1,
            Saida => Saida,
            Vai_1 => Vai_1
        );

    -- Processo de estímulos
    stim_proc: process
    begin
        -- 32 combinações possíveis
        A <= '0'; B <= '0'; F0 <= '0'; F1 <= '0'; Vem_1 <= '0'; wait for 10 ns;
        A <= '0'; B <= '0'; F0 <= '0'; F1 <= '0'; Vem_1 <= '1'; wait for 10 ns;
        A <= '0'; B <= '0'; F0 <= '0'; F1 <= '1'; Vem_1 <= '0'; wait for 10 ns;
        A <= '0'; B <= '0'; F0 <= '0'; F1 <= '1'; Vem_1 <= '1'; wait for 10 ns;
        A <= '0'; B <= '0'; F0 <= '1'; F1 <= '0'; Vem_1 <= '0'; wait for 10 ns;
        A <= '0'; B <= '0'; F0 <= '1'; F1 <= '0'; Vem_1 <= '1'; wait for 10 ns;
        A <= '0'; B <= '0'; F0 <= '1'; F1 <= '1'; Vem_1 <= '0'; wait for 10 ns;
        A <= '0'; B <= '0'; F0 <= '1'; F1 <= '1'; Vem_1 <= '1'; wait for 10 ns;

        A <= '0'; B <= '1'; F0 <= '0'; F1 <= '0'; Vem_1 <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; F0 <= '0'; F1 <= '0'; Vem_1 <= '1'; wait for 10 ns;
        A <= '0'; B <= '1'; F0 <= '0'; F1 <= '1'; Vem_1 <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; F0 <= '0'; F1 <= '1'; Vem_1 <= '1'; wait for 10 ns;
        A <= '0'; B <= '1'; F0 <= '1'; F1 <= '0'; Vem_1 <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; F0 <= '1'; F1 <= '0'; Vem_1 <= '1'; wait for 10 ns;
        A <= '0'; B <= '1'; F0 <= '1'; F1 <= '1'; Vem_1 <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; F0 <= '1'; F1 <= '1'; Vem_1 <= '1'; wait for 10 ns;

        A <= '1'; B <= '0'; F0 <= '0'; F1 <= '0'; Vem_1 <= '0'; wait for 10 ns;
        A <= '1'; B <= '0'; F0 <= '0'; F1 <= '0'; Vem_1 <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; F0 <= '0'; F1 <= '1'; Vem_1 <= '0'; wait for 10 ns;
        A <= '1'; B <= '0'; F0 <= '0'; F1 <= '1'; Vem_1 <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; F0 <= '1'; F1 <= '0'; Vem_1 <= '0'; wait for 10 ns;
        A <= '1'; B <= '0'; F0 <= '1'; F1 <= '0'; Vem_1 <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; F0 <= '1'; F1 <= '1'; Vem_1 <= '0'; wait for 10 ns;
        A <= '1'; B <= '0'; F0 <= '1'; F1 <= '1'; Vem_1 <= '1'; wait for 10 ns;

        A <= '1'; B <= '1'; F0 <= '0'; F1 <= '0'; Vem_1 <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; F0 <= '0'; F1 <= '0'; Vem_1 <= '1'; wait for 10 ns;
        A <= '1'; B <= '1'; F0 <= '0'; F1 <= '1'; Vem_1 <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; F0 <= '0'; F1 <= '1'; Vem_1 <= '1'; wait for 10 ns;
        A <= '1'; B <= '1'; F0 <= '1'; F1 <= '0'; Vem_1 <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; F0 <= '1'; F1 <= '0'; Vem_1 <= '1'; wait for 10 ns;
        A <= '1'; B <= '1'; F0 <= '1'; F1 <= '1'; Vem_1 <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; F0 <= '1'; F1 <= '1'; Vem_1 <= '1'; wait for 10 ns;
    end process;

END sim;