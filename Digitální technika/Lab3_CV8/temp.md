library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder is
port (a, b, cin : in std_logic;
		s, cout : out std_logic);

end adder;

architecture RTL of adder is
begin
s<=a xor b xor cin;
cout<= (a and b) or (cin and (a xor b));
end RTL;

architecture Behavioral_Concurrent of adder is
signal vstup : std_logic_vector(2 downto 0);
begin
vstup<=cin&b&a;
s <= '1' when (vstup="001" or vstup="010" or vstup="100" or vstup="111") else
		'0';
cout <= '1' when (vstup="011" or vstup="101" or vstup="110" or vstup="111") else
		'0';	
end Behavioral_Concurrent;

architecture Behavioral_Sequential of adder is
signal vstup : std_logic_vector(2 downto 0);
begin
vstup<=cin&b&a;
process(vstup)
begin
case vstup is
	when "001"|"010"|"100"|"111"=> s<='1';
	when others => s<='0';
end case;
case vstup is
	when "011"|"101"|"110"|"111"=> cout<='1';
	when others => cout<='0';
end case;
end process;	
end Behavioral_Sequential;

architecture Behavioral_numeric of adder is
signal soucet : unsigned(1 downto 0);
begin
soucet<=unsigned'('0'&a)+unsigned'('0'&b)+unsigned'('0'&cin);
s<=std_logic(soucet(0));
cout<=std_logic(soucet(1));
end Behavioral_numeric;
