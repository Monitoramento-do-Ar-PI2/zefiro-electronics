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
L Device:C_Small C1
U 1 1 5F815103
P 4700 3650
F 0 "C1" H 4792 3696 50  0000 L CNN
F 1 "0.1uF" H 4792 3605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W2.5mm_P5.00mm" H 4700 3650 50  0001 C CNN
F 3 "~" H 4700 3650 50  0001 C CNN
	1    4700 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C2
U 1 1 5F8164F5
P 3500 3700
F 0 "C2" H 3588 3746 50  0000 L CNN
F 1 "220uF" H 3588 3655 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D6.3mm_H11.0mm_P2.50mm" H 3500 3700 50  0001 C CNN
F 3 "~" H 3500 3700 50  0001 C CNN
	1    3500 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3800 3500 4400
Wire Wire Line
	3500 2950 3500 3600
Wire Wire Line
	4700 3550 4700 2950
$Comp
L Device:R R7
U 1 1 5F820354
P 7350 4050
F 0 "R7" V 7143 4050 50  0000 C CNN
F 1 "6k" V 7234 4050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7280 4050 50  0001 C CNN
F 3 "~" H 7350 4050 50  0001 C CNN
	1    7350 4050
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5F820A8C
P 7350 3350
F 0 "R8" V 7143 3350 50  0000 C CNN
F 1 "1k" V 7234 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7280 3350 50  0001 C CNN
F 3 "~" H 7350 3350 50  0001 C CNN
	1    7350 3350
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5F825020
P 6850 4400
F 0 "#PWR09" H 6850 4150 50  0001 C CNN
F 1 "GND" H 6855 4227 50  0000 C CNN
F 2 "" H 6850 4400 50  0001 C CNN
F 3 "" H 6850 4400 50  0001 C CNN
	1    6850 4400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5F8467EC
P 4100 1850
F 0 "H1" H 4200 1896 50  0000 L CNN
F 1 "MountingHole" H 4200 1805 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 4100 1850 50  0001 C CNN
F 3 "~" H 4100 1850 50  0001 C CNN
	1    4100 1850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F846C5E
P 4800 1850
F 0 "H2" H 4900 1896 50  0000 L CNN
F 1 "MountingHole" H 4900 1805 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 4800 1850 50  0001 C CNN
F 3 "~" H 4800 1850 50  0001 C CNN
	1    4800 1850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5F846F9C
P 5500 1850
F 0 "H3" H 5600 1896 50  0000 L CNN
F 1 "MountingHole" H 5600 1805 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 5500 1850 50  0001 C CNN
F 3 "~" H 5500 1850 50  0001 C CNN
	1    5500 1850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5F8473BD
P 6200 1850
F 0 "H4" H 6300 1896 50  0000 L CNN
F 1 "MountingHole" H 6300 1805 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 6200 1850 50  0001 C CNN
F 3 "~" H 6200 1850 50  0001 C CNN
	1    6200 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3750 4700 4400
$Comp
L Switch:SW_Push SW1
U 1 1 5FA72602
P 3950 2950
F 0 "SW1" H 3950 3235 50  0000 C CNN
F 1 "SW_Push" H 3950 3144 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_9.78x4.72mm_W7.62mm_P2.54mm" H 3950 3150 50  0001 C CNN
F 3 "~" H 3950 3150 50  0001 C CNN
	1    3950 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2950 4700 2950
Wire Wire Line
	3500 2950 3750 2950
$Comp
L Device:R R2
U 1 1 5FA773B1
P 5300 3950
F 0 "R2" V 5093 3950 50  0000 C CNN
F 1 "10k" V 5184 3950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5230 3950 50  0001 C CNN
F 3 "~" H 5300 3950 50  0001 C CNN
	1    5300 3950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5FA78493
P 4350 2950
F 0 "R1" V 4143 2950 50  0000 C CNN
F 1 "4.7" V 4234 2950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4280 2950 50  0001 C CNN
F 3 "~" H 4350 2950 50  0001 C CNN
	1    4350 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 2950 4150 2950
Wire Wire Line
	5300 4100 5300 4400
Wire Wire Line
	5300 4400 4700 4400
Connection ~ 4700 4400
$Comp
L Device:LED D1
U 1 1 5FA79E08
P 5300 3250
F 0 "D1" V 5339 3132 50  0000 R CNN
F 1 "LED" V 5248 3132 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 5300 3250 50  0001 C CNN
F 3 "~" H 5300 3250 50  0001 C CNN
	1    5300 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5300 3400 5300 3800
Wire Wire Line
	5300 3100 5300 2950
Connection ~ 4700 2950
Wire Wire Line
	4150 2950 4150 2650
Connection ~ 4150 2950
Wire Wire Line
	4700 2950 5300 2950
$Comp
L Transistor_BJT:TIP42 Q1
U 1 1 5FA824DA
P 4700 2750
F 0 "Q1" V 5028 2750 50  0000 C CNN
F 1 "TIP42" V 4937 2750 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4950 2675 50  0001 L CIN
F 3 "https://www.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=TIP42.PDF" H 4700 2750 50  0001 L CNN
	1    4700 2750
	0    1    -1   0   
$EndComp
Wire Wire Line
	4500 2650 4150 2650
$Comp
L Regulator_Linear:L7806 U1
U 1 1 5FA841CF
P 5850 2950
F 0 "U1" H 5850 3192 50  0000 C CNN
F 1 "L7806" H 5850 3101 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5875 2800 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 5850 2900 50  0001 C CNN
	1    5850 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2950 5300 2950
