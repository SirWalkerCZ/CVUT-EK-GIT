Repozitář na firmware stratobálonu.

Tohle je jen základní rozpis jednotlivých funkcí stavového automatu.

## START
#### Read TIME
Ihned po startu je třeba načíst čas z RTC do nějaké proměnné, budeme ho chtít dát k datům z měření.
Vždy bych používal jen jeden čas na jeden cyklus stavového automatu.

#### Read battery voltage
Po načtení času budeme chtít změřit napětí na baterce. Když už bude vybitá, skočíme do power-saving módu.
Napětí na baterce také budem chtít ukládat k letovým datům.
Critical level ještě určíme podle typu baterky.

## Power saving mode
Budem chtít pouze posílat údaje o poloze a stavu baterky, na poměrně dlouhých intervalech, aby jsme to stihli najít, než úplně umře. 
Měli by jsme se taky do něj dostat po přistání, a chtělo by to přidat nějaký flag, aby jsme věčně nekontrolovali jestli už balón přistál a ušetřili tak energii.

## Eject cargo
Not sure if we are doing or not

## OPERATION

#### Enable I2C
Nejdřív by jsme měli zapnout I2C sběrnici a inicializovat všechny sensory.  Pokud se nějaký sensor nepodaří inicializovat, zvednout flag aby jsme ho potom neměřili.

#### Read sensors
Budeme měřit všechny sensory.
Seznam senzorů a jejich  I2C adresy:
Adresy vytaženy ze schématu: https://github.com/CTU-Space-Research/TeamA-Balloon-Hardware/blob/main/Exports/V1.0/SchematicV1.0.pdf

| Sensor         | I2C address | Dokumentace                                                         |
| -------------- | ----------- | ------------------------------------------------------------------- |
| Magnetic       | 0x3D/0x3C   | https://www.st.com/en/mems-and-sensors/lis2mdl.html                 |
| Pressure       | 0xB9/0xB8   | https://www.st.com/en/mems-and-sensors/ilps22qs.html                |
| Temperature    | 0x91/0x90   | https://www.st.com/en/mems-and-sensors/stts75.html                  |
| GPS            | 0x3A        | ...                                                                 |
| Accelerometr   | 0x18        | https://www.st.com/en/mems-and-sensors/lis2dux12.html               |
| IMU/MUI        | 0x6A        | https://www.st.com/en/mems-and-sensors/lsm6dsv16x.html              |
| Hummidity/temp | 0x44        | https://www.st.com/en/partner-products-and-services/sht40-ad1b.html |

GPS měřit jako první a můžeme zjistit, jestli už balón přistál, nebo ne. Pokud jsme si jistí, že přistál, nastavíme permanentní flag, že přistál a vždy přeskakujeme měření
Vždy porovnávat s předchozí polohou
Každý sensor by měl být zase vypnut po změření
Pokud nastane nějaká chyba v měření, na místo hodnoty tam hodíme nějaký chybový kód a jedem dál.

#### Disable I2C
Power saving again :P

## SD data saving
Ukládání všech dat do formátu .csv na SD kartu.
SD karta musí nejdřív být inicializována a pak i bezpečně odpojena. 
Pokud nepůjde inicializovat, nebo na ní psát, tak přeskočit

## GSM send
Spustit a vypnout GSM modul.
Odeslat data. 

#Balloon 