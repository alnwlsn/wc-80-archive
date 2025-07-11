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
P 5550 6025
F 0 "#PWR060" H 5550 5775 50  0001 C CNN
F 1 "GND" V 5555 5852 50  0000 C CNN
F 2 "" H 5550 6025 50  0001 C CNN
F 3 "" H 5550 6025 50  0001 C CNN
	1    5550 6025
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR061
U 1 1 607DD23E
P 5550 6125
F 0 "#PWR061" H 5550 5975 50  0001 C CNN
F 1 "+5V" H 5565 6298 50  0000 C CNN
F 2 "" H 5550 6125 50  0001 C CNN
F 3 "" H 5550 6125 50  0001 C CNN
	1    5550 6125
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 4325 5550 4325
Wire Wire Line
	5550 4925 5800 4925
Wire Wire Line
	4650 4725 4800 4725
Wire Wire Line
	6100 4825 5550 4825
Wire Wire Line
	5550 5125 5800 5125
Wire Wire Line
	5750 5825 5550 5825
Wire Wire Line
	5750 4175 5650 4175
Wire Wire Line
	5650 4175 5650 4225
Wire Wire Line
	5650 4225 5550 4225
Wire Wire Line
	4400 4825 4800 4825
$Comp
L wilson-z80:TRS80W-header J3
U 1 1 607DD279
P 5150 5125
F 0 "J3" H 5175 6290 50  0000 C CNN
F 1 "TRS80W-header" H 5175 6199 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 4650 6225 50  0001 C CNN
F 3 "" H 4650 6225 50  0001 C CNN
	1    5150 5125
	1    0    0    -1  
$EndComp
Text GLabel 5550 5425 2    50   Input ~ 0
F_A0
Text GLabel 5550 5525 2    50   Input ~ 0
F_A1
Text GLabel 4800 6125 0    50   Input ~ 0
F_A2
Text GLabel 4800 5825 0    50   Input ~ 0
F_A3
Text GLabel 5550 5925 2    50   Input ~ 0
F_A5
Text GLabel 4800 6025 0    50   Input ~ 0
F_A6
Text GLabel 4800 5925 0    50   Input ~ 0
F_A7
Text GLabel 5550 4725 2    50   Input ~ 0
F_A8
Text GLabel 5550 5025 2    50   Input ~ 0
F_A9
Text GLabel 4800 4325 0    50   Input ~ 0
F_A10
Text GLabel 5550 4625 2    50   Input ~ 0
F_A11
Text GLabel 5550 4425 2    50   Input ~ 0
F_A12
Text GLabel 4800 4425 0    50   Input ~ 0
F_A13
Text GLabel 4800 4625 0    50   Input ~ 0
F_A14
Text GLabel 5550 4525 2    50   Input ~ 0
F_A15
Text GLabel 4800 5625 0    50   Input ~ 0
F_D0
Text GLabel 4800 5225 0    50   Input ~ 0
F_D1
Text GLabel 4800 5725 0    50   Input ~ 0
F_D2
Text GLabel 4800 5425 0    50   Input ~ 0
F_D3
Text GLabel 4800 5025 0    50   Input ~ 0
F_D4
Text GLabel 4800 5525 0    50   Input ~ 0
F_D5
Text GLabel 4800 5325 0    50   Input ~ 0
F_D6
Text GLabel 4800 5125 0    50   Input ~ 0
F_D7
$Comp
L power:GND #PWR059
U 1 1 60820152
P 5550 5625
F 0 "#PWR059" H 5550 5375 50  0001 C CNN
F 1 "GND" V 5555 5452 50  0000 C CNN
F 2 "" H 5550 5625 50  0001 C CNN
F 3 "" H 5550 5625 50  0001 C CNN
	1    5550 5625
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR057
U 1 1 608206D8
P 4800 4525
F 0 "#PWR057" H 4800 4275 50  0001 C CNN
F 1 "GND" V 4805 4352 50  0000 C CNN
F 2 "" H 4800 4525 50  0001 C CNN
F 3 "" H 4800 4525 50  0001 C CNN
	1    4800 4525
	0    1    1    0   
$EndComp
Text GLabel 4500 4225 0    50   Input ~ 0
~F_SYSRES~
Wire Wire Line
	4500 4225 4800 4225
