ě
#PPC

 Jaký je rozdíl mezi třídou a objektem?
?
Objekt je instance třidy. Třídy určují jak objekty fungují a jak jsou uvnitř uspořádány.
<!--SR:!2024-05-23,2,230-->

Jak je určena viditelnost členských proměnných a metod?
?
V základu jsou všechny členské proměnné tříd privátní, a struktur veřejné. Toto můžeme modifikovat pomocí klíčových slov jako "public", "private" nebo protected.
<!--SR:!2024-05-23,2,230-->

Jaký je rozdíl mezi členskými metodami (a proměnnými) třídy a objektu?
?
Členské metody a proměnné objektu mohou mít jinou hodnotu pro každou instanci objektu. Pro třídy mohou mít jen jednu hodnotu pro celou třídu, a je k nim přisupováno přímo skrze třídu.
<!--SR:!2024-05-22,1,226-->

Jaký je rozdíl mezi klíčovými slovy protected a private?
?
K funkcím a proměnným s viditelností private je možné přistupovat pouze přímo z třídy. Protected ještě k tomu navíc povoluje přístup všem třídám které z původní třídy dědí.
<!--SR:!2024-05-22,1,226-->

Co je polymorfismus a jak je ho dosaženo?
?
Polymorfismus je přetěžování abstraktních metod třídy. Tj. základní třída může mít implementovanou nějakou abstraktní metodu, a její derivované třídy takovou metodu mohou přetížit. To znamená že můžeme dosáhnout jihého výsledku po zavolání stejné funkce, podle toho z jaké třídy byl objekt pro který jsme metodu zavolali.
<!--SR:!2024-05-22,1,210-->

Co je to bázová třída a čím se vyznačuje?
?
Třída ze které jsou odvozené dědící třídy, a ze které jsou přejímány základní vlastnosti.
<!--SR:!2024-05-22,1,226-->

Uveďte příklad deklarace plně virtuální metody?
?
```c++
virtual double calculateArea() = 0;
```
<!--SR:!2024-05-22,1,226-->

Co je to implicitní konstuktor?
?
To je defaultní konstruktor vygenerovaný kompilátorem, když neimplementujeme vlastní.
<!--SR:!2024-05-22,1,226-->

Co je to kopírovací konstruktor?
?
To je konstruktor který vytvoří nový objekt, s identickými parametry jako nějaký objekt který chceme zkopírovat
<!--SR:!2024-05-22,1,210-->

Jaké jsou možnosti dědění? Uveďte příklady.
?
Typy dědičnosti jsou:
DOPSAT PRIKLADY
- Single
	- Jedna třída dědí z jedné base třídy
- Vícenásobné
	- Jedna třída dědí z několika tříd
- Víceúrovňové
	- Větší počet tříd postupně dědí jedna od druhé
- Hiearchické
	- několik tříd dědí z jedné hlavní třídy
- Hybridní
	- kombinace vícenásobného a víceúrovňového
<!--SR:!2024-05-22,1,226-->

Co je to virtuální dědění a k čemu je dobré?
?
Virtuální dědění je užitečné v případě že jedna třída dědí od více tříd se společným předkem, což může způsobit že taková třída bude obsahovat více proměnných se stejným jménem. Toto můžeme vyřešit virtuální dědičností:
```c++
class B : virtual public A{
	//vecicky
}
```
<!--SR:!2024-05-22,1,226-->

Které vlastnosti rodiče potomek nedědí?
?
Konstruktory, destruktory, přetížené operátory, statické členy.
<!--SR:!2024-05-22,1,226-->

Co je to přetížení? Uveďte příklad (několik řádek kódu, ze kterých bude zřejmé, o co jde).
?
Přetížení je "přepsání" nějaké funkce nebo operátoru pro nějakou (zděděnou třídu)
```c++
    class A

    {

        public:

            virtual void function()

            {

                std::cout << "called from A";

            }

    };

  
  

    class B : A

    {

        public:

            virtual void function()

            {

                std::cout << "called from B";

            }

    };

  

    A a = A();

    B b = B();

  

    a.function();

    b.function();
```
<!--SR:!2024-05-22,1,226-->

