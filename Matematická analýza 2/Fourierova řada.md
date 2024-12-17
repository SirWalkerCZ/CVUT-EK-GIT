https://cs.wikipedia.org/wiki/Fourierova_řada
Vypadá takto 
$$
F: \frac{a_0}{2}+\sum_{n=0}^\infty a_n \cos(nx )+b_n \sin(nx)
$$
Jak získat komponenty:
$a_0=\frac{2}{T}\int_Tf(x)dx$
$a_n=\frac{2}{T}\int_Tf(x)\cos(nx)dx$
$b_n=\frac{2}{T}\int_Tf(x)\sin(nx)dx$
T je perioda opakování funkce
Prakticky vždy používáš [[Integrace Per Partes]]
$\int \cos(nx)=\frac{sin(nx)}{n}$
Baha, dost často se jednotlivé prvky rovnají nule!