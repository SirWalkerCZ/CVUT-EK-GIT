minule jsem zkoumal sensors - do not touch
- na nic jsem nepřišel

ERR: vždy jeden zápis a pak BusFault_Handler
- [x] debug?
- [x] ggl
Potencionální důvody crashe:
- GPS se nechytá - taky problem, pise nic
- low voltage - problém s deskou
- SD fuckup - pravděpodbně here
	- něco s snprint??????
- nemám latest sensory

![[Pasted image 20240806143506.png]] - done
ostatní nalezené chyby
- špatná batt voltage jen když to je blbé
- convert batt voltage to float - done
	- funguje to správně když na baterii, když na PC tak špatně
	- 

funkce myprintf() to zpsuboila, zkontrolovat proc?


sensors.c
```c
HAL_Delay(100); // Initial delay before starting measurements

int x = 0; //for testing

// Continue measurements until the condition is met

while (sensors_data.num_data_points < MAX_DATA_POINTS) {

x++; //for testing

ilps22qsdata.temperature = 0.0;

ilps22qsdata.pressure = 0.0;

stts75data.temperature = 0.0;

stts75data.timestamp = 0.0;

sht40data.temperature = 0.0;

sht40data.humidity = 0.0;

ilps22qsdata.temperature = ILPS22QS_ReadTemperature();

ilps22qsdata.pressure = ILPS22QS_ReadPressure();

ilps22qsdata.altFromPressure = (44330. * (1 - pow(((float)ilps22qsdata.pressure*100)/101325.0, 1./5.255)));

stts75data.temperature = STTS75_ReadTemperature();

stts75data.timestamp = HAL_GetTick();

//sht40data.temperature = SHT40_ReadTemperature();

//sht40data.humidity = SHT40_ReadHumidity();

// Store data in MeasurementData struct

sensors_data.ilps22qs_data[sensors_data.num_data_points] = ilps22qsdata;

sensors_data.stts75_data[sensors_data.num_data_points] = stts75data;

sensors_data.sht40_data[sensors_data.num_data_points] = sht40data;

sensors_data.num_data_points++;

if (x >= targetCondition) {

ILPS22QS_StopMeasurement();

STTS75_StopMeasurement();

break;

}

HAL_Delay(1000); // 1 second

}
```