Jaký je rozdíl mezi přepsáním (override) a přetížením (overload)?
?
Přetížení spočívá ve změně typu či počtu parametrů, zatímco přepsání nemění parametry, ale implementaci (běžně pro nějakou specifickou třídu)
<!--SR:!2024-05-22,1,226-->

Co je vazba typu kompozice? Uveďte příklad (několik řádek kódu, ze kterých bude zřejmé, o co jde).
?
vazba typu kompozice je to, když nějaká třída obsahuje další třídy jako své komponenty. Tyto komponenty patří ke konkrétní instanci třídy, a vznikají i zanikají spolu s hlavní třídou.
```c++
class Engine
{
	public:
	void start()
	{
		//do stuff;
	}
};

class Car
{
	Engine engine;

	public:
	void startEngine()
	{
		engine.start();
	}
};
```
<!--SR:!2024-05-22,1,226-->

Co je vazba typu asociace? Uveďte přiklad (několik řádek kódu, ze kterých bude zřejmé, o co jde).
?
Asociace jeda podobná vazba jako kompozice, ale objekty takové vazby mohou existovat nezávisle na sobě.
```c++
class Student
{
	public:
	string name;
	int id;
	Universtiy* university;
};

class University
{
	public:
	std::vector<student*> students;
}
```
<!--SR:!2024-05-22,1,226-->

Co reprezentuje klíčové slovo this?
?
This reprezentuje konkrétní instanci objektu.
<!--SR:!2024-05-22,1,226-->

Jaký je rozdíl mezi referencí a ukazatelem?
?
Ukazatel je proměnná, ve které je uložená adresa v paměti jiné proměnné. Můžeme s ní provádět pointerovou aritmeriku, a pro modifikování či čtení hodnoty jej potřebujeme dereferencovat. Reference je odkaz na nějakou proměnnou, alias. Můžeme skrze referenci měnit / číst hodnotu proměnných, bez potřebné dereference. Můžeme použít referenci na objekt jako argument funkce když chceme aby byla hodnota nepřímo modifikovaná funkcí.
<!--SR:!2024-05-22,1,226-->

Jaký je rozdíl mezi mělkou a hlubokou kopií?
?
Mělká kopie kopíruje pouze ukazatele, skutečná hodnota v paměti zůstává pouze jedna. Pokud je hodnota modifikována, tak jsou modifikovány obě kopie.
Hluboká kopie skutečně vytvoří kopie uložených hodnot, a obě kopie jsou tak skutečně nezávislé.
<!--SR:!2024-05-22,1,226-->

Napište příklad načteni hodnoty typu int ze standarního vstupu pomocí proudového operátoru. Jak lze ošetřit správnost vstupu?
?
```c++
int num;
if(std::cin >> num)
{
	std::cout << "loaded number " << num << "\n";
}
else
{
	std::cout << "not a number!\n";
}
```
    
Jak se v C++ provádí přetížení operátoru? Uveďte příklad.
?
```c++
bool operator> (const object& x, const object& y)
{
	return x.value > y.value;
}
```
    
Jaké operátory nelze v C++ přetížit?
?
Které operátory nelze přetížit ::, ternární operátor, přístup k rozhraní (.), pointer (\*), sizeof operátor, typeid operátor
<!--SR:!2024-05-22,1,226-->

Jak a kdy se volá konstruktor a destruktor?
?
Konstruktor se volá při vytvoření nové instance objektu. Destruktor se volá při end-of-scope, nebo konci programu nebo ručně.
<!--SR:!2024-05-22,1,226-->

Jaký je rozdíl mezi objektem alokovaným v zásobníku a objektem dynamicky alokovaným na haldě?
?
Objekty v zásobníku jsou automaticky spravované kompilátorem, jejich velikost je kompilátorem známá při kompilaci programu. Objekty v zásobníku jsou automaticky vytvořeny např. když se zavolá funkce s objektem jako argument (který neí předávaný referencí). Takové objekty automaticky zanikají když skončí jejich scope.
Objekty na haldě jsou explicitně vytvářeny uživatelem pomocí příkazu 'new' (a jsou smazány příjakzem 'delete').
Velikost objektů na haldě může být určena během běhu programu.
<!--SR:!2024-05-22,1,226-->

