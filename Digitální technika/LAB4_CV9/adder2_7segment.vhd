library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;

entity adder2_7segment is -- sem doplnte deklaraci portu entity
    port (        A : in std_logic_vector(1 downto 0);
    B : in std_logic_vector(1 downto 0);
    Cin : in std_logic;
    s0, s1, s2, s3, s4, s5, s6 : out std_logic -- vystupni porty pro pripojeni 7 segment displeje
); 
end adder2_7segment;

architecture Structural of adder2_7segment is

    component adder2 is -- zde doplnte deklaraci portu komponenty adder2
        port (
            A : in std_logic_vector(1 downto 0);
            B : in std_logic_vector(1 downto 0); 
            Cin : in std_logic;
            S : out std_logic_vector(1 downto 0);
            Cout : out std_logic
        );
    end component;

    component BCD7segmentVHDL is  -- zde doplnte porty komponenty BCD7segmentVHDL
        port (
            zobrazeni : in std_logic_vector(3 downto 0);
            s0, s1, s2, s3, s4, s5, s6 : out std_logic
        );
    end component;

    signal zobrazeni : std_logic_vector(3 downto 0) := "0000";

begin

    scitacka : entity work.adder2
    port map (
        A => A,
        B => B,
        Cin => Cin,
        S => zobrazeni(1 downto 0),
        Cout => zobrazeni(2)
    );
    displej : entity work.BCD7segmentVHDL
    port map (
        zobrazeni => zobrazeni,
        s0 => s0, s1 => s1, s2 => s2, s3 => s3,
        s4 => s4, s5 => s5, s6 => s6
    );
end Structural;