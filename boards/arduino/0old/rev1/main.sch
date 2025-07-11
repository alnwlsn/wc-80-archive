EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr B 17000 11000
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
Text Notes 14550 9750 0    50   ~ 0
WC-80 CPU & Keyboard Board\nAlan Wilson 2021
$Comp
L power:GND #PWR028
U 1 1 607DD22C
P 14750 4950
F 0 "#PWR028" H 14750 4700 50  0001 C CNN
F 1 "GND" V 14755 4777 50  0000 C CNN
F 2 "" H 14750 4950 50  0001 C CNN
F 3 "" H 14750 4950 50  0001 C CNN
	1    14750 4950
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR029
U 1 1 607DD23E
P 14750 5050
F 0 "#PWR029" H 14750 4900 50  0001 C CNN
F 1 "+5V" H 14765 5223 50  0000 C CNN
F 2 "" H 14750 5050 50  0001 C CNN
F 3 "" H 14750 5050 50  0001 C CNN
	1    14750 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	14950 3250 14750 3250
Wire Wire Line
	14750 3850 15000 3850
Wire Wire Line
	13850 3650 14000 3650
Wire Wire Line
	15300 3750 14750 3750
Wire Wire Line
	14750 4050 15000 4050
Wire Wire Line
	14950 4750 14750 4750
Wire Wire Line
	14950 4250 14750 4250
Wire Wire Line
	14950 3100 14850 3100
Wire Wire Line
	14850 3100 14850 3150
Wire Wire Line
	14850 3150 14750 3150
Wire Wire Line
	13600 3750 14000 3750
$Comp
L wilson-z80:TRS80W-header J2
U 1 1 607DD279
P 14350 4050
F 0 "J2" H 14375 5215 50  0000 C CNN
F 1 "TRS80W-header" H 14375 5124 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 13850 5150 50  0001 C CNN
F 3 "" H 13850 5150 50  0001 C CNN
	1    14350 4050
	1    0    0    -1  
$EndComp
Text GLabel 14950 4250 2    50   Input ~ 0
CLK
Text GLabel 14750 4350 2    50   Input ~ 0
F_A0
Text GLabel 14750 4450 2    50   Input ~ 0
F_A1
Text GLabel 14000 5050 0    50   Input ~ 0
F_A2
Text GLabel 14000 4750 0    50   Input ~ 0
F_A3
Text GLabel 14750 4650 2    50   Input ~ 0
F_A4
Text GLabel 14750 4850 2    50   Input ~ 0
F_A5
Text GLabel 14000 4950 0    50   Input ~ 0
F_A6
Text GLabel 14000 4850 0    50   Input ~ 0
F_A7
Text GLabel 14750 3650 2    50   Input ~ 0
F_A8
Text GLabel 14750 3950 2    50   Input ~ 0
F_A9
Text GLabel 14000 3250 0    50   Input ~ 0
F_A10
Text GLabel 14750 3550 2    50   Input ~ 0
F_A11
Text GLabel 14750 3350 2    50   Input ~ 0
F_A12
Text GLabel 14000 3350 0    50   Input ~ 0
F_A13
Text GLabel 14000 3550 0    50   Input ~ 0
F_A14
Text GLabel 14750 3450 2    50   Input ~ 0
F_A15
Text GLabel 14000 4550 0    50   Input ~ 0
F_D0
Text GLabel 14000 4150 0    50   Input ~ 0
F_D1
Text GLabel 14000 4650 0    50   Input ~ 0
F_D2
Text GLabel 14000 4350 0    50   Input ~ 0
F_D3
Text GLabel 14000 3950 0    50   Input ~ 0
F_D4
Text GLabel 14000 4450 0    50   Input ~ 0
F_D5
Text GLabel 14000 4250 0    50   Input ~ 0
F_D6
Text GLabel 14000 4050 0    50   Input ~ 0
F_D7
$Comp
L power:GND #PWR023
U 1 1 60820152
P 14750 4550
F 0 "#PWR023" H 14750 4300 50  0001 C CNN
F 1 "GND" V 14755 4377 50  0000 C CNN
F 2 "" H 14750 4550 50  0001 C CNN
F 3 "" H 14750 4550 50  0001 C CNN
	1    14750 4550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 608206D8
P 14000 3450
F 0 "#PWR014" H 14000 3200 50  0001 C CNN
F 1 "GND" V 14005 3277 50  0000 C CNN
F 2 "" H 14000 3450 50  0001 C CNN
F 3 "" H 14000 3450 50  0001 C CNN
	1    14000 3450
	0    1    1    0   
$EndComp
Text GLabel 13700 3150 0    50   Input ~ 0
~F_SYSRES~
Wire Wire Line
	13700 3150 14000 3150
Text GLabel 13850 3650 0    50   Input ~ 0
~F_OUT~
Text GLabel 13600 3750 0    50   Input ~ 0
~F_INTAK~
Text GLabel 14950 3100 2    50   Input ~ 0
~F_MREQ~
Text GLabel 14950 3250 2    50   Input ~ 0
~F_EXMEM~
Text GLabel 15300 3750 2    50   Input ~ 0
~F_WRITE~
Text GLabel 15000 3850 2    50   Input ~ 0
~F_READ~
Text GLabel 15000 4050 2    50   Input ~ 0
~F_IN~
Text GLabel 14750 4150 2    50   Input ~ 0
~F_INT~
Text GLabel 14950 4750 2    50   Input ~ 0
~F_WAIT~
Text GLabel 14000 3850 0    50   Input ~ 0
~F_INUSE~
$Comp
L power:+5V #PWR01
U 1 1 608C14A2
P 14100 1000
F 0 "#PWR01" H 14100 850 50  0001 C CNN
F 1 "+5V" H 14115 1173 50  0000 C CNN
F 2 "" H 14100 1000 50  0001 C CNN
F 3 "" H 14100 1000 50  0001 C CNN
	1    14100 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 608C1CF6
P 14100 1300
F 0 "#PWR02" H 14100 1050 50  0001 C CNN
F 1 "GND" V 14105 1127 50  0000 C CNN
F 2 "" H 14100 1300 50  0001 C CNN
F 3 "" H 14100 1300 50  0001 C CNN
	1    14100 1300
	1    0    0    -1  
$EndComp
Connection ~ 14800 1000
Connection ~ 14800 1300
$Comp
L wilson-z80:3mm-mounting-hole M1
U 1 1 6095AA7A
P 14300 8500
F 0 "M1" H 14378 8546 50  0000 L CNN
F 1 "3mm-mounting-hole" H 14378 8455 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 14300 8500 50  0001 C CNN
F 3 "" H 14300 8500 50  0001 C CNN
	1    14300 8500
	1    0    0    -1  
$EndComp
$Comp
L wilson-z80:3mm-mounting-hole M2
U 1 1 6095C3CE
P 14300 8650
F 0 "M2" H 14378 8696 50  0000 L CNN
F 1 "3mm-mounting-hole" H 14378 8605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 14300 8650 50  0001 C CNN
F 3 "" H 14300 8650 50  0001 C CNN
	1    14300 8650
	1    0    0    -1  
$EndComp
$Comp
L wilson-z80:3mm-mounting-hole M3
U 1 1 6095C700
P 14300 8800
F 0 "M3" H 14378 8846 50  0000 L CNN
F 1 "3mm-mounting-hole" H 14378 8755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 14300 8800 50  0001 C CNN
F 3 "" H 14300 8800 50  0001 C CNN
	1    14300 8800
	1    0    0    -1  
$EndComp
$Comp
L wilson-z80:3mm-mounting-hole M4
U 1 1 6095C8F2
P 14300 8950
F 0 "M4" H 14378 8996 50  0000 L CNN
F 1 "3mm-mounting-hole" H 14378 8905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 14300 8950 50  0001 C CNN
F 3 "" H 14300 8950 50  0001 C CNN
	1    14300 8950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J5
U 1 1 609814CA
P 14350 7975
F 0 "J5" H 14400 8292 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 14400 8201 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 14350 7975 50  0001 C CNN
F 3 "~" H 14350 7975 50  0001 C CNN
	1    14350 7975
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J1
U 1 1 60982D72
P 14425 2275
F 0 "J1" H 14475 1850 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 14475 1941 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 14425 2275 50  0001 C CNN
F 3 "~" H 14425 2275 50  0001 C CNN
	1    14425 2275
	-1   0    0    1   
$EndComp
Wire Wire Line
	14650 7875 14650 7975
Wire Wire Line
	14650 7975 14650 8075
Connection ~ 14650 7975
Wire Wire Line
	14650 8075 14650 8175
Connection ~ 14650 8075
$Comp
L power:GND #PWR058
U 1 1 6099924B
P 14700 7975
F 0 "#PWR058" H 14700 7725 50  0001 C CNN
F 1 "GND" V 14705 7802 50  0000 C CNN
F 2 "" H 14700 7975 50  0001 C CNN
F 3 "" H 14700 7975 50  0001 C CNN
	1    14700 7975
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14700 7975 14650 7975
$Comp
L power:+5V #PWR056
U 1 1 609A0640
P 14000 7875
F 0 "#PWR056" H 14000 7725 50  0001 C CNN
F 1 "+5V" H 14015 8048 50  0000 C CNN
F 2 "" H 14000 7875 50  0001 C CNN
F 3 "" H 14000 7875 50  0001 C CNN
	1    14000 7875
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14000 7875 14150 7875
Wire Wire Line
	14150 7975 14150 7875
Connection ~ 14150 7875
$Comp
L Device:CP C4
U 1 1 60C909CF
P 15750 1150
F 0 "C4" H 15868 1196 50  0000 L CNN
F 1 "470uF" H 15868 1105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 15788 1000 50  0001 C CNN
F 3 "~" H 15750 1150 50  0001 C CNN
	1    15750 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60CB3ED1
P 14800 1150
F 0 "C3" V 14915 1196 50  0000 L CNN
F 1 "100n" V 14650 1050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 14838 1000 50  0001 C CNN
F 3 "~" H 14800 1150 50  0001 C CNN
	1    14800 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60CBF7D2