Text GLabel 4650 4725 0    50   Input ~ 0
~F_OUT~
Text GLabel 4400 4825 0    50   Input ~ 0
~F_INTAK~
Text GLabel 5750 4175 2    50   Input ~ 0
~F_MREQ~
Text GLabel 5750 4325 2    50   Input ~ 0
~F_EXMEM~
Text GLabel 6100 4825 2    50   Input ~ 0
~F_WRITE~
Text GLabel 5800 4925 2    50   Input ~ 0
~F_READ~
Text GLabel 5800 5125 2    50   Input ~ 0
~F_IN~
Text GLabel 5550 5225 2    50   Input ~ 0
~F_INT~
Text GLabel 5750 5825 2    50   Input ~ 0
~F_WAIT~
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
P 2925 5675
F 0 "#PWR063" H 2925 5425 50  0001 C CNN
F 1 "GND" V 2930 5502 50  0000 C CNN
F 2 "" H 2925 5675 50  0001 C CNN
F 3 "" H 2925 5675 50  0001 C CNN
	1    2925 5675
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2925 4575 3175 4575
Wire Wire Line
	2025 4375 2175 4375
Wire Wire Line
	3475 4475 2925 4475
Wire Wire Line
	2925 4775 3175 4775
Wire Wire Line
	3125 5475 2925 5475
Wire Wire Line
	3125 3825 3025 3825
Wire Wire Line
	3025 3825 3025 3875
Wire Wire Line
	3025 3875 2925 3875
Wire Wire Line
	1775 4475 2175 4475
$Comp
L wilson-z80:TRS80W-header J4
U 1 1 608C272F
P 2525 4775
F 0 "J4" H 2550 5940 50  0000 C CNN
F 1 "TRS-80" H 2550 5849 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 2025 5875 50  0001 C CNN
F 3 "" H 2025 5875 50  0001 C CNN
	1    2525 4775
	1    0    0    -1  
$EndComp
Text GLabel 2925 5075 2    50   Input ~ 0
A0
Text GLabel 2925 5175 2    50   Input ~ 0
A1
Text GLabel 2175 5775 0    50   Input ~ 0
A2
Text GLabel 2175 5475 0    50   Input ~ 0
A3
Text GLabel 2925 5375 2    50   Input ~ 0
A4
Text GLabel 2925 5575 2    50   Input ~ 0
A5
Text GLabel 2175 5675 0    50   Input ~ 0
A6
Text GLabel 2175 5575 0    50   Input ~ 0
A7
Text GLabel 2925 4375 2    50   Input ~ 0
A8
Text GLabel 2925 4675 2    50   Input ~ 0
A9
Text GLabel 2175 3975 0    50   Input ~ 0
A10
Text GLabel 2925 4275 2    50   Input ~ 0
A11
Text GLabel 2925 4075 2    50   Input ~ 0
A12
Text GLabel 2175 4075 0    50   Input ~ 0
A13
Text GLabel 2175 4275 0    50   Input ~ 0
A14
Text GLabel 2925 4175 2    50   Input ~ 0
A15
Text GLabel 2175 5275 0    50   Input ~ 0
D0
Text GLabel 2175 4875 0    50   Input ~ 0
D1
Text GLabel 2175 5375 0    50   Input ~ 0
D2
Text GLabel 2175 5075 0    50   Input ~ 0
D3
Text GLabel 2175 4675 0    50   Input ~ 0
D4
Text GLabel 2175 5175 0    50   Input ~ 0
D5
Text GLabel 2175 4975 0    50   Input ~ 0
D6
Text GLabel 2175 4775 0    50   Input ~ 0
D7
$Comp
L power:GND #PWR062
U 1 1 608C274E
P 2925 5275
F 0 "#PWR062" H 2925 5025 50  0001 C CNN
F 1 "GND" V 2930 5102 50  0000 C CNN
F 2 "" H 2925 5275 50  0001 C CNN
F 3 "" H 2925 5275 50  0001 C CNN
	1    2925 5275
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR058
U 1 1 608C2754
P 2175 4175
F 0 "#PWR058" H 2175 3925 50  0001 C CNN
F 1 "GND" V 2180 4002 50  0000 C CNN
F 2 "" H 2175 4175 50  0001 C CNN
F 3 "" H 2175 4175 50  0001 C CNN
	1    2175 4175
	0    1    1    0   
$EndComp
Text GLabel 1875 3875 0    50   Input ~ 0
~SYSRES~
Wire Wire Line
	1875 3875 2175 3875
