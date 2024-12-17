Jaký je rozdíl mezi konstantním ukazatelem a ukazatelem na konstantní hodnotu?
?
- Ukazatel na konstantní proměnnou - můžeme pointer přesměrovat, aby ukazoval jinam, ale proměnná zůstává neměnná - const int *ptr = &variable
- Konstantní ukazatel na proměnnou - můžeme měnit hodnotu proměnné, ale ukazatel nesmíme přesměrovat, aby ukazoval někam jinam - int *const ptr = &variable
<!--SR:!2023-12-26,1,210-->

#prpa 