P 14450 1150
F 0 "C2" V 14565 1196 50  0000 L CNN
F 1 "100n" V 14300 1050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 14488 1000 50  0001 C CNN
F 3 "~" H 14450 1150 50  0001 C CNN
	1    14450 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 60CD1B1A
P 13325 8850
F 0 "C18" V 13440 8896 50  0000 L CNN
F 1 "100n" V 13175 8750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 13363 8700 50  0001 C CNN
F 3 "~" H 13325 8850 50  0001 C CNN
	1    13325 8850
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR064
U 1 1 60CD1B20
P 13175 8850
F 0 "#PWR064" H 13175 8700 50  0001 C CNN
F 1 "+5V" H 13190 9023 50  0000 C CNN
F 2 "" H 13175 8850 50  0001 C CNN
F 3 "" H 13175 8850 50  0001 C CNN
	1    13175 8850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR065
U 1 1 60CD1B26
P 13475 8850
F 0 "#PWR065" H 13475 8600 50  0001 C CNN
F 1 "GND" V 13480 8677 50  0000 C CNN
F 2 "" H 13475 8850 50  0001 C CNN
F 3 "" H 13475 8850 50  0001 C CNN
	1    13475 8850
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C14
U 1 1 60CD1B2C
P 13325 8500
F 0 "C14" V 13440 8546 50  0000 L CNN
F 1 "100n" V 13175 8400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 13363 8350 50  0001 C CNN
F 3 "~" H 13325 8500 50  0001 C CNN
	1    13325 8500
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C13
U 1 1 60CD1B32
P 13325 8150
F 0 "C13" V 13440 8196 50  0000 L CNN
F 1 "100n" V 13175 8050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 13363 8000 50  0001 C CNN
F 3 "~" H 13325 8150 50  0001 C CNN
	1    13325 8150
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C12
U 1 1 60CD1B38
P 13325 7800
F 0 "C12" V 13440 7846 50  0000 L CNN
F 1 "100n" V 13175 7700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 13363 7650 50  0001 C CNN
F 3 "~" H 13325 7800 50  0001 C CNN
	1    13325 7800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13175 7500 13175 7800
Wire Wire Line
	13175 8150 13175 7800
Connection ~ 13175 7800
Wire Wire Line
	13175 8150 13175 8500
Connection ~ 13175 8150
Wire Wire Line
	13175 8500 13175 8850
Connection ~ 13175 8500
Connection ~ 13175 8850
Wire Wire Line
	13475 8850 13475 8500
Connection ~ 13475 8850
Wire Wire Line
	13475 8500 13475 8150
Connection ~ 13475 8500
Wire Wire Line
	13475 8150 13475 7800
Connection ~ 13475 8150
Wire Wire Line
	13475 7800 13475 7500
Connection ~ 13475 7800
$Comp
L Device:CP C1
U 1 1 60BF1D60
P 14100 1150
F 0 "C1" H 14218 1196 50  0000 L CNN
F 1 "470uF" H 14218 1105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 14138 1000 50  0001 C CNN
F 3 "~" H 14100 1150 50  0001 C CNN
	1    14100 1150
	1    0    0    -1  
$EndComp
Connection ~ 14100 1000
Connection ~ 14100 1300
Wire Wire Line
	14100 1000 14450 1000
Wire Wire Line
	14100 1300 14450 1300
Wire Wire Line
	14800 1000 15750 1000
Wire Wire Line
	14800 1300 15750 1300
$Comp
L wilson-z80:DS1315 U2
U 1 1 60AB37F7
P 4825 3675
F 0 "U2" H 4825 4250 50  0000 C CNN
F 1 "DS1315" H 4825 4159 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 4825 3675 50  0001 C CNN
F 3 "" H 4825 3675 50  0001 C CNN
	1    4825 3675
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 60AB4CB9
P 4150 3625
F 0 "BT1" V 3895 3675 50  0000 C CNN
F 1 "Battery_Cell" V 3986 3675 50  0000 C CNN
F 2 "wilson-z80:BS-01-A4CJ004" V 4150 3685 50  0001 C CNN
F 3 "~" V 4150 3685 50  0001 C CNN
	1    4150 3625
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR019
U 1 1 60AB5F05
P 4000 3625
F 0 "#PWR019" H 4000 3375 50  0001 C CNN
F 1 "GND" V 4005 3452 50  0000 C CNN
F 2 "" H 4000 3625 50  0001 C CNN
F 3 "" H 4000 3625 50  0001 C CNN
	1    4000 3625
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 3625 4000 3625
Wire Wire Line
	4425 3625 4350 3625
$Comp
L Device:Crystal Y1
U 1 1 60AAB703
P 4200 3325
F 0 "Y1" H 4200 3593 50  0000 C CNN
F 1 "32768" H 4200 3502 50  0000 C CNN
F 2 "Crystal:Crystal_AT310_D3.0mm_L10.0mm_Horizontal" H 4200 3325 50  0001 C CNN
F 3 "~" H 4200 3325 50  0001 C CNN
	1    4200 3325
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3325 4425 3325
Wire Wire Line
	4425 3425 4050 3425
Wire Wire Line
	4050 3425 4050 3325
$Comp
L power:+5V #PWR017
U 1 1 60AAEC49
P 5225 3325
F 0 "#PWR017" H 5225 3175 50  0001 C CNN
F 1 "+5V" H 5240 3498 50  0000 C CNN
F 2 "" H 5225 3325 50  0001 C CNN
F 3 "" H 5225 3325 50  0001 C CNN
	1    5225 3325
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 60AAFAAC
P 4425 4025
F 0 "#PWR025" H 4425 3775 50  0001 C CNN
F 1 "GND" V 4430 3852 50  0000 C CNN
F 2 "" H 4425 4025 50  0001 C CNN
F 3 "" H 4425 4025 50  0001 C CNN
	1    4425 4025
	0    1    1    0   
$EndComp
Text GLabel 4375 3925 0    50   Input ~ 0
F_D0
Wire Wire Line
	4375 3925 4425 3925
Wire Wire Line
	4425 3825 4425 3925
Connection ~ 4425 3925
$Comp
L power:GND #PWR021
U 1 1 60AB2E14
P 4425 3725
F 0 "#PWR021" H 4425 3475 50  0001 C CNN
F 1 "GND" V 4430 3552 50  0000 C CNN
F 2 "" H 4425 3725 50  0001 C CNN
F 3 "" H 4425 3725 50  0001 C CNN
	1    4425 3725
	0    1    1    0   
$EndComp
Text GLabel 5225 4725 2    50   Input ~ 0
~F_WRITE~
Wire Wire Line
	3975 3525 4425 3525
Text GLabel 5225 3725 2    50   Input ~ 0
~F_READ~
$Comp
L power:GND #PWR018
U 1 1 60AB4DD4
P 5225 3525
F 0 "#PWR018" H 5225 3275 50  0001 C CNN
F 1 "GND" V 5230 3352 50  0000 C CNN
F 2 "" H 5225 3525 50  0001 C CNN
F 3 "" H 5225 3525 50  0001 C CNN
	1    5225 3525
	0    -1   -1   0   
$EndComp
Text GLabel 5225 3625 2    50   Input ~ 0
~F_SYSRES~
$Comp
L wilson-z80:AS6C4008 U6
U 1 1 60AB56D9
P 4825 5225
F 0 "U6" H 4825 6290 50  0000 C CNN
F 1 "AS6C4008" H 4825 6199 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 4825 4325 50  0001 C CNN
F 3 "" H 4125 4825 50  0001 C CNN
	1    4825 5225
	1    0    0    -1  
$EndComp
Wire Wire Line
	5225 3425 5650 3425
Wire Wire Line
	5650 3425 5650 4425
Wire Wire Line
	5650 4425 5225 4425
Wire Wire Line
	5225 5425 5600 5425
Wire Wire Line
	5600 5425 5600 3925
Wire Wire Line
	5600 3925 5225 3925
Text GLabel 4425 5325 0    50   Input ~ 0
F_A2
Text GLabel 4425 5225 0    50   Input ~ 0
F_A3
Text GLabel 4425 4925 0    50   Input ~ 0
F_A6
Text GLabel 4425 4825 0    50   Input ~ 0
F_A7
Text GLabel 4425 5625 0    50   Input ~ 0
F_D0
Text GLabel 4425 5725 0    50   Input ~ 0
F_D1
Text GLabel 4425 5825 0    50   Input ~ 0
F_D2
Text GLabel 5225 5925 2    50   Input ~ 0
F_D3
Text GLabel 5225 5825 2    50   Input ~ 0
F_D4
Text GLabel 5225 5725 2    50   Input ~ 0
F_D5
Text GLabel 5225 5625 2    50   Input ~ 0
F_D6
Text GLabel 5225 5525 2    50   Input ~ 0
F_D7
$Comp
L power:GND #PWR042
U 1 1 60ABC0EF
P 4425 5925
F 0 "#PWR042" H 4425 5675 50  0001 C CNN
F 1 "GND" V 4430 5752 50  0000 C CNN
F 2 "" H 4425 5925 50  0001 C CNN
F 3 "" H 4425 5925 50  0001 C CNN
	1    4425 5925
	1    0    0    -1  
$EndComp
Text GLabel 3975 3525 0    50   Input ~ 0
~F_WRITE~
Text GLabel 5225 5225 2    50   Input ~ 0
~F_READ~
$Comp
L power:+5V #PWR045
U 1 1 60AC1138
P 1825 6475
F 0 "#PWR045" H 1825 6325 50  0001 C CNN
F 1 "+5V" H 1840 6648 50  0000 C CNN
F 2 "" H 1825 6475 50  0001 C CNN
F 3 "" H 1825 6475 50  0001 C CNN
	1    1825 6475
	1    0    0    -1  
$EndComp
Text GLabel 4425 5525 0    50   Input ~ 0
F_A0
Text GLabel 4425 5425 0    50   Input ~ 0
F_A1
Text GLabel 4425 5125 0    50   Input ~ 0
F_A4
Text GLabel 5225 4925 2    50   Input ~ 0
F_A8
Text GLabel 5225 5025 2    50   Input ~ 0
F_A9
Text GLabel 5225 5125 2    50   Input ~ 0
F_A11
Text GLabel 4425 4725 0    50   Input ~ 0
F_A12
$Comp
L power:GND #PWR060
U 1 1 60AC1157
P 1225 7575
F 0 "#PWR060" H 1225 7325 50  0001 C CNN
F 1 "GND" V 1230 7402 50  0000 C CNN
F 2 "" H 1225 7575 50  0001 C CNN
F 3 "" H 1225 7575 50  0001 C CNN
	1    1225 7575
	0    1    1    0   
