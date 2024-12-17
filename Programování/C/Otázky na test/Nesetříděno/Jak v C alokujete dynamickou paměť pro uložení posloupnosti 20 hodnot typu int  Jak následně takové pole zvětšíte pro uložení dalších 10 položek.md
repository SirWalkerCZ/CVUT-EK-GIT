Jak v C alokujete dynamickou paměť pro uložení posloupnosti 20 hodnot typu int ? Jak následně takové pole zvětšíte pro uložení dalších 10 položek?
?
~~~c
int *pole = malloc(20 * sizeof(int)); 
pole = realloc(pole, 30);
free(pole);
~~~
#prpa #prpa
<!--SR:!2023-11-23,1,190-->
