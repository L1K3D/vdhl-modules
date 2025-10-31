----------------------------------------------------------------------------------
-- Testbench para a Máquina de Estados maq_est2
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity StatesMachine_HSF_test_bench is
end StatesMachine_HSF_test_bench;

architecture sim of StatesMachine_HSF_test_bench is

    component StatesMachine_HSF
        Port (
            tok   : in  STD_LOGIC;
            rst   : in  STD_LOGIC;
            sube  : in  STD_LOGIC;
            baja  : in  STD_LOGIC;
            q     : out STD_LOGIC_VECTOR (1 downto 0)
        );
    end component;

    -- Sinais internos para conectar ao DUT
    signal tok_tb   : STD_LOGIC := '0';
    signal rst_tb   : STD_LOGIC := '0';
    signal sube_tb  : STD_LOGIC := '0';
    signal baja_tb  : STD_LOGIC := '0';
    signal q_tb     : STD_LOGIC_VECTOR(1 downto 0);

    -- Período do clock
    constant clk_period : time := 10 ns;

begin

    -- Instancia o DUT
    uut: StatesMachine_HSF
        port map (
            tok   => tok_tb,
            rst   => rst_tb,
            sube  => sube_tb,
            baja  => baja_tb,
            q     => q_tb
        );

    -- Geração do clock
    clk_process : process
    begin
        while true loop
            tok_tb <= '0';
            wait for clk_period/2;
            tok_tb <= '1';
            wait for clk_period/2;
        end loop;
    end process;

    -- Estímulos de teste
    stim_proc: process
    begin
        -- Reset inicial
        rst_tb <= '1';
        wait for 20 ns;
        rst_tb <= '0';

        -- Testa transição com sube
        sube_tb <= '1';
        wait for clk_period;
        sube_tb <= '0';
        wait for 40 ns;

        -- Testa transição com baja
        baja_tb <= '1';
        wait for clk_period;
        baja_tb <= '0';
        wait for 40 ns;

        -- Alterna entradas para explorar estados
        sube_tb <= '1';
        wait for clk_period;
        sube_tb <= '0';
        wait for 40 ns;

        baja_tb <= '1';
        wait for clk_period;
        baja_tb <= '0';
        wait for 40 ns;

        -- Finaliza simulação
        wait;
    end process;

end sim;