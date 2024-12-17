Jak v C přistupujeme k datovým položkám složeného typu (`struct`)?
?
- Přímým přístupem tečkou: 
~~~c
struct st 
{ 
int i; 
}; 
int main () 
{ struct st my_struct = {.i = 6}; 
printf("%d\n", my_struct.i); // 6 
return 0; 
} 
~~~
- nebo ukazatelem na struct šipkou -> 
~~~ c
struct st { 
int i; 
}; 
int main() { 
struct st *my_struct = malloc(sizeof(*my_struct)); 
my_struct->i = 6; 
printf("%d\n", my_struct->i); // 6 
}
~~~
#prpa 