Connection ~ 5300 2950
Wire Wire Line
	4900 2650 6250 2650
Wire Wire Line
	6250 2650 6250 2950
Wire Wire Line
	6250 2950 6150 2950
Wire Wire Line
	5850 3250 5850 4400
Wire Wire Line
	5850 4400 5300 4400
Connection ~ 5300 4400
$Comp
L Device:C_Small C3
U 1 1 5FA86759
P 6250 3600
F 0 "C3" H 6342 3646 50  0000 L CNN
F 1 "0.1uF" H 6342 3555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W2.5mm_P5.00mm" H 6250 3600 50  0001 C CNN
F 3 "~" H 6250 3600 50  0001 C CNN
	1    6250 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C4
U 1 1 5FA87163
P 6850 3600
F 0 "C4" H 6938 3646 50  0000 L CNN
F 1 "22uF" H 6938 3555 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D6.3mm_H11.0mm_P2.50mm" H 6850 3600 50  0001 C CNN
F 3 "~" H 6850 3600 50  0001 C CNN
	1    6850 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2950 6250 3500
Connection ~ 6250 2950
Wire Wire Line
	6250 3700 6250 4400
Wire Wire Line
	6250 4400 5850 4400
Connection ~ 5850 4400
Wire Wire Line
	6850 3700 6850 4400
Wire Wire Line
	6850 4400 6250 4400
Connection ~ 6250 4400
Wire Wire Line
	6850 3500 6850 2950
Wire Wire Line
	6850 2950 6250 2950
Wire Wire Line
	7350 4400 6850 4400
Wire Wire Line
	7350 4200 7350 4400
Connection ~ 6850 4400
Connection ~ 6850 2950
Wire Wire Line
	7350 2950 7350 3200
Wire Wire Line
	3500 4400 4700 4400
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5FA997B8
P 2400 3900
F 0 "J3" H 2318 3575 50  0000 C CNN
F 1 "Power Output" H 2318 3666 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 2400 3900 50  0001 C CNN
F 3 "~" H 2400 3900 50  0001 C CNN
	1    2400 3900
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5FA9A501
P 2400 4400
F 0 "J4" H 2318 4075 50  0000 C CNN
F 1 "Power Output" H 2318 4166 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 2400 4400 50  0001 C CNN
F 3 "~" H 2400 4400 50  0001 C CNN
	1    2400 4400
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5FAA528A
P 2400 3400
F 0 "J2" H 2318 3075 50  0000 C CNN
F 1 "Power Output" H 2318 3166 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 2400 3400 50  0001 C CNN
F 3 "~" H 2400 3400 50  0001 C CNN
	1    2400 3400
	-1   0    0    1   
$EndComp
Text GLabel 2600 3300 2    50   Input ~ 0
+12V
Text GLabel 2600 3800 2    50   Input ~ 0
+6V
Text GLabel 2600 4300 2    50   Input ~ 0
+5V
$Comp
L power:GND #PWR0104
U 1 1 5FAB8B26
P 2600 3900
F 0 "#PWR0104" H 2600 3650 50  0001 C CNN
F 1 "GND" V 2605 3727 50  0000 C CNN
F 2 "" H 2600 3900 50  0001 C CNN
F 3 "" H 2600 3900 50  0001 C CNN
	1    2600 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5FAB8D86
P 2600 3400
F 0 "#PWR0105" H 2600 3150 50  0001 C CNN
F 1 "GND" V 2605 3227 50  0000 C CNN
F 2 "" H 2600 3400 50  0001 C CNN
F 3 "" H 2600 3400 50  0001 C CNN
	1    2600 3400
	0    -1   -1   0   
$EndComp
Text GLabel 7400 2950 2    50   Output ~ 0
+6V
Wire Wire Line
	7350 3500 7350 3700
Text GLabel 7400 3700 2    50   Output ~ 0
+5V
Text GLabel 3600 2950 1    50   BiDi ~ 0
+12V
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5FABD517
P 2400 2900
F 0 "J1" H 2318 2575 50  0000 C CNN
F 1 "Power Input" H 2318 2666 50  0000 C CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBA_2,5_2-G-5,08_1x02_P5.08mm_Horizontal" H 2400 2900 50  0001 C CNN
F 3 "~" H 2400 2900 50  0001 C CNN
	1    2400 2900
	-1   0    0    1   
$EndComp
Text GLabel 2600 2800 2    50   Output ~ 0
+12V
$Comp
L power:GND #PWR0101
U 1 1 5FABD51E
P 2600 2900
F 0 "#PWR0101" H 2600 2650 50  0001 C CNN
F 1 "GND" V 2605 2727 50  0000 C CNN
F 2 "" H 2600 2900 50  0001 C CNN
F 3 "" H 2600 2900 50  0001 C CNN
	1    2600 2900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FAB818F
P 2600 4400
F 0 "#PWR0102" H 2600 4150 50  0001 C CNN
F 1 "GND" V 2605 4227 50  0000 C CNN
F 2 "" H 2600 4400 50  0001 C CNN
F 3 "" H 2600 4400 50  0001 C CNN
	1    2600 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 3700 7350 3700
Connection ~ 7350 3700
Wire Wire Line
	7350 3700 7350 3900
Wire Wire Line
	6850 2950 7350 2950
Wire Wire Line
	7400 2950 7350 2950
Connection ~ 7350 2950
$EndSCHEMATC
