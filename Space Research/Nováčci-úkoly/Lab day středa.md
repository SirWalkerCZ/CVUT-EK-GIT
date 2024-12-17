[[CTUSR_AVIONICS_PROJECT_I.pdf]]
[[CTUSR AVIONICS PROJECT II.pdf]]
[[ignition_system.png]]
![[Dělič napětí]]

### ESP32 LOW/HIGH LOGIC level
![[8k6v9.png]]
VDD = 3.3V

Vil (max) = 0.25 * 3.3 = 0.825V  
Vih (min) = 0.75 * 3.3 = 2.475V

Theoretically:

LOW LEVEL range is -0.3V to 0.825V  
HIGH LEVEL range is 2.475V to 3.6V

Practically:

LOW LEVEL range is 0V to 1.67V  
HIGH LEVEL range is 1.67V to 3.3V

### schematic
![[ignition_System_esp32.excalidraw]]