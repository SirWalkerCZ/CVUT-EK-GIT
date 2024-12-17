Měření zpoždění při překlápění hradel NAND
Zobrazení a odstranění statického hazardu 
Realizace multiplexoru
[[Lab-1-zadani-v5.pdf]]
[[74LS00.pdf]]
[[CD4011.pdf]]
[[sn74ahct00.pdf]]
[[Úkol dne (L1)]]
[[test]]
## Domácí příprava
1. Prostudujte teoretický úvod v tomto návodu. Seznamte se se zapojením přípravku. 
2. Vyhledejte v katalogu či skriptech a přednáškách předmětu typické hodnoty zpoždění při překlápění hradel NAND obvodů 74LS00, CD4011 a 74AHCT00 a zapište si je. 
	- 74LS00![[74LS00.png]]
	- CD4011![[CD4011.png]]
	- 74AHCT00![[74AHCT00.png]]
1. Z dostupných materiálů (skript, přednášek předmětu, katalogu integrovaných obvodů) zjistěte, co znamenají pojmy l**ogický zisk a šumová imunita logických obvodů.** Nalezněte v katalogu či skriptech předmětu a zapište si typické hodnoty těchto parametrů pro obvody typu TTL (např. 74LS00) a typu CMOS (např. CD4011 a 74AHCT00). 
	- **Logický zisk**: 
		- Je to schopnost logického obvodu zesílit signál, poměr výstupního signálu ke vstupnímu
		- zatížitelnost, kolik hradel mohu připojit za něj stejné technologie
		- 74LS00: 74LS typicky ~10-16
		- CD4011:  obvykle řada 40xx desítky-100
	- **Šumová imunita**: 
		- maximální úroveň šumu, která na vstupu hradla nezpůsobí změnu výstupní hodnoty
		- 74LS00:
			- Pro logickou 0: maximální úroveň šumu 0,8 V
			- Pro logickou 1: maximální úroveň šumu 2,7 V
		- CD4011: 
			- 1,45 V pro obě hodnoty
1. Proveďte minimalizaci, získejte minimální disjunktní tvar funkce a nakreslete návrh zapojení funkce f = 3, 4, 5, 7 pomocí hradel NAND. Proveďte vyšetření zapojení obvodu na vznik statického hazardu v logické 1. Nakreslete časový diagram pro ilustraci vzniku hazardu. Navrhněte úpravu realizace funkce pro odstranění tohoto hazardu. 
	![[LAB1_disjuktniforma]]
2. Proveďte minimalizaci a získejte minimální disjunktní tvar výstupní funkce q multiplexoru zadaného v kapitole 3 teoretického úvodu. Nakreslete zapojení obvodu pomocí hradel typu NAND.