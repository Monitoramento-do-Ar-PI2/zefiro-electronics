EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Motor Couple"
Date "8/10/2020"
Rev "V3.0"
Comp "Zéfiro"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Mechanical:MountingHole H1
U 1 1 5F862203
P 700 7600
F 0 "H1" H 800 7646 50  0000 L CNN
F 1 "MountingHole" H 800 7555 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 700 7600 50  0001 C CNN
F 3 "~" H 700 7600 50  0001 C CNN
	1    700  7600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F862988
P 1500 7600
F 0 "H2" H 1600 7646 50  0000 L CNN
F 1 "MountingHole" H 1600 7555 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 1500 7600 50  0001 C CNN
F 3 "~" H 1500 7600 50  0001 C CNN
	1    1500 7600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5F862BA2
P 2250 7600
F 0 "H3" H 2350 7646 50  0000 L CNN
F 1 "MountingHole" H 2350 7555 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 2250 7600 50  0001 C CNN
F 3 "~" H 2250 7600 50  0001 C CNN
	1    2250 7600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5F862D64
P 3000 7600
F 0 "H4" H 3100 7646 50  0000 L CNN
F 1 "MountingHole" H 3100 7555 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 3000 7600 50  0001 C CNN
F 3 "~" H 3000 7600 50  0001 C CNN
	1    3000 7600
	1    0    0    -1  
$EndComp
Text GLabel 4950 2950 0    50   Output ~ 0
12V
$Comp
L Device:R R1
U 1 1 5F86F185
P 4700 3650
F 0 "R1" V 4493 3650 50  0000 C CNN
F 1 "120" V 4584 3650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4630 3650 50  0001 C CNN
F 3 "~" H 4700 3650 50  0001 C CNN
	1    4700 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 3500 6100 3700
Wire Wire Line
	5850 3500 5850 3350
Wire Wire Line
	6100 3500 5850 3500
$Comp
L Diode:1N5400 D1
U 1 1 5F86D5A5
P 5850 3200
F 0 "D1" H 5650 3100 50  0000 L CNN
F 1 "1N5400" H 5750 3100 50  0000 L CNN
F 2 "Diode_THT:D_DO-201AD_P15.24mm_Horizontal" H 5850 3025 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88516/1n5400.pdf" H 5850 3200 50  0001 C CNN
	1    5850 3200
	0    1    1    0   
$EndComp
Connection ~ 6100 3500
Wire Wire Line
	6100 3450 6100 3500
$Comp
L Motor:Motor_DC_ALT M1
U 1 1 5F86C48C
P 6100 3150
F 0 "M1" H 6247 3146 50  0000 L CNN
F 1 "Motor_DC_ALT" H 6247 3055 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 6100 3060 50  0001 C CNN
F 3 "~" H 6100 3060 50  0001 C CNN
	1    6100 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3750 5450 3750
Wire Wire Line
	5550 2800 5550 3750
Text GLabel 6100 2700 1    50   Input ~ 0
12V
NoConn ~ 5450 3650
Wire Wire Line
	5800 3900 5650 3900
Wire Wire Line
	5450 3900 5650 3900
$Comp
L Device:R R2
U 1 1 5F86AA70
P 5650 4050
F 0 "R2" H 5580 4004 50  0000 R CNN
F 1 "1K" H 5580 4095 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5580 4050 50  0001 C CNN
F 3 "~" H 5650 4050 50  0001 C CNN
	1    5650 4050
	-1   0    0    1   
$EndComp
Text GLabel 4550 3650 0    50   Input ~ 0
MOTOR_PWM
$Comp
L power:GND #PWR02
U 1 1 5F866EF3
P 4850 3850
F 0 "#PWR02" H 4850 3600 50  0001 C CNN
F 1 "GND" H 4855 3677 50  0000 C CNN
F 2 "" H 4850 3850 50  0001 C CNN
F 3 "" H 4850 3850 50  0001 C CNN
	1    4850 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5F866997
P 4950 3150
F 0 "#PWR01" H 4950 2900 50  0001 C CNN
F 1 "GND" V 4955 3022 50  0000 R CNN
F 2 "" H 4950 3150 50  0001 C CNN
F 3 "" H 4950 3150 50  0001 C CNN
	1    4950 3150
	0    1    1    0   
$EndComp
Text GLabel 4950 3250 0    50   Output ~ 0
MOTOR_PWM
$Comp
L Isolator:4N25 U1
U 1 1 5F8644DD
P 5150 3750
F 0 "U1" H 5150 4075 50  0000 C CNN
F 1 "4N25" H 5150 3984 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 4950 3550 50  0001 L CIN
F 3 "https://www.vishay.com/docs/83725/4n25.pdf" H 5150 3750 50  0001 L CNN
	1    5150 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x04 J1
U 1 1 5F861A08
P 5150 3050
F 0 "J1" H 5100 2850 50  0000 L CNN
F 1 "Conn_Motor" H 4950 3250 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 5150 3050 50  0001 C CNN
F 3 "~" H 5150 3050 50  0001 C CNN
	1    5150 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4100 6100 4200
Connection ~ 5650 3900
Wire Wire Line
	5450 3850 5450 3900
Wire Wire Line
	5550 2800 5850 2800
$Comp
L Transistor_FET:IRF540N Q1
U 1 1 5F89178F
P 6000 3900
F 0 "Q1" H 6204 3946 50  0000 L CNN
F 1 "IRF540N" H 6204 3855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6250 3825 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 6000 3900 50  0001 L CNN
	1    6000 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4200 6100 4200
Connection ~ 6100 4200
Wire Wire Line
	6100 4200 6100 4300
Wire Wire Line
	6100 2800 6100 2700
Connection ~ 6100 2800
Connection ~ 5850 2800
Wire Wire Line
	5850 2800 6100 2800
Wire Wire Line
	6100 2800 6100 2950
Wire Wire Line
	5850 2800 5850 3050
Text GLabel 4950 3050 0    50   Output ~ 0
Bat_GND
Text GLabel 6100 4300 3    50   Input ~ 0
Bat_GND
$EndSCHEMATC
