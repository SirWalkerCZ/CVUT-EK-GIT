[Routing]
[[08-Smerovani_v231.pdf]]
- Směrovací algoritmy,
    - statické a dynamické směrování,
    - autonomní systém, administrativní vzdálenost a metrika,
    - protokoly RIP, (E)IGRP, OSPF, BGP.


Třetí vrstva OSI modelu
Nemusí to být jen router, může to být kterékoliv zařízení které dosáhne na 3 vrstvu (L3)
![[Pasted image 20231115125304.png]]

Nemusí se nutně jednat o směrování IP adres, očividně do toho počítá i třeba telefonní čísla
Maska ve spojení s IP adresou může vytvořit IP network ID
směrovací tabulka != switchová tabulka
IP network ID je ve směrovací tabulce spolu se způsobem jak se k ní dostat


Směrovač nemusí (a obvykle nemá) mít ve směrovací tabulce záznamy o všech existujících sítích v Internetu
	• Zná jen určitou podmnožinu sítí 
	• Paket, pro který neexistuje odpovídající záznam ve směrovací tabulce 
		 je odeslán směrovači označeném jako výchozí brána (default route 
		 je zahozen 
			 • pokud ani výchozí brána není nastavena 
	• Existuje- li výchozí brána, nezahodí nikdy směrovač žádný paket z důvodu neexistence záznamu ve směrovací tabulce

## Routing x routed protokoly
- Routing protocol (směrovací protokol) 
	-  zajišťuje výměnu směrovacích informací nutných pro přeposílání směrovatelných (routed) protokolů 
	- RIP,OSPF, EIGRP,… 
- Routed protokoly (směrovatelný protokol) 
	- přenos uživatelských dat 
	- IP, IPX, Appletalk … 
	- jejich pakety jsou směrovány s využitím informací získaných od směrovacích (routing) protokolů 
	- ne každý síťový protokol je automaticky i směrovatelný !

### Statické směrování

Záznamy do směrovací tabulky se ukládají ručně: 
- [ip route 192.168.1.0 255.255.255.0 172.16.3.1] - packet tracer
- route ADD 147.32.128.0 MASK 255.255.240.0 157.1.10.2 - WIN
- ip route add dst-address=0.0.0.0/0 gateway=192.168.1.42 - LINUX
- ip route add 147.32.0.0/16 via 192.168.33.33 -LINUX

Je na píču, protože se samo nemění po přidání dalších zařízení
Ale použijeme ho v projektu
### Dynamické směrování
****
Záznamy do směrovací tabulky jsou přidávány/ubírány automaticky na základě informací od směrovacích protokolů 
	– směrovač sám určí optimální trasu 
	– směrovače spolu komunikují a vyměňují si informace o dostupných sítích 
Výhody:
	– schopnost dynamicky reagovat na změny v síti 
	– vhodné pro větší sítě 
	– loadbalancing 
Nevýhody: 
	– zvýšené nároky na CPU, RAM, šířku použitého pásma

![[Pasted image 20231115134826.png]]


153.242.9.132	153.242.9.133 - 153.242.9.134	153.242.9.135 AB
153.242.9.136	153.242.9.137 - 153.242.9.138	153.242.9.139 BC
153.242.9.140	153.242.9.141 - 153.242.9.142	153.242.9.143
153.242.9.144	153.242.9.145 - 153.242.9.146	153.242.9.147
153.242.9.148	153.242.9.149 - 153.242.9.150	153.242.9.151
153.242.9.152	153.242.9.153 - 153.242.9.154	153.242.9.155
153.242.9.156	153.242.9.157 - 153.242.9.158	153.242.9.159
153.242.9.160	153.242.9.161 - 153.242.9.162	153.242.9.163

#data