Text GLabel 2025 4375 0    50   Input ~ 0
~OUT~
Text GLabel 1775 4475 0    50   Input ~ 0
~INTAK~
Text GLabel 3125 3825 2    50   Input ~ 0
~MREQ~
Text GLabel 3475 4475 2    50   Input ~ 0
~WRITE~
Text GLabel 3175 4575 2    50   Input ~ 0
~READ~
Text GLabel 3175 4775 2    50   Input ~ 0
~IN~
Text GLabel 2925 4875 2    50   Input ~ 0
~INT~
Text GLabel 3125 5475 2    50   Input ~ 0
~WAIT~
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
P 14450 1150
F 0 "C20" V 14565 1196 50  0000 L CNN
F 1 "100n" V 14300 1050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 14488 1000 50  0001 C CNN
F 3 "~" H 14450 1150 50  0001 C CNN
	1    14450 1150
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
	14100 1000 14450 1000
Wire Wire Line
	14100 1300 14450 1300
Wire Wire Line
	14800 1000 15750 1000
Wire Wire Line
	14800 1300 15750 1300
NoConn ~ 2925 3975
NoConn ~ 2175 4575
NoConn ~ 2925 4975
NoConn ~ 2925 5775
$Comp
L power:+5V #PWR0101
U 1 1 60BDE693
P 2800 6925
F 0 "#PWR0101" H 2800 6775 50  0001 C CNN
F 1 "+5V" H 2815 7098 50  0000 C CNN
F 2 "" H 2800 6925 50  0001 C CNN
F 3 "" H 2800 6925 50  0001 C CNN
	1    2800 6925
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60BDF562
P 2200 8025
F 0 "#PWR0102" H 2200 7775 50  0001 C CNN
F 1 "GND" V 2205 7852 50  0000 C CNN
F 2 "" H 2200 8025 50  0001 C CNN
F 3 "" H 2200 8025 50  0001 C CNN
	1    2200 8025
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS244 U2
U 1 1 60BE2241
P 7275 7950
F 0 "U2" H 7275 8931 50  0000 C CNN
F 1 "74LS244" H 7275 8840 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 7275 7950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls244.pdf" H 7275 7950 50  0001 C CNN
	1    7275 7950
	1    0    0    -1  
$EndComp
Text GLabel 5600 8075 2    50   Input ~ 0
D0
Text GLabel 5600 7675 2    50   Input ~ 0
D1
Text GLabel 5600 8175 2    50   Input ~ 0
D2
Text GLabel 5600 7875 2    50   Input ~ 0
D3
Text GLabel 5600 7475 2    50   Input ~ 0
D4
Text GLabel 5600 7975 2    50   Input ~ 0
D5
Text GLabel 5600 7775 2    50   Input ~ 0
D6
Text GLabel 5600 7575 2    50   Input ~ 0
D7
Text GLabel 4600 7675 0    50   Input ~ 0
F_D1
Text GLabel 4600 8175 0    50   Input ~ 0
F_D2
Text GLabel 4600 7875 0    50   Input ~ 0
F_D3
Text GLabel 4600 7475 0    50   Input ~ 0
F_D4
Text GLabel 4600 7975 0    50   Input ~ 0
F_D5
Text GLabel 4600 7775 0    50   Input ~ 0
F_D6
Text GLabel 4600 7575 0    50   Input ~ 0
F_D7
$Comp
L power:+5V #PWR0105
U 1 1 60BEBB92
P 7275 7150
F 0 "#PWR0105" H 7275 7000 50  0001 C CNN
F 1 "+5V" H 7290 7323 50  0000 C CNN
F 2 "" H 7275 7150 50  0001 C CNN
F 3 "" H 7275 7150 50  0001 C CNN
	1    7275 7150
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS245 U1
U 1 1 60BE1477
P 5100 7975
F 0 "U1" H 5100 8956 50  0000 C CNN
F 1 "74LS245" H 5100 8865 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 5100 7975 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 5100 7975 50  0001 C CNN
	1    5100 7975
	1    0    0    -1  
