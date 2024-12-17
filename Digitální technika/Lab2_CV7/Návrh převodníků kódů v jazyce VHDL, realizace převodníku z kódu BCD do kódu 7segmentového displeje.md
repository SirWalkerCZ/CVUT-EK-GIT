[[Lab-2-postup-v5.pdf]]
[[Lab-2-teorie-v5.pdf]]
[[Lab-2-zadání-v5.pdf]]
[[LAB2_mimimaliazce]]
### Domácí příprava
1. Prostudujte teoretický úvod k úloze. 
2. Proveďte úplný návrh převodníku z BCD kódů do kódu 7segmentového displeje se společnou anodou uvedeného v tab. č. 2 teoretického úvodu, využijte ukázku s výstupem pro segmenty s6 a s5 v kapitole 2 teoretického úvodu a proveďte návrh pro zbylé výstupy (segmenty) s4, s3, s2, s1 a s0. Proveďte minimalizaci výstupů, zapište minimální disjunktní tvary výstupních funkcí jednotlivých segmentů a nakreslete jejich realizace pouze s použitím hradel typu NAND.
3. ![[Pasted image 20241105213210.png]]

```
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD7segmentVHDL is
port (a,b,c,d : in std_logic;
  s0,s1,s2,s3,s4,s5,s6 : out std_logic);
end BCD7segmentVHDL;

architecture RTL of BCD7segmentVHDL is
begin
s0 <= (not b and not c and not d) or (a and b and c);
s1 <= (a and b) or (a and not c and not d) or (b and not c);
s2 <= a or (not b and c);
s3 <= (not a and not b and c) or (a and b and c) or (a and not b and not c and not d);
s4 <= not a and b and not c;
s5 <= (a and not b and c) or (not a and b and c);
s6 <= (not a and not b and c) or (a and not b and not c and not d);

end RTL;4, s5, s6 zde
end RTL;


```


## Úkol dne (L2)

Požadavky na absolvování

1. Realizujte převodník z BCD kódů do kódu 7segmentového displeje pomocí schematického editoru, implementujte jej do přípravku DE10-Lite a ověřte jeho funkčnost na přípravku. Výsledek ukažte učiteli.  
      
    
2. Zapište v jazyce VHDL vyjádření výstupních funkcí (segmentů) _s0_, _s1_, _s2_, _s3_, _s4_, _s5_, _s6_ pro realizaci převodníku z kódu BCD do kódu 7segmentového displeje pomocí dataflow (RTL) popisu). Realizujte daný převodník pomocí jazyka VHDL, implementujte jej do přípravku DE10-Lite a ověřte jeho funkčnost na přípravku. Výsledek ukažte učiteli.  
      
    
3. Zapište vyjádření následující výstupní funkce _f_ obvodu se vstupními proměnnými _a_, _b_, _c_, _d_ pomocí jazyka VHDL (viz teoretický úvod této laboratorní úlohy, tabulka číslo 3) tak, aby výsledkem byla realizace funkce _f_ dle vyjádření: ![[obrazek.png]]