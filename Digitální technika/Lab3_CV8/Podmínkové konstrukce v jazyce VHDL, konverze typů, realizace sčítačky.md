[[Lab3_teorie_v4.pdf]]

## Téma

Tato laboratorní úloha je zaměřena na osvojení základních pojmů a syntaxe jazyka VHDL  
se zaměřením zejména na **vysvětlení rozdílů mezi sekvenčním (sequential) a paralelním**  
( **concurrent) prostředím v jazyce VHDL, využití** b **ehaviorálního popisu pro syntézu  
logických obvodů, podmínkové konstrukce v** jazyce VHDL ( **select** / **when** , **when** / **else** ,  
**if** / **else** , **case** ) a **konverzi datových typů**. Tyto cíle budou vysvětleny a demonstrovány na  
příkladu návrhu úplné 1bitové sčítačky. Úkolem je vytvořit úplnou 1bitovou sčítačku, s dvojicí  
1bitových vstupů (a, b), 1bitovým vstupem pro přenos (cin), 1bitovým výstupem pro součet  
(s) a 1bitovým výstupem pro přenos do vyššího řádu (cout). Tato sčítačka bude realizována  
v obou prostředích jazyka VHDL za použití různých podmínkových konstrukcí a také pomocí  
RTL (Dataflow) popisu prostřednictvím Booleových rovnic pro oba výstupy. Bonusovým  
úkolem je vytvoření stejné sčítačky přímo pomocí operace sčítání; pro to je ale potřeba provést  
konverzi datového typu std_logic na datový typ unsigned a zpět. Použití datových typů  
signed, unsigned a konverzních funkcí bude nejprve vysvětleno. Úkolem této úlohy je  
rovněž prozkoumat tzv. RTL model zapojení a technologický model obvodu realizovaného  
v daném FPGA poli. Pro ověření funkčnosti a správnosti navržené 1bitové sčítačky realizované  
různými způsoby bude vždy provedena její implementace do přípravku DE10-Lite a otestování  
její funkce na přípravku.

## Domácí příprava

1. Prostudujte teoretický úvod k úloze. Zopakujte si z přednášek předmětu informace o  
    binárních sčítačkách a jejich realizaci.
2. Připravte si VHLD kódy pro různé návrhy a realizace úplné 1bitové sčítačky na základě  
    možností uvedených v kapitole 8 teoretického úvodu (vždy pouze příslušný fragment  
    kódu):  
    I. S použitím behaviorálního popisu formou každého ze 4 různých podmínkových  
    typů select/when, when/else, if/else, case.  
    II. Pomocí dataflow (RTL) popisu na základě Booleových rovnic pro výstupy dle  
    rovnic (1) uvedených v kapitole 8 teoretického úvodu.  
    III. Bonusový úkol: promyslete a realizujte sčítačku pomocí operace sčítání a  
    použití konverzních funkcí.
[[upravena_verze_lab3]]
```
library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.numeric_std.ALL; 
entity lab3 is 
port (a,b,cin : in std_logic; 
s,cout : out std_logic); 
end lab3; 
architecture Behavioral_concurrent of lab3 is 
signal vstup : std_logic_vector(2 downto 0); 

signal vystup : std_logic_vector(1 downto 0);

begin 
vstup<=cin&b&a; 

--1. zadání
 
process(vstup)
begin
case vstup is
when "000" => vystup<="00";
when "001" => vystup<="01";
when "010" => vystup<="01";
when "011" => vystup<="10";
when "100" => vystup<="01";
when "101" => vystup<="10";
when "110" => vystup<="10";
when "111" => vystup<="11";
when others => vystup <="00";
end case;
s <= vystup(0);
cout <= vystup(1);
end process;

-- 2. zadání
--s <= ((a xor b) xor cin);
--cout <=  ((a and b) or (cin and (a xor b)));

end Behavioral_concurrent;
```
## Použité přístroje a vybavení

- PC s nainstalovaným programem Intel Quartus,
- přípravek Terasic DE10-Lite.

## Bonusový úkol

Tento úkol je čistě bonusový v případě dostatku času po skončení řádné části laboratorní  
úlohy. Za jeho vypracování lze získat 1 další bonusový bod nad rámec bodového hodnocení  
z této úlohy.

Zadání úkolu:

