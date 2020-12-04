EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "ESP32 Connections"
Date "10/10/2020"
Rev "V5.0"
Comp "Zéfiro"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ESP32_Connections-rescue:ESP32_DevKit_V1_DOIT-ESP32_DevKit_V1_DOIT U1
U 1 1 5F7E3824
P 5950 3350
F 0 "U1" H 5950 4817 50  0000 C CNN
F 1 "ESP32_DevKit_V1_DOIT" H 5950 4726 50  0000 C CNN
F 2 "ESP32_DevKit_V1_DOIT:esp32_devkit_v1_doit" H 5950 4700 50  0001 C CNN
F 3 "https://aliexpress.com/item/32864722159.html" H 5500 4700 50  0001 C CNN
	1    5950 3350
	1    0    0    -1  
$EndComp
Text GLabel 5350 4250 0    50   Input ~ 0
+5V
$Comp
L power:GND #PWR014
U 1 1 5F7F1CBC
P 5350 4100
F 0 "#PWR014" H 5350 3850 50  0001 C CNN
F 1 "GND" V 5355 3972 50  0000 R CNN
F 2 "" H 5350 4100 50  0001 C CNN
F 3 "" H 5350 4100 50  0001 C CNN
	1    5350 4100
	0    1    1    0   
$EndComp
Text GLabel 6550 3050 2    50   Output ~ 0
OPC_CLK
Text GLabel 6550 2900 2    50   Input ~ 0
OPC_MISO
Text GLabel 6550 2150 2    50   Output ~ 0
OPC_MOSI
Text GLabel 6550 3200 2    50   Output ~ 0
OPC_CS
Text GLabel 5350 2300 0    50   Input ~ 0
NO2_WE
Text GLabel 5350 2450 0    50   Input ~ 0
NO2_AUX
Text GLabel 5350 2600 0    50   Input ~ 0
NO_WE
Text GLabel 5350 2750 0    50   Input ~ 0
NO_AUX
Text GLabel 5350 2900 0    50   Input ~ 0
CO_WE
Text GLabel 5350 3050 0    50   Input ~ 0
CO_AUX
Text GLabel 5350 3200 0    50   Input ~ 0
SO2_WE
Text GLabel 5350 3350 0    50   Input ~ 0
SO2_AUX
Text GLabel 5350 3500 0    50   Input ~ 0
O3_WE
Text GLabel 5350 3650 0    50   Input ~ 0
O3_AUX
Text GLabel 6550 4250 2    50   Output ~ 0
+3.3V
Text GLabel 6550 2750 2    50   BiDi ~ 0
SDA_BME
Text GLabel 6550 2300 2    50   Output ~ 0
SCL_BME
Text GLabel 6550 2450 2    50   Output ~ 0
MOTORV_PWM
Text GLabel 6550 2600 2    50   Output ~ 0
MOTORH_PWM
Text GLabel 6550 3950 2    50   Input ~ 0
LDR0
Text GLabel 6550 3800 2    50   Input ~ 0
LDR1
Text GLabel 5350 3800 0    50   Input ~ 0
LDR2
Text GLabel 5350 3950 0    50   Input ~ 0
LDR3
Text GLabel 6550 3650 2    50   Output ~ 0
COLLER_PWM
$Comp
L Connector:Screw_Terminal_01x06 NO2
U 1 1 5F7F5871
P 4700 1800
F 0 "NO2" H 4650 2100 50  0000 L CNN
F 1 "NO2_ISB" V 4800 1600 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-06A_1x06_P2.54mm_Vertical" H 4700 1800 50  0001 C CNN
F 3 "~" H 4700 1800 50  0001 C CNN
	1    4700 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x06 NO1
U 1 1 5F7F73B8
P 4700 2500
F 0 "NO1" H 4650 2800 50  0000 L CNN
F 1 "NO_ISB" V 4800 2350 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-06A_1x06_P2.54mm_Vertical" H 4700 2500 50  0001 C CNN
F 3 "~" H 4700 2500 50  0001 C CNN
	1    4700 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x06 CO1
U 1 1 5F7F8028
P 4700 3200
F 0 "CO1" H 4650 3500 50  0000 L CNN
F 1 "CO_ISB" V 4800 3050 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-06A_1x06_P2.54mm_Vertical" H 4700 3200 50  0001 C CNN
F 3 "~" H 4700 3200 50  0001 C CNN
	1    4700 3200
	1    0    0    -1  
