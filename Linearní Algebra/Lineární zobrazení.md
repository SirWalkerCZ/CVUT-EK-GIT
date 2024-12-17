>[!note] ## Nevelebná Definice:
>L**ineární zobrazení**– Zobrazení f z L1 do L2 je lineární IFF f (x+y) = f (x) + f (y) a zároveň f (α x) = α . f (x) pro každé α ∈𝔽 a pro každé x, y ∈ L
>
>**Monomorfismus** – Lineární zobrazení f z L1 do L2 je monomorfismus IFF pro každé x1, x2 ∈L1 platí, když x1 ≠ x2 , potom f (x1) ≠ f (x2). 
>
>**Epimorfismus** – Lineární zobrazení f z L1 do L2 je epimorfismus IFF pro každé y∈L2 existuje x ∈L1 takové, že platí f (x) = y. (pomůcka „nasurepi“ -na, surjekce, epimorfismus jsou víceméně ekvivalentní pojmy) (Epimorfismus NENÍ opak monomorfismu. (Velmi častá chyba.)) 
>
>**Isomorfismus** – Lineární zobrazení f z L1 do L2 je isomorfismus IFF je epimorfismus a monomrofismus zároveň


>[!caution] penis



[[Lineární zobrazení.pdf]]
Lineární zobrazení f: $L_{1} \rightarrow L_{2}$ zoobecňuje zobrazení $\vec{x} \rightarrowtail coordB(\vec{x})$
Definice:
![[Pasted image 20231016162152.png]]

Je to velmi podobné jako linearita kombinování souřadnic
![[Pasted image 20231016162322.png]]
Tvrzení (základní algebraické vlastnosti lineárních zobrazení)
1. Složení lineárních zobrazení je lineární. Identita je lineární zobrazení
	(i) $f: L_{1}\rightarrow L_{2}$, $g: L_{2}\rightarrow L_{3}$ $\leadsto fg: L_{1}\rightarrow L_{3}$
	(ii) CO JE TO IDENTITA
		https://cs.wikipedia.org/wiki/Identita_(matematika)
		zobrazaní, které vyprodukuje stejnou věc jako do ní dáme
		id(x)=1
		používá se k dokázání existence jedničky
	Důkaz (i):
	$$(g*f)(\sum^{n}_{1}r_{1}*\vec{x_{1}})=g(\sum^{n}_{1}r_{1}*f\vec{x_{1}})=\sum^{n}_{1}r_{1}*fg\vec{x_{1}}=\sum^{n}_{1}r_{1}(fg)\vec{x_{1}}$$
	Důkaz (ii):
2. ![[Pasted image 20231016163826.png]]


Připomenutí: 
Velmi podobné funkcím, operace jsou stejné 
Jsou funkce vektory? ano
mám k tomu obrázek


Důkaz: 
$(f+g)(\sum^{n}_{1}ri \vec{xi})=f(\sum^{n}_{1}ri \vec{xi}+g(\sum^{n}_{1}ri \vec{xi}$
$=(\sum^{n}_{1}ri f\vec{xi}+(\sum^{n}_{1}ri g\vec{xi}=\sum^{1}_{n} r1 (f(x1)+(g1))$
FUCCKCKCK DODĚlATM

2. DRUHÝ DŮkaz
>[!attention] ![[Pasted image 20231016164803.png]]
>Toto je důsledek předchozích dvou tvrzení, platí zde tudíž stejné axiomy jako v Lineárních prostorech a lineární zobrazení jsou vektory

>[!note] sem foto koleček

souvisí to s principem superpozice, nefunguje to pro nekonečné prostory
## Lineární zobrazení z $F^s$ do $F^r$
![[Pasted image 20231016165857.png]]
$a^{1}$ je v prostoru $F^r$ 
seznam A = $(\vec{a_{1}}, .... , \vec{a_{n}})$ **kóduje lineární zobrazení** - matice s r řádky a s sloupci
![[Pasted image 20231016170314.png]]
>[!note] foto every matrix tell its story
>![[Pasted image 20231016170955.png]]

Zoom, aspect, shear

Př: funkční hodnoty rotace $R^{2}_linR \alpha\rightarrow R^2$
[[Lineární zobrazení 2.pdf]]
## Definice (speciální vlastnosti lineárních zobrazení)
[[Kalkulus komutativních diagramů]]
Lineárnímu zobrazení f: $L_{1}\rightarrow L_2$ říkáme
1. monomorfismus, je-li *f* injektivní (také: prosté) zobrazení
	1. mono()
2. epimorfismus, je-li f surjektvní (také: na) zobrazení
	1. epi 
3. isomorfismus, je-li bijektvní (kombinace obou horních)
>[!summary] Fotka s tvrzení a typy pro Definice

Tvrzení:
Složení jakýhkoliv dvou stejných typů se rovná tomu typu.
Identita je isomorfismus.
	$L id_{L}:\rightarrow L$ výsledné L je tedy isomorfní
	

## Obraz a jádro
![[Pasted image 20231023162844.png]]
Jádro je zobrazení které se funkcí f: zobrazí na nulový vektor.
Obraz je množina všech výsledných zobrazení f: v L2.

Tvrzení:
Ať f: $L_{1}\rightarrow L_{2}$ je lineární zobrazení. Pak ker(f) je podprostor $L_{1}$, im(f) je podprostor $L_{2}$
Důkaz 2:
Chci dokázat že jakoukoliv kombinací vektorů neuniknu z množiny L_2
tzn:
1. $\vec{o} \in im(f)$
	1.  nulový vektor z l1 leží v l2
	2. def(f) = 0
2. $\vec{y}, \vec{y´} \in im(f) \rightarrow y+y´ \in im(f)$
	1. $im(f)=L_{2}$
	2. $\dim(L_{1})= \dim(L_{2})$
3. $a \in \mathbb{F}, \vec{y} \in im(f) \rightarrow a \vec{y} \in im(f)$
	1. $\vec{y}= f(\vec{x}, \vec{x} \in L_{1})$
	2. $a.\vec{y}= a.f(\vec{x}) = f(\vec{x}.a) \in im(f)$
$$
def(f)= dim(ker(f)) 
$$
$$
rank(f) = dim(im(f))
$$
rank = hodnost
def = defekt

>[!info] obrázek s vykřičníkem 

![[Pasted image 20231023164934.png]]

Důkaz:


![[Pasted image 20231023165226.png]]
Bacha, všechny následující věci říkají to samé
Pozn. $\mathbb{F^s} -(A)\rightarrow \mathbb{F^r}$
Použij 4. 
A je mono & s =r 
Takže víme že to je čtvercová matice
Každá matice která je isomorfmní tak je čtvercová
Důkaz:


## Důsledek (isomorfismy a soustavy rovnic)
![[Pasted image 20231023171921.png]]
To znamená že to je čtvercová matice -> r = s  -^
>[!hint] Pokud je A iso, tak je regulérní matice

>[!hint] Pokud není A iso, tak je singulární matice

vyser se lagrangeovu interpolaci, je to k hovnu

## Tvrzení
Ať B = ($\vec{b_{1}},....,\vec{b_{n}}$) je uspořádaná báze prostoru L. Potom výpočet souřadnic v bázi $\mathbb{B}$
$$
coord_{B}:L \rightarrow \mathbb{F^{n},}\vec{x} \rightarrowtail coord_{b}(\vec{x})
$$
je isomorfismus.

![[Pasted image 20231023173522.png]]
Af = matice linárního zobrazení
![[Pasted image 20231027112040.png]]

