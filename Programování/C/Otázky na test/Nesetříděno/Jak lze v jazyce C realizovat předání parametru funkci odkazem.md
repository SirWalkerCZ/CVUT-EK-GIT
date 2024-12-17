Jak lze v jazyce C realizovat předání parametru funkci odkazem?
?
~~~C
void nazev_funkce (int* promena) {
	*promena = 5;
}
int main() {
	int i = 1; //promenna i ma v tuto chvili hodnoti 1
	nazev_funkce(&i);
	printf("%i\n", i); //tady ma i hodnotu 5, zmenila ji funkce nazev_funkce
	return 0;
}
~~~
#prpa
<!--SR:!2023-11-23,1,210--> 