$EndComp
Text GLabel 4500 1800 0    50   Output ~ 0
NO2_WE
Text GLabel 4500 2000 0    50   Output ~ 0
NO2_AUX
Text GLabel 4500 1600 0    50   Input ~ 0
+5V
$Comp
L power:GND #PWR03
U 1 1 5F806098
P 4500 2100
F 0 "#PWR03" H 4500 1850 50  0001 C CNN
F 1 "GND" V 4505 1972 50  0000 R CNN
F 2 "" H 4500 2100 50  0001 C CNN
F 3 "" H 4500 2100 50  0001 C CNN
	1    4500 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F806988
P 4500 1900
F 0 "#PWR02" H 4500 1650 50  0001 C CNN
F 1 "GND" V 4505 1772 50  0000 R CNN
F 2 "" H 4500 1900 50  0001 C CNN
F 3 "" H 4500 1900 50  0001 C CNN
	1    4500 1900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5F806E03
P 4500 1700
F 0 "#PWR01" H 4500 1450 50  0001 C CNN
F 1 "GND" V 4505 1572 50  0000 R CNN
F 2 "" H 4500 1700 50  0001 C CNN
F 3 "" H 4500 1700 50  0001 C CNN
	1    4500 1700
	0    1    1    0   
$EndComp
Text GLabel 4500 2300 0    50   Input ~ 0
+5V
$Comp
L power:GND #PWR04
U 1 1 5F807CE8
P 4500 2400
F 0 "#PWR04" H 4500 2150 50  0001 C CNN
F 1 "GND" V 4505 2272 50  0000 R CNN
F 2 "" H 4500 2400 50  0001 C CNN
F 3 "" H 4500 2400 50  0001 C CNN
	1    4500 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5F80829B
P 4500 2600
F 0 "#PWR05" H 4500 2350 50  0001 C CNN
F 1 "GND" V 4505 2472 50  0000 R CNN
F 2 "" H 4500 2600 50  0001 C CNN
F 3 "" H 4500 2600 50  0001 C CNN
	1    4500 2600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5F8084E4
P 4500 2800
F 0 "#PWR06" H 4500 2550 50  0001 C CNN
F 1 "GND" V 4505 2672 50  0000 R CNN
F 2 "" H 4500 2800 50  0001 C CNN
F 3 "" H 4500 2800 50  0001 C CNN
	1    4500 2800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5F80892B
P 4500 3100
F 0 "#PWR07" H 4500 2850 50  0001 C CNN
F 1 "GND" V 4505 2972 50  0000 R CNN
F 2 "" H 4500 3100 50  0001 C CNN
F 3 "" H 4500 3100 50  0001 C CNN
	1    4500 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5F808B5E
P 4500 3300
F 0 "#PWR08" H 4500 3050 50  0001 C CNN
F 1 "GND" V 4505 3172 50  0000 R CNN
F 2 "" H 4500 3300 50  0001 C CNN
F 3 "" H 4500 3300 50  0001 C CNN
	1    4500 3300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5F808D30
P 4500 3500
F 0 "#PWR09" H 4500 3250 50  0001 C CNN
F 1 "GND" V 4505 3372 50  0000 R CNN
F 2 "" H 4500 3500 50  0001 C CNN
F 3 "" H 4500 3500 50  0001 C CNN
	1    4500 3500
	0    1    1    0   
$EndComp
Text GLabel 4500 3000 0    50   Input ~ 0
+5V
Text GLabel 4500 3700 0    50   Input ~ 0
+5V
Text GLabel 4500 2500 0    50   Output ~ 0
NO_WE
Text GLabel 4500 2700 0    50   Output ~ 0
NO_AUX
Text GLabel 4500 3200 0    50   Output ~ 0
CO_WE
Text GLabel 4500 3400 0    50   Output ~ 0
CO_AUX
Text GLabel 4500 3900 0    50   Output ~ 0
SO2_WE
Text GLabel 4500 4100 0    50   Output ~ 0
SO2_AUX
Text GLabel 6300 5150 3    50   Input ~ 0
+5V
$Comp
L power:GND #PWR018
U 1 1 5F8219A2
P 6200 5150
F 0 "#PWR018" H 6200 4900 50  0001 C CNN
F 1 "GND" V 6205 4977 50  0000 C CNN
F 2 "" H 6200 5150 50  0001 C CNN
F 3 "" H 6200 5150 50  0001 C CNN
	1    6200 5150
	1    0    0    -1  
