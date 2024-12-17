https://cw.fel.cvut.cz/wiki/courses/b0b99prpa/test
[[zpracovane-otazky-od-zlaticek-z-kyru.pdf]]
## [Kompilace](https://www.youtube.com/watch?v=VDslRumKvRA) 

- Jaké znáte překladače jazyka C?
	    gcc mingw, clang
- Popište proces vytvoření spustitelného programu ze zdrojových souborů jazyka C.
	    1) pomocí námi vybraného kompilátoru zkompilujeme soubor s main.c příponou
		2) zpracuje preprocesor odstraní komentáře, a znecitelni kod,
		3) kompilace, změní kod na assemlby kod, 
		4) assemlber udělá object code (binárka)
		5) linkování (vkládají se zkompilované binární soubory do sebe a přidává knihovny, vkládají se absolutní hodnoty adres)
- Jaký rozdíl mezi použitím `#include <soubor.h>` a `#include “soubor.h”`?
	    <> hledá pouze v standartních linux knihovnách
		"" hledá i v adresáři souboru
- Co je úkolem preprocesoru?
	     odstranit komentáře, dosadit kusy kódu za includy a makra 
- Jaký je rozdíl mezi produktem kompilátoru a produktem linkeru?
	     produkt kompilátoru jsou příkazy v assembly a každý soubor zvlášt, zatímco produktem linkeru je spustilelný soubor soubor se všemi soubory

## Datové typy

- Jak zjistı́me velikost datové reprezentace základnı́ch celočíselných typů v jazyce C?
	    sizeof()
- Co je to endianita?
	    používá se u více bajtové reprezentace
		    LITTLE nejméně významný bajt na nejnižší adrese
			BIG (začátek čísla)
- Jak je v paměti počítače reprezentován datový typ `float` (IEEE 754)?
    
- Jak v C přistupujeme k datovým položkám složeného typu (`struct`)?
    
- Deklarujte ukazatel na proměnnou datového typu `int`.
    
- Vysvětlete, jaký je v C rozdíl mezi proměnnou typu ukazatel, proměnnou a polem z hlediska uložení v paměti.
    
- Deklarujte pole variabilní délky n, kterou načtete ze standardního vstupu.
    
- Deklarujte ukazatel na proměnnou datového typu `int`.
    
- Jaký je rozdíl mezi konstantním ukazatelem a ukazatelem na konstantní hodnotu?
    
- Jak jsou v C reprezentovány textové řetězce?
    
- Stručně popište typ `union` používaný v jazyce C.
    
- Jak přistoupit na položku number proměnné data typu struktura?
    
- Jak přistoupit na položku number proměnné data typu ukazatel na strukturu?
    
- Jak lze rozlišit literál datového typu `double` a `float`?
    
- Jak lze rozlišit literál datového typu `long` a `int`?
    
- Inicializujte 2D pole velikosti 3×3 čísly 1 - 9 jdoucími vzestupně.
    
- Co je hodnotou proměnné typu ukazatel?
    
- Jakým způsobem lze v C zjistit délku textového řetězce?
    
- Co ovlivňuje u celočíselných typů modifikátor `unsigned`.
    
- K čemu slouží operátor `typedef`?
    

## Standardní vstup a výstup

- Jaké jsou možné návratové hodnoty funkce `scanf`?
     -1 = EOF nebo syserror
      0 třeba do intu čtu char
       nebo počet načtených hodnot 
- Jak v C zajistíte načtení textového řetězce ze souboru aniž byste překročili alokovanou paměť určenou pro uložení řetězce?
    
- Jak v C zajistíte načtení řetězce, který bude obsahovat bílý znak?
    
- Jak lze vynutit u funkce `printf` vypsání znaménka u číselných datových typů?
    
- Co je to bílý znak? Je možné ho načíst pomocí funkce `scanf`?
    
- Vypište funkce pro načtení dat ze standardního vstupu a stručně popište jejich činnost (max. jedna věta u každé funkce).
    
- Jak lze poznat, že při čtení standardního vstupu nepřijdou již další data (tj. bylo např. dosaženo konce souboru přesměrovaného na standardní vstup)?
    
