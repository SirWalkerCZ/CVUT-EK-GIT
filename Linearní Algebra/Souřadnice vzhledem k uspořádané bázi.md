>[!note] ## Nevelebná Definice
>**Souřadnice** – Souřadnice vektoru v vzhledem k bázi B jsou potom takové a1, a2,…an, že platí 𝒗 = $\sum^{n}_{i=1} a_{i}b_{i}$. Značíme coordB(v)= $(a_{1}, a_{2}, ... , a_{n})$
>



[[Souřadnice vzhledem k uspořádané bázi.pdf]]
[[Báze a dimenze]]
[[Kalkulus komutativních diagramů]]

![[Pasted image 20231012110721.png]]
![[Pasted image 20231012110734.png]]
Důkaz:
$\vec{x}\in \mathbb{L}$ 
1. existence $a_{1}$: 
	- span(B) = L 
	- tzn. $\vec{x}=$  $\sum^{n}_{1}a_{1}, \vec{b_{1}}$ pro něj $a \in \mathbb{F}$
2. jedinečnost $a_{1}$
	- ať $\sum^{n}_{1}a_{1}, \vec{b_{1}}=\vec{x}=\sum^{n}_{1}a_{1}´\vec{b_{1}}$
	- tímto chceme získat $a_{1}=a_{1}´$, pro všechny $i = 1,... , n$

$$
\sum^{n}_{1}a_{1}, \vec{b_{1}}=\sum^{n}_{1}a_{1}´\vec{b_{1}}
$$$$
\sum^{n}_{1}a_{1}, \vec{b_{1}}-\sum^{n}_{1}a_{1}´\vec{b_{1}} = \vec{o}
$$
$$
\sum^{n}_{1}(a_{1}-a´_{1}) \vec{b_{1}} = \vec{o}
$$
	Za předpokladu že ${\vec{b}, ... , \vec{b_{n}}}$ je lineárně nezávislé můžeme vytknout $a_{1}-a´_{1}=0$ a díky lineární nezávislosti  tudíž $a_{n}-a´_{n}=0$ 
	Závěrem je tedy $a_{n}=a=a´_{n}$ a tudíž skalár kterým jde vektor vynulovat je jen jeden

##### Tvrzení (linearita výpočtu souřadnic)
Ať B je konečná uspořádaná báze [lp] L. Potom pro zobrazení $x \mapsto coord_{b}(\vec{x})$ platí:
1.  $coord_{b}(\vec{x}+\vec{y})= coord_{b}(\vec{x})+ coord_{b}(\vec{y})$
2. $coord_{b}(a * \vec{x})= a *  coord_{b}(\vec{x})$
Důkaz 1:
$\vec{x}= \sum^{n}_{1}(a_{1}, \vec{b_{1}})$
$\vec{y}= \sum^{n}_{1}(c_{1}, \vec{b_{1}})$
$\vec{x}+\vec{y}= \vec{x}= \sum^{n}_{1}(a_{1}, \vec{b_{1}})+\vec{y}= \sum^{n}_{1}(c_{1}, \vec{b_{1}})= \vec{x}= \sum^{n}_{1}(a_{1}+ c_{1})*\vec{b}$
![[Pasted image 20231013133505.png]]


>[!danger] Důkaz 2 DŮ, help na flow
>Podle všeho tohle je dostatečný důkaz???

Příště bude:
[[Lineární zobrazení]]