$EndComp
Text GLabel 6100 5150 3    50   Output ~ 0
LDR0
Text GLabel 6000 5150 3    50   Output ~ 0
LDR1
$Comp
L power:GND #PWR011
U 1 1 5F80919E
P 4500 4000
F 0 "#PWR011" H 4500 3750 50  0001 C CNN
F 1 "GND" V 4505 3872 50  0000 R CNN
F 2 "" H 4500 4000 50  0001 C CNN
F 3 "" H 4500 4000 50  0001 C CNN
	1    4500 4000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5F808EDD
P 4500 3800
F 0 "#PWR010" H 4500 3550 50  0001 C CNN
F 1 "GND" V 4505 3672 50  0000 R CNN
F 2 "" H 4500 3800 50  0001 C CNN
F 3 "" H 4500 3800 50  0001 C CNN
	1    4500 3800
	0    1    1    0   
$EndComp
Text GLabel 4500 4800 0    50   Output ~ 0
O3_AUX
Text GLabel 4500 4600 0    50   Output ~ 0
O3_WE
Text GLabel 4500 4400 0    50   Input ~ 0
+5V
$Comp
L power:GND #PWR016
U 1 1 5F80992C
P 4500 4900
F 0 "#PWR016" H 4500 4650 50  0001 C CNN
F 1 "GND" V 4505 4772 50  0000 R CNN
F 2 "" H 4500 4900 50  0001 C CNN
F 3 "" H 4500 4900 50  0001 C CNN
	1    4500 4900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5F8097CD
P 4500 4700
F 0 "#PWR015" H 4500 4450 50  0001 C CNN
F 1 "GND" V 4505 4572 50  0000 R CNN
F 2 "" H 4500 4700 50  0001 C CNN
F 3 "" H 4500 4700 50  0001 C CNN
	1    4500 4700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5F809570
P 4500 4500
F 0 "#PWR013" H 4500 4250 50  0001 C CNN
F 1 "GND" V 4505 4372 50  0000 R CNN
F 2 "" H 4500 4500 50  0001 C CNN
F 3 "" H 4500 4500 50  0001 C CNN
	1    4500 4500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5F809335
P 4500 4200
F 0 "#PWR012" H 4500 3950 50  0001 C CNN
F 1 "GND" V 4505 4072 50  0000 R CNN
F 2 "" H 4500 4200 50  0001 C CNN
F 3 "" H 4500 4200 50  0001 C CNN
	1    4500 4200
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x06 O3
U 1 1 5F800BF7
P 4700 4600
F 0 "O3" H 4650 4900 50  0000 L CNN
F 1 "O3_ISB" V 4800 4450 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-06A_1x06_P2.54mm_Vertical" H 4700 4600 50  0001 C CNN
F 3 "~" H 4700 4600 50  0001 C CNN
	1    4700 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x06 SO2
U 1 1 5F7F8C57
P 4700 3900
F 0 "SO2" H 4650 4200 50  0000 L CNN
F 1 "SO2_ISB" V 4800 3700 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-06A_1x06_P2.54mm_Vertical" H 4700 3900 50  0001 C CNN
F 3 "~" H 4700 3900 50  0001 C CNN
	1    4700 3900
	1    0    0    -1  
$EndComp
Text GLabel 7550 3750 2    50   BiDi ~ 0
SDA_BME
Text GLabel 7550 3350 2    50   Input ~ 0
SCL_BME
$Comp
L power:GND #PWR022
U 1 1 5F8448F4
P 7550 3450
F 0 "#PWR022" H 7550 3200 50  0001 C CNN
F 1 "GND" V 7555 3322 50  0000 R CNN
F 2 "" H 7550 3450 50  0001 C CNN
F 3 "" H 7550 3450 50  0001 C CNN
	1    7550 3450
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 MV1
U 1 1 5F84508B
P 7350 2550
F 0 "MV1" H 7350 2350 50  0000 C CNN
F 1 "MOTORV" V 7450 2550 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 7350 2550 50  0001 C CNN
F 3 "~" H 7350 2550 50  0001 C CNN
	1    7350 2550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5F847A06
P 7550 2450
F 0 "#PWR020" H 7550 2200 50  0001 C CNN
F 1 "GND" V 7555 2322 50  0000 R CNN
F 2 "" H 7550 2450 50  0001 C CNN
F 3 "" H 7550 2450 50  0001 C CNN
	1    7550 2450
	0    -1   -1   0   