$EndComp
Text GLabel 6775 8450 0    50   Input ~ 0
~ISOLATE~
$Comp
L power:+5V #PWR0107
U 1 1 60C1F9F1
P 5100 7175
F 0 "#PWR0107" H 5100 7025 50  0001 C CNN
F 1 "+5V" H 5115 7348 50  0000 C CNN
F 2 "" H 5100 7175 50  0001 C CNN
F 3 "" H 5100 7175 50  0001 C CNN
	1    5100 7175
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 60BEBB8C
P 5100 8775
F 0 "#PWR0104" H 5100 8525 50  0001 C CNN
F 1 "GND" V 5105 8602 50  0000 C CNN
F 2 "" H 5100 8775 50  0001 C CNN
F 3 "" H 5100 8775 50  0001 C CNN
	1    5100 8775
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 60C210C7
P 7275 8750
F 0 "#PWR0108" H 7275 8500 50  0001 C CNN
F 1 "GND" V 7280 8577 50  0000 C CNN
F 2 "" H 7275 8750 50  0001 C CNN
F 3 "" H 7275 8750 50  0001 C CNN
	1    7275 8750
	0    1    1    0   
$EndComp
Wire Wire Line
	6775 8450 6775 8350
Text GLabel 6775 7750 0    50   Input ~ 0
A2
Text GLabel 6775 7850 0    50   Input ~ 0
A6
Text GLabel 6775 7950 0    50   Input ~ 0
A7
Text GLabel 6775 7550 0    50   Input ~ 0
A3
Text GLabel 6775 7650 0    50   Input ~ 0
A5
Text GLabel 6775 8050 0    50   Input ~ 0
A4
Text GLabel 6775 7450 0    50   Input ~ 0
A1
Text GLabel 6775 8150 0    50   Input ~ 0
A0
Text GLabel 7775 7750 2    50   Input ~ 0
F_A2
Text GLabel 7775 7850 2    50   Input ~ 0
F_A6
Text GLabel 7775 7950 2    50   Input ~ 0
F_A7
Text GLabel 7775 7550 2    50   Input ~ 0
F_A3
Text GLabel 7775 7650 2    50   Input ~ 0
F_A5
Text GLabel 5550 5725 2    50   Input ~ 0
F_A4
Text GLabel 7775 8050 2    50   Input ~ 0
F_A4
Text GLabel 7775 7450 2    50   Input ~ 0
F_A1
Text GLabel 7775 8150 2    50   Input ~ 0
F_A0
$Comp
L 74xx:74LS244 U4
U 1 1 60C42993
P 7400 5275
F 0 "U4" H 7400 6256 50  0000 C CNN
F 1 "74LS244" H 7400 6165 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 7400 5275 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls244.pdf" H 7400 5275 50  0001 C CNN
	1    7400 5275
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 60C42999
P 7400 4475
F 0 "#PWR01" H 7400 4325 50  0001 C CNN
F 1 "+5V" H 7400 4625 50  0000 C CNN
F 2 "" H 7400 4475 50  0001 C CNN
F 3 "" H 7400 4475 50  0001 C CNN
	1    7400 4475
	0    1    1    0   
$EndComp
Text GLabel 6900 5775 0    50   Input ~ 0
~ISOLATE~
$Comp
L power:GND #PWR02
U 1 1 60C429A0
P 7400 6075
F 0 "#PWR02" H 7400 5825 50  0001 C CNN
F 1 "GND" V 7405 5902 50  0000 C CNN
F 2 "" H 7400 6075 50  0001 C CNN
F 3 "" H 7400 6075 50  0001 C CNN
	1    7400 6075
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 5775 6900 5675
Text GLabel 7900 5175 2    50   Input ~ 0
F_A8
Text GLabel 7900 5075 2    50   Input ~ 0
F_A9
Text GLabel 7900 5475 2    50   Input ~ 0
F_A10
Text GLabel 7900 4975 2    50   Input ~ 0
F_A11
Text GLabel 7900 5375 2    50   Input ~ 0
F_A12
Text GLabel 7900 4775 2    50   Input ~ 0
F_A13
Text GLabel 7900 5275 2    50   Input ~ 0
F_A14
Text GLabel 7900 4875 2    50   Input ~ 0
F_A15
Text GLabel 6900 4775 0    50   Input ~ 0
A13
Text GLabel 6900 5475 0    50   Input ~ 0
A10
Text GLabel 6900 5275 0    50   Input ~ 0
A14
Text GLabel 6900 5375 0    50   Input ~ 0
A12
Text GLabel 6900 4875 0    50   Input ~ 0
A15
Text GLabel 6900 4975 0    50   Input ~ 0
A11
Text GLabel 6900 5175 0    50   Input ~ 0
A8
Text GLabel 6900 5075 0    50   Input ~ 0
A9
$Comp
L 74xx:74LS244 U5
U 1 1 60C57177
P 2750 2575
F 0 "U5" H 2750 3556 50  0000 C CNN
F 1 "74LS244" H 2750 3465 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 2750 2575 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls244.pdf" H 2750 2575 50  0001 C CNN
	1    2750 2575
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 60C5717D
P 2750 1775
F 0 "#PWR03" H 2750 1625 50  0001 C CNN
F 1 "+5V" H 2750 1925 50  0000 C CNN
F 2 "" H 2750 1775 50  0001 C CNN
F 3 "" H 2750 1775 50  0001 C CNN
	1    2750 1775
	0    1    1    0   
