det()

#### Determinant čtvercové matice 
 - Mějme čtvercovou matici A typu n×n nad tělesem 𝔽
 - det(A) je potom takové číslo z 𝔽, pro které platí: det(𝐴) = ∑ 𝑠𝑖𝑔𝑛(𝜋)𝜋∈𝑆𝑛 . 𝑎𝜋(1),1. 𝑎𝜋(2),2 … 𝑎𝜋(𝑛),𝑛 
	 - (Kde Sn je právě symetrická grupa permutací „políček matice“ – tohle k definici nepište) 
 - (Když jsem definici viděl poprvé, tak jsem z ní také nebyl moc nadšený, proto se pokusím o nějaké přátelské vysvětlení. Napřed se vypořádám s tou grupou a tím π. Ve zkratce nejde o nic jiného, že pokaždé když násobím ta áčka, tak je to π jiná permutace, která ještě nebyla. Áčka jsou pozice v matici, kde druhé číslo určuje sloupec a první π(nějaké číslo) určuje řádek. π(nějaké číslo) se mění v závislosti na tom, jaké číslo permutace π přiřadí číslu v závorkách. 𝑠𝑖𝑔𝑛(𝜋) je znamínko permutace, což znamená, než že číslo, které dostanu 8 z těch áček vynásobím číslem (-1)na počet překřížení strun v diagramu. Determinant je tedy číslo, které získám součtem všech těchto dílčích součinů.)
- ![[Pasted image 20231210192550.png]]