Jaký je rozdíl mezi operátory `delete` a `delete[]`?
?
delete slouži k destrukci jednoho dynamicky alokovaného objektu, zatímco delete\[] slouží  k destrukci pole objektů vytvořeného pomocí new\[]
<!--SR:!2024-05-22,1,226-->

Jaká je návratová hodnota destruktoru?
?
Destruktor nevrací hodnotu.
<!--SR:!2024-05-22,1,226-->

Co je třeba zajistit při dynamické alokaci? Uveďte příklad.
?
Je potřeba zajistit to že je na haldě místo (alokace je  úspěšná) a je potřeba si uložit ukazatel pro alokovanou paměť, aby nedošlo k memory leaku.
<!--SR:!2024-05-22,1,226-->

Co je to výjimka a k čemu je dobrá? Uveďte příklad.
?
Výjimku můžeme "vyhodit" během běhu našeho programu, když chceme signalizovat že se stala nějaká chyba. Můžeme jí zachytit a náležitě ošetřit.
<!--SR:!2024-05-22,1,226-->

Kolik výjimek je možné v programu ošetřit?
?
Tolik kolik catch bloků v programu implementujeme
<!--SR:!2024-05-22,1,226-->

Co je to generická funkce?
?
Generická funkce je funkce, která dokáže pracovat s více datovými typy, běžně pomocí templatů.
<!--SR:!2024-05-22,1,226-->

Jak lze vytvořit explicitní instanci generické funkce? K čemu je to dobré?
?
Explicitní instance generické funkce je generická funkce definovaná pro konkrétní datové typy. To je potřeba např. když náš kód chceme propojit s nějakým API. Také to může zlepšit kompilační čas a vyřešit problémy s linkerem.
<!--SR:!2024-05-22,1,226--> 

Jak jsou obvykle parametrizovány šablony tříd?
?
```C++
template <typename T>
class myClass
{
	T variable;

	public:
	T myFunction()
	{
		//something something T
	}
}
```
<!--SR:!2024-05-22,1,207-->

V čem spočívá problém vícenásobného dědění? Jak je možné tomuto problému zabránit?
?
Problém vícenásobného dědění spočívá v tom že třídy mohou zdědit funkce a proměnné se stejnými názvy. Toto lze vyřešit pomocí scope resolution, a nebo pomocí vituálního dědictví.
<!--SR:!2024-05-24,3,247-->

Co je to zapouzdření a čemu je dobré?
?
Zapouzdření je zabalení dat, i funckí v jedné třídě. Funkce nejsou přímo dostupné z třídy, je třeba je volat skrze instance. Všechna data potřebná pro funkce patří do oné třídy.
<!--SR:!2024-05-22,1,226-->

Jak lze využít implicitní hodnoty argumentu funkce? Uveďte příklad.
?
funkce s implicitní hodnoutou argumentu můžeme zavolat bez onoho argumentu, a nechat tam tak defaultní hodnotu.
```C++
int myFunction(int a, b, int scale = 1)
{
	return (a*b)*scale;
}
```
<!--SR:!2024-05-22,1,226-->

Jaký je rozdíl mezi deklarací třídy pomocí class a struct.
?
Class má veškeré proměnné a funkce implicitně private. Struct public.
<!--SR:!2024-05-22,1,226--> 

Co je to konverzní konstruktor?
?
Konverzní konstruktor slouží k vytvoření objektu typu třídy konstruktoru, z nějakého jiného objektu. I.e. můžeme přímým přiřazením převést objekt jednoho typu na objekt jiného typu.
<!--SR:!2024-05-22,1,226-->

Jaký je rozdíl mezi statickou a dynamickou vazbou?
?
Statická vazba rozhoduje o tom jaká funkce bude zavolána při kompilaci. Dynamická vazba rozhoduje o volané funkci během běhu programu. To znamená že se to může měnit podle toho pro jaký typ objektu je funkce zavolána
<!--SR:!2024-05-22,1,226-->

 Jaký je význam klíčového slova auto? Lze ho použít vždy?
?
Auto nám umožní automaticky zjistit typ proměnné. Je to vhodné např. v cyklech, či při psaní abstraktního kódu.
Nemůžeme výrazu auto použít pří definici.
<!--SR:!2024-05-22,1,226-->