$EndComp
Text GLabel 5225 5325 2    50   Input ~ 0
F_A10
$Comp
L wilson-z80:74HC670 U3
U 1 1 60AC391E
P 2875 3925
F 0 "U3" H 2875 3352 50  0000 C CNN
F 1 "74HC670" H 2875 3261 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 2875 3375 50  0001 C CNN
F 3 "" H 2875 3925 50  0001 C CNN
	1    2875 3925
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 60ACB43F
P 3025 3275
F 0 "#PWR016" H 3025 3125 50  0001 C CNN
F 1 "+5V" H 3040 3448 50  0000 C CNN
F 2 "" H 3025 3275 50  0001 C CNN
F 3 "" H 3025 3275 50  0001 C CNN
	1    3025 3275
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR036
U 1 1 60ACB9B7
P 3025 4725
F 0 "#PWR036" H 3025 4575 50  0001 C CNN
F 1 "+5V" H 3040 4898 50  0000 C CNN
F 2 "" H 3025 4725 50  0001 C CNN
F 3 "" H 3025 4725 50  0001 C CNN
	1    3025 4725
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR035
U 1 1 60ACBFA7
P 2925 4725
F 0 "#PWR035" H 2925 4475 50  0001 C CNN
F 1 "GND" V 2930 4552 50  0000 C CNN
F 2 "" H 2925 4725 50  0001 C CNN
F 3 "" H 2925 4725 50  0001 C CNN
	1    2925 4725
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 60ACC64F
P 2925 3275
F 0 "#PWR015" H 2925 3025 50  0001 C CNN
F 1 "GND" V 2930 3102 50  0000 C CNN
F 2 "" H 2925 3275 50  0001 C CNN
F 3 "" H 2925 3275 50  0001 C CNN
	1    2925 3275
	-1   0    0    1   
$EndComp
Text GLabel 2325 3625 0    50   Input ~ 0
F_A13
Text GLabel 2325 3725 0    50   Input ~ 0
F_A14
Text GLabel 2325 3425 0    50   Input ~ 0
F_A0
Text GLabel 2325 3525 0    50   Input ~ 0
F_A1
$Comp
L power:GND #PWR026
U 1 1 60AB00A3
P 5225 4025
F 0 "#PWR026" H 5225 3775 50  0001 C CNN
F 1 "GND" V 5230 3852 50  0000 C CNN
F 2 "" H 5225 4025 50  0001 C CNN
F 3 "" H 5225 4025 50  0001 C CNN
	1    5225 4025
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 60AD26E1
P 2325 3925
F 0 "#PWR024" H 2325 3675 50  0001 C CNN
F 1 "GND" V 2330 3752 50  0000 C CNN
F 2 "" H 2325 3925 50  0001 C CNN
F 3 "" H 2325 3925 50  0001 C CNN
	1    2325 3925
	0    1    1    0   
$EndComp
Text GLabel 2325 4075 0    50   Input ~ 0
F_D0
Text GLabel 2325 4175 0    50   Input ~ 0
F_D1
Text GLabel 2325 4275 0    50   Input ~ 0
F_D2
Text GLabel 2325 4375 0    50   Input ~ 0
F_D3
Text GLabel 2325 5075 0    50   Input ~ 0
F_A13
Text GLabel 2325 5175 0    50   Input ~ 0
F_A14
Text GLabel 2325 4875 0    50   Input ~ 0
F_A0
Text GLabel 2325 4975 0    50   Input ~ 0
F_A1
$Comp
L power:GND #PWR041
U 1 1 60AD4441
P 2325 5375
F 0 "#PWR041" H 2325 5125 50  0001 C CNN
F 1 "GND" V 2330 5202 50  0000 C CNN
F 2 "" H 2325 5375 50  0001 C CNN
F 3 "" H 2325 5375 50  0001 C CNN
	1    2325 5375
	0    1    1    0   
$EndComp
Text GLabel 2325 5525 0    50   Input ~ 0
F_D4
Text GLabel 2325 5625 0    50   Input ~ 0
F_D5
Text GLabel 2325 5725 0    50   Input ~ 0
F_D6
Text GLabel 2325 5825 0    50   Input ~ 0
F_D7
Wire Wire Line
	2325 5275 1975 5275
Wire Wire Line
	1975 5275 1975 3825
Wire Wire Line
	1975 3825 2325 3825
Text GLabel 3425 4075 2    50   Input ~ 0
S0
Text GLabel 3425 4175 2    50   Input ~ 0
S1
Text GLabel 3425 4275 2    50   Input ~ 0
S2
Text GLabel 3425 4375 2    50   Input ~ 0
S3
Text GLabel 3425 5525 2    50   Input ~ 0
S4
Text GLabel 3425 5625 2    50   Input ~ 0
S5
Text GLabel 5225 4825 2    50   Input ~ 0
S0
Text GLabel 4425 4625 0    50   Input ~ 0
S1
Text GLabel 5225 4525 2    50   Input ~ 0
S2
Text GLabel 4425 4525 0    50   Input ~ 0
S3
Text GLabel 5225 4625 2    50   Input ~ 0
S4
Text GLabel 4425 4425 0    50   Input ~ 0
S5
$Comp
L wilson-z80:ATF22V10C U8
U 1 1 60AFD85C
P 1525 6775
F 0 "U8" H 1525 7340 50  0000 C CNN
F 1 "ATF22V10C" H 1525 7249 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W7.62mm" H 1525 5775 50  0001 C CNN
F 3 "" H 1525 6775 50  0001 C CNN
	1    1525 6775
	1    0    0    -1  
$EndComp
Text GLabel 1225 6475 0    50   Input ~ 0
~F_OUT~
Text GLabel 1225 6575 0    50   Input ~ 0
~F_MREQ~
Text GLabel 1225 6675 0    50   Input ~ 0
F_A0
Text GLabel 1225 6775 0    50   Input ~ 0
F_A1
Text GLabel 1225 6875 0    50   Input ~ 0
F_A2
Text GLabel 1225 6975 0    50   Input ~ 0
F_A3
Text GLabel 1225 7075 0    50   Input ~ 0
F_A4
Text GLabel 1225 7175 0    50   Input ~ 0
F_A5
Text GLabel 1225 7275 0    50   Input ~ 0
F_A6
Text GLabel 1225 7375 0    50   Input ~ 0
F_A7
Text GLabel 1225 7475 0    50   Input ~ 0
F_A15
Text GLabel 1825 7575 2    50   Input ~ 0
F_A14
Text GLabel 1825 7475 2    50   Input ~ 0
F_A13
Text GLabel 1825 7375 2    50   Input ~ 0
F_A12
Text GLabel 1825 6775 2    50   Input ~ 0
F_A11
Text GLabel 1825 6675 2    50   Input ~ 0
F_A10
Wire Wire Line
	1975 5275 1975 6350
Connection ~ 1975 5275
Wire Wire Line
	2350 6275 5700 6275
Wire Wire Line
	5700 6275 5700 3825
Wire Wire Line
	5700 3825 5225 3825
$Comp
L wilson-z80:IDT7130 U5
U 1 1 60B14E37
P 7400 4775
F 0 "U5" H 7400 6140 50  0000 C CNN
F 1 "IDT7130" H 7400 6049 50  0000 C CNN
F 2 "Package_DIP:DIP-48_W15.24mm_Socket" H 7400 4875 50  0001 C CNN
F 3 "" H 7400 4875 50  0001 C CNN
	1    7400 4775
	1    0    0    -1  
$EndComp
Text GLabel 1825 6575 2    50   Input ~ 0
~F_EXMEM~
$Comp
L Device:R R19
U 1 1 60B20A8D
P 2875 7275
F 0 "R19" V 3082 7275 50  0000 C CNN
F 1 "100" V 2991 7275 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2805 7275 50  0001 C CNN
F 3 "~" H 2875 7275 50  0001 C CNN
	1    2875 7275
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR059
U 1 1 60B2577D
P 3450 7475
F 0 "#PWR059" H 3450 7225 50  0001 C CNN
F 1 "GND" V 3455 7302 50  0000 C CNN
F 2 "" H 3450 7475 50  0001 C CNN
F 3 "" H 3450 7475 50  0001 C CNN
	1    3450 7475
	1    0    0    -1  
$EndComp
Wire Wire Line
	3025 7275 3150 7275
Wire Wire Line
	2725 7275 1825 7275
Text GLabel 3450 7075 1    50   Input ~ 0
~F_INUSE~
Wire Wire Line
	2250 6350 2250 6875
Wire Wire Line
	2250 6875 1825 6875
Wire Wire Line
	1975 6350 2250 6350
Wire Wire Line
	2350 6275 2350 6975
Wire Wire Line
	2350 6975 1825 6975
Wire Wire Line
	1825 7075 2450 7075
Wire Wire Line
	2450 7075 2450 6400
Wire Wire Line
	2450 6400 5900 6400
Wire Wire Line
	5900 6400 5900 3675
Wire Wire Line
	5900 3675 7000 3675
$Comp
L power:GND #PWR043
U 1 1 60B355F3
P 7000 5975
F 0 "#PWR043" H 7000 5725 50  0001 C CNN
F 1 "GND" V 7005 5802 50  0000 C CNN
F 2 "" H 7000 5975 50  0001 C CNN
F 3 "" H 7000 5975 50  0001 C CNN
	1    7000 5975
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 60B36455
P 7800 3675
F 0 "#PWR020" H 7800 3525 50  0001 C CNN
F 1 "+5V" H 7815 3848 50  0000 C CNN
F 2 "" H 7800 3675 50  0001 C CNN
F 3 "" H 7800 3675 50  0001 C CNN
	1    7800 3675
	1    0    0    -1  
