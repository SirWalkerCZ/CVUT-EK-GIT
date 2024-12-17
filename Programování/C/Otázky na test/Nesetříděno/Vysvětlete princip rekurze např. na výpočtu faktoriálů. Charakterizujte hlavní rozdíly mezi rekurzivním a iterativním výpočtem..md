Vysvětlete princip rekurze např. na výpočtu faktoriálů. Charakterizujte hlavní rozdíly mezi rekurzivním a iterativním výpočtem.
?
- Faktoriály: budeme mít funkci faktorial(int n) která vrátí faktoriál čísla n který je argumentem. Vnitřek funkce vypadá tak, že pokud n je 0 nebo 1, vrátí 1. Pokud je n jiný, vrátí n* faktorial(n-1). Tím pádem funkce zavolala sama sebe a bude tak dělat dokud se nevypočítá faktoriál  - REKURZE. 
- Iterativní výpočet – „dělá“ dokola stejný kód (příkazy) 
- Rekurzivní výpočet – volá sám sebe