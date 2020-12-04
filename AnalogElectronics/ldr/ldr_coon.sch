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
L Mechanical:MountingHole H1
U 1 1 5F9CC231
P 1000 7450
F 0 "H1" H 1100 7496 50  0000 L CNN
F 1 "MountingHole" H 1100 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 1000 7450 50  0001 C CNN
F 3 "~" H 1000 7450 50  0001 C CNN
	1    1000 7450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F9CC719
P 1850 7450
F 0 "H2" H 1950 7496 50  0000 L CNN
F 1 "MountingHole" H 1950 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 1850 7450 50  0001 C CNN
F 3 "~" H 1850 7450 50  0001 C CNN
	1    1850 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F9C81CD
P 7300 3550
F 0 "#PWR02" H 7300 3300 50  0001 C CNN
F 1 "GND" H 7305 3377 50  0000 C CNN
F 2 "" H 7300 3550 50  0001 C CNN
F 3 "" H 7300 3550 50  0001 C CNN
	1    7300 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3150 7300 3250
Connection ~ 7300 3150
Wire Wire Line
	7450 3150 7300 3150
Wire Wire Line
	7300 3050 7300 3150
$Comp
L Device:R R2
U 1 1 5F9C7750
P 7300 3400
F 0 "R2" H 7370 3446 50  0000 L CNN
F 1 "1k" H 7370 3355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7230 3400 50  0001 C CNN
F 3 "~" H 7300 3400 50  0001 C CNN
	1    7300 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5F9C72CD
P 6500 2700
F 0 "#PWR01" H 6500 2450 50  0001 C CNN
F 1 "GND" V 6505 2572 50  0000 R CNN
F 2 "" H 6500 2700 50  0001 C CNN
F 3 "" H 6500 2700 50  0001 C CNN
	1    6500 2700
	0    1    1    0   
$EndComp
Text GLabel 7450 3150 2    50   Output ~ 0
LDR0
Text GLabel 7300 2750 1    50   Input ~ 0
+5V
Text GLabel 6500 2800 0    50   Output ~ 0
+5V
$Comp
L Device:R_PHOTO R1
U 1 1 5F9943CE
P 7300 2900
F 0 "R1" H 7370 2946 50  0000 L CNN
F 1 "LDR" H 7370 2855 50  0000 L CNN
F 2 "OptoDevice:R_LDR_5.1x4.3mm_P3.4mm_Vertical" V 7350 2650 50  0001 L CNN
F 3 "~" H 7300 2850 50  0001 C CNN
	1    7300 2900
	1    0    0    -1  
$EndComp
Text GLabel 6500 2600 0    50   Input ~ 0
LDR0
$Comp
L Connector:Screw_Terminal_01x03 LDR0
U 1 1 5F993B4F
P 6700 2700
F 0 "LDR0" H 6780 2692 50  0000 L CNN
F 1 "LDR0" H 6780 2601 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 6700 2700 50  0001 C CNN
F 3 "~" H 6700 2700 50  0001 C CNN
	1    6700 2700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