$EndComp
Text GLabel 2250 3075 0    50   Input ~ 0
~ISOLATE~
$Comp
L power:GND #PWR04
U 1 1 60C57184
P 2750 3375
F 0 "#PWR04" H 2750 3125 50  0001 C CNN
F 1 "GND" V 2755 3202 50  0000 C CNN
F 2 "" H 2750 3375 50  0001 C CNN
F 3 "" H 2750 3375 50  0001 C CNN
	1    2750 3375
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 3075 2250 2975
Text GLabel 3250 2075 2    50   Input ~ 0
~F_MREQ~
Text GLabel 3250 2775 2    50   Input ~ 0
~F_SYSRES~
Text GLabel 3250 2575 2    50   Input ~ 0
~F_WRITE~
Text GLabel 3250 2275 2    50   Input ~ 0
~F_READ~
Text GLabel 3250 2375 2    50   Input ~ 0
~F_IN~
Text GLabel 2250 2475 0    50   Input ~ 0
~F_INT~
Text GLabel 2250 2175 0    50   Input ~ 0
~F_WAIT~
Text GLabel 4000 1650 2    50   Input ~ 0
~F_INTAK~
Text GLabel 3250 2675 2    50   Input ~ 0
~F_OUT~
Text GLabel 2250 2075 0    50   Input ~ 0
~MREQ~
Text GLabel 3250 2175 2    50   Input ~ 0
~WAIT~
Text GLabel 2200 7025 0    50   Input ~ 0
~READ~
Text GLabel 2200 7125 0    50   Input ~ 0
~IN~
Text GLabel 3250 2475 2    50   Input ~ 0
~INT~
Text GLabel 2250 2775 0    50   Input ~ 0
~SYSRES~
Text GLabel 3850 1650 0    50   Input ~ 0
~INTAK~
$Comp
L Device:R R2
U 1 1 60C78E08
P 4925 2500
F 0 "R2" H 4995 2546 50  0000 L CNN
F 1 "R" H 4995 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4855 2500 50  0001 C CNN
F 3 "~" H 4925 2500 50  0001 C CNN
	1    4925 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60C794ED
P 4600 2500
F 0 "R1" H 4670 2546 50  0000 L CNN
F 1 "R" H 4670 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4530 2500 50  0001 C CNN
F 3 "~" H 4600 2500 50  0001 C CNN
	1    4600 2500
	1    0    0    -1  
$EndComp
Text GLabel 4925 2650 3    50   Input ~ 0
~F_INT~
Text GLabel 4600 2650 3    50   Input ~ 0
~F_WAIT~
$Comp
L power:+5V #PWR05
U 1 1 60C7C04D
P 4600 2350
F 0 "#PWR05" H 4600 2200 50  0001 C CNN
F 1 "+5V" H 4600 2500 50  0000 C CNN
F 2 "" H 4600 2350 50  0001 C CNN
F 3 "" H 4600 2350 50  0001 C CNN
	1    4600 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 60C7D266
P 4925 2350
F 0 "#PWR06" H 4925 2200 50  0001 C CNN
F 1 "+5V" H 4925 2500 50  0000 C CNN
F 2 "" H 4925 2350 50  0001 C CNN
F 3 "" H 4925 2350 50  0001 C CNN
	1    4925 2350
	1    0    0    -1  
$EndComp
Text GLabel 4600 8475 0    50   Input ~ 0
~ISOLATE~
Text GLabel 5325 2625 3    50   Input ~ 0
~ISOLATE~
$Comp
L Device:R R3
U 1 1 60C87462
P 5325 2475
F 0 "R3" H 5395 2521 50  0000 L CNN
F 1 "R" H 5395 2430 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5255 2475 50  0001 C CNN
F 3 "~" H 5325 2475 50  0001 C CNN
	1    5325 2475
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 60C87468
P 5325 2325
F 0 "#PWR0103" H 5325 2175 50  0001 C CNN
F 1 "+5V" H 5325 2475 50  0000 C CNN
F 2 "" H 5325 2325 50  0001 C CNN
F 3 "" H 5325 2325 50  0001 C CNN
	1    5325 2325
	1    0    0    -1  
