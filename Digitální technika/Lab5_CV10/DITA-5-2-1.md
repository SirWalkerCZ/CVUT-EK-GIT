```
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity citac is
    generic (
        modulo : integer := 9
    );
    port (
        clock, reset, enable : in std_logic;
        prenos               : out std_logic;
        stav                 : buffer std_logic_vector(3 downto 0)
    );
end citac;

architecture Behavioral of citac is
begin
    process (clock, reset)
    begin
        if reset = '0' then
            -- nulování čítače
            stav <= (others => '0');
            prenos <= '0';
        elsif clock = '0' and clock'event then
            if enable = '1' then
                if unsigned(stav) = modulo or unsigned(stav) = 9 then
                    -- nulování čítače
                    stav <= (others => '0');
                    prenos <= '1';
                else
                    -- zvýšení čítače
                    stav <= std_logic_vector(unsigned(stav) + 1);
                    prenos <= '0';
                end if;
            end if;
        end if;
    end process;
end Behavioral;

```