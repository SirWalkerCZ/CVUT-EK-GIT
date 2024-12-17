[3/20 5:04 PM] Prochazka, Viktor

Žravost balónu

Dneska jsem byl s Hosek, Michal v kanclu a hráli jsme si ještě s tou deskou. Plně osazená deska žere ~130mA. GSM je z toho 20mA, ale nic nedělá, uvidíme s nějakým vysíláním. Nucleo si taky bere cca 20mA. Nejvíc žere GPS, která podle datasheetu bere 50-60mA a zatím se nám nepodařila firmwarově vypnout. Tím pasivní spotřeba klesne někam do uA.  Ledky nežerou skoro nic, takže nedostanou šroubovákem... Ostatních 30mA připadá na 4V LDO, který podle datasheetu má žrát cca 25 mA a zbytek se asi rozsype mezi 3V3 LDO a sensory. 

[5:33 PM] Prochazka, Viktor

Tohle celý bylo bez GMS, které nefunguje pokud je připojený Nucleo a baterka zároveň. To znamená že nám tam někde ještě topí 20 mA. Samotný GSM běží jen na desce bez drátu a nuclea a žere asi 30 mA