$EndComp
$Comp
L wilson-z80:ATF22V10C U3
U 1 1 60BD199B
P 2500 7225
F 0 "U3" H 2500 7790 50  0000 C CNN
F 1 "ATF22V10C" H 2500 7699 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W7.62mm_Socket" H 2500 6225 50  0001 C CNN
F 3 "" H 2500 7225 50  0001 C CNN
	1    2500 7225
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 7525 3950 7525
Wire Wire Line
	3950 7525 3950 8375
Wire Wire Line
	3950 8375 4600 8375
Text GLabel 2200 7325 0    50   Input ~ 0
F_A15
Text GLabel 4600 8075 0    50   Input ~ 0
F_D0
Text GLabel 2200 7925 0    50   Input ~ 0
F_A2
Text GLabel 2200 7825 0    50   Input ~ 0
F_A6
Text GLabel 2200 7625 0    50   Input ~ 0
F_A7
Text GLabel 2200 7525 0    50   Input ~ 0
F_A3
Text GLabel 2200 7725 0    50   Input ~ 0
F_A5
Text GLabel 2200 7425 0    50   Input ~ 0
F_A4
Text GLabel 2800 8025 2    50   Input ~ 0
F_A1
Text GLabel 2800 7925 2    50   Input ~ 0
F_A0
Text GLabel 2800 7825 2    50   Input ~ 0
F_A14
Text GLabel 2800 7225 2    50   Input ~ 0
F_A11
Text GLabel 2800 7125 2    50   Input ~ 0
F_A12
Text GLabel 2800 7025 2    50   Input ~ 0
F_A13
Wire Wire Line
	3850 1650 4000 1650
$Comp
L Device:C C5
U 1 1 60C1F8DD
P 13325 7150
F 0 "C5" V 13440 7196 50  0000 L CNN
F 1 "100n" V 13175 7050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 13363 7000 50  0001 C CNN
F 3 "~" H 13325 7150 50  0001 C CNN
	1    13325 7150
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C4
U 1 1 60C1FDDD
P 13325 6800
F 0 "C4" V 13440 6846 50  0000 L CNN
F 1 "100n" V 13175 6700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 13363 6650 50  0001 C CNN
F 3 "~" H 13325 6800 50  0001 C CNN
	1    13325 6800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 60C202A0
P 13325 6475
F 0 "C2" V 13440 6521 50  0000 L CNN
F 1 "100n" V 13175 6375 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 13363 6325 50  0001 C CNN
F 3 "~" H 13325 6475 50  0001 C CNN
	1    13325 6475
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 60C20BFE
P 13325 6175
F 0 "C1" V 13440 6221 50  0000 L CNN
F 1 "100n" V 13175 6075 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 13363 6025 50  0001 C CNN
F 3 "~" H 13325 6175 50  0001 C CNN
	1    13325 6175
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13175 6175 13175 6475
Connection ~ 13175 7500
Connection ~ 13175 7150
Wire Wire Line
	13175 7150 13175 7500
Connection ~ 13175 6475
Wire Wire Line
	13175 6475 13175 6800
Connection ~ 13175 6800
Wire Wire Line
	13175 6800 13175 7150
Wire Wire Line
	13475 6175 13475 6475
Connection ~ 13475 7500
Connection ~ 13475 6475
Wire Wire Line
	13475 6475 13475 6800
Connection ~ 13475 6800
Wire Wire Line
	13475 6800 13475 7150
Connection ~ 13475 7150
Wire Wire Line
	13475 7150 13475 7500
$Comp
L Device:Jumper JP1
U 1 1 60C29CDD
P 9300 6450
F 0 "JP1" H 9300 6714 50  0000 C CNN
F 1 "ISOLATE" H 9300 6623 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9300 6450 50  0001 C CNN
F 3 "~" H 9300 6450 50  0001 C CNN
	1    9300 6450
	1    0    0    -1  