$EndComp
Text GLabel 7550 2550 2    50   Input ~ 0
+6V
Text GLabel 7550 2650 2    50   Input ~ 0
MOTORV_PWM
$Comp
L Connector:Screw_Terminal_01x03 MH1
U 1 1 5F84AF50
P 7350 2950
F 0 "MH1" H 7350 2750 50  0000 C CNN
F 1 "MOTORH" V 7450 2950 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 7350 2950 50  0001 C CNN
F 3 "~" H 7350 2950 50  0001 C CNN
	1    7350 2950
	-1   0    0    1   
$EndComp
Text GLabel 7550 2950 2    50   Input ~ 0
+6V
Text GLabel 7550 2850 2    50   Input ~ 0
MOTORH_PWM
$Comp
L Connector:Screw_Terminal_01x03 C1
U 1 1 5F85207E
P 7350 4250
F 0 "C1" H 7350 4050 50  0000 C CNN
F 1 "COLLER" V 7450 4250 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 7350 4250 50  0001 C CNN
F 3 "~" H 7350 4250 50  0001 C CNN
	1    7350 4250
	-1   0    0    1   
$EndComp
Text GLabel 7550 4150 2    50   Input ~ 0
COLLER_PWM
$Comp
L power:GND #PWR023
U 1 1 5F85366F
P 7550 4250
F 0 "#PWR023" H 7550 4000 50  0001 C CNN
F 1 "GND" V 7555 4122 50  0000 R CNN
F 2 "" H 7550 4250 50  0001 C CNN
F 3 "" H 7550 4250 50  0001 C CNN
	1    7550 4250
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 MQ2
U 1 1 5F8554B2
P 7350 4750
F 0 "MQ2" H 7350 4550 50  0000 C CNN
F 1 "MQ_2" V 7450 4750 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 7350 4750 50  0001 C CNN
F 3 "~" H 7350 4750 50  0001 C CNN
	1    7350 4750
	-1   0    0    1   
$EndComp
Text GLabel 6550 3350 2    50   Input ~ 0
MQ2_D0
Text GLabel 7550 4850 2    50   Output ~ 0
MQ2_D0
Text GLabel 7550 4650 2    50   Input ~ 0
+5V
$Comp
L power:GND #PWR024
U 1 1 5F858819
P 7550 4750
F 0 "#PWR024" H 7550 4500 50  0001 C CNN
F 1 "GND" V 7555 4622 50  0000 R CNN
F 2 "" H 7550 4750 50  0001 C CNN
F 3 "" H 7550 4750 50  0001 C CNN
	1    7550 4750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F878C2D
P 6550 4100
F 0 "#PWR0101" H 6550 3850 50  0001 C CNN
F 1 "GND" V 6555 3927 50  0000 C CNN
F 2 "" H 6550 4100 50  0001 C CNN
F 3 "" H 6550 4100 50  0001 C CNN
	1    6550 4100
	0    -1   -1   0   
$EndComp
NoConn ~ 6550 3500
NoConn ~ 5350 2150
Text GLabel 6500 5150 3    50   Output ~ 0
LDR2
Text GLabel 6400 5150 3    50   Output ~ 0
LDR3
$Comp
L Connector:Screw_Terminal_01x02 B0
U 1 1 5FA28CE0
P 7350 3450
F 0 "B0" H 7350 3250 50  0000 C CNN
F 1 "BM280_0" V 7450 3400 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 7350 3450 50  0001 C CNN
F 3 "~" H 7350 3450 50  0001 C CNN
	1    7350 3450
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 B1
U 1 1 5FA29D80
P 7350 3850
F 0 "B1" H 7350 3650 50  0000 C CNN
F 1 "BME280_1" V 7450 3800 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 7350 3850 50  0001 C CNN
F 3 "~" H 7350 3850 50  0001 C CNN
	1    7350 3850
	-1   0    0    1   
$EndComp
Text GLabel 7550 3950 2    50   Input ~ 0
+5V
$Comp
L Connector:Screw_Terminal_01x05 OPC0
U 1 1 5FA308F7
P 7350 1950
F 0 "OPC0" H 7350 1650 50  0000 C CNN
F 1 "OPC-N3_0" V 7450 1900 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-05A_1x05_P2.54mm_Vertical" H 7350 1950 50  0001 C CNN
F 3 "~" H 7350 1950 50  0001 C CNN
	1    7350 1950
	-1   0    0    1   