$EndComp
Text GLabel 7000 3775 0    50   Input ~ 0
~F_WRITE~
Text GLabel 7000 4075 0    50   Input ~ 0
~F_READ~
Text GLabel 7000 4975 0    50   Input ~ 0
F_A8
Text GLabel 7000 5075 0    50   Input ~ 0
F_A9
Text GLabel 7000 4775 0    50   Input ~ 0
F_A6
Text GLabel 4425 5025 0    50   Input ~ 0
F_A5
Text GLabel 7000 4675 0    50   Input ~ 0
F_A5
Text GLabel 7000 4575 0    50   Input ~ 0
F_A4
Text GLabel 7000 4475 0    50   Input ~ 0
F_A3
Text GLabel 7000 4375 0    50   Input ~ 0
F_A2
Text GLabel 7000 4275 0    50   Input ~ 0
F_A1
Text GLabel 7000 4175 0    50   Input ~ 0
F_A0
Text GLabel 7000 4875 0    50   Input ~ 0
F_A7
Text GLabel 7000 5175 0    50   Input ~ 0
F_D0
Text GLabel 7000 5275 0    50   Input ~ 0
F_D1
Text GLabel 7000 5375 0    50   Input ~ 0
F_D2
Text GLabel 7000 5475 0    50   Input ~ 0
F_D3
Text GLabel 7000 5575 0    50   Input ~ 0
F_D4
Text GLabel 7000 5675 0    50   Input ~ 0
F_D5
Text GLabel 7000 5775 0    50   Input ~ 0
F_D6
Text GLabel 7000 5875 0    50   Input ~ 0
F_D7
$Comp
L Device:R R15
U 1 1 60B3A5C6
P 7550 6850
F 0 "R15" V 7757 6850 50  0000 C CNN
F 1 "100" V 7666 6850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7480 6850 50  0001 C CNN
F 3 "~" H 7550 6850 50  0001 C CNN
	1    7550 6850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR053
U 1 1 60B3A5CC
P 8125 7050
F 0 "#PWR053" H 8125 6800 50  0001 C CNN
F 1 "GND" V 8130 6877 50  0000 C CNN
F 2 "" H 8125 7050 50  0001 C CNN
F 3 "" H 8125 7050 50  0001 C CNN
	1    8125 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 6850 7825 6850
Wire Wire Line
	6850 7050 6975 7050
$Comp
L power:GND #PWR057
U 1 1 60B3E8C5
P 7275 7250
F 0 "#PWR057" H 7275 7000 50  0001 C CNN
F 1 "GND" V 7280 7077 50  0000 C CNN
F 2 "" H 7275 7250 50  0001 C CNN
F 3 "" H 7275 7250 50  0001 C CNN
	1    7275 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 60B3E8BF
P 6700 7050
F 0 "R18" V 6907 7050 50  0000 C CNN
F 1 "100" V 6816 7050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6630 7050 50  0001 C CNN
F 3 "~" H 6700 7050 50  0001 C CNN
	1    6700 7050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R14
U 1 1 60B49E77
P 7275 6700
F 0 "R14" H 7450 6650 50  0000 R CNN
F 1 "10000" H 7575 6725 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7205 6700 50  0001 C CNN
F 3 "~" H 7275 6700 50  0001 C CNN
	1    7275 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	7400 6850 7275 6850
$Comp
L power:+5V #PWR049
U 1 1 60B4DB95
P 7275 6550
F 0 "#PWR049" H 7275 6400 50  0001 C CNN
F 1 "+5V" H 7290 6723 50  0000 C CNN
F 2 "" H 7275 6550 50  0001 C CNN
F 3 "" H 7275 6550 50  0001 C CNN
	1    7275 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 7050 6175 7050
Wire Wire Line
	6175 7050 6175 3975
Wire Wire Line
	6175 3975 7000 3975
Text GLabel 8125 6650 1    50   Input ~ 0
~F_INT~
$Comp
L wilson-z80:mightycore-atmega1284p U4
U 1 1 60B7B8DF
P 9750 4725
F 0 "U4" H 9750 5990 50  0000 C CNN
F 1 "mightycore-atmega1284p" H 9750 5899 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_Socket" H 9750 4725 50  0001 C CNN
F 3 "" H 9750 4725 50  0001 C CNN
	1    9750 4725
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 60B7CFD0
P 9200 3725
F 0 "R9" V 9407 3725 50  0000 C CNN
F 1 "1000" V 9316 3725 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9130 3725 50  0001 C CNN
F 3 "~" H 9200 3725 50  0001 C CNN
	1    9200 3725
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 60B7DCA0
P 8900 3725
F 0 "D1" H 8893 3942 50  0000 C CNN
F 1 "LED" H 8893 3851 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 8900 3725 50  0001 C CNN
F 3 "~" H 8900 3725 50  0001 C CNN
	1    8900 3725
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 60B7E96B
P 8750 3725
F 0 "#PWR022" H 8750 3475 50  0001 C CNN
F 1 "GND" V 8755 3552 50  0000 C CNN
F 2 "" H 8750 3725 50  0001 C CNN
F 3 "" H 8750 3725 50  0001 C CNN
	1    8750 3725
	0    1    1    0   
$EndComp
Text GLabel 10150 3725 2    50   Input ~ 0
AD0
Text GLabel 10150 3825 2    50   Input ~ 0
AD1
Text GLabel 10150 4025 2    50   Input ~ 0
AD3
Text GLabel 10150 4125 2    50   Input ~ 0
AD4
Text GLabel 10150 4225 2    50   Input ~ 0
AD5
Text GLabel 10150 4325 2    50   Input ~ 0
AD6
Text GLabel 10150 4425 2    50   Input ~ 0
AD7
Text GLabel 10150 3925 2    50   Input ~ 0
AD2
Text GLabel 7800 5975 2    50   Input ~ 0
AD0
Text GLabel 7800 5875 2    50   Input ~ 0
AD1
Text GLabel 7800 5675 2    50   Input ~ 0
AD3
Text GLabel 7800 5575 2    50   Input ~ 0
AD4
Text GLabel 7800 5475 2    50   Input ~ 0
AD5
Text GLabel 7800 5375 2    50   Input ~ 0
AD6
Text GLabel 7800 5275 2    50   Input ~ 0
AD7
Text GLabel 7800 5775 2    50   Input ~ 0
AD2
Text GLabel 7800 4275 2    50   Input ~ 0
AA0
Text GLabel 7800 4375 2    50   Input ~ 0
AA1
Text GLabel 7800 4475 2    50   Input ~ 0
AA2
Text GLabel 7800 4575 2    50   Input ~ 0
AA3
Text GLabel 7800 4675 2    50   Input ~ 0
AA4
Text GLabel 7800 4775 2    50   Input ~ 0
AA5
Text GLabel 7800 4875 2    50   Input ~ 0
AA6
Text GLabel 7800 4975 2    50   Input ~ 0
AA7
Text GLabel 7800 5075 2    50   Input ~ 0
AA8
Text GLabel 7800 5175 2    50   Input ~ 0
AA9
Text GLabel 10150 4825 2    50   Input ~ 0
AA9
Text GLabel 10150 4925 2    50   Input ~ 0
AA8
Text GLabel 10150 5025 2    50   Input ~ 0
AA7
Text GLabel 10150 5125 2    50   Input ~ 0
AA6
Text GLabel 10150 5225 2    50   Input ~ 0
AA5
Text GLabel 10150 5325 2    50   Input ~ 0
AA4
Text GLabel 10150 5425 2    50   Input ~ 0
AA3
Text GLabel 10150 5525 2    50   Input ~ 0
AA2
Text GLabel 10150 5625 2    50   Input ~ 0
AA1
Wire Wire Line
	7800 4175 8200 4175
Wire Wire Line
	9350 5425 8275 5425
Wire Wire Line
	8275 5425 8275 3875
Wire Wire Line
	7800 3875 8275 3875
$Comp
L power:GND #PWR037
U 1 1 60BBAB68
P 9350 4725
F 0 "#PWR037" H 9350 4475 50  0001 C CNN
F 1 "GND" V 9355 4552 50  0000 C CNN
F 2 "" H 9350 4725 50  0001 C CNN
F 3 "" H 9350 4725 50  0001 C CNN
	1    9350 4725
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR033
U 1 1 60BBB1AD
P 10150 4625
F 0 "#PWR033" H 10150 4375 50  0001 C CNN
F 1 "GND" V 10155 4452 50  0000 C CNN
F 2 "" H 10150 4625 50  0001 C CNN
F 3 "" H 10150 4625 50  0001 C CNN
	1    10150 4625
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR032
U 1 1 60BBB7DC
P 9350 4625
F 0 "#PWR032" H 9350 4475 50  0001 C CNN
F 1 "+5V" V 9365 4798 50  0000 C CNN
F 2 "" H 9350 4625 50  0001 C CNN
F 3 "" H 9350 4625 50  0001 C CNN
	1    9350 4625
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR031
U 1 1 60BBC249
P 10150 4525
F 0 "#PWR031" H 10150 4375 50  0001 C CNN
F 1 "+5V" V 10165 4698 50  0000 C CNN
F 2 "" H 10150 4525 50  0001 C CNN
F 3 "" H 10150 4525 50  0001 C CNN
	1    10150 4525
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR038
U 1 1 60BBCC9E
P 10150 4725
F 0 "#PWR038" H 10150 4575 50  0001 C CNN
F 1 "+5V" V 10165 4898 50  0000 C CNN
F 2 "" H 10150 4725 50  0001 C CNN
F 3 "" H 10150 4725 50  0001 C CNN
	1    10150 4725
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal Y2
U 1 1 60BBD89F
P 8950 4875
F 0 "Y2" V 8950 4900 50  0000 R CNN
F 1 "16M" H 9050 5025 50  0000 R CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 8950 4875 50  0001 C CNN
F 3 "~" H 8950 4875 50  0001 C CNN
	1    8950 4875
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9350 4825 9075 4825
Wire Wire Line
	9075 4825 9075 4725
Wire Wire Line
	9075 4725 8950 4725
Wire Wire Line
	9350 4925 9075 4925
Wire Wire Line
	9075 4925 9075 5025
Wire Wire Line
	9075 5025 8950 5025
