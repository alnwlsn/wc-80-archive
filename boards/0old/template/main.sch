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
L power:GND #PWR060
U 1 1 607DD22C
P 14750 4950
F 0 "#PWR060" H 14750 4700 50  0001 C CNN
F 1 "GND" V 14755 4777 50  0000 C CNN
F 2 "" H 14750 4950 50  0001 C CNN
F 3 "" H 14750 4950 50  0001 C CNN
	1    14750 4950
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR061
U 1 1 607DD23E
P 14750 5050
F 0 "#PWR061" H 14750 4900 50  0001 C CNN
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
L wilson-z80:TRS80W-header J3
U 1 1 607DD279
P 14350 4050
F 0 "J3" H 14375 5215 50  0000 C CNN
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
L power:GND #PWR059
U 1 1 60820152
P 14750 4550
F 0 "#PWR059" H 14750 4300 50  0001 C CNN
F 1 "GND" V 14755 4377 50  0000 C CNN
F 2 "" H 14750 4550 50  0001 C CNN
F 3 "" H 14750 4550 50  0001 C CNN
	1    14750 4550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR057
U 1 1 608206D8
P 14000 3450
F 0 "#PWR057" H 14000 3200 50  0001 C CNN
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
L power:+5V #PWR052
U 1 1 608C14A2
P 14100 1000
F 0 "#PWR052" H 14100 850 50  0001 C CNN
F 1 "+5V" H 14115 1173 50  0000 C CNN
F 2 "" H 14100 1000 50  0001 C CNN
F 3 "" H 14100 1000 50  0001 C CNN
	1    14100 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR053
U 1 1 608C1CF6
P 14100 1300
F 0 "#PWR053" H 14100 1050 50  0001 C CNN
F 1 "GND" V 14105 1127 50  0000 C CNN
F 2 "" H 14100 1300 50  0001 C CNN
F 3 "" H 14100 1300 50  0001 C CNN
	1    14100 1300
	1    0    0    -1  
$EndComp
Connection ~ 14800 1000
Connection ~ 14800 1300
$Comp
L power:GND #PWR063
U 1 1 608C2718
P 14750 7350
F 0 "#PWR063" H 14750 7100 50  0001 C CNN
F 1 "GND" V 14755 7177 50  0000 C CNN
F 2 "" H 14750 7350 50  0001 C CNN
F 3 "" H 14750 7350 50  0001 C CNN
	1    14750 7350
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR064
U 1 1 608C271E
P 14750 7450
F 0 "#PWR064" H 14750 7300 50  0001 C CNN
F 1 "+5V" H 14765 7623 50  0000 C CNN
F 2 "" H 14750 7450 50  0001 C CNN
F 3 "" H 14750 7450 50  0001 C CNN
	1    14750 7450
	-1   0    0    1   
$EndComp
Wire Wire Line
	14950 5650 14750 5650
Wire Wire Line
	14750 6250 15000 6250
Wire Wire Line
	13850 6050 14000 6050
Wire Wire Line
	15300 6150 14750 6150
Wire Wire Line
	14750 6450 15000 6450
Wire Wire Line
	14950 7150 14750 7150
Wire Wire Line
	14950 6650 14750 6650
Wire Wire Line
	14950 5500 14850 5500
Wire Wire Line
	14850 5500 14850 5550
Wire Wire Line
	14850 5550 14750 5550
Wire Wire Line
	13600 6150 14000 6150
$Comp
L wilson-z80:TRS80W-header J4
U 1 1 608C272F
P 14350 6450
F 0 "J4" H 14375 7615 50  0000 C CNN
F 1 "TRS80W-header" H 14375 7524 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 13850 7550 50  0001 C CNN
F 3 "" H 13850 7550 50  0001 C CNN
	1    14350 6450
	1    0    0    -1  
$EndComp
Text GLabel 14950 6650 2    50   Input ~ 0
CLK
Text GLabel 14750 6750 2    50   Input ~ 0
F_A0
Text GLabel 14750 6850 2    50   Input ~ 0
F_A1
Text GLabel 14000 7450 0    50   Input ~ 0
F_A2
Text GLabel 14000 7150 0    50   Input ~ 0
F_A3
Text GLabel 14750 7050 2    50   Input ~ 0
F_A4
Text GLabel 14750 7250 2    50   Input ~ 0
F_A5
Text GLabel 14000 7350 0    50   Input ~ 0
F_A6
Text GLabel 14000 7250 0    50   Input ~ 0
F_A7
Text GLabel 14750 6050 2    50   Input ~ 0
F_A8
Text GLabel 14750 6350 2    50   Input ~ 0
F_A9
Text GLabel 14000 5650 0    50   Input ~ 0
F_A10
Text GLabel 14750 5950 2    50   Input ~ 0
F_A11
Text GLabel 14750 5750 2    50   Input ~ 0
F_A12
Text GLabel 14000 5750 0    50   Input ~ 0
F_A13
Text GLabel 14000 5950 0    50   Input ~ 0
F_A14
Text GLabel 14750 5850 2    50   Input ~ 0
F_A15
Text GLabel 14000 6950 0    50   Input ~ 0
F_D0
Text GLabel 14000 6550 0    50   Input ~ 0
F_D1
Text GLabel 14000 7050 0    50   Input ~ 0
F_D2
Text GLabel 14000 6750 0    50   Input ~ 0
F_D3
Text GLabel 14000 6350 0    50   Input ~ 0
F_D4
Text GLabel 14000 6850 0    50   Input ~ 0
F_D5
Text GLabel 14000 6650 0    50   Input ~ 0
F_D6
Text GLabel 14000 6450 0    50   Input ~ 0
F_D7
$Comp
L power:GND #PWR062
U 1 1 608C274E
P 14750 6950
F 0 "#PWR062" H 14750 6700 50  0001 C CNN
F 1 "GND" V 14755 6777 50  0000 C CNN
F 2 "" H 14750 6950 50  0001 C CNN
F 3 "" H 14750 6950 50  0001 C CNN
	1    14750 6950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR058