1. Realizujte opět tutéž úplnou 1bitovou sčítačku dle popisu v kapitole 8 teoretického  
    úvodu pomocí operace sčítání s využitím datového typu unsigned a konverzních  
    funkcí. Po úspěšném zkompilování celé entity si opět zobrazte RTL model i  
    technologický model takto realizované sčítačky a porovnejte je s modely získanými pro  
    sčítačky realizované v předchozích krocích postupu a), b), c). Nakonec opět sčítačku  
    implementujte do přípravku DE10-Lite, ověřte její funkčnost a demonstrujte vše  
    cvičícímu.

Nápověda k bonusovému úkolu:

1. Při pohledu na pravdivostní tabulku úplné 1bitové sčítačky tab č. 1 v teoretickém úvodu  
    je evidentní, že při sečtení hodnot všech 3 vstupních proměnných, a, b, cin, na každém  
    řádku získáme vždy výsledek odpovídající hodnotě výstupních proměnných v pořadí  
    cout, s (odpovídá pořadí v tab č. 1 v teoretickém úvodu) chápané jako binárně zapsané  
    číslo.
2. Nabízí se tedy možnost vytvořit pomocný signál vystup datového typu unsigned o  
    velikosti 2 bitů, jehož vyšší bit (vystup(1)) bude představovat výstup cout a nižší  
    bit (vystup(0)) pak výstup s, a do něhož uložíme součet vstupních proměnných a,  
    b, cin. Ty jsou však datového typu std_logic a je potřeba je nejprve převést na  
    datový typ unsigned.
3. Avšak v jazyce VHDL nelze přímo převést 1bitovou logickou hodnotu std_logic na  
    datový typ unsigned, který je chápán jako vícebitový vektor. Je tedy nejprve potřeba  
    z 1bitové logické hodnoty typu std_logic vytvořit logický vektor  
    std_logic_vector. Nejjednodušší řešení se nabízí zřetězit hodnotu proměnné typu  
    std_logic s jednou hodnotou logická 0 ('0'&a), čímž získáme 2bitový vektor,  
    jehož vyšší bit je však vždy roven '0' a tedy při jeho převodu na binární reprezentaci  
    čísla jako typ unsigned se hodnota původní proměnné nezmění. Opačný převod  
    jednoho vybraného bitu z proměnné typu unsgined na typ std_logic je možný  
    provést přímo pomocí konverzní funkce std_logic().

## Literatura

```
[1] Přednášky předmětu dostupné na Moodlu: https://moodle.fel.cvut.cz/.
[2] Lafata, P. - Hampl, P. - Pravda, M.: Digitální technika. 1. vyd. Praha: Česká technika
```


## Úkol dne (L3)

Požadavky na absolvování

1. Pomocí behaviorálního popisu v jazyce VHDL realizujte úplnou 1bitovou sčítačku v paralelním (concurrent) prostředí za použití podmínkové konstrukce select/when nebo when/else.Implementujte navrženou sčítačku do přípravku DE10-Lite a ověřte správnost její funkce. Zobrazte RTL model a technologický model navržené sčítačky.
2. Do téže entity doplňte pomocí behaviorálního popisu v jazyce VHDL realizaci stejné úplné 1bitové sčítačky v sekvenčním (sequential) prostředí za použití podmínkové konstrukce if/else nebo case. Pokud jste v předchozím bodě použili podmínku typu select/when, navrhněte nyní sčítačku pomocí podmínky if/else, pokud jste naopak v předchozím kroku použili pro realizaci sčítačky podmínku typu when/else, použijte nyní podmínku typu case. Implementujte opět navrženou sčítačku do přípravku DE10-Lite a ověřte správnost její funkce. Zobrazte RTL model a technologický model navržené sčítačky.
3. Opět do téže entity doplňte realizaci sčítačky pomocí dataflow (RTL) popisu s využitím Booleových rovnic pro výstupy sčítačky dle rovnic (1) uvedených v kapitole 8 teoretického úvodu. Implementujte opět navrženou sčítačku do přípravku DE10-Lite a ověřte správnost její funkce. Zobrazte RTL model a technologický model navržené sčítačky.

**Bonusový úkol:**  
(viz kapitolu 7 návodu)  
Předveďte vyučujícímu Váš VHDL kód pro realizaci sčítačky pomocí operace sčítání a konverzních funkcí do/z datového typu unsigned, viz kapitola 7 návodu k této úloze. Zobrazte a porovnejte RTL model i technologický model takto realizované sčítačky s modely z předchozích kroků.