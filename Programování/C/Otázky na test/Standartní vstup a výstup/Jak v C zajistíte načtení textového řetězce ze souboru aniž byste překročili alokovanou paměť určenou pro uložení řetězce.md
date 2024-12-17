Jak v C zajistíte načtení textového řetězce ze souboru aniž byste překročili alokovanou paměť určenou pro uložení řetězce?
?
- Načítáme nějakou smyčkou (na příklad pomocí getchar()) a kontrolujeme, jestli se index, na který zapisujeme nerovná velikosti pole. Pokud ano, zvětšíme proměnnou určující velikost buď násobkem nebo přičtením nějaké konstanty a použijeme realloc
#prpa
<!--SR:!2023-11-23,1,210--> 