$EndComp
Text GLabel 7550 2150 2    50   Input ~ 0
OPC_CS
Text GLabel 7550 2050 2    50   Input ~ 0
OPC_CLK
Text GLabel 7550 1950 2    50   Output ~ 0
OPC_MISO
$Comp
L power:GND #PWR019
U 1 1 5FA32745
P 7550 1850
F 0 "#PWR019" H 7550 1600 50  0001 C CNN
F 1 "GND" V 7555 1722 50  0000 R CNN
F 2 "" H 7550 1850 50  0001 C CNN
F 3 "" H 7550 1850 50  0001 C CNN
	1    7550 1850
	0    -1   -1   0   
$EndComp
Text GLabel 7550 1400 2    50   Input ~ 0
OPC_MOSI
Text GLabel 7550 1750 2    50   Input ~ 0
+5V
Text GLabel 5500 5150 3    50   Output ~ 0
12V
Text GLabel 7550 4350 2    50   Input ~ 0
12V
$Comp
L Mechanical:MountingHole H1
U 1 1 5FA79769
P 800 7450
F 0 "H1" H 900 7496 50  0000 L CNN
F 1 "MountingHole" H 900 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 800 7450 50  0001 C CNN
F 3 "~" H 800 7450 50  0001 C CNN
	1    800  7450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5FA79EF1
P 1500 7450
F 0 "H2" H 1600 7496 50  0000 L CNN
F 1 "MountingHole" H 1600 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 1500 7450 50  0001 C CNN
F 3 "~" H 1500 7450 50  0001 C CNN
	1    1500 7450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5FA7A1C6
P 2300 7450
F 0 "H3" H 2400 7496 50  0000 L CNN
F 1 "MountingHole" H 2400 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 2300 7450 50  0001 C CNN
F 3 "~" H 2300 7450 50  0001 C CNN
	1    2300 7450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5FA7A405
P 3000 7450
F 0 "H4" H 3100 7496 50  0000 L CNN
F 1 "MountingHole" H 3100 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 3000 7450 50  0001 C CNN
F 3 "~" H 3000 7450 50  0001 C CNN
	1    3000 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FAFAF3A
P 7550 3850
F 0 "#PWR0102" H 7550 3600 50  0001 C CNN
F 1 "GND" V 7555 3722 50  0000 R CNN
F 2 "" H 7550 3850 50  0001 C CNN
F 3 "" H 7550 3850 50  0001 C CNN
	1    7550 3850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FAFC3A1
P 7550 1300
F 0 "#PWR0103" H 7550 1050 50  0001 C CNN
F 1 "GND" V 7555 1172 50  0000 R CNN
F 2 "" H 7550 1300 50  0001 C CNN
F 3 "" H 7550 1300 50  0001 C CNN
	1    7550 1300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5F84AF56
P 7550 3050
F 0 "#PWR021" H 7550 2800 50  0001 C CNN
F 1 "GND" V 7555 2922 50  0000 R CNN
F 2 "" H 7550 3050 50  0001 C CNN
F 3 "" H 7550 3050 50  0001 C CNN
	1    7550 3050
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 OPC1
U 1 1 5FA2FC68
P 7350 1400
F 0 "OPC1" V 7550 1350 50  0000 C CNN
F 1 "OPC-N3_1" V 7450 1350 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 7350 1400 50  0001 C CNN
F 3 "~" H 7350 1400 50  0001 C CNN
	1    7350 1400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FCA9EA2
P 5600 5150
F 0 "#PWR?" H 5600 4900 50  0001 C CNN
F 1 "GND" V 5605 5022 50  0000 R CNN
F 2 "" H 5600 5150 50  0001 C CNN
F 3 "" H 5600 5150 50  0001 C CNN
	1    5600 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 V_Converter
U 1 1 5FCA9EA8
P 5500 4950
F 0 "V_Converter" V 5700 4900 50  0000 C CNN
F 1 "V_Converter" V 5600 4900 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 5500 4950 50  0001 C CNN
F 3 "~" H 5500 4950 50  0001 C CNN
	1    5500 4950
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x06 LDR
U 1 1 5FCAE7CF
P 6200 4950
F 0 "LDR" H 6150 5250 50  0000 L CNN
F 1 "LDR" V 6300 4800 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-06A_1x06_P2.54mm_Vertical" H 6200 4950 50  0001 C CNN
F 3 "~" H 6200 4950 50  0001 C CNN
	1    6200 4950
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
