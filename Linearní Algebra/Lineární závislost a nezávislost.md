>[!note] ## Nevelebná Definice:
>**Lineární nezávislost** – Seznam vektorů (x1, x2,…xn) je lineárně nezávislý (LN) IFF ∑ 𝛼𝑖 𝒏 𝒊=𝟏 . 𝒙𝒊 = 𝒐 právě tehdy když α1, α2,…αn = 0 nebo je-li seznam prázdný. 
>
>**Lineární závislost** – Seznam vektorů (x1, x2,…xn) je lineárně závislý (LZ) IFF není lineárně nezávislý.


[[Lineární závislost a nezávislost.pdf]]
[[Útvary čísel]]
[[Triviálnost lineárních kombinací]]
[[Lineární obal a lineární podprostor]]
## Lineární nezávislost obecně
$\mathbb{M}\subseteq \mathbb{L}$
$\mathbb{M}$ může být buď:
1. lineárně nezávislé (platí alespoň jeden)
	->každý vektor z $\mathbb{M}$ je důležitý
2. lineárně závislé

	-> aspoň jeden vektor $\in \mathbb{M}$ je zbytečný (tzn. není potřeba k ) 
>pokud nebudeš chápat, koukni se na 3. slide přiložené prezentace
>Polopatě: Lineární závislost je když kombinací a násobením prvků lze získat jakýkoliv jiný prvek v tomto daném prostoru.
>![[Pasted image 20231011095621.png]]
>Pokud přidám jakýkoliv prvek do této množiny, stane se lineárně závislou
>Pokud množina jde vynulovat např. násobením nenulovými čísly a následným sečtením prvků, tak je lineárně závislá
>![[Pasted image 20231011100613.png]]

- [x]  ještě nevím co se stane když jeden prvek uberu? počítá se to vůbec do lineární nezávislosti??

## Lineární nezávislost pro seznamy
$\mathbb{S}$ je seznam vektorů.
$\mathbb{S}$ je lineárně nezávislý, když:
- $\mathbb{S} = m()$
- $\mathbb{S} = (\vec{x_{1}}, ... ,\vec{x_{n}})$ a platí: kdykoli
![[Pasted image 20231010202446.png]]
$\mathbb{S}$ je lineárně závislé, pokud ani jedno z předchozích dvou tvrzení neplatí

## Lineární nezávislost pro množiny
$\mathbb{M} \subseteq \mathbb{L}$
$\mathbb{M}$ je lineárně nezávislá, když:
- $\mathbb{M} = {()}$
- $\mathbb{M}= {\vec{x_{1}},...,\vec{x_{n}}}$  je neprázdná KONEČNÁ množina a platí:
![[Pasted image 20231010202446.png]] 
- $\mathbb{M}$ je nekonečná množina a každá její konečná množina je lineárně nezávislá
- $\mathbb{N} \subseteq \mathbb{M}$, $\mathbb{N}$ je lineárně nezávislá množina, tak $\mathbb{M}$ je taky lineárně nezávislá 
Pokud neplatí ani jedno z tvrzení, je lineárně závislá.

