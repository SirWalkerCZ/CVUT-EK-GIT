Stručně popište typ `union` používaný v jazyce C.
?
- Union je datový typ, který umožňuje ukládat různé datové typy na stejném místě v paměti. Proto když změníme hodnotu jednoho členu, změní se hodnota všech ostatních. 
- Uniony poskytují účinný způsob použití stejné paměťové lokace pro víceúčelové aplikace. 13 
- Kompilátor alokuje paměť dle člena s největší velikostí, tudíž je velikost unionu rovna velikosti největší členu, a proto šetří paměť.
~~~c
union Data {
int i;
float f;
char str[20];
};
~~~
#prpa 