U 1 1 608C2754
P 14000 5850
F 0 "#PWR058" H 14000 5600 50  0001 C CNN
F 1 "GND" V 14005 5677 50  0000 C CNN
F 2 "" H 14000 5850 50  0001 C CNN
F 3 "" H 14000 5850 50  0001 C CNN
	1    14000 5850
	0    1    1    0   
$EndComp
Text GLabel 13700 5550 0    50   Input ~ 0
~F_SYSRES~
Wire Wire Line
	13700 5550 14000 5550
Text GLabel 13850 6050 0    50   Input ~ 0
~F_OUT~
Text GLabel 13600 6150 0    50   Input ~ 0
~F_INTAK~
Text GLabel 14950 5500 2    50   Input ~ 0
~F_MREQ~
Text GLabel 14950 5650 2    50   Input ~ 0
~F_EXMEM~
Text GLabel 15300 6150 2    50   Input ~ 0
~F_WRITE~
Text GLabel 15000 6250 2    50   Input ~ 0
~F_READ~
Text GLabel 15000 6450 2    50   Input ~ 0
~F_IN~
Text GLabel 14750 6550 2    50   Input ~ 0
~F_INT~
Text GLabel 14950 7150 2    50   Input ~ 0
~F_WAIT~
Text GLabel 14000 6250 0    50   Input ~ 0
~F_INUSE~
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
L Connector_Generic:Conn_02x04_Odd_Even J2
U 1 1 609814CA
P 14350 7975
F 0 "J2" H 14400 8292 50  0000 C CNN
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
L power:GND #PWR046
U 1 1 6099924B
P 14700 7975
F 0 "#PWR046" H 14700 7725 50  0001 C CNN
F 1 "GND" V 14705 7802 50  0000 C CNN
F 2 "" H 14700 7975 50  0001 C CNN
F 3 "" H 14700 7975 50  0001 C CNN
	1    14700 7975
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14700 7975 14650 7975
$Comp
L power:+5V #PWR045
U 1 1 609A0640
P 14000 7875
F 0 "#PWR045" H 14000 7725 50  0001 C CNN
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
L Device:CP C8
U 1 1 60C909CF
P 15750 1150
F 0 "C8" H 15868 1196 50  0000 L CNN
F 1 "470uF" H 15868 1105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 15788 1000 50  0001 C CNN
F 3 "~" H 15750 1150 50  0001 C CNN
	1    15750 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C21
U 1 1 60CB3ED1
P 14800 1150
F 0 "C21" V 14915 1196 50  0000 L CNN
F 1 "100n" V 14650 1050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 14838 1000 50  0001 C CNN
F 3 "~" H 14800 1150 50  0001 C CNN
	1    14800 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 60CBF7D2
P 14450 1175
F 0 "C20" V 14565 1221 50  0000 L CNN
F 1 "100n" V 14300 1075 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 14488 1025 50  0001 C CNN
F 3 "~" H 14450 1175 50  0001 C CNN
	1    14450 1175
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 60CD1B1A
P 13325 8850
F 0 "C9" V 13440 8896 50  0000 L CNN
F 1 "100n" V 13175 8750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 13363 8700 50  0001 C CNN
F 3 "~" H 13325 8850 50  0001 C CNN
	1    13325 8850
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR065
U 1 1 60CD1B20
P 13175 8850
F 0 "#PWR065" H 13175 8700 50  0001 C CNN
F 1 "+5V" H 13190 9023 50  0000 C CNN
F 2 "" H 13175 8850 50  0001 C CNN
F 3 "" H 13175 8850 50  0001 C CNN
	1    13175 8850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR066
U 1 1 60CD1B26
P 13475 8850
F 0 "#PWR066" H 13475 8600 50  0001 C CNN
F 1 "GND" V 13480 8677 50  0000 C CNN
F 2 "" H 13475 8850 50  0001 C CNN
F 3 "" H 13475 8850 50  0001 C CNN
	1    13475 8850
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C11
U 1 1 60CD1B2C
P 13325 8500
F 0 "C11" V 13440 8546 50  0000 L CNN
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
L Device:C C15
U 1 1 60CD1B38
P 13325 7800
F 0 "C15" V 13440 7846 50  0000 L CNN
F 1 "100n" V 13175 7700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 13363 7650 50  0001 C CNN
F 3 "~" H 13325 7800 50  0001 C CNN
	1    13325 7800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C18
U 1 1 60CD1B3E
P 13325 7500
F 0 "C18" V 13440 7546 50  0000 L CNN
F 1 "100n" V 13175 7400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 13363 7350 50  0001 C CNN
F 3 "~" H 13325 7500 50  0001 C CNN
	1    13325 7500
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
L Device:CP C3
U 1 1 60BF1D60
P 14100 1150
F 0 "C3" H 14218 1196 50  0000 L CNN
F 1 "470uF" H 14218 1105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 14138 1000 50  0001 C CNN
F 3 "~" H 14100 1150 50  0001 C CNN
	1    14100 1150
	1    0    0    -1  
$EndComp
Connection ~ 14100 1000
Connection ~ 14100 1300
Wire Wire Line
	14100 1000 14800 1000
Wire Wire Line
	14100 1300 14800 1300
Wire Wire Line
	14800 1000 15750 1000
Wire Wire Line
	14800 1300 15750 1300
$EndSCHEMATC
