```
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity lab3 is
    port (a, b, cin : in std_logic;
          s, cout : out std_logic);
end lab3;

architecture Behavioral of lab3 is
    signal vstup : std_logic_vector(2 downto 0);
    signal vystup : std_logic_vector(1 downto 0);
begin
    vstup <= cin & b & a;

    -- I.1 Použití select/when
    with vstup select
        vystup <= "00" when "000",
                  "01" when "001" | "010" | "100",
                  "10" when "011" | "101" | "110",
                  "11" when "111",
                  "00" when others;
    s <= vystup(0);
    cout <= vystup(1);

    -- I.2 Použití when/else
    process(vstup)
    begin
        vystup <= "00" when vstup = "000" else
                  "01" when vstup = "001" or vstup = "010" or vstup = "100" else
                  "10" when vstup = "011" or vstup = "101" or vstup = "110" else
                  "11" when vstup = "111" else
                  "00";
        s <= vystup(0);
        cout <= vystup(1);
    end process;

    -- I.3 Použití if/else
    process(vstup)
    begin
        if vstup = "000" then
            vystup <= "00";
        elsif vstup = "001" or vstup = "010" or vstup = "100" then
            vystup <= "01";
        elsif vstup = "011" or vstup = "101" or vstup = "110" then
            vystup <= "10";
        elsif vstup = "111" then
            vystup <= "11";
        else
            vystup <= "00";
        end if;
        s <= vystup(0);
        cout <= vystup(1);
    end process;

    -- I.4 Použití case
    process(vstup)
    begin
        case vstup is
            when "000" => vystup <= "00";
            when "001" | "010" | "100" => vystup <= "01";
            when "011" | "101" | "110" => vystup <= "10";
            when "111" => vystup <= "11";
            when others => vystup <= "00";
        end case;
        s <= vystup(0);
        cout <= vystup(1);
    end process;

end Behavioral;

```