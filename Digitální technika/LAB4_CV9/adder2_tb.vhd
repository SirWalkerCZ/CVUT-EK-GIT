library ieee;
use ieee.std_logic_1164.all;

entity adder2_tb is
end adder2_tb;

architecture behavioral of adder2_tb is
    signal a, b, s : std_logic_vector(1 downto 0);
    signal cin, cout : std_logic;
begin
    uut : entity work.adder2
        port map(
            a => a,
            b => b,ja
            cin => cin,
            s => s,
            cout => cout
        );

    process
    begin
        wait for 40 ns;
        a <= "00";
        b <= "00";
        cin <= '0';
        wait for 40 ns;
        a <= "00";
        b <= "01";
        cin <= '0';
        wait for 40 ns;
        a <= "01";
        b <= "10";
        cin <= '0';
        wait for 40 ns;
        a <= "11";
        b <= "11";
        cin <= '0';
        wait for 40 ns;
        a <= "00";
        b <= "00";
        cin <= '1';
        wait for 40 ns;
        a <= "01";
        b <= "10";
        cin <= '1';
        wait for 40 ns;
        a <= "10";
        b <= "11";
        cin <= '1';
        wait for 40 ns;
        a <= "11";
        b <= "11";
        cin <= '1';
        wait;
    end process;
end behavioral;