library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD7segmentVHDL is
port (a,b,c,d : in std_logic;
  digit : out std_logic_vector(6 downto 0)
  );
end BCD7segmentVHDL;

architecture RTL of BCD7segmentVHDL is
begin
digit(0) <= (not b and not c and not d) or (a and b and c);
digit(1) <= (a and b) or (a and not c and not d) or (b and not c);
digit(2) <= a or (not b and c);
digit(3) <= (not a and not b and c) or (a and b and c) or (a and not b and not c and not d);
digit(4) <= not a and b and not c;
digit(5) <= (a and not b and c) or (not a and b and c);
digit(6) <= (not a and not b and c) or (a and not b and not c and not d);

end RTL;