$Comp
L Device:C C9
U 1 1 60BDA90B
P 8675 4700
F 0 "C9" V 8423 4700 50  0000 C CNN
F 1 "22pF" V 8514 4700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8713 4550 50  0001 C CNN
F 3 "~" H 8675 4700 50  0001 C CNN
	1    8675 4700
	0    1    1    0   
$EndComp
$Comp
L Device:C C10
U 1 1 60BDBC65
P 8675 5025
F 0 "C10" V 8423 5025 50  0000 C CNN
F 1 "22pF" V 8514 5025 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8713 4875 50  0001 C CNN
F 3 "~" H 8675 5025 50  0001 C CNN
	1    8675 5025
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR034
U 1 1 60BDC616
P 8525 4700
F 0 "#PWR034" H 8525 4450 50  0001 C CNN
F 1 "GND" V 8530 4527 50  0000 C CNN
F 2 "" H 8525 4700 50  0001 C CNN
F 3 "" H 8525 4700 50  0001 C CNN
	1    8525 4700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR039
U 1 1 60BDCA72
P 8525 5025
F 0 "#PWR039" H 8525 4775 50  0001 C CNN
F 1 "GND" V 8530 4852 50  0000 C CNN
F 2 "" H 8525 5025 50  0001 C CNN
F 3 "" H 8525 5025 50  0001 C CNN
	1    8525 5025
	0    1    1    0   
$EndComp
Wire Wire Line
	8950 4725 8825 4725
Wire Wire Line
	8825 4725 8825 4700
Connection ~ 8950 4725
Wire Wire Line
	8950 5025 8825 5025
Connection ~ 8950 5025
$Comp
L Connector:USB_B_Micro J7
U 1 1 60BE6AD3
P 6525 8175
F 0 "J7" H 6582 8642 50  0000 C CNN
F 1 "USB_B_Micro" H 6582 8551 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" H 6675 8125 50  0001 C CNN
F 3 "~" H 6675 8125 50  0001 C CNN
	1    6525 8175
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR067
U 1 1 60BE95E2
P 6425 8625
F 0 "#PWR067" H 6425 8375 50  0001 C CNN
F 1 "GND" V 6430 8452 50  0000 C CNN
F 2 "" H 6425 8625 50  0001 C CNN
F 3 "" H 6425 8625 50  0001 C CNN
	1    6425 8625
	1    0    0    -1  
$EndComp
Wire Wire Line
	6425 8625 6425 8575
Wire Wire Line
	6525 8575 6425 8575
Connection ~ 6425 8575
NoConn ~ 6825 8375
NoConn ~ 1825 7175
NoConn ~ 7000 3875
NoConn ~ 7800 3975
NoConn ~ 14625 2075
NoConn ~ 14625 2175
NoConn ~ 14625 2275
NoConn ~ 14625 2375
NoConn ~ 14125 2375
NoConn ~ 14125 2275
NoConn ~ 14125 2175
NoConn ~ 14125 2075
Connection ~ 14450 1000
Wire Wire Line
	14450 1000 14800 1000
Connection ~ 14450 1300
Wire Wire Line
	14450 1300 14800 1300
NoConn ~ 14150 8075
NoConn ~ 14150 8175
$Comp
L Connector:Conn_01x04_Male J6
U 1 1 60C3B2C5
P 7100 8125
F 0 "J6" H 7208 8406 50  0000 C CNN
F 1 "Conn_01x04_Male" H 7208 8315 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7100 8125 50  0001 C CNN
F 3 "~" H 7100 8125 50  0001 C CNN
	1    7100 8125
	1    0    0    -1  
$EndComp
$Comp
L Interface_USB:CH340C U9
U 1 1 60C3DA3C
P 8175 8875
F 0 "U9" H 7975 8625 50  0000 C CNN
F 1 "CH340C" H 8075 8750 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 8225 8325 50  0001 L CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Jiangsu-Qin-Heng-CH340C_C84681.pdf" H 7825 9675 50  0001 C CNN
	1    8175 8875
	1    0    0    -1  
$EndComp
NoConn ~ 7775 8575
$Comp
L Device:C C17
U 1 1 60C52387
P 8075 8125
F 0 "C17" H 8250 8050 50  0000 R CNN
F 1 "0.1uF" H 8275 8225 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8113 7975 50  0001 C CNN
F 3 "~" H 8075 8125 50  0001 C CNN
	1    8075 8125
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR069
U 1 1 60C532AD
P 8175 9475
F 0 "#PWR069" H 8175 9225 50  0001 C CNN
F 1 "GND" H 8180 9302 50  0000 C CNN
F 2 "" H 8175 9475 50  0001 C CNN
F 3 "" H 8175 9475 50  0001 C CNN
	1    8175 9475
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR062
U 1 1 60C5E7AC
P 8075 7975
F 0 "#PWR062" H 8075 7725 50  0001 C CNN
F 1 "GND" H 8080 7802 50  0000 C CNN
F 2 "" H 8075 7975 50  0001 C CNN
F 3 "" H 8075 7975 50  0001 C CNN
	1    8075 7975
	-1   0    0    1   
$EndComp
Wire Wire Line
	6825 7975 7300 7975
Wire Wire Line
	7300 7975 7300 8025
Wire Wire Line
	7300 8125 7300 8175
Wire Wire Line
	7300 8175 6825 8175
Wire Wire Line
	6825 8275 7300 8275
Wire Wire Line
	7300 8275 7300 8225
Wire Wire Line
	7300 8325 7300 8575
Wire Wire Line
	7300 8575 6525 8575
Connection ~ 6525 8575
Wire Wire Line
	7750 7975 7750 7700
Wire Wire Line
	7750 7700 8225 7700
Wire Wire Line
	8225 7700 8225 7825
Wire Wire Line
	8225 8275 8175 8275
Connection ~ 7300 7975
$Comp
L Device:C C15
U 1 1 60C846BD
P 8375 7825
F 0 "C15" H 8550 7750 50  0000 R CNN
F 1 "0.1uF" H 8575 7925 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8413 7675 50  0001 C CNN
F 3 "~" H 8375 7825 50  0001 C CNN
	1    8375 7825
	0    -1   -1   0   
$EndComp
Connection ~ 8225 7825
Wire Wire Line
	8225 7825 8225 8050
$Comp
L power:GND #PWR061
U 1 1 60C85A7F
P 8525 7825
F 0 "#PWR061" H 8525 7575 50  0001 C CNN
F 1 "GND" H 8530 7652 50  0000 C CNN
F 2 "" H 8525 7825 50  0001 C CNN
F 3 "" H 8525 7825 50  0001 C CNN
	1    8525 7825
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7300 7975 7750 7975
Wire Wire Line
	7300 8125 7675 8125
Wire Wire Line
	7675 8125 7675 8775
Wire Wire Line
	7675 8775 7775 8775
Connection ~ 7300 8125
Wire Wire Line
	7300 8275 7575 8275
Wire Wire Line
	7575 8275 7575 8875
Wire Wire Line
	7575 8875 7775 8875
Connection ~ 7300 8275
$Comp
L Device:C C19
U 1 1 60C92BD1
P 9125 9175
F 0 "C19" H 9300 9100 50  0000 R CNN
F 1 "0.1uF" H 9325 9275 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9163 9025 50  0001 C CNN
F 3 "~" H 9125 9175 50  0001 C CNN
	1    9125 9175
	0    -1   -1   0   
$EndComp
NoConn ~ 8575 9275
NoConn ~ 8575 9075
NoConn ~ 8575 8975
NoConn ~ 8575 8875
NoConn ~ 8575 8775
$Comp
L Device:R R11
U 1 1 60CBD37B
P 9075 4525
F 0 "R11" V 9282 4525 50  0000 C CNN
F 1 "10k" V 9191 4525 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9005 4525 50  0001 C CNN
F 3 "~" H 9075 4525 50  0001 C CNN
	1    9075 4525
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9225 4525 9250 4525
$Comp
L power:+5V #PWR030
U 1 1 60CCC136
P 8925 4525
F 0 "#PWR030" H 8925 4375 50  0001 C CNN
F 1 "+5V" V 8940 4698 50  0000 C CNN
F 2 "" H 8925 4525 50  0001 C CNN
F 3 "" H 8925 4525 50  0001 C CNN
	1    8925 4525
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9250 4525 9250 4600
Wire Wire Line
	9250 4600 8375 4600
Wire Wire Line
	8375 4600 8375 6500
Wire Wire Line
	8375 6500 9425 6500
Wire Wire Line
	9425 9175 9275 9175
Connection ~ 9250 4525
Wire Wire Line
	9250 4525 9350 4525
$Comp
L Device:C C16
U 1 1 60CECA3B
P 8375 8050
F 0 "C16" H 8550 7975 50  0000 R CNN
F 1 "10uF" H 8575 8150 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8413 7900 50  0001 C CNN
F 3 "~" H 8375 8050 50  0001 C CNN
	1    8375 8050
	0    -1   -1   0   
$EndComp
Connection ~ 8225 8050
Wire Wire Line
	8225 8050 8225 8275
$Comp
L power:GND #PWR063
U 1 1 60CED075
P 8525 8050
F 0 "#PWR063" H 8525 7800 50  0001 C CNN
F 1 "GND" H 8530 7877 50  0000 C CNN
F 2 "" H 8525 8050 50  0001 C CNN
F 3 "" H 8525 8050 50  0001 C CNN
	1    8525 8050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9350 5025 9100 5025
Wire Wire Line
	9100 5025 9100 5150
Wire Wire Line
	9100 5150 8425 5150
Wire Wire Line
	8425 5150 8425 6450
Wire Wire Line
	8425 6450 9500 6450
Wire Wire Line
	9500 8475 8575 8475
Wire Wire Line
	8575 8575 9575 8575
Wire Wire Line
	9575 6400 8475 6400
Wire Wire Line
	8475 6400 8475 5200
Wire Wire Line
	8475 5200 9125 5200
Wire Wire Line
	9125 5200 9125 5125
Wire Wire Line
	9125 5125 9350 5125
