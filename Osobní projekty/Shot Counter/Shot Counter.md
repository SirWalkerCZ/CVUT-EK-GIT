
## Hardware
Určitě založit na nějakým esp32
Bud muzeme koupit dev board a zkusit nakreslit nějakou desku (čas/nebude to moc dobrý/kolik ušetříme) nebo něco na tehle způsob:
https://www.waveshare.com/esp32-s3-touch-lcd-1.28.htm
[To samý ale alixepress](https://www.aliexpress.com/item/1005005482290022.html?src=google&src=google&albch=shopping&acnt=494-037-6276&slnk=&plac=&mtctp=&albbt=Google_7_shopping&albagn=888888&isSmbAutoCall=false&needSmbHouyi=false&albcp=19367082846&albag=&trgt=&crea=en1005005482290022&netw=x&device=c&albpg=&albpd=en1005005482290022&gad_source=1&gclid=Cj0KCQjwwYSwBhDcARIsAOyL0fhd8H2r5Qoctz12PhijDO8fVqycIHdazVHZcz-x-NCfm3zC7P9788UaArt6EALw_wcB&gclsrc=aw.ds&aff_fcid=60e28885c9b54319a3d2e08eb075e372-1711361490849-09419-UneMJZVf&aff_fsk=UneMJZVf&aff_platform=aaf&sk=UneMJZVf&aff_trace_key=60e28885c9b54319a3d2e08eb075e372-1711361490849-09419-UneMJZVf&terminal_id=e2b29a3cc6874ea89843cb52b253c441&afSmartRedirect=y)
Bude to dražší, ale nižší "manufacturing cost"
MBY buy in bulk?
můžeme cheapoutnout na esp8266
 - větší pain programovat
 - [link](https://www.aliexpress.com/item/1005005884071389.html?spm=a2g0o.productlist.main.89.464d128aBMflne&algo_pvid=5878d8fa-1b8c-4b9f-8802-72e65caa30fd&algo_exp_id=5878d8fa-1b8c-4b9f-8802-72e65caa30fd-44&pdp_npi=4%40dis%21CZK%21994.17%21293.03%21%21%21300.01%2188.43%21%402103853617113610520751931e81c0%2112000034696892504%21sea%21CZ%210%21AB&curPageLogUid=hy6ruPlKDbpX&utparam-url=scene%3Asearch%7Cquery_from%3A)

## Jak do toho dostat stav zásobníku
1) RFID tagy? chybí senzor, ale nejvíc convinient
2) Dotykový display: hodně pohodlný, mby pain to napsat
3) WebServer hostováný na esp, less pohodlný
4) potenciometr: gej, mechanická součástka, point of failure
Některý lidi střílí s rukavicema, tak co nejmín dotykový....
hodně fun udělat by bylo nějaký bluetooth + google assistent 

## Actual funkce
Mělo by spát ?
budí se pinem s akcelerometrem
Otázkou jestli se mikrofon stihne probrat
+šetří baterku

Nebude spát
klasik stavový automat, točí se v loopu a čeká na input
Možná spíš interrupt
Bude hodně kvůli blbostem z miku
FreeRTOS???
musel bych se naučit, ale teoreticky ideální


alternativní možnost detekce
celkem funny by byla nějaká hallova sonda v oblasti trigerru, ale je to víc invazivní
Nevím jestli to mikrofon přežije 

## Akcelerometr
https://randomnerdtutorials.com/esp32-mpu-6050-accelerometer-gyroscope-arduino/
NÁHRADNÍ KNIHOVNA: https://github.com/ElectronicCats/mpu6050
dokumentace k adafrutiu
https://adafruit.github.io/Adafruit_MPU6050/html/class_adafruit___m_p_u6050.html#a64e6b74741d31138fb60f14ec2e7d9c1
currently 40 Hz


jestli bude ten náš na hovno, můžem tenhle
https://learn.sparkfun.com/tutorials/h3lis331dl-accelerometer-breakout-hookup-guide
