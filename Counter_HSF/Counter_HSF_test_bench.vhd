----------------------------------------------------------------------------------
-- Testbench para o módulo Counter_HSF
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_Counter_HSF is
-- Testbench não tem portas
end tb_Counter_HSF;

architecture sim of tb_Counter_HSF is

    -- Component instanciado
    component Counter_HSF
        Port (
            ck  : in  STD_LOGIC;
            ld  : in  STD_LOGIC;
            rst : in  STD_LOGIC;
            d   : in  STD_LOGIC_VECTOR(3 downto 0);
            q   : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;

    -- Sinais internos para conectar ao DUT (Device Under Test)
    signal ck_tb  : STD_LOGIC := '0';
    signal ld_tb  : STD_LOGIC := '0';
    signal rst_tb : STD_LOGIC := '0';
    signal d_tb   : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal q_tb   : STD_LOGIC_VECTOR(3 downto 0);

    -- Clock period
    constant clk_period : time := 10 ns;

begin

    -- Instancia o DUT
    uut: Counter_HSF
        port map (
            ck  => ck_tb,
            ld  => ld_tb,
            rst => rst_tb,
            d   => d_tb,
            q   => q_tb
        );

    -- Geração do clock
    clk_process : process
    begin
        while true loop
            ck_tb <= '0';
            wait for clk_period/2;
            ck_tb <= '1';
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

        -- Carrega valor 10
        d_tb <= "1010";   -- 10 em binário
        ld_tb <= '1';
        wait for clk_period;
        ld_tb <= '0';

        -- Deixa contar por alguns ciclos
        wait for 100 ns;

        -- Carrega valor 3
        d_tb <= "0011";   -- 3 em binário
        ld_tb <= '1';
        wait for clk_period;
        ld_tb <= '0';

        -- Deixa contar até zerar e voltar para 15
        wait for 200 ns;

        -- Finaliza simulação
        wait;
    end process;

end sim;