$Comp
L Device:R R10
U 1 1 60D011E0
P 9200 4025
F 0 "R10" V 9407 4025 50  0000 C CNN
F 1 "1000" V 9316 4025 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9130 4025 50  0001 C CNN
F 3 "~" H 9200 4025 50  0001 C CNN
	1    9200 4025
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 60D011E6
P 8900 4025
F 0 "D2" H 8893 4242 50  0000 C CNN
F 1 "LED2" H 8893 4151 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 8900 4025 50  0001 C CNN
F 3 "~" H 8900 4025 50  0001 C CNN
	1    8900 4025
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 60D011EC
P 8750 4025
F 0 "#PWR027" H 8750 3775 50  0001 C CNN
F 1 "GND" V 8755 3852 50  0000 C CNN
F 2 "" H 8750 4025 50  0001 C CNN
F 3 "" H 8750 4025 50  0001 C CNN
	1    8750 4025
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x04_Male J8
U 1 1 60D099B6
P 10075 8575
F 0 "J8" H 10047 8457 50  0000 R CNN
F 1 "Conn_01x04_Male" H 10047 8548 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 10075 8575 50  0001 C CNN
F 3 "~" H 10075 8575 50  0001 C CNN
	1    10075 8575
	-1   0    0    1   
$EndComp
Wire Wire Line
	8200 5625 9350 5625
Wire Wire Line
	8200 4175 8200 5625
Wire Wire Line
	8400 3775 8400 3825
Wire Wire Line
	7800 3775 8400 3775
Wire Wire Line
	7800 4075 8575 4075
Wire Wire Line
	8575 4075 8575 3925
Wire Wire Line
	8400 3825 9350 3825
Wire Wire Line
	8575 3925 9350 3925
Text GLabel 9350 5525 0    50   Input ~ 0
AA0
$Comp
L power:GND #PWR066
U 1 1 60D5FAE8
P 9875 8375
F 0 "#PWR066" H 9875 8125 50  0001 C CNN
F 1 "GND" H 9880 8202 50  0000 C CNN
F 2 "" H 9875 8375 50  0001 C CNN
F 3 "" H 9875 8375 50  0001 C CNN
	1    9875 8375
	-1   0    0    1   
$EndComp
Wire Wire Line
	8575 9175 8975 9175
Wire Wire Line
	9500 8475 9875 8475
Connection ~ 9500 8475
Wire Wire Line
	9875 8575 9575 8575
Connection ~ 9575 8575
$Comp
L Transistor_FET:BSS138 Q5
U 1 1 60D90BDF
P 10525 6275
F 0 "Q5" V 10200 6300 50  0000 C CNN
F 1 "BSS138" V 10275 6275 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10725 6200 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 10525 6275 50  0001 L CNN
	1    10525 6275
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R13
U 1 1 60D92DEB
P 10725 6325
F 0 "R13" H 10775 6375 50  0000 L CNN
F 1 "10k" V 10725 6275 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10655 6325 50  0001 C CNN
F 3 "~" H 10725 6325 50  0001 C CNN
	1    10725 6325
	-1   0    0    1   
$EndComp
$Comp
L Device:R R12
U 1 1 60D948B4
P 10325 6325
F 0 "R12" H 10375 6375 50  0000 L CNN
F 1 "10k" V 10325 6275 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10255 6325 50  0001 C CNN
F 3 "~" H 10325 6325 50  0001 C CNN
	1    10325 6325
	-1   0    0    1   
$EndComp
Wire Wire Line
	10525 6475 10725 6475
$Comp
L power:+5V #PWR046
U 1 1 60D9E832
P 10325 6475
F 0 "#PWR046" H 10325 6325 50  0001 C CNN
F 1 "+5V" H 10340 6648 50  0000 C CNN
F 2 "" H 10325 6475 50  0001 C CNN
F 3 "" H 10325 6475 50  0001 C CNN
	1    10325 6475
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR047
U 1 1 60DA0378
P 10725 6475
F 0 "#PWR047" H 10725 6325 50  0001 C CNN
F 1 "+3V3" H 10740 6648 50  0000 C CNN
F 2 "" H 10725 6475 50  0001 C CNN
F 3 "" H 10725 6475 50  0001 C CNN
	1    10725 6475
	-1   0    0    1   
$EndComp
Connection ~ 10725 6475
$Comp
L Regulator_Linear:AMS1117-3.3 U1
U 1 1 60DA1D96
P 13325 1350
F 0 "U1" H 13325 1592 50  0000 C CNN
F 1 "AMS1117-3.3" H 13325 1501 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 13325 1550 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 13425 1100 50  0001 C CNN
	1    13325 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 60DA3F9E
P 13025 1350
F 0 "#PWR03" H 13025 1200 50  0001 C CNN
F 1 "+5V" H 13040 1523 50  0000 C CNN
F 2 "" H 13025 1350 50  0001 C CNN
F 3 "" H 13025 1350 50  0001 C CNN
	1    13025 1350
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR04
U 1 1 60DA4867
P 13625 1350
F 0 "#PWR04" H 13625 1200 50  0001 C CNN
F 1 "+3V3" V 13640 1478 50  0000 L CNN
F 2 "" H 13625 1350 50  0001 C CNN
F 3 "" H 13625 1350 50  0001 C CNN
	1    13625 1350
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 60DA5C60
P 13175 2150
F 0 "C7" V 13290 2196 50  0000 L CNN
F 1 "100n" V 13025 2050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 13213 2000 50  0001 C CNN
F 3 "~" H 13175 2150 50  0001 C CNN
	1    13175 2150
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C5
U 1 1 60DA600B
P 13175 1850
F 0 "C5" V 13290 1896 50  0000 L CNN
F 1 "10uF" V 13025 1750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 13213 1700 50  0001 C CNN
F 3 "~" H 13175 1850 50  0001 C CNN
	1    13175 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C6
U 1 1 60DB1A4B
P 13475 1850
F 0 "C6" V 13590 1896 50  0000 L CNN
F 1 "10uF" V 13325 1750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 13513 1700 50  0001 C CNN
F 3 "~" H 13475 1850 50  0001 C CNN
	1    13475 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C8
U 1 1 60DB2D23
P 13475 2150
F 0 "C8" V 13590 2196 50  0000 L CNN
F 1 "100n" V 13325 2050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 13513 2000 50  0001 C CNN
F 3 "~" H 13475 2150 50  0001 C CNN
	1    13475 2150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 60DB3B45
P 13325 2300
F 0 "#PWR013" H 13325 2050 50  0001 C CNN
F 1 "GND" V 13330 2127 50  0000 C CNN
F 2 "" H 13325 2300 50  0001 C CNN
F 3 "" H 13325 2300 50  0001 C CNN
	1    13325 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	13325 2300 13325 2150
Connection ~ 13325 2150
Wire Wire Line
	13325 1650 13325 1850
Connection ~ 13325 1850
Wire Wire Line
	13325 1850 13325 2150
Wire Wire Line
	13625 2150 13625 1850
Wire Wire Line
	13625 1850 13625 1350
Connection ~ 13625 1850
Connection ~ 13625 1350
Wire Wire Line
	13025 2150 13025 1850
Wire Wire Line
	13025 1350 13025 1850
Connection ~ 13025 1350
Connection ~ 13025 1850
$Comp
L Transistor_FET:BSS138 Q7
U 1 1 60E1C962
P 10525 6875
F 0 "Q7" V 10200 6900 50  0000 C CNN
F 1 "BSS138" V 10275 6875 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10725 6800 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 10525 6875 50  0001 L CNN
	1    10525 6875
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R17
U 1 1 60E1C968
P 10725 6925
F 0 "R17" H 10775 6975 50  0000 L CNN
F 1 "10k" V 10725 6875 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10655 6925 50  0001 C CNN
F 3 "~" H 10725 6925 50  0001 C CNN
	1    10725 6925
	-1   0    0    1   
$EndComp
$Comp
L Device:R R16
U 1 1 60E1C96E
P 10325 6925
F 0 "R16" H 10375 6975 50  0000 L CNN
F 1 "10k" V 10325 6875 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10255 6925 50  0001 C CNN
F 3 "~" H 10325 6925 50  0001 C CNN
	1    10325 6925
	-1   0    0    1   
$EndComp
Wire Wire Line
	10525 7075 10725 7075
$Comp
L power:+5V #PWR054
U 1 1 60E1C975
P 10325 7075
F 0 "#PWR054" H 10325 6925 50  0001 C CNN
F 1 "+5V" H 10340 7248 50  0000 C CNN
F 2 "" H 10325 7075 50  0001 C CNN
F 3 "" H 10325 7075 50  0001 C CNN
	1    10325 7075
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR055
U 1 1 60E1C97B
P 10725 7075
F 0 "#PWR055" H 10725 6925 50  0001 C CNN
F 1 "+3V3" H 10740 7248 50  0000 C CNN
F 2 "" H 10725 7075 50  0001 C CNN
F 3 "" H 10725 7075 50  0001 C CNN
	1    10725 7075
	-1   0    0    1   
$EndComp
Connection ~ 10725 7075
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 60E39BCD
P 11375 6675
F 0 "J4" H 11347 6557 50  0000 R CNN
F 1 "Conn_01x04_Male" H 11347 6648 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 11375 6675 50  0001 C CNN
F 3 "~" H 11375 6675 50  0001 C CNN
	1    11375 6675
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR048
U 1 1 60E3A74F
P 11175 6475
F 0 "#PWR048" H 11175 6225 50  0001 C CNN
F 1 "GND" H 11180 6302 50  0000 C CNN
F 2 "" H 11175 6475 50  0001 C CNN
F 3 "" H 11175 6475 50  0001 C CNN
	1    11175 6475
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR052
U 1 1 60E3AC01
P 11175 6775
F 0 "#PWR052" H 11175 6625 50  0001 C CNN
F 1 "+3V3" H 11190 6948 50  0000 C CNN
F 2 "" H 11175 6775 50  0001 C CNN
F 3 "" H 11175 6775 50  0001 C CNN
	1    11175 6775
	-1   0    0    1   
$EndComp
Wire Wire Line
	9425 6500 9425 9175
$Comp
L power:+5V #PWR068
U 1 1 60E3B2BF
P 9875 8675
F 0 "#PWR068" H 9875 8525 50  0001 C CNN
F 1 "+5V" H 9890 8848 50  0000 C CNN
F 2 "" H 9875 8675 50  0001 C CNN
F 3 "" H 9875 8675 50  0001 C CNN
	1    9875 8675
	-1   0    0    1   