$EndComp
Text GLabel 8850 6450 0    50   Input ~ 0
~ISOLATE~
$Comp
L Device:R R4
U 1 1 60C2F044
P 8975 6100
F 0 "R4" H 9045 6146 50  0000 L CNN
F 1 "R" H 9045 6055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8905 6100 50  0001 C CNN
F 3 "~" H 8975 6100 50  0001 C CNN
	1    8975 6100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 60C2F04A
P 8975 5950
F 0 "#PWR015" H 8975 5800 50  0001 C CNN
F 1 "+5V" H 8975 6100 50  0000 C CNN
F 2 "" H 8975 5950 50  0001 C CNN
F 3 "" H 8975 5950 50  0001 C CNN
	1    8975 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 6450 8975 6450
Wire Wire Line
	8975 6250 8975 6450
Connection ~ 8975 6450
Wire Wire Line
	8975 6450 8850 6450
$Comp
L power:GND #PWR016
U 1 1 60C32606
P 9600 6450
F 0 "#PWR016" H 9600 6200 50  0001 C CNN
F 1 "GND" V 9605 6277 50  0000 C CNN
F 2 "" H 9600 6450 50  0001 C CNN
F 3 "" H 9600 6450 50  0001 C CNN
	1    9600 6450
	0    -1   -1   0   
$EndComp
$Comp
L Device:Jumper JP2
U 1 1 60C34A7F
P 9300 7250
F 0 "JP2" H 9300 7514 50  0000 C CNN
F 1 "EXMEM" H 9300 7423 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9300 7250 50  0001 C CNN
F 3 "~" H 9300 7250 50  0001 C CNN
	1    9300 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 60C34A86
P 8975 6900
F 0 "R5" H 9045 6946 50  0000 L CNN
F 1 "R" H 9045 6855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8905 6900 50  0001 C CNN
F 3 "~" H 8975 6900 50  0001 C CNN
	1    8975 6900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR017
U 1 1 60C34A8C
P 8975 6750
F 0 "#PWR017" H 8975 6600 50  0001 C CNN
F 1 "+5V" H 8975 6900 50  0000 C CNN
F 2 "" H 8975 6750 50  0001 C CNN
F 3 "" H 8975 6750 50  0001 C CNN
	1    8975 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 7250 8975 7250
Wire Wire Line
	8975 7050 8975 7250
Connection ~ 8975 7250
Wire Wire Line
	8975 7250 8850 7250
$Comp
L power:GND #PWR018
U 1 1 60C34A96
P 9600 7250
F 0 "#PWR018" H 9600 7000 50  0001 C CNN
F 1 "GND" V 9605 7077 50  0000 C CNN
F 2 "" H 9600 7250 50  0001 C CNN
F 3 "" H 9600 7250 50  0001 C CNN
	1    9600 7250
	0    -1   -1   0   
$EndComp
Text GLabel 8850 7250 0    50   Input ~ 0
~F_EXMEM~
NoConn ~ 5550 5325
NoConn ~ 4800 4925
NoConn ~ 14150 8075
NoConn ~ 14150 8175
NoConn ~ 14125 2075
NoConn ~ 14125 2175
NoConn ~ 14125 2275
NoConn ~ 14125 2375
NoConn ~ 14625 2375
NoConn ~ 14625 2275
NoConn ~ 14625 2175
NoConn ~ 14625 2075
Connection ~ 14450 1000
Wire Wire Line
	14450 1000 14800 1000
Connection ~ 14450 1300
Wire Wire Line
	14450 1300 14800 1300
Text GLabel 2200 7225 0    50   Input ~ 0
~WRITE~
Text GLabel 2200 6925 0    50   Input ~ 0
~OUT~
Text GLabel 2800 7325 2    50   Input ~ 0
~IOUT~
Text GLabel 2800 7425 2    50   Input ~ 0
~IREAD~
Text GLabel 2800 7625 2    50   Input ~ 0
~IIN~
Text GLabel 2800 7725 2    50   Input ~ 0
~IWRITE~
Text GLabel 2250 2600 0    50   Input ~ 0
~IWRITE~
Text GLabel 2250 2275 0    50   Input ~ 0
~IREAD~
Text GLabel 2250 2675 0    50   Input ~ 0
~IOUT~
Text GLabel 2250 2375 0    50   Input ~ 0
~IIN~
Text Notes 1875 7225 1    50   ~ 0
BUFFER THESE
Text Notes 4150 1550 2    50   ~ 0
BUFFER THESE
$EndSCHEMATC