- Jaký je rozdíl mezi zápisem na standardní výstup a na standardní chybový výstup?
    
- Má funkce printf návratovou hodnotu? Pokud ano, jaký je její význam?
    
- Bude fungovat následující zápis čtení `scanf(“%i”, a)`? Pokud ano, jak vypadá deklarace proměnné a tisk načteného obsahu?
    
- Jak lze bezpečně načíst pomocí `scanf` jeden odstavec textu obecné délky? Uveďte příklad.
    

## Řídicí struktury

- Jakého datového typu může být řídící proměnná cyklu `for`?
    
- Jaký je rozdíl mezi cykly `while` a `do-while`?
    
- Co způsobí příkaz `continue`?
    
- Co způsobí příkaz `break`?
    
- Popište funkci ternárního operátoru.
    
- Jak je v příkazu větvení `switch` ošetřena varianta, která nevyhovuje podmínce žádné z větví?
    
- Jaký je rozdíl mezi větením programu pomocí příkazu `if` a pomocí příkazu `switch`?
    
- Co je to blok a jaký je jeho význam v jazyce C?
    

## Nesetříděno

- Jak lze v jazyce C realizovat předání parametru funkci odkazem?
    
- Co je to literál a co tímto pojmem označujeme?
    
- Co znamená klíčové slovo `volatile`?
    
- K čemu slouží modifikátor `const`?
    
- Jaký význam má klíčové slovo `extern` v závislosti na kontextu?
    
- Jaký význam má klíčové slovo `static` v závislosti na kontextu?
    
- Jaké typy paměti dle způsobu alokace rozlišujeme v jazyce C?
    
- Vyjmenujte čtyři specifikátory paměťových tříd.
    
- Jak v C alokujete dynamickou paměť pro uložení posloupnosti 20 hodnot typu `int` ? Jak následně takové pole zvětšíte pro uložení dalších 10 položek?
    
- Jak se v C předává pole funkcím?
    
- Jakého datováho typu je návratová hodnota funkce `malloc`?
    
- Jaký je rozdíl mezi funkcemi `malloc` a `calloc`?
    
- Jak lze v programu zjistit jeho jméno?
    
- Jak jsou v programu zpracovány argumenty příkazové řádky?
    
- Charakterizujte stučně paměťové třídy (max. jedna věta pro každou paměťovou třídu)
    
- Popište jak v C probíhá volání funkce `int doit(int r)`? Jaká data jsou předávána do/z funkce a kam jsou hodnoty ukládány?
    
- Jakými dvěma způsoby lze v C vytvářet konstanty?
    
- Jakým způsobem otevřete soubor pro čtení? Napište krátký (1-3 řádkový) kód?
    
- Jakým způsobem otevřete soubor pro zápis? Napište krátký (1-3 řádkový) kód?
    
- Jaké znáte logické operátory jazyka C? Jak se zapisují?
    
- Jaké znáte bitové operátory jazyka C? Jak se zapisují?
    
- Jak v C realizujete dělení a násobení dvěma s využitím operátorů bitového posunu?
    
- Co je v jazyce C pointerová (ukazatelová) aritmetika a jak se používá?
    
- Jak se v jazyce C používá operátor přetypování?
    
- Jak v C zapíšete konstantní ukazatel na konstantní hodnotu, např., typu double?
    
- Co je v C ukazatel na funkci? K čemu slouží a jak definujete proměnou typu ukazatel na funkci?
    
- Můžeme v C při definici proměnné typu pole, proměnnou přímo inicializovat? Pokud ano, jak?
    
- Můžeme v C při definici proměnné typu struct inicializovat pouze určitou položku?
    
- Co vrací operátor sizeof?
    
- Charakterizujte rozdíl mezi polem a spojovým seznamem.
    
- Navrhněte datovou strukturu(y) pro vytvoření spojového seznamu
    
- Charakterizujte abstraktní datový typ. Co se pod tímto pojmem myslí?
    
- Charakterizujte základní rozdíly mezi zásobníkem a frontou?
    
- Vysvětlete princip rekurze např. na výpočtu faktoriálů. Charakterizujte hlavní rozdíly mezi rekurzivním a iterativním výpočtem.