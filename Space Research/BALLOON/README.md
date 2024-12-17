[Link to board docs](https://www.st.com/resource/en/user_manual/um2397-stm32g4-nucleo32-board-mb1430-stmicroelectronics.pdf)  
Repository for the firmware of CTU Space Research stratospheric balloon.


# State Machine Summary
  
## States
  

### START_STATE

- **Description:** System initialization state.

- **Actions:**

  - Reset `STATE_TIME` and `BATT_VOLTAGE`.

  - Clear `gpsData` buffer.

- **Peripherals Used:** None

- **Next State:** `READ_TIME`

  

### READ_TIME

- **Description:** Reads the current system time.

- **Actions:**

  - Set `STATE_TIME` to the current tick value using `HAL_GetTick()`.

- **Peripherals Used:** None

- **Next State:** `READ_BATTERY_VOLTAGE`

  

### READ_BATTERY_VOLTAGE

- **Description:** Reads the battery voltage and checks if it is below the critical level.

- **Actions:**

  - Get battery voltage using `GET_BATTERY_VOLTAGE(value_adc)`.

  - If battery voltage is below critical level, enable power saving mode.

- **Peripherals Used:** ADC

- **Next State:** `SEND_DATA` if power saving is enabled, otherwise `READ_SENSORS`

  

### READ_SENSORS

- **Description:** Reads data from sensors (pressure, humidity, temperature). Altitude is calculated from pressure.

- **Actions:**

  - Call `measureContinuously(&s_data, &hi2c1)` to read sensor data.

  - Print altitude data using `myprintf()`.

- **Peripherals Used:** I2C (STTS75, ILPS22QS,  /\*SHT40\*/)

- **Next State:** `READ_GPS`

  

### READ_GPS

- **Description:** Reads GPS coordinates and determines if the balloon has landed.

- **Actions:**

  - Read NMEA stream using `Read_NMEA_Stream(hi2c1, recievedNMEA, GPS_BUFFER_SIZE)`.

  - Parse GPS data using `Parse_GPS_Data(recievedNMEA, cutGPSData, GPS_BUFFER_SIZE, &gpsRawData)`.

  - Sort GPS data using `Sort_GPS_Data(&gpsRawData, &gpsValues)`.

  - Format GPS data into `gpsData`.

- **Peripherals Used:** I2C (GPS)

- **Next State:** `CHECK_FOR_LANDING`

  

### CHECK_FOR_LANDING

- **Description:** Checks if the balloon has landed based on altitude data.

- **Actions:**

  - If altitude is below `LANDING_ALTITUDE` and other conditions are met, enable power saving mode.

- **Peripherals Used:** None

- **Next State:** `SAVE_DATA`

  

### SAVE_DATA

- **Description:** Saves data to the SD card.

- **Actions:**

  - Set GPIO pin to indicate SD card writing using `HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, GPIO_PIN_SET)`.

  - Save data using `SD_SAVE(STATE_TIME, &gpsData, &s_data, BATT_VOLTAGE)`.

- **Peripherals Used:** SPI (SD CARD)

- **Next State:** `SEND_DATA`

  

### SEND_DATA

- **Description:** Sends data via GSM (currently commented out).

- **Actions:**

  - Placeholder for GSM data transmission.

- **Peripherals Used:** UART (/\*GSM*/)

- **Next State:** `SLEEP`

  

### SLEEP

- **Description:** Puts the system into sleep mode.

- **Actions:**

  - Delay for a long or short sleep cycle based on power saving mode using `HAL_Delay()`.

- **Peripherals Used:** None

- **Next State:** `START_STATE`

  

## Transitions

  

- **START_STATE → READ_TIME**

- **READ_TIME → READ_BATTERY_VOLTAGE**

- **READ_BATTERY_VOLTAGE → SEND_DATA** (if power saving is enabled)

- **READ_BATTERY_VOLTAGE → READ_SENSORS** (if power saving is not enabled)

- **READ_SENSORS → READ_GPS**

- **READ_GPS → CHECK_FOR_LANDING**

- **CHECK_FOR_LANDING → SAVE_DATA**

- **SAVE_DATA → SEND_DATA**

- **SEND_DATA → SLEEP**

- **SLEEP → START_STATE**


 List of sensors and their I2C addresses: Addresses extracted from the schema: [Link to schema](https://github.com/CTU-Space-Research/TeamA-Balloon-Hardware/blob/main/Exports/V1.0/SchematicV1.0.pdf)

| Sensor            | I2C address   | Documentation                                                                     |
| ----------------- | ------------- | --------------------------------------------------------------------------------- |
| ~~Magnetic~~      | ~~0x3D/0x3C~~ | ~~[LIS2MDL](https://www.st.com/en/mems-and-sensors/lis2mdl.html)~~                |
| Pressure          | 0xB9/0xB8     | [ILPS22QS](https://www.st.com/en/mems-and-sensors/ilps22qs.html)                  |
| Temperature       | 0x91/0x90     | [STTS75](https://www.st.com/en/mems-and-sensors/stts75.html)                      |
| GPS               | 0x3A          | https://www.st.com/resource/en/datasheet/teseo-vic3d.pdf                          |
| ~~Accelerometer~~ | ~~0x18~~      | ~~[LIS2DUX12]()~~                                                                 |
| ~~IMU/MUI~~       | ~~0x6A~~      | ~~[LSM6DSV16X](https://www.st.com/en/mems-and-sensors/lsm6dsv16x.html)~~          |
| Humidity/temp     | 0x44          | [SHT40-AD1B](https://www.st.com/en/partner-products-and-services/sht40-ad1b.html) |

TODO: REAME for sensor libraries for future generations