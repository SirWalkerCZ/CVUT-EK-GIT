---
~
---
```
char a;
p1 = &a;
```

nebo

`int * pa;`

`printf("%p\n), pa"`
Vypíše adresu paměti.

Příklad využití
`scanf("%i", pa);
Je to zapsáno přímo do proměné a

`*pa = 10000`
to samé jako a = 10000;


### Posílání pointerů do funkcí
`
`// C program to swap two values`
`// with passing pointer to` 
`// swap function.`
`#include <stdio.h>`
`void` `swap(``int``* a,` `int``* b)`
`{`
  `int` `temp;`
  `temp = *a;`
  `*a = *b;`
  `*b = temp;`
`}`
`// Driver code`
`int` `main()`
`{`
  `int` `a = 10, b = 20;`
  `printf``(``"Values before swap function are: %d, %d\n"``,` 
          `a, b);`
  `swap(&a, &b);`
  `printf``(``"Values after swap function are: %d, %d"``,` 
          `a, b);`
  `return` `0;`
`}`