$EndComp
Wire Wire Line
	10875 6175 10725 6175
Connection ~ 10725 6175
Wire Wire Line
	10725 6775 10950 6775
Connection ~ 10725 6775
$Comp
L Transistor_FET:BSS138 Q1
U 1 1 60E5903C
P 7650 2525
F 0 "Q1" V 7325 2550 50  0000 C CNN
F 1 "BSS138" V 7400 2525 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7850 2450 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 7650 2525 50  0001 L CNN
	1    7650 2525
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 60E59042
P 7700 2325
F 0 "R1" H 7750 2375 50  0000 L CNN
F 1 "10k" V 7700 2275 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7630 2325 50  0001 C CNN
F 3 "~" H 7700 2325 50  0001 C CNN
	1    7700 2325
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 60E59048
P 7700 2725
F 0 "R5" H 7750 2775 50  0000 L CNN
F 1 "10k" V 7700 2675 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7630 2725 50  0001 C CNN
F 3 "~" H 7700 2725 50  0001 C CNN
	1    7700 2725
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 2525 7850 2325
$Comp
L power:+5V #PWR09
U 1 1 60E5904F
P 7850 2725
F 0 "#PWR09" H 7850 2575 50  0001 C CNN
F 1 "+5V" H 7865 2898 50  0000 C CNN
F 2 "" H 7850 2725 50  0001 C CNN
F 3 "" H 7850 2725 50  0001 C CNN
	1    7850 2725
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR05
U 1 1 60E59055
P 7850 2325
F 0 "#PWR05" H 7850 2175 50  0001 C CNN
F 1 "+3V3" H 7865 2498 50  0000 C CNN
F 2 "" H 7850 2325 50  0001 C CNN
F 3 "" H 7850 2325 50  0001 C CNN
	1    7850 2325
	0    1    1    0   
$EndComp
Connection ~ 7850 2325
$Comp
L Transistor_FET:BSS138 Q2
U 1 1 60E85339
P 8325 2525
F 0 "Q2" V 8000 2550 50  0000 C CNN
F 1 "BSS138" V 8075 2525 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8525 2450 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 8325 2525 50  0001 L CNN
	1    8325 2525
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 60E8533F
P 8375 2325
F 0 "R2" H 8425 2375 50  0000 L CNN
F 1 "10k" V 8375 2275 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8305 2325 50  0001 C CNN
F 3 "~" H 8375 2325 50  0001 C CNN
	1    8375 2325
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 60E85345
P 8375 2725
F 0 "R6" H 8425 2775 50  0000 L CNN
F 1 "10k" V 8375 2675 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8305 2725 50  0001 C CNN
F 3 "~" H 8375 2725 50  0001 C CNN
	1    8375 2725
	0    1    1    0   
$EndComp
Wire Wire Line
	8525 2525 8525 2325
$Comp
L power:+5V #PWR010
U 1 1 60E8534C
P 8525 2725
F 0 "#PWR010" H 8525 2575 50  0001 C CNN
F 1 "+5V" H 8540 2898 50  0000 C CNN
F 2 "" H 8525 2725 50  0001 C CNN
F 3 "" H 8525 2725 50  0001 C CNN
	1    8525 2725
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR06
U 1 1 60E85352
P 8525 2325
F 0 "#PWR06" H 8525 2175 50  0001 C CNN
F 1 "+3V3" H 8540 2498 50  0000 C CNN
F 2 "" H 8525 2325 50  0001 C CNN
F 3 "" H 8525 2325 50  0001 C CNN
	1    8525 2325
	0    1    1    0   
$EndComp
Connection ~ 8525 2325
$Comp
L Transistor_FET:BSS138 Q3
U 1 1 60E91FD3
P 8950 2525
F 0 "Q3" V 8625 2550 50  0000 C CNN
F 1 "BSS138" V 8700 2525 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9150 2450 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 8950 2525 50  0001 L CNN
	1    8950 2525
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 60E91FD9
P 9000 2325
F 0 "R3" H 9050 2375 50  0000 L CNN
F 1 "10k" V 9000 2275 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8930 2325 50  0001 C CNN
F 3 "~" H 9000 2325 50  0001 C CNN
	1    9000 2325
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 60E91FDF
P 9000 2725
F 0 "R7" H 9050 2775 50  0000 L CNN
F 1 "10k" V 9000 2675 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8930 2725 50  0001 C CNN
F 3 "~" H 9000 2725 50  0001 C CNN
	1    9000 2725
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 2525 9150 2325
$Comp
L power:+5V #PWR011
U 1 1 60E91FE6
P 9150 2725
F 0 "#PWR011" H 9150 2575 50  0001 C CNN
F 1 "+5V" H 9165 2898 50  0000 C CNN
F 2 "" H 9150 2725 50  0001 C CNN
F 3 "" H 9150 2725 50  0001 C CNN
	1    9150 2725
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR07
U 1 1 60E91FEC
P 9150 2325
F 0 "#PWR07" H 9150 2175 50  0001 C CNN
F 1 "+3V3" H 9165 2498 50  0000 C CNN
F 2 "" H 9150 2325 50  0001 C CNN
F 3 "" H 9150 2325 50  0001 C CNN
	1    9150 2325
	0    1    1    0   
$EndComp
Connection ~ 9150 2325
$Comp
L Transistor_FET:BSS138 Q4
U 1 1 60EA029A
P 9525 2525
F 0 "Q4" V 9200 2550 50  0000 C CNN
F 1 "BSS138" V 9275 2525 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9725 2450 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 9525 2525 50  0001 L CNN
	1    9525 2525
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 60EA02A0
P 9575 2325
F 0 "R4" H 9625 2375 50  0000 L CNN
F 1 "10k" V 9575 2275 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9505 2325 50  0001 C CNN
F 3 "~" H 9575 2325 50  0001 C CNN
	1    9575 2325
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 60EA02A6
P 9575 2725
F 0 "R8" H 9625 2775 50  0000 L CNN
F 1 "10k" V 9575 2675 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9505 2725 50  0001 C CNN
F 3 "~" H 9575 2725 50  0001 C CNN
	1    9575 2725
	0    1    1    0   
$EndComp
Wire Wire Line
	9725 2525 9725 2325
$Comp
L power:+5V #PWR012
U 1 1 60EA02AD
P 9725 2725
F 0 "#PWR012" H 9725 2575 50  0001 C CNN
F 1 "+5V" H 9740 2898 50  0000 C CNN
F 2 "" H 9725 2725 50  0001 C CNN
F 3 "" H 9725 2725 50  0001 C CNN
	1    9725 2725
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR08
U 1 1 60EA02B3
P 9725 2325
F 0 "#PWR08" H 9725 2175 50  0001 C CNN
F 1 "+3V3" H 9740 2498 50  0000 C CNN
F 2 "" H 9725 2325 50  0001 C CNN
F 3 "" H 9725 2325 50  0001 C CNN
	1    9725 2325
	0    1    1    0   
$EndComp
Connection ~ 9725 2325
Wire Wire Line
	9500 6450 9500 8475
Wire Wire Line
	9575 6400 9575 8575
Wire Wire Line
	11175 6575 10875 6575
Wire Wire Line
	10875 6575 10875 6175
Wire Wire Line
	11175 6675 10950 6675
Wire Wire Line
	10950 6675 10950 6775
Wire Wire Line
	10325 6175 9150 6175
Wire Wire Line
	9150 6175 9150 5325
Wire Wire Line
	9150 5325 9350 5325
Connection ~ 10325 6175
Wire Wire Line
	9350 5225 9100 5225
Wire Wire Line
	9100 5225 9100 6250
Wire Wire Line
	9100 6250 10200 6250
Wire Wire Line
	10200 6250 10200 6775
Wire Wire Line
	10200 6775 10325 6775
Connection ~ 10325 6775
Wire Wire Line
	9350 4125 8375 4125
Wire Wire Line
	8350 4225 9350 4225
Wire Wire Line
	9350 4325 8325 4325
Wire Wire Line
	8300 4425 9350 4425
$Comp
L Connector:SD_Card J9
U 1 1 60FCF831
P 6450 1625
F 0 "J9" H 6450 960 50  0000 C CNN
F 1 "SD_Card" H 6450 1051 50  0000 C CNN
F 2 "wilson-z80:SD_Card_ XUNPU_SD-101" H 6450 1625 50  0001 C CNN
F 3 "http://portal.fciconnect.com/Comergent//fci/drawing/10067847.pdf" H 6450 1625 50  0001 C CNN
	1    6450 1625
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0101
U 1 1 60FD6224
P 7350 1625
F 0 "#PWR0101" H 7350 1475 50  0001 C CNN
F 1 "+3V3" V 7365 1798 50  0000 C CNN
F 2 "" H 7350 1625 50  0001 C CNN
F 3 "" H 7350 1625 50  0001 C CNN
	1    7350 1625
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60FD6B00
P 7350 1725
F 0 "#PWR0102" H 7350 1475 50  0001 C CNN
F 1 "GND" V 7355 1552 50  0000 C CNN
F 2 "" H 7350 1725 50  0001 C CNN
F 3 "" H 7350 1725 50  0001 C CNN
	1    7350 1725
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 60FE4427
P 7350 1425
F 0 "#PWR0103" H 7350 1175 50  0001 C CNN
F 1 "GND" V 7355 1252 50  0000 C CNN
F 2 "" H 7350 1425 50  0001 C CNN
F 3 "" H 7350 1425 50  0001 C CNN
	1    7350 1425
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8375 4125 8375 3225
Wire Wire Line
	8375 3225 9425 3225
Wire Wire Line
	9425 3225 9425 2725
Connection ~ 9425 2725
Wire Wire Line
	7350 1925 9425 1925
Wire Wire Line
	9425 1925 9425 2325
Connection ~ 9425 2325
Wire Wire Line
	8350 4225 8350 3150
Wire Wire Line
	8350 3150 8850 3150
Wire Wire Line
	8850 3150 8850 2725
Connection ~ 8850 2725
Wire Wire Line
	7350 1825 8850 1825
