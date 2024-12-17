```library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity citac_7segment is
    port (
        clock : in std_logic;     -- hodinový signál
        reset : in std_logic;     -- resetovací signál
        stop  : in std_logic;     -- tlačítko Stop
        seg1  : out std_logic_vector(6 downto 0); -- 7segmentový výstup pro jednotky
        seg2  : out std_logic_vector(6 downto 0)  -- 7segmentový výstup pro desítky
    );
end citac_7segment;

architecture Structural of citac_7segment is
    signal stav1, stav2 : std_logic_vector(3 downto 0); -- stavy jednotek a desítek
    signal prenos12     : std_logic;                   -- přenos mezi jednotkami a desítkami
    signal citej        : std_logic := '1';            -- signál pro povolení čítání

    component citac
        generic (
            modulo : integer := 9
        );
        port (
            clock, reset, enable : in std_logic;
            prenos               : out std_logic;
            stav                 : buffer std_logic_vector(3 downto 0)
        );
    end component;

    component BCD7segmentVHDL
        port (
            bcd  : in std_logic_vector(3 downto 0);
            seg  : out std_logic_vector(6 downto 0)
        );
    end component;

begin
    -- Citac pro jednotky sekund
    citac_1: citac
        generic map (9) -- modulo = 9
        port map (
            clock => clock,
            reset => reset,
            enable => citej,
            prenos => prenos12,
            stav => stav1
        );

    -- Citac pro desitky sekund
    citac_2: citac
        generic map (5) -- modulo = 5 (maximálně 59 sekund)
        port map (
            clock => clock,
            reset => reset,
            enable => prenos12,
            prenos => open, -- nevyužíváme další přenos
            stav => stav2
        );

    -- Připojení jednotek na 7segmentový displej
    displej_1: BCD7segmentVHDL
        port map (
            bcd => stav1,
            seg => seg1
        );

    -- Připojení desítek na 7segmentový displej
    displej_2: BCD7segmentVHDL
        port map (
            bcd => stav2,
            seg => seg2
        );

    -- Proces detekce tlačítka Stop
    process(stop)
    begin
        if stop = '0' and stop'event then
            citej <= not citej; -- invertuje signál citej při stisku tlačítka
        end if;
    end process;

end Structural;

```