library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity citac_7segment is
	port (
		clock : in std_logic;
		reset : in std_logic;
		stop : in std_logic;
		digit1 : out std_logic_vector(6 downto 0); -- výstupy pro první displej
		digit2 : out std_logic_vector(6 downto 0)  -- výstupy pro druhý displej
	); -- zde doplnte deklaraci portu
end citac_7segment;
architecture Structural of citac_7segment is
	-- zde doplnte deklaraci signalu stav1, stav2, prenos12
	signal stav1 : std_logic_vector(3 downto 0);
	signal stav2 : std_logic_vector(3 downto 0);
	signal prenos12 : std_logic :='0';
	signal citej : std_logic :='1';
	
	component citac is
		generic (modulo : integer := 9);
		port (
			clock : in std_logic;
			reset : in std_logic;
			enable : in std_logic;
			prenos : out std_logic;
			stav : buffer std_logic_vector(3 downto 0)
		);
	end component;

	component BCD7segmentVHDL is
		port (a,b,c,d : in std_logic;
				digit : out std_logic_vector(6 downto 0)); -- zde doplnte deklaraci komponenty BCD7segment
	end component;
	begin
	citac_1: citac
		generic map (9) -- modulo 9
		port map (
			clock => clock,
			reset => reset,
			enable => citej,
			prenos => prenos12,
			stav => stav1
		);

	citac_2: citac
		generic map (5) -- modulo 5 pro desítky sekund
		port map (
			clock => prenos12,
			reset => reset,
			enable => citej,
			prenos => open, -- nepoužíváme další přenos
			stav => stav2
		);

	displej_1: BCD7segmentVHDL
		port map (stav1(0), stav1(1), stav1(2), stav1(3), digit1);

	displej_2: BCD7segmentVHDL
		port map (stav2(0), stav2(1), stav2(2), stav2(3), digit2);

	process(stop)
	begin
		if stop = '0' and stop'event then
			citej <= not citej; -- Invertování hodnoty při stisku tlačítka
		end if;
	end process;
end Structural;
