library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity stopky is --deklarace portu entity stopek
	port (
		Clock,Reset,Stop : in std_logic;
		Digit1,Digit2 : out std_logic_vector(0 to 6);
		Clock_10out, Clock_2048out, Clock_1out : out std_logic);
end stopky;
architecture Structural of stopky is
signal stav1,stav2: std_logic_vector(3 downto 0);
signal prenos12 : std_logic;
signal citej : std_logic :='1';
signal clock_2048,clock_2w : std_logic; -- signaly z/do delicek
component citac is -- komponenta zakladniho citace, viz Lab 5
	generic (modulo : integer := 9);
			port (
				clock : in std_logic;
				reset : in std_logic;
				enable : in std_logic;
				prenos : out std_logic;
				stav : buffer std_logic_vector(3 downto 0)
			);
end component;
component BCD7segmentVHDL is -- komponenta prevodniku z BCD kodu do kodu
	port (a,b,c,d : in std_logic;
					digit : out std_logic_vector(6 downto 0)); -- zde doplnte deklaraci komponenty BCD7segment

end component;
component delicka is -- komponenta delicky 2W
	GENERIC (w : INTEGER := 11);
	port (Clock : in std_logic;
	Clock_2w : out std_logic);
end component;
component pll is -- komponenta PLL fazoveho zavesu z IP Cores
port
	(
		inclk0		: in STD_LOGIC  := '0';
		c0		: out STD_LOGIC 
	);
end component;
begin
	citac_1: citac -- mapovani zakladniho citace c. 1, viz Lab 5
	generic map (9) -- modulo 9
			port map (
				clock => clock_2w,
				reset => reset,
				enable => citej,
				prenos => prenos12,
				stav => stav1
			);
	citac_2: citac -- mapovani zakladniho citace c. 2, viz Lab 5
	generic map (5) -- modulo 5 pro desítky sekund
			port map (
				clock => prenos12,
				reset => reset,
				enable => citej,
				prenos => open, -- nepoužíváme další přenos
				stav => stav2
			);
	displej_1: BCD7segmentVHDL -- mapovani prevodniku do kodu 7segm. displeje
	port map (stav1(0), stav1(1), stav1(2), stav1(3), Digit1);
	
	displej_2: BCD7segmentVHDL -- mapovani prevodniku do kodu 7segm. displeje
	port map (stav2(0), stav2(1), stav2(2), stav2(3), Digit2);
	
	delicka_1: pll -- mapovani PLL fazoveho zavesu
	port map (
			  inclk0 => Clock,
			  c0 => clock_2048
	);
	
	delicka_2: delicka -- mapovani delicky typu 2W
	generic map (w => 10)
	port map(
			  Clock => clock_2048,
			  Clock_2w => clock_2w
	);
process(stop)
begin
	if Stop'event and Stop = '0' then
			  citej <= not citej;
	end if; -- proces detekce stisknuti tlacitka spust/zastav stopky
end process;
	Clock_10out<=Clock; -- vystup 10 MHz pro log. analyzator
	Clock_2048out<=clock_2048; -- vystup 2048 Hz pro log. analyzator
	Clock_1out<=clock_2w; -- vystup 1 Hz pro log. analyzator
end Structural;
