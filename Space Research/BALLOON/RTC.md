### GPS
Nějak potřebuju dostat čas dovnitř
Pokud budem chtít používat čas z gps, tak se musíme připojit na PPS pin
![[GPS_teseo-vic3d.pdf#page=6]]

### Výpočet frekvence
  
The RTC in the STM32 can be configured as a wakeup source and used to wake up the microcontroller from low power modes like STOP. 
Let’s say we want to wake up every 10 seconds from the STOP mode, the RTC can easily be set up to do that. 
The RTC clock source for the STM32L476, the microcontroller used in this example on the Nucleo-L476 board, can be provided by either the LSI (Low Speed Internal) or LSE (Low Speed External) oscillator. The Nucleo board includes a 32.768 KHz crystal connected to the LSE oscillator pins.
For this exercise, the LSE oscillator will be selected as the clock source for the RTC as it offers more precision than the LSI oscillator.  
We are going to calculate the WakeUp Counter of the RTC so that it wakes up the STM32 every 10 seconds. Let’s set the prescaler of the RTC clock to 16 as an example. Here are the equations to calculate the WakeUp Counter settings:


$$
Wakeup Time Base = 16 /(~32.768KHz )  = 0.488 ms 
$$
$$Wakeup Time = 0.488 ms  * WakeUpCounter$$$$  
WakeUpCounter = Wakeup Time / 0.488 ms = 10s / 0.488 ms = 20491 = 0x500B
$$
Takže nám vyšlo 0x500B


### LSI vs LSE
![[Pasted image 20240308135027.png]]
![[Pasted image 20240308135027.png]]
![[Pasted image 20240308134809.png]]
LSE mi zatím nejde nastavit, musím to píchnout na LSI
Nevýhody: velký rozsah frekvencí, uvidím jestli to bude mít nějaký impact na čas

#### Výpočty
Prescaler jsem nastavil jako 1, doufám, že tím nebudu násobit chybu
$$
\Delta f_{LSI} = \frac{34+29.5}{2}kHz=~31.75 kHz
$$
$$WakeUpTimeBase=\frac{Prescaler}{\Delta f_{LSI}}=31750^{-1} s=0.031496 ms$$
WakeUpTime dáme 10s
$$WakeUpCounter=\frac{WakeUpTime}{WakeUpTimeBase}=317500$$
Tohle číslo plugnu do MX

Dočetl jsem se že vyšší prescaler šetří energii

$Prescaler =16$
$$WakeUpTimeBase=\frac{Prescaler}{\Delta f_{LSI}}=\frac{16}{31750}s=0.504 ms$$
$$WakeUpCounter=\frac{WakeUpTime}{WakeUpTimeBase}=19843$$

Wake up time = 10s


Pro wake up time 60s:
119 058 = 0x1D112



LSI je fakt na hovno, +- 10 s na 60s intervalech

### Spánkové režimy
https://wiki.st.com/stm32mcu/wiki/Getting_started_with_PWR#Definition_4

### Návod na buzení RTC
https://community.st.com/t5/stm32-mcus/how-to-configure-the-rtc-to-wake-up-the-stm32-periodically-from/ta-p/49836

Stav:
Funguje 10s, STOP0 i STOP1... STOP2 není, LSE není...
- [ ] Vyzkoušet 60s
- [ ] Vyzkoušet jiné timery
- [ ] Měřit
- [ ] Separátní file