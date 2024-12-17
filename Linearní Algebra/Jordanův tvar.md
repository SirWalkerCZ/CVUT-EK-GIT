[[Jordanuv Tvar.pdf]]

>[!note] ### Velebný tvary
>Pro [[Linearní Algebra/Lineární zobrazení]] **f** chceme psát $f=f_{diag}+f_{nil}$ kde
> 	  $f_{diag}$ je diagonalizovatelné [[Diagonalizace matic]]
> 	  $f_{nil}$ se "příliš neliší" od nulového zobrazení **o**
> 		  Přesněji $(f_{nil})^{k} = o$ pro nějaké k
> 	  $f_{nil}\times f_{diag}= f_{diag}\times f_{nil}$

Tato skvělá píčovina se jmenuje Jordanův tvar a používá se k počítání mocnin matic, protože pro ní funguje binomická věta (v normálních maticích to nejde protože záleží na pořadí násobení).

$f=\begin{pmatrix}3 0 1 \\ 0 3 0 \\ 0 0 5\end{pmatrix}$
$f_{diag}=\begin{pmatrix}3 0 0 \\ 0 3 0 \\ 0 0 5\end{pmatrix}, f_{nil}=\begin{pmatrix}0 0 1 \\ 000 \\ 000\end{pmatrix}$
fnil = nilpotetní zobrazení, je to víceméně chyba původní funkce od toho aby byla diagonální