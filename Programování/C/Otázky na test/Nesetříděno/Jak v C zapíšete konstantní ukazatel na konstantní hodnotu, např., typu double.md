Jak v C zapíšete konstantní ukazatel na konstantní hodnotu, např., typu double?
?
- const int cislo = 1;
- const  *int = &cislo;
- int const * ptr; - pointer na konstantní int 
- int * const ptr; - konstatní pointer na int 
- int const * const ptr2 = &a; - NOT SURE
#prpa 