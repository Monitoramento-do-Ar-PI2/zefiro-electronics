EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Screw_Terminal_01x03 MV1
U 1 1 5F920289
P 3500 3000
F 0 "MV1" H 3450 3200 50  0000 L CNN
F 1 "MOTORV" V 3600 2850 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 3500 3000 50  0001 C CNN
F 3 "~" H 3500 3000 50  0001 C CNN
	1    3500 3000
	1    0    0    -1  
$EndComp
Text GLabel 3300 3000 0    50   Output ~ 0
+6V
$Comp
L power:GND #PWR0101
U 1 1 5F920F3C
P 3300 3100
F 0 "#PWR0101" H 3300 2850 50  0001 C CNN
F 1 "GND" V 3305 2972 50  0000 R CNN
F 2 "" H 3300 3100 50  0001 C CNN
F 3 "" H 3300 3100 50  0001 C CNN
	1    3300 3100
	0    1    1    0   
$EndComp
$Comp
L vertical_motors-rescue:ServoMotor-PI2_ZEFIRO M1
U 1 1 5F9217CD
P 3950 2900
F 0 "M1" H 3950 2400 50  0000 C CNN
F 1 "ServoMotor" H 4000 2900 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 3950 2900 50  0001 C CNN
F 3 "" H 3950 2900 50  0001 C CNN
	1    3950 2900
	-1   0    0    1   
$EndComp
$Comp
L vertical_motors-rescue:ServoMotor-PI2_ZEFIRO M0
U 1 1 5F922612
P 3950 3550
F 0 "M0" H 3950 3050 50  0000 C CNN
F 1 "ServoMotor" H 4000 3550 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 3950 3550 50  0001 C CNN
F 3 "" H 3950 3550 50  0001 C CNN
	1    3950 3550
	-1   0    0    1   
$EndComp
Text GLabel 3300 2900 0    50   Output ~ 0
MORTOV_PWM
Text GLabel 4150 2500 2    50   Output ~ 0
MORTOV_PWM
$Comp
L power:GND #PWR0102
U 1 1 5F92305E
P 4150 2800
F 0 "#PWR0102" H 4150 2550 50  0001 C CNN
F 1 "GND" V 4155 2672 50  0000 R CNN
F 2 "" H 4150 2800 50  0001 C CNN
F 3 "" H 4150 2800 50  0001 C CNN
	1    4150 2800
	0    -1   -1   0   
$EndComp
Text GLabel 4150 2650 2    50   Output ~ 0
+6V
Text GLabel 4150 3300 2    50   Output ~ 0
+6V
Text GLabel 4150 3450 2    50   Output ~ 0
MORTOV_PWM
$Comp
L power:GND #PWR0103
U 1 1 5F9236DC
P 4150 3150
F 0 "#PWR0103" H 4150 2900 50  0001 C CNN
F 1 "GND" V 4155 3022 50  0000 R CNN
F 2 "" H 4150 3150 50  0001 C CNN
F 3 "" H 4150 3150 50  0001 C CNN
	1    4150 3150
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5F924D46
P 800 7550
F 0 "H1" H 900 7596 50  0000 L CNN
F 1 "MountingHole" H 900 7505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 800 7550 50  0001 C CNN
F 3 "~" H 800 7550 50  0001 C CNN
	1    800  7550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F9250C6
P 1500 7550
F 0 "H2" H 1600 7596 50  0000 L CNN
F 1 "MountingHole" H 1600 7505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 1500 7550 50  0001 C CNN
F 3 "~" H 1500 7550 50  0001 C CNN
	1    1500 7550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5F92532E
P 2200 7550
F 0 "H3" H 2300 7596 50  0000 L CNN
F 1 "MountingHole" H 2300 7505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 2200 7550 50  0001 C CNN
F 3 "~" H 2200 7550 50  0001 C CNN
	1    2200 7550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5F92556D
P 2900 7550
F 0 "H4" H 3000 7596 50  0000 L CNN
F 1 "MountingHole" H 3000 7505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 2900 7550 50  0001 C CNN
F 3 "~" H 2900 7550 50  0001 C CNN
	1    2900 7550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
