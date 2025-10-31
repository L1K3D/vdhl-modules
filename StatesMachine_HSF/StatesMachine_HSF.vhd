----------------------------------------------------------------------------------
-- Máquina de Estados Finita (FSM)
-- Autor: Heitor
-- Descrição: FSM com entradas "sube" e "baja", controlada por clock "tok"
--            e saída de 2 bits "q" que depende do estado atual.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity StatesMachine_HSF is
    Port (
        tok   : in  STD_LOGIC;                     -- clock (borda de subida)
        rst   : in  STD_LOGIC;                     -- reset assíncrono
        sube  : in  STD_LOGIC;                     -- entrada
        baja  : in  STD_LOGIC;                     -- entrada
        q     : out STD_LOGIC_VECTOR (1 downto 0)  -- saída codificada
    );
end StatesMachine_HSF;

architecture Behavioral of StatesMachine_HSF is

    -- Definição dos estados
    type state_type is (iniciar, caso_a, caso_b, caso_c, caso_d);
    signal estado : state_type := iniciar;

begin

    -- Processo de transição de estados
    process(tok, rst)
    begin
        if (rst = '1') then
            estado <= iniciar;  -- reset assíncrono
        elsif rising_edge(tok) then
            case estado is
                when iniciar =>
                    if sube = '1' then
                        estado <= caso_a;
                    elsif baja = '1' then
                        estado <= caso_b;
                    end if;

                when caso_a =>
                    if sube = '1' then
                        estado <= caso_c;
                    elsif baja = '1' then
                        estado <= caso_d;
                    end if;

                when caso_b =>
                    if sube = '1' then
                        estado <= caso_d;
                    elsif baja = '1' then
                        estado <= caso_c;
                    end if;

                when caso_c =>
                    if sube = '1' then
                        estado <= caso_a;
                    elsif baja = '1' then
                        estado <= caso_b;
                    end if;

                when caso_d =>
                    if sube = '1' then
                        estado <= caso_b;
                    elsif baja = '1' then
                        estado <= caso_a;
                    end if;
            end case;
        end if;
    end process;

    -- Lógica de saída (decodificação do estado)
    with estado select
        q <= "00" when iniciar,
             "01" when caso_a,
             "10" when caso_b,
             "11" when caso_c,
             "00" when caso_d;  -- aqui você pode mudar se quiser outra codificação

end Behavioral;