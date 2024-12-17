library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
entity adder is
port (a,b,cin : in std_logic;
s,cout : out std_logic);
end adder;
architecture Behavioral_concurrent of adder is
signal vstup : std_logic_vector(2 downto 0); 

signal vystup : std_logic_vector(1 downto 0);

begin 
vstup<=cin&b&a; 
--
--process (vstup)
--begin
--if vstup = "000" then
--	s <= '0';
--	cout <= '0';
--elsif vstup = "001" then
--	s <= '1';
--	cout <= '0';
--elsif vstup = "010" then
--	s <= '1';
--	cout <= '0';
--elsif vstup = "011" then
--	s <= '0';
--	cout <= '1';
--elsif vstup = "100" then
--	s <= '1';
--	cout <= '0';
--elsif vstup = "101" then
--	s <= '0';
--	cout <= '1';
--elsif vstup = "110" then
--	s <= '0';
--	cout <= '1';
--elsif vstup = "111" then
--	s <= '1';
--	cout <= '1';
--end if;
--	
--end process;

--When else způsob
 
--with vstup select
--S <= '0' when "000",
--'1' when "001" | "010" | "100",
--'0' when "011" | "101" | "110",
--'1' when others;
--
--with vstup select
--Cout <= '0' when "000" | "001" | "010" | "100",
--'1' when others;


-- bool algebra

s <= ((a xor b) xor cin);
cout <=  (a and b) or (cin and (a xor b));

end Behavioral_concurrent;