Co přesouvací (move) kontruktor?
?
Move constructor funguje podobně jako copy constructor, s tím rozdílem že neprovádí hluboké kopie, a pouze přesměruje ukazatele na reálná data.
<!--SR:!2024-05-22,1,226--> 

Co je pravidlo tří (rule of three)?
?
Pokud nějká třída v c++potřebuje jedno, pravděpodobně potřebuje všechny z
- destruktor
- copy constructor
- copy assignment operator
<!--SR:!2024-05-22,1,226-->

Jaký je tvar definice lambda funkce v C++? Uveďte příklad a popište, co funkce dělá.
?
```c++
[capture clause - zachytava promenne z okolniho kodu](parametry){telo funkce}
```
<!--SR:!2024-05-22,1,226-->

Co je to kontejner?
?
Kontejner je datová struktura, určená k ukládání dat. Rozlišují se podle toho jakým způsobem jsou data ukládána, jakým způsobem k nim lze přistupovat a iterovat, velikostí apod.
<!--SR:!2024-05-22,1,226-->

Jaký je rozdíl mezi sekvenčními a asociativními kontejnery? Uveďte příklad.
?
Sekvenční kontejnery obsahují obsah v sekvenčním pořadí, zachovávajíc pořadí vkládání. Např. std::vector, std::deque, std::list
<!--SR:!2024-05-22,1,226-->
Asociativní kontejnery jsou kontejnery, založené na principu key-value párů, kde jedna hodnota v páru je nějaké id (key) a druhá hodnota je samotná hodnota která pod dané ID patří. Např. std::set, std::map, std::unordered_map
<!--SR:!2024-05-22,1,226-->
    
Jaké jsou klíčové vlastnosti kontejneru std::vector?
<!--SR:!2024-05-22,1,226-->
?
Schopnost ukládat jakýkkoli typ, sekvenční přístup, náhodný přísup, možnost použití iterátorů, automatická velikost, resizování, automatické řešení paměti.
    
Jaké jsou klíčové vlastnosti kontejneru std::map?
<!--SR:!2024-05-22,1,226-->
?
std::map ke asociativni kontejner, jeho polozky jsou automaticky trideny podle klice. Vetsina operaci je v logaritmicke casove slozitosti. každý klíč je unikátní.
<!--SR:!2024-05-22,1,226-->

Jakého datového typu může být klíč kontejneru std::map?
<!--SR:!2024-05-22,1,226-->
?
Může být jakýkoli datový typ který lze porovnávat a kopírovat.
    
Co je třeba zajistit v případě, že klíčem v kontejneru std::map je strukturovaný datový typ (např. naše vlastní třída)?
<!--SR:!2024-05-22,1,226-->
?
Náš datový typ musí být porovnávatelný sám se sebou, kopírovatelný, a přiřazovatelný
<!--SR:!2024-05-22,1,226-->

Jaký je význam datového typu std::pair?
<!--SR:!2024-05-22,1,226-->
?
std::pair nám umožňuje ukládat dvě hodnoty rozdílného typu. Můžeme k oběma hodnotám přistupovat, a zároveň je můžeme třídit pomocí klasických třídících operátorů (< > == apod), kde nejprve je porovnán první prvek, a pokud dojde ke shodě, je porovnán i druhý prvek.
<!--SR:!2024-05-22,1,226-->

Co je to iterátor? Uveďte příklad.
?
Iterátory jsou objekty, které nám umožní sekvenčně přistupovat k prvkům nějakého skevenčního kontejneru.
```c++
std::vector<int> numbers = {1, 2, 3, 4, 19};
std::vector<int>::iterator it = numbers.begin();
while(it != numbers.end())
{
	std::cout << *it << " ";
	it++;
}
```
<!--SR:!2024-05-24,3,247-->

Jaký je rozdíl mezi konstatním a nekonstantním iterátorem?
?
<!--SR:!2024-05-22,1,207-->


- Co všechno je třeba zajistit pro vytvoření vlastního iterátoru?

- Co je range-for cyklus? Uveďte příklad.

- Uveďte příklad použití algoritmu sort (deklarujte vektor libovolného datového typu, vložte do něj data a vektor seřaďte).
<!--SR:!2024-05-22,1,226-->