Wire Wire Line
	8850 1825 8850 2325
Connection ~ 8850 2325
Wire Wire Line
	8325 4325 8325 2875
Wire Wire Line
	8325 2875 8225 2875
Wire Wire Line
	8225 2875 8225 2725
Connection ~ 8225 2725
Wire Wire Line
	8225 2325 8225 1325
Wire Wire Line
	8225 1325 7350 1325
Connection ~ 8225 2325
Wire Wire Line
	8300 4425 8300 3000
Wire Wire Line
	8300 3000 7550 3000
Wire Wire Line
	7550 3000 7550 2725
Connection ~ 7550 2725
Wire Wire Line
	7550 2325 7550 1525
Wire Wire Line
	7550 1525 7350 1525
Connection ~ 7550 2325
$Comp
L power:GND #PWR0104
U 1 1 61097426
P 5550 1525
F 0 "#PWR0104" H 5550 1275 50  0001 C CNN
F 1 "GND" V 5555 1352 50  0000 C CNN
F 2 "" H 5550 1525 50  0001 C CNN
F 3 "" H 5550 1525 50  0001 C CNN
	1    5550 1525
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 6109801F
P 5550 1425
F 0 "#PWR0105" H 5550 1175 50  0001 C CNN
F 1 "GND" V 5555 1252 50  0000 C CNN
F 2 "" H 5550 1425 50  0001 C CNN
F 3 "" H 5550 1425 50  0001 C CNN
	1    5550 1425
	0    1    1    0   
$EndComp
NoConn ~ 7350 2025
NoConn ~ 7350 1225
NoConn ~ 5550 1725
NoConn ~ 5550 1825
NoConn ~ 3425 5725
NoConn ~ 3425 5825
Text GLabel 14000 6250 0    50   Input ~ 0
~F_INUSE~
Text GLabel 14950 7150 2    50   Input ~ 0
~F_WAIT~
Text GLabel 14750 6550 2    50   Input ~ 0
~F_INT~
Text GLabel 15000 6450 2    50   Input ~ 0
~F_IN~
Text GLabel 15000 6250 2    50   Input ~ 0
~F_READ~
Text GLabel 15300 6150 2    50   Input ~ 0
~F_WRITE~
Text GLabel 14950 5650 2    50   Input ~ 0
~F_EXMEM~
Text GLabel 14950 5500 2    50   Input ~ 0
~F_MREQ~
Text GLabel 13600 6150 0    50   Input ~ 0
~F_INTAK~
Text GLabel 13850 6050 0    50   Input ~ 0
~F_OUT~
Wire Wire Line
	13700 5550 14000 5550
Text GLabel 13700 5550 0    50   Input ~ 0
~F_SYSRES~
$Comp
L power:GND #PWR040
U 1 1 608C2754
P 14000 5850
F 0 "#PWR040" H 14000 5600 50  0001 C CNN
F 1 "GND" V 14005 5677 50  0000 C CNN
F 2 "" H 14000 5850 50  0001 C CNN
F 3 "" H 14000 5850 50  0001 C CNN
	1    14000 5850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR044
U 1 1 608C274E
P 14750 6950
F 0 "#PWR044" H 14750 6700 50  0001 C CNN
F 1 "GND" V 14755 6777 50  0000 C CNN
F 2 "" H 14750 6950 50  0001 C CNN
F 3 "" H 14750 6950 50  0001 C CNN
	1    14750 6950
	0    -1   -1   0   
$EndComp
Text GLabel 14000 6450 0    50   Input ~ 0
F_D7
Text GLabel 14000 6650 0    50   Input ~ 0
F_D6
Text GLabel 14000 6850 0    50   Input ~ 0
F_D5
Text GLabel 14000 6350 0    50   Input ~ 0
F_D4
Text GLabel 14000 6750 0    50   Input ~ 0
F_D3
Text GLabel 14000 7050 0    50   Input ~ 0
F_D2
Text GLabel 14000 6550 0    50   Input ~ 0
F_D1
Text GLabel 14000 6950 0    50   Input ~ 0
F_D0
Text GLabel 14750 5850 2    50   Input ~ 0
F_A15
Text GLabel 14000 5950 0    50   Input ~ 0
F_A14
Text GLabel 14000 5750 0    50   Input ~ 0
F_A13
Text GLabel 14750 5750 2    50   Input ~ 0
F_A12
Text GLabel 14750 5950 2    50   Input ~ 0
F_A11
Text GLabel 14000 5650 0    50   Input ~ 0
F_A10
Text GLabel 14750 6350 2    50   Input ~ 0
F_A9
Text GLabel 14750 6050 2    50   Input ~ 0
F_A8
Text GLabel 14000 7250 0    50   Input ~ 0
F_A7
Text GLabel 14000 7350 0    50   Input ~ 0
F_A6
Text GLabel 14750 7250 2    50   Input ~ 0
F_A5
Text GLabel 14750 7050 2    50   Input ~ 0
F_A4
Text GLabel 14000 7150 0    50   Input ~ 0
F_A3
Text GLabel 14000 7450 0    50   Input ~ 0
F_A2
Text GLabel 14750 6850 2    50   Input ~ 0
F_A1
Text GLabel 14750 6750 2    50   Input ~ 0
F_A0
Text GLabel 14950 6650 2    50   Input ~ 0
CLK
$Comp
L wilson-z80:TRS80W-header J3
U 1 1 608C272F
P 14350 6450
F 0 "J3" H 14375 7615 50  0000 C CNN
F 1 "TRS80W-header" H 14375 7524 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 13850 7550 50  0001 C CNN
F 3 "" H 13850 7550 50  0001 C CNN
	1    14350 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	13600 6150 14000 6150
Wire Wire Line
	14850 5550 14750 5550
Wire Wire Line
	14850 5500 14850 5550
Wire Wire Line
	14950 5500 14850 5500
Wire Wire Line
	14950 6650 14750 6650
Wire Wire Line
	14950 7150 14750 7150
Wire Wire Line
	14750 6450 15000 6450
Wire Wire Line
	15300 6150 14750 6150
Wire Wire Line
	13850 6050 14000 6050
Wire Wire Line
	14750 6250 15000 6250
Wire Wire Line
	14950 5650 14750 5650
$Comp
L power:+5V #PWR051
U 1 1 608C271E
P 14750 7450
F 0 "#PWR051" H 14750 7300 50  0001 C CNN
F 1 "+5V" H 14765 7623 50  0000 C CNN
F 2 "" H 14750 7450 50  0001 C CNN
F 3 "" H 14750 7450 50  0001 C CNN
	1    14750 7450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR050
U 1 1 608C2718
P 14750 7350
F 0 "#PWR050" H 14750 7100 50  0001 C CNN
F 1 "GND" V 14755 7177 50  0000 C CNN
F 2 "" H 14750 7350 50  0001 C CNN
F 3 "" H 14750 7350 50  0001 C CNN
	1    14750 7350
	0    -1   -1   0   
$EndComp
$Comp
L wilson-z80:74HC670 U7
U 1 1 60AC9E93
P 2875 5375
F 0 "U7" H 2875 4802 50  0000 C CNN
F 1 "74HC670" H 2875 4711 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 2875 4825 50  0001 C CNN
F 3 "" H 2875 5375 50  0001 C CNN
	1    2875 5375
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSS138 Q6
U 1 1 612916AB
P 8025 6850
F 0 "Q6" V 8325 6850 50  0000 C CNN
F 1 "BSS138" V 8250 6850 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8225 6775 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 8025 6850 50  0001 L CNN
	1    8025 6850
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSS138 Q8
U 1 1 61296CFC
P 7175 7050
F 0 "Q8" V 7475 7050 50  0000 C CNN
F 1 "BSS138" V 7400 7050 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7375 6975 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 7175 7050 50  0001 L CNN
	1    7175 7050
	1    0    0    -1  
$EndComp
Connection ~ 7275 6850
$Comp
L Transistor_FET:BSS138 Q9
U 1 1 612CD856
P 3350 7275
F 0 "Q9" V 3650 7275 50  0000 C CNN
F 1 "BSS138" V 3575 7275 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3550 7200 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 3350 7275 50  0001 L CNN
	1    3350 7275
	1    0    0    -1  
$EndComp
$Comp
L Device:C C24
U 1 1 614D5EF1
P 12400 8825
F 0 "C24" V 12515 8871 50  0000 L CNN
F 1 "100n" V 12250 8725 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 12438 8675 50  0001 C CNN
F 3 "~" H 12400 8825 50  0001 C CNN
	1    12400 8825
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR070
U 1 1 614D5EF7
P 12250 8825
F 0 "#PWR070" H 12250 8675 50  0001 C CNN
F 1 "+5V" H 12265 8998 50  0000 C CNN
F 2 "" H 12250 8825 50  0001 C CNN
F 3 "" H 12250 8825 50  0001 C CNN
	1    12250 8825
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR071
U 1 1 614D5EFD
P 12550 8825
F 0 "#PWR071" H 12550 8575 50  0001 C CNN
F 1 "GND" V 12555 8652 50  0000 C CNN
F 2 "" H 12550 8825 50  0001 C CNN
F 3 "" H 12550 8825 50  0001 C CNN
	1    12550 8825
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C22
U 1 1 614D5F09
P 12400 8125
F 0 "C22" V 12515 8171 50  0000 L CNN
F 1 "100n" V 12250 8025 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 12438 7975 50  0001 C CNN
F 3 "~" H 12400 8125 50  0001 C CNN
	1    12400 8125
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C20
U 1 1 614D5F15
P 12400 7475
F 0 "C20" V 12515 7521 50  0000 L CNN
F 1 "100n" V 12250 7375 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 12438 7325 50  0001 C CNN
F 3 "~" H 12400 7475 50  0001 C CNN
	1    12400 7475
	0    -1   -1   0   
$EndComp
Connection ~ 12250 8125
Connection ~ 12250 8825
Connection ~ 12550 8825
Connection ~ 12550 8125
Wire Wire Line
	12250 7475 12250 8125
Wire Wire Line
	12550 7475 12550 8125
Wire Wire Line
	12250 8125 12250 8825
Wire Wire Line
	12550 8125 12550 8825
$EndSCHEMATC
