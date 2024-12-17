library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity adder2 is
    port (
        A,B : in std_logic_vector(1 downto 0);  
        Cin : in std_logic;                      
        S : out std_logic_vector(1 downto 0);    
        Cout : out std_logic                    
    );
end adder2;

architecture Structural of adder2 is
   
    component adder is
        port (
            a,b,cin : in std_logic;
            s,cout : out std_logic
        );
    end component;

 
    signal C0 : std_logic := '0';

begin

prvni : entity work.adder(Behavioral_Concurrent)-- misto tecek doplnte spravne mapovani
port map (
    a => A(1),
    b => B(1),
    cout => Cout,
    s => S(1),
    cin => C0
    
    ); 



druha : entity work.adder(RTL)-- misto tecek doplnte spravne mapovani
port map (
    a => A(0),
    b => B(0),
    cout => C0,
    s => S(0),
    cin => Cin); 
end Structural;