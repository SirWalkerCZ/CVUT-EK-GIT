Co je v C ukazatel na funkci? K čemu slouží a jak definujete proměnou typu ukazatel na funkci?
?
- Je to prostě pointer na nějakou funkci, ukazuje ne na data ale na kód 
- Dá se použít u pole pointerů na funkce kde se jednotlivé funkce volají indexem prvku onoho pole 
- void (* nazev_pointeru)(argumenty např. „int, int“) = &funkce;
#prpa 