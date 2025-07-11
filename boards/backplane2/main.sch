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
WC-80 Z80 Computer Project\nAlan Wilson 2021
$Comp
L power:GND #PWR060
U 1 1 607DD22C
P 2175 3400
F 0 "#PWR060" H 2175 3150 50  0001 C CNN
F 1 "GND" V 2180 3227 50  0000 C CNN
F 2 "" H 2175 3400 50  0001 C CNN
F 3 "" H 2175 3400 50  0001 C CNN
	1    2175 3400
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR061
U 1 1 607DD23E
P 2175 3500
F 0 "#PWR061" H 2175 3350 50  0001 C CNN
F 1 "+5V" H 2190 3673 50  0000 C CNN
F 2 "" H 2175 3500 50  0001 C CNN
F 3 "" H 2175 3500 50  0001 C CNN
	1    2175 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2375 1700 2175 1700
Wire Wire Line
	2175 2300 2425 2300
Wire Wire Line
	1275 2100 1425 2100
Wire Wire Line
	2725 2200 2175 2200
Wire Wire Line
	2175 2500 2425 2500
Wire Wire Line
	2375 3200 2175 3200
Wire Wire Line
	2375 2700 2175 2700
Wire Wire Line
	2375 1550 2275 1550
Wire Wire Line
	2275 1550 2275 1600
Wire Wire Line
	2275 1600 2175 1600
Wire Wire Line
	1025 2200 1425 2200
$Comp
L wilson-z80:TRS80W-header J3
U 1 1 607DD279
P 1775 2500
F 0 "J3" H 1800 3665 50  0000 C CNN
F 1 "TRS80W-header" H 1800 3574 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 1275 3600 50  0001 C CNN
F 3 "" H 1275 3600 50  0001 C CNN
	1    1775 2500
	1    0    0    -1  
$EndComp
Text GLabel 2375 2700 2    50   Input ~ 0
CLK
Text GLabel 2175 2800 2    50   Input ~ 0
F_A0
Text GLabel 2175 2900 2    50   Input ~ 0
F_A1
Text GLabel 1425 3500 0    50   Input ~ 0
F_A2
Text GLabel 1425 3200 0    50   Input ~ 0
F_A3
Text GLabel 2175 3100 2    50   Input ~ 0
F_A4
Text GLabel 2175 3300 2    50   Input ~ 0
F_A5
Text GLabel 1425 3400 0    50   Input ~ 0
F_A6
Text GLabel 1425 3300 0    50   Input ~ 0
F_A7
Text GLabel 2175 2100 2    50   Input ~ 0
F_A8
Text GLabel 2175 2400 2    50   Input ~ 0
F_A9
Text GLabel 1425 1700 0    50   Input ~ 0
F_A10
Text GLabel 2175 2000 2    50   Input ~ 0
F_A11
Text GLabel 2175 1800 2    50   Input ~ 0
F_A12
Text GLabel 1425 1800 0    50   Input ~ 0
F_A13
Text GLabel 1425 2000 0    50   Input ~ 0
F_A14
Text GLabel 2175 1900 2    50   Input ~ 0
F_A15
Text GLabel 1425 3000 0    50   Input ~ 0
F_D0
Text GLabel 1425 2600 0    50   Input ~ 0
F_D1
Text GLabel 1425 3100 0    50   Input ~ 0
F_D2
Text GLabel 1425 2800 0    50   Input ~ 0
F_D3
Text GLabel 1425 2400 0    50   Input ~ 0
F_D4
Text GLabel 1425 2900 0    50   Input ~ 0
F_D5
Text GLabel 1425 2700 0    50   Input ~ 0
F_D6
Text GLabel 1425 2500 0    50   Input ~ 0
F_D7
$Comp
L power:GND #PWR059
U 1 1 60820152
P 2175 3000
F 0 "#PWR059" H 2175 2750 50  0001 C CNN
F 1 "GND" V 2180 2827 50  0000 C CNN
F 2 "" H 2175 3000 50  0001 C CNN
F 3 "" H 2175 3000 50  0001 C CNN
	1    2175 3000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR057
U 1 1 608206D8
P 1425 1900
F 0 "#PWR057" H 1425 1650 50  0001 C CNN
F 1 "GND" V 1430 1727 50  0000 C CNN
F 2 "" H 1425 1900 50  0001 C CNN
F 3 "" H 1425 1900 50  0001 C CNN
	1    1425 1900
	0    1    1    0   
$EndComp
Text GLabel 1125 1600 0    50   Input ~ 0
~F_SYSRES~
Wire Wire Line
	1125 1600 1425 1600
Text GLabel 1275 2100 0    50   Input ~ 0
~F_OUT~
Text GLabel 1025 2200 0    50   Input ~ 0
~F_INTAK~
Text GLabel 2375 1550 2    50   Input ~ 0
~F_MREQ~
Text GLabel 2375 1700 2    50   Input ~ 0
~F_EXMEM~
Text GLabel 2725 2200 2    50   Input ~ 0
~F_WRITE~
Text GLabel 2425 2300 2    50   Input ~ 0
~F_READ~
Text GLabel 2425 2500 2    50   Input ~ 0
~F_IN~
Text GLabel 2175 2600 2    50   Input ~ 0
~F_INT~
Text GLabel 2375 3200 2    50   Input ~ 0
~F_WAIT~
Text GLabel 1425 2300 0    50   Input ~ 0
~F_INUSE~
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J2
U 1 1 609814CA
P 1750 1025
F 0 "J2" H 1800 1342 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 1800 1251 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 1750 1025 50  0001 C CNN
F 3 "~" H 1750 1025 50  0001 C CNN
	1    1750 1025
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J1
U 1 1 60982D72
P 1850 4100
F 0 "J1" H 1900 3675 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 1900 3766 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 1850 4100 50  0001 C CNN
F 3 "~" H 1850 4100 50  0001 C CNN
	1    1850 4100
	-1   0    0    1   
$EndComp
Text GLabel 1550 3900 0    50   Input ~ 0
C8
Text GLabel 2050 3900 2    50   Input ~ 0
C7
Text GLabel 1550 4000 0    50   Input ~ 0
C6
Text GLabel 2050 4000 2    50   Input ~ 0
C5
Text GLabel 1550 4100 0    50   Input ~ 0
C4
Text GLabel 2050 4100 2    50   Input ~ 0
C3
Text GLabel 1550 4200 0    50   Input ~ 0
C2
Text GLabel 2050 4200 2    50   Input ~ 0
C1
Text GLabel 1550 925  0    50   Input ~ 0
+5V
Text GLabel 2050 925  2    50   Input ~ 0
GND
Text GLabel 1550 1125 0    50   Input ~ 0
-5
Text GLabel 1550 1225 0    50   Input ~ 0
+12
Wire Wire Line
	1550 925  1550 1025
Wire Wire Line
	2050 925  2050 1025
Wire Wire Line
	2050 1025 2050 1125
Connection ~ 2050 1025
Wire Wire Line
	2050 1125 2050 1225
Connection ~ 2050 1125
$Comp
L power:GND #PWR0101
U 1 1 60B389FB
P 2175 7075
F 0 "#PWR0101" H 2175 6825 50  0001 C CNN
F 1 "GND" V 2180 6902 50  0000 C CNN
F 2 "" H 2175 7075 50  0001 C CNN
F 3 "" H 2175 7075 50  0001 C CNN
	1    2175 7075
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 60B38A01
P 2175 7175
F 0 "#PWR0102" H 2175 7025 50  0001 C CNN
F 1 "+5V" H 2190 7348 50  0000 C CNN
F 2 "" H 2175 7175 50  0001 C CNN
F 3 "" H 2175 7175 50  0001 C CNN
	1    2175 7175
	-1   0    0    1   
$EndComp
Wire Wire Line
	2375 5375 2175 5375
Wire Wire Line
	2175 5975 2425 5975
Wire Wire Line
	1275 5775 1425 5775
Wire Wire Line
	2725 5875 2175 5875
Wire Wire Line
	2175 6175 2425 6175
Wire Wire Line
	2375 6875 2175 6875
Wire Wire Line
	2375 6375 2175 6375
Wire Wire Line
	2375 5225 2275 5225
Wire Wire Line
	2275 5225 2275 5275
Wire Wire Line
	2275 5275 2175 5275
Wire Wire Line
	1025 5875 1425 5875
$Comp
L wilson-z80:TRS80W-header J25
U 1 1 60B38A12
P 1775 6175
F 0 "J25" H 1800 7340 50  0000 C CNN
F 1 "TRS80W-header" H 1800 7249 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 1275 7275 50  0001 C CNN
F 3 "" H 1275 7275 50  0001 C CNN
	1    1775 6175
	1    0    0    -1  
$EndComp
Text GLabel 2375 6375 2    50   Input ~ 0
CLK
Text GLabel 2175 6475 2    50   Input ~ 0
F_A0
Text GLabel 2175 6575 2    50   Input ~ 0
F_A1
Text GLabel 1425 7175 0    50   Input ~ 0
F_A2
Text GLabel 1425 6875 0    50   Input ~ 0
F_A3
Text GLabel 2175 6775 2    50   Input ~ 0
F_A4
Text GLabel 2175 6975 2    50   Input ~ 0
F_A5
Text GLabel 1425 7075 0    50   Input ~ 0
F_A6
Text GLabel 1425 6975 0    50   Input ~ 0
F_A7
Text GLabel 2175 5775 2    50   Input ~ 0
F_A8
Text GLabel 2175 6075 2    50   Input ~ 0
F_A9
Text GLabel 1425 5375 0    50   Input ~ 0
F_A10
Text GLabel 2175 5675 2    50   Input ~ 0
F_A11
Text GLabel 2175 5475 2    50   Input ~ 0
F_A12
Text GLabel 1425 5475 0    50   Input ~ 0
F_A13
Text GLabel 1425 5675 0    50   Input ~ 0
F_A14
Text GLabel 2175 5575 2    50   Input ~ 0
F_A15
Text GLabel 1425 6675 0    50   Input ~ 0
F_D0
Text GLabel 1425 6275 0    50   Input ~ 0
F_D1
Text GLabel 1425 6775 0    50   Input ~ 0
F_D2
Text GLabel 1425 6475 0    50   Input ~ 0
F_D3
Text GLabel 1425 6075 0    50   Input ~ 0
F_D4
Text GLabel 1425 6575 0    50   Input ~ 0
F_D5
Text GLabel 1425 6375 0    50   Input ~ 0
F_D6
Text GLabel 1425 6175 0    50   Input ~ 0
F_D7
$Comp
L power:GND #PWR0103
U 1 1 60B38A31
P 2175 6675
F 0 "#PWR0103" H 2175 6425 50  0001 C CNN
F 1 "GND" V 2180 6502 50  0000 C CNN
F 2 "" H 2175 6675 50  0001 C CNN
F 3 "" H 2175 6675 50  0001 C CNN
	1    2175 6675
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 60B38A37
P 1425 5575
F 0 "#PWR0104" H 1425 5325 50  0001 C CNN
F 1 "GND" V 1430 5402 50  0000 C CNN
F 2 "" H 1425 5575 50  0001 C CNN
F 3 "" H 1425 5575 50  0001 C CNN
	1    1425 5575
	0    1    1    0   
$EndComp
Text GLabel 1125 5275 0    50   Input ~ 0
~F_SYSRES~
Wire Wire Line
	1125 5275 1425 5275
Text GLabel 1275 5775 0    50   Input ~ 0
~F_OUT~
Text GLabel 1025 5875 0    50   Input ~ 0
~F_INTAK~
Text GLabel 2375 5225 2    50   Input ~ 0
~F_MREQ~
Text GLabel 2375 5375 2    50   Input ~ 0
~F_EXMEM~
Text GLabel 2725 5875 2    50   Input ~ 0
~F_WRITE~
Text GLabel 2425 5975 2    50   Input ~ 0
~F_READ~
Text GLabel 2425 6175 2    50   Input ~ 0
~F_IN~
Text GLabel 2175 6275 2    50   Input ~ 0
~F_INT~
Text GLabel 2375 6875 2    50   Input ~ 0
~F_WAIT~
Text GLabel 1425 5975 0    50   Input ~ 0
~F_INUSE~
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J19
U 1 1 60B38A49
P 1750 4700
F 0 "J19" H 1800 5017 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 1800 4926 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 1750 4700 50  0001 C CNN
F 3 "~" H 1750 4700 50  0001 C CNN
	1    1750 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J31
U 1 1 60B38A4F
P 1850 7775
F 0 "J31" H 1900 7350 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 1900 7441 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 1850 7775 50  0001 C CNN
F 3 "~" H 1850 7775 50  0001 C CNN
	1    1850 7775
	-1   0    0    1   
$EndComp
Text GLabel 1550 7575 0    50   Input ~ 0
C8
Text GLabel 2050 7575 2    50   Input ~ 0
C7
Text GLabel 1550 7675 0    50   Input ~ 0
C6
Text GLabel 2050 7675 2    50   Input ~ 0
C5
Text GLabel 1550 7775 0    50   Input ~ 0
C4
Text GLabel 2050 7775 2    50   Input ~ 0
C3
Text GLabel 1550 7875 0    50   Input ~ 0
C2
Text GLabel 2050 7875 2    50   Input ~ 0
C1
Text GLabel 1550 4600 0    50   Input ~ 0
+5V
Text GLabel 2050 4600 2    50   Input ~ 0
GND
Text GLabel 1550 4800 0    50   Input ~ 0
-5
Text GLabel 1550 4900 0    50   Input ~ 0
+12
Wire Wire Line
	1550 4600 1550 4700
Wire Wire Line
	2050 4600 2050 4700
Wire Wire Line
	2050 4700 2050 4800
Connection ~ 2050 4700
Wire Wire Line
	2050 4800 2050 4900
Connection ~ 2050 4800
$Comp
L power:GND #PWR0105
U 1 1 60B5177F
P 4850 3400
F 0 "#PWR0105" H 4850 3150 50  0001 C CNN
F 1 "GND" V 4855 3227 50  0000 C CNN
F 2 "" H 4850 3400 50  0001 C CNN
F 3 "" H 4850 3400 50  0001 C CNN
	1    4850 3400
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 60B51785
P 4850 3500
F 0 "#PWR0106" H 4850 3350 50  0001 C CNN
F 1 "+5V" H 4865 3673 50  0000 C CNN
F 2 "" H 4850 3500 50  0001 C CNN
F 3 "" H 4850 3500 50  0001 C CNN
	1    4850 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5050 1700 4850 1700
Wire Wire Line
	4850 2300 5100 2300
Wire Wire Line
	3950 2100 4100 2100
Wire Wire Line
	5400 2200 4850 2200
Wire Wire Line
	4850 2500 5100 2500
Wire Wire Line
	5050 3200 4850 3200
Wire Wire Line
	5050 2700 4850 2700
Wire Wire Line
	5050 1550 4950 1550
Wire Wire Line
	4950 1550 4950 1600
Wire Wire Line
	4950 1600 4850 1600
Wire Wire Line
	3700 2200 4100 2200
$Comp
L wilson-z80:TRS80W-header J13
U 1 1 60B51796
P 4450 2500
F 0 "J13" H 4475 3665 50  0000 C CNN
F 1 "TRS80W-header" H 4475 3574 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 3950 3600 50  0001 C CNN
F 3 "" H 3950 3600 50  0001 C CNN
	1    4450 2500
	1    0    0    -1  
$EndComp
Text GLabel 5050 2700 2    50   Input ~ 0
CLK
Text GLabel 4850 2800 2    50   Input ~ 0
F_A0
Text GLabel 4850 2900 2    50   Input ~ 0
F_A1
Text GLabel 4100 3500 0    50   Input ~ 0
F_A2
Text GLabel 4100 3200 0    50   Input ~ 0
F_A3
Text GLabel 4850 3100 2    50   Input ~ 0
F_A4
Text GLabel 4850 3300 2    50   Input ~ 0
F_A5
Text GLabel 4100 3400 0    50   Input ~ 0
F_A6
Text GLabel 4100 3300 0    50   Input ~ 0
F_A7
Text GLabel 4850 2100 2    50   Input ~ 0
F_A8
Text GLabel 4850 2400 2    50   Input ~ 0
F_A9
Text GLabel 4100 1700 0    50   Input ~ 0
F_A10
Text GLabel 4850 2000 2    50   Input ~ 0
F_A11
Text GLabel 4850 1800 2    50   Input ~ 0
F_A12
Text GLabel 4100 1800 0    50   Input ~ 0
F_A13
Text GLabel 4100 2000 0    50   Input ~ 0
F_A14
Text GLabel 4850 1900 2    50   Input ~ 0
F_A15
Text GLabel 4100 3000 0    50   Input ~ 0
F_D0
Text GLabel 4100 2600 0    50   Input ~ 0
F_D1
Text GLabel 4100 3100 0    50   Input ~ 0
F_D2
Text GLabel 4100 2800 0    50   Input ~ 0
F_D3
Text GLabel 4100 2400 0    50   Input ~ 0
F_D4
Text GLabel 4100 2900 0    50   Input ~ 0
F_D5
Text GLabel 4100 2700 0    50   Input ~ 0
F_D6
Text GLabel 4100 2500 0    50   Input ~ 0
F_D7
$Comp
L power:GND #PWR0107
U 1 1 60B517B5
P 4850 3000
F 0 "#PWR0107" H 4850 2750 50  0001 C CNN
F 1 "GND" V 4855 2827 50  0000 C CNN
F 2 "" H 4850 3000 50  0001 C CNN
F 3 "" H 4850 3000 50  0001 C CNN
	1    4850 3000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 60B517BB
P 4100 1900
F 0 "#PWR0108" H 4100 1650 50  0001 C CNN
F 1 "GND" V 4105 1727 50  0000 C CNN
F 2 "" H 4100 1900 50  0001 C CNN
F 3 "" H 4100 1900 50  0001 C CNN
	1    4100 1900
	0    1    1    0   
$EndComp
Text GLabel 3800 1600 0    50   Input ~ 0
~F_SYSRES~
Wire Wire Line
	3800 1600 4100 1600
Text GLabel 3950 2100 0    50   Input ~ 0
~F_OUT~
Text GLabel 3700 2200 0    50   Input ~ 0
~F_INTAK~
Text GLabel 5050 1550 2    50   Input ~ 0
~F_MREQ~
Text GLabel 5050 1700 2    50   Input ~ 0
~F_EXMEM~
Text GLabel 5400 2200 2    50   Input ~ 0
~F_WRITE~
Text GLabel 5100 2300 2    50   Input ~ 0
~F_READ~
Text GLabel 5100 2500 2    50   Input ~ 0
~F_IN~
Text GLabel 4850 2600 2    50   Input ~ 0
~F_INT~
Text GLabel 5050 3200 2    50   Input ~ 0
~F_WAIT~
Text GLabel 4100 2300 0    50   Input ~ 0
~F_INUSE~
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J8
U 1 1 60B517CD
P 4425 1025
F 0 "J8" H 4475 1342 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 4475 1251 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 4425 1025 50  0001 C CNN
F 3 "~" H 4425 1025 50  0001 C CNN
	1    4425 1025
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J18
U 1 1 60B517D3
P 4525 4100
F 0 "J18" H 4575 3675 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 4575 3766 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 4525 4100 50  0001 C CNN
F 3 "~" H 4525 4100 50  0001 C CNN
	1    4525 4100
	-1   0    0    1   
$EndComp
Text GLabel 4225 3900 0    50   Input ~ 0
C8
Text GLabel 4725 3900 2    50   Input ~ 0
C7
Text GLabel 4225 4000 0    50   Input ~ 0
C6
Text GLabel 4725 4000 2    50   Input ~ 0
C5
Text GLabel 4225 4100 0    50   Input ~ 0
C4
Text GLabel 4725 4100 2    50   Input ~ 0
C3
Text GLabel 4225 4200 0    50   Input ~ 0
C2
Text GLabel 4725 4200 2    50   Input ~ 0
C1
Text GLabel 4225 925  0    50   Input ~ 0
+5V
Text GLabel 4725 925  2    50   Input ~ 0
GND
Text GLabel 4225 1125 0    50   Input ~ 0
-5
Text GLabel 4225 1225 0    50   Input ~ 0
+12
Wire Wire Line
	4225 925  4225 1025
Wire Wire Line
	4725 925  4725 1025
Wire Wire Line
	4725 1025 4725 1125
Connection ~ 4725 1025
Wire Wire Line
	4725 1125 4725 1225
Connection ~ 4725 1125
$Comp
L power:GND #PWR0109
U 1 1 60B5863B
P 4900 7325
F 0 "#PWR0109" H 4900 7075 50  0001 C CNN
F 1 "GND" V 4905 7152 50  0000 C CNN
F 2 "" H 4900 7325 50  0001 C CNN
F 3 "" H 4900 7325 50  0001 C CNN
	1    4900 7325
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 60B58641
P 4900 7425
F 0 "#PWR0110" H 4900 7275 50  0001 C CNN
F 1 "+5V" H 4915 7598 50  0000 C CNN
F 2 "" H 4900 7425 50  0001 C CNN
F 3 "" H 4900 7425 50  0001 C CNN
	1    4900 7425
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 5625 4900 5625
Wire Wire Line
	4900 6225 5150 6225
Wire Wire Line
	4000 6025 4150 6025
Wire Wire Line
	5450 6125 4900 6125
Wire Wire Line
	4900 6425 5150 6425
Wire Wire Line
	5100 7125 4900 7125
Wire Wire Line
	5100 6625 4900 6625
Wire Wire Line
	5100 5475 5000 5475
Wire Wire Line
	5000 5475 5000 5525
Wire Wire Line
	5000 5525 4900 5525
Wire Wire Line
	3750 6125 4150 6125
$Comp
L wilson-z80:TRS80W-header J26
U 1 1 60B58652
P 4500 6425
F 0 "J26" H 4525 7590 50  0000 C CNN
F 1 "TRS80W-header" H 4525 7499 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 4000 7525 50  0001 C CNN
F 3 "" H 4000 7525 50  0001 C CNN
	1    4500 6425
	1    0    0    -1  
$EndComp
Text GLabel 5100 6625 2    50   Input ~ 0
CLK
Text GLabel 4900 6725 2    50   Input ~ 0
F_A0
Text GLabel 4900 6825 2    50   Input ~ 0
F_A1
Text GLabel 4150 7425 0    50   Input ~ 0
F_A2
Text GLabel 4150 7125 0    50   Input ~ 0
F_A3
Text GLabel 4900 7025 2    50   Input ~ 0
F_A4
Text GLabel 4900 7225 2    50   Input ~ 0
F_A5
Text GLabel 4150 7325 0    50   Input ~ 0
F_A6
Text GLabel 4150 7225 0    50   Input ~ 0
F_A7
Text GLabel 4900 6025 2    50   Input ~ 0
F_A8
Text GLabel 4900 6325 2    50   Input ~ 0
F_A9
Text GLabel 4150 5625 0    50   Input ~ 0
F_A10
Text GLabel 4900 5925 2    50   Input ~ 0
F_A11
Text GLabel 4900 5725 2    50   Input ~ 0
F_A12
Text GLabel 4150 5725 0    50   Input ~ 0
F_A13
Text GLabel 4150 5925 0    50   Input ~ 0
F_A14
Text GLabel 4900 5825 2    50   Input ~ 0
F_A15
Text GLabel 4150 6925 0    50   Input ~ 0
F_D0
Text GLabel 4150 6525 0    50   Input ~ 0
F_D1
Text GLabel 4150 7025 0    50   Input ~ 0
F_D2
Text GLabel 4150 6725 0    50   Input ~ 0
F_D3
Text GLabel 4150 6325 0    50   Input ~ 0
F_D4
Text GLabel 4150 6825 0    50   Input ~ 0
F_D5
Text GLabel 4150 6625 0    50   Input ~ 0
F_D6
Text GLabel 4150 6425 0    50   Input ~ 0
F_D7
$Comp
L power:GND #PWR0111
U 1 1 60B58671
P 4900 6925
F 0 "#PWR0111" H 4900 6675 50  0001 C CNN
F 1 "GND" V 4905 6752 50  0000 C CNN
F 2 "" H 4900 6925 50  0001 C CNN
F 3 "" H 4900 6925 50  0001 C CNN
	1    4900 6925
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 60B58677
P 4150 5825
F 0 "#PWR0112" H 4150 5575 50  0001 C CNN
F 1 "GND" V 4155 5652 50  0000 C CNN
F 2 "" H 4150 5825 50  0001 C CNN
F 3 "" H 4150 5825 50  0001 C CNN
	1    4150 5825
	0    1    1    0   
$EndComp
Text GLabel 3850 5525 0    50   Input ~ 0
~F_SYSRES~
Wire Wire Line
	3850 5525 4150 5525
Text GLabel 4000 6025 0    50   Input ~ 0
~F_OUT~
Text GLabel 3750 6125 0    50   Input ~ 0
~F_INTAK~
Text GLabel 5100 5475 2    50   Input ~ 0
~F_MREQ~
Text GLabel 5100 5625 2    50   Input ~ 0
~F_EXMEM~
Text GLabel 5450 6125 2    50   Input ~ 0
~F_WRITE~
Text GLabel 5150 6225 2    50   Input ~ 0
~F_READ~
Text GLabel 5150 6425 2    50   Input ~ 0
~F_IN~
Text GLabel 4900 6525 2    50   Input ~ 0
~F_INT~
Text GLabel 5100 7125 2    50   Input ~ 0
~F_WAIT~
Text GLabel 4150 6225 0    50   Input ~ 0
~F_INUSE~
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J20
U 1 1 60B58689
P 4475 4950
F 0 "J20" H 4525 5267 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 4525 5176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 4475 4950 50  0001 C CNN
F 3 "~" H 4475 4950 50  0001 C CNN
	1    4475 4950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J32
U 1 1 60B5868F
P 4575 8025
F 0 "J32" H 4625 7600 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 4625 7691 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 4575 8025 50  0001 C CNN
F 3 "~" H 4575 8025 50  0001 C CNN
	1    4575 8025
	-1   0    0    1   
$EndComp
Text GLabel 4275 7825 0    50   Input ~ 0
C8
Text GLabel 4775 7825 2    50   Input ~ 0
C7
Text GLabel 4275 7925 0    50   Input ~ 0
C6
Text GLabel 4775 7925 2    50   Input ~ 0
C5
Text GLabel 4275 8025 0    50   Input ~ 0
C4
Text GLabel 4775 8025 2    50   Input ~ 0
C3
Text GLabel 4275 8125 0    50   Input ~ 0
C2
Text GLabel 4775 8125 2    50   Input ~ 0
C1
Text GLabel 4275 4850 0    50   Input ~ 0
+5V
Text GLabel 4775 4850 2    50   Input ~ 0
GND
Text GLabel 4275 5050 0    50   Input ~ 0
-5
Text GLabel 4275 5150 0    50   Input ~ 0
+12
Wire Wire Line
	4275 4850 4275 4950
Wire Wire Line
	4775 4850 4775 4950
Wire Wire Line
	4775 4950 4775 5050
Connection ~ 4775 4950
Wire Wire Line
	4775 5050 4775 5150
Connection ~ 4775 5050
$Comp
L power:GND #PWR0113
U 1 1 60B5ED68
P 7550 3375
F 0 "#PWR0113" H 7550 3125 50  0001 C CNN
F 1 "GND" V 7555 3202 50  0000 C CNN
F 2 "" H 7550 3375 50  0001 C CNN
F 3 "" H 7550 3375 50  0001 C CNN
	1    7550 3375
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 60B5ED6E
P 7550 3475
F 0 "#PWR0114" H 7550 3325 50  0001 C CNN
F 1 "+5V" H 7565 3648 50  0000 C CNN
F 2 "" H 7550 3475 50  0001 C CNN
F 3 "" H 7550 3475 50  0001 C CNN
	1    7550 3475
	-1   0    0    1   
$EndComp
Wire Wire Line
	7750 1675 7550 1675
Wire Wire Line
	7550 2275 7800 2275
Wire Wire Line
	6650 2075 6800 2075
Wire Wire Line
	8100 2175 7550 2175
Wire Wire Line
	7550 2475 7800 2475
Wire Wire Line
	7750 3175 7550 3175
Wire Wire Line
	7750 2675 7550 2675
Wire Wire Line
	7750 1525 7650 1525
Wire Wire Line
	7650 1525 7650 1575
Wire Wire Line
	7650 1575 7550 1575
Wire Wire Line
	6400 2175 6800 2175
$Comp
L wilson-z80:TRS80W-header J12
U 1 1 60B5ED7F
P 7150 2475
F 0 "J12" H 7175 3640 50  0000 C CNN
F 1 "TRS80W-header" H 7175 3549 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 6650 3575 50  0001 C CNN
F 3 "" H 6650 3575 50  0001 C CNN
	1    7150 2475
	1    0    0    -1  
$EndComp
Text GLabel 7750 2675 2    50   Input ~ 0
CLK
Text GLabel 7550 2775 2    50   Input ~ 0
F_A0
Text GLabel 7550 2875 2    50   Input ~ 0
F_A1
Text GLabel 6800 3475 0    50   Input ~ 0
F_A2
Text GLabel 6800 3175 0    50   Input ~ 0
F_A3
Text GLabel 7550 3075 2    50   Input ~ 0
F_A4
Text GLabel 7550 3275 2    50   Input ~ 0
F_A5
Text GLabel 6800 3375 0    50   Input ~ 0
F_A6
Text GLabel 6800 3275 0    50   Input ~ 0
F_A7
Text GLabel 7550 2075 2    50   Input ~ 0
F_A8
Text GLabel 7550 2375 2    50   Input ~ 0
F_A9
Text GLabel 6800 1675 0    50   Input ~ 0
F_A10
Text GLabel 7550 1975 2    50   Input ~ 0
F_A11
Text GLabel 7550 1775 2    50   Input ~ 0
F_A12
Text GLabel 6800 1775 0    50   Input ~ 0
F_A13
Text GLabel 6800 1975 0    50   Input ~ 0
F_A14
Text GLabel 7550 1875 2    50   Input ~ 0
F_A15
Text GLabel 6800 2975 0    50   Input ~ 0
F_D0
Text GLabel 6800 2575 0    50   Input ~ 0
F_D1
Text GLabel 6800 3075 0    50   Input ~ 0
F_D2
Text GLabel 6800 2775 0    50   Input ~ 0
F_D3
Text GLabel 6800 2375 0    50   Input ~ 0
F_D4
Text GLabel 6800 2875 0    50   Input ~ 0
F_D5
Text GLabel 6800 2675 0    50   Input ~ 0
F_D6
Text GLabel 6800 2475 0    50   Input ~ 0
F_D7
$Comp
L power:GND #PWR0115
U 1 1 60B5ED9E
P 7550 2975
F 0 "#PWR0115" H 7550 2725 50  0001 C CNN
F 1 "GND" V 7555 2802 50  0000 C CNN
F 2 "" H 7550 2975 50  0001 C CNN
F 3 "" H 7550 2975 50  0001 C CNN
	1    7550 2975
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 60B5EDA4
P 6800 1875
F 0 "#PWR0116" H 6800 1625 50  0001 C CNN
F 1 "GND" V 6805 1702 50  0000 C CNN
F 2 "" H 6800 1875 50  0001 C CNN
F 3 "" H 6800 1875 50  0001 C CNN
	1    6800 1875
	0    1    1    0   
$EndComp
Text GLabel 6500 1575 0    50   Input ~ 0
~F_SYSRES~
Wire Wire Line
	6500 1575 6800 1575
Text GLabel 6650 2075 0    50   Input ~ 0
~F_OUT~
Text GLabel 6400 2175 0    50   Input ~ 0
~F_INTAK~
Text GLabel 7750 1525 2    50   Input ~ 0
~F_MREQ~
Text GLabel 7750 1675 2    50   Input ~ 0
~F_EXMEM~
Text GLabel 8100 2175 2    50   Input ~ 0
~F_WRITE~
Text GLabel 7800 2275 2    50   Input ~ 0
~F_READ~
Text GLabel 7800 2475 2    50   Input ~ 0
~F_IN~
Text GLabel 7550 2575 2    50   Input ~ 0
~F_INT~
Text GLabel 7750 3175 2    50   Input ~ 0
~F_WAIT~
Text GLabel 6800 2275 0    50   Input ~ 0
~F_INUSE~
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J7
U 1 1 60B5EDB6
P 7125 1000
F 0 "J7" H 7175 1317 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 7175 1226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 7125 1000 50  0001 C CNN
F 3 "~" H 7125 1000 50  0001 C CNN
	1    7125 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J17
U 1 1 60B5EDBC
P 7225 4075
F 0 "J17" H 7275 3650 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 7275 3741 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 7225 4075 50  0001 C CNN
F 3 "~" H 7225 4075 50  0001 C CNN
	1    7225 4075
	-1   0    0    1   
$EndComp
Text GLabel 6925 3875 0    50   Input ~ 0
C8
Text GLabel 7425 3875 2    50   Input ~ 0
C7
Text GLabel 6925 3975 0    50   Input ~ 0
C6
Text GLabel 7425 3975 2    50   Input ~ 0
C5
Text GLabel 6925 4075 0    50   Input ~ 0
C4
Text GLabel 7425 4075 2    50   Input ~ 0
C3
Text GLabel 6925 4175 0    50   Input ~ 0
C2
Text GLabel 7425 4175 2    50   Input ~ 0
C1
Text GLabel 6925 900  0    50   Input ~ 0
+5V
Text GLabel 7425 900  2    50   Input ~ 0
GND
Text GLabel 6925 1100 0    50   Input ~ 0
-5
Text GLabel 6925 1200 0    50   Input ~ 0
+12
Wire Wire Line
	6925 900  6925 1000
Wire Wire Line
	7425 900  7425 1000
Wire Wire Line
	7425 1000 7425 1100
Connection ~ 7425 1000
Wire Wire Line
	7425 1100 7425 1200
Connection ~ 7425 1100
$Comp
L power:GND #PWR0117
U 1 1 60B64407
P 7475 7400
F 0 "#PWR0117" H 7475 7150 50  0001 C CNN
F 1 "GND" V 7480 7227 50  0000 C CNN
F 2 "" H 7475 7400 50  0001 C CNN
F 3 "" H 7475 7400 50  0001 C CNN
	1    7475 7400
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0118
U 1 1 60B6440D
P 7475 7500
F 0 "#PWR0118" H 7475 7350 50  0001 C CNN
F 1 "+5V" H 7490 7673 50  0000 C CNN
F 2 "" H 7475 7500 50  0001 C CNN
F 3 "" H 7475 7500 50  0001 C CNN
	1    7475 7500
	-1   0    0    1   
$EndComp
Wire Wire Line
	7675 5700 7475 5700
Wire Wire Line
	7475 6300 7725 6300
Wire Wire Line
	6575 6100 6725 6100
Wire Wire Line
	8025 6200 7475 6200
Wire Wire Line
	7475 6500 7725 6500
Wire Wire Line
	7675 7200 7475 7200
Wire Wire Line
	7675 6700 7475 6700
Wire Wire Line
	7675 5550 7575 5550
Wire Wire Line
	7575 5550 7575 5600
Wire Wire Line
	7575 5600 7475 5600
Wire Wire Line
	6325 6200 6725 6200
$Comp
L wilson-z80:TRS80W-header J28
U 1 1 60B6441E
P 7075 6500
F 0 "J28" H 7100 7665 50  0000 C CNN
F 1 "TRS80W-header" H 7100 7574 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 6575 7600 50  0001 C CNN
F 3 "" H 6575 7600 50  0001 C CNN
	1    7075 6500
	1    0    0    -1  
$EndComp
Text GLabel 7675 6700 2    50   Input ~ 0
CLK
Text GLabel 7475 6800 2    50   Input ~ 0
F_A0
Text GLabel 7475 6900 2    50   Input ~ 0
F_A1
Text GLabel 6725 7500 0    50   Input ~ 0
F_A2
Text GLabel 6725 7200 0    50   Input ~ 0
F_A3
Text GLabel 7475 7100 2    50   Input ~ 0
F_A4
Text GLabel 7475 7300 2    50   Input ~ 0
F_A5
Text GLabel 6725 7400 0    50   Input ~ 0
F_A6
Text GLabel 6725 7300 0    50   Input ~ 0
F_A7
Text GLabel 7475 6100 2    50   Input ~ 0
F_A8
Text GLabel 7475 6400 2    50   Input ~ 0
F_A9
Text GLabel 6725 5700 0    50   Input ~ 0
F_A10
Text GLabel 7475 6000 2    50   Input ~ 0
F_A11
Text GLabel 7475 5800 2    50   Input ~ 0
F_A12
Text GLabel 6725 5800 0    50   Input ~ 0
F_A13
Text GLabel 6725 6000 0    50   Input ~ 0
F_A14
Text GLabel 7475 5900 2    50   Input ~ 0
F_A15
Text GLabel 6725 7000 0    50   Input ~ 0
F_D0
Text GLabel 6725 6600 0    50   Input ~ 0
F_D1
Text GLabel 6725 7100 0    50   Input ~ 0
F_D2
Text GLabel 6725 6800 0    50   Input ~ 0
F_D3
Text GLabel 6725 6400 0    50   Input ~ 0
F_D4
Text GLabel 6725 6900 0    50   Input ~ 0
F_D5
Text GLabel 6725 6700 0    50   Input ~ 0
F_D6
Text GLabel 6725 6500 0    50   Input ~ 0
F_D7
$Comp
L power:GND #PWR0119
U 1 1 60B6443D
P 7475 7000
F 0 "#PWR0119" H 7475 6750 50  0001 C CNN
F 1 "GND" V 7480 6827 50  0000 C CNN
F 2 "" H 7475 7000 50  0001 C CNN
F 3 "" H 7475 7000 50  0001 C CNN
	1    7475 7000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 60B64443
P 6725 5900
F 0 "#PWR0120" H 6725 5650 50  0001 C CNN
F 1 "GND" V 6730 5727 50  0000 C CNN
F 2 "" H 6725 5900 50  0001 C CNN
F 3 "" H 6725 5900 50  0001 C CNN
	1    6725 5900
	0    1    1    0   
$EndComp
Text GLabel 6425 5600 0    50   Input ~ 0
~F_SYSRES~
Wire Wire Line
	6425 5600 6725 5600
Text GLabel 6575 6100 0    50   Input ~ 0
~F_OUT~
Text GLabel 6325 6200 0    50   Input ~ 0
~F_INTAK~
Text GLabel 7675 5550 2    50   Input ~ 0
~F_MREQ~
Text GLabel 7675 5700 2    50   Input ~ 0
~F_EXMEM~
Text GLabel 8025 6200 2    50   Input ~ 0
~F_WRITE~
Text GLabel 7725 6300 2    50   Input ~ 0
~F_READ~
Text GLabel 7725 6500 2    50   Input ~ 0
~F_IN~
Text GLabel 7475 6600 2    50   Input ~ 0
~F_INT~
Text GLabel 7675 7200 2    50   Input ~ 0
~F_WAIT~
Text GLabel 6725 6300 0    50   Input ~ 0
~F_INUSE~
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J22
U 1 1 60B64455
P 7050 5025
F 0 "J22" H 7100 5342 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 7100 5251 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 7050 5025 50  0001 C CNN
F 3 "~" H 7050 5025 50  0001 C CNN
	1    7050 5025
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J34
U 1 1 60B6445B
P 7150 8100
F 0 "J34" H 7200 7675 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 7200 7766 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 7150 8100 50  0001 C CNN
F 3 "~" H 7150 8100 50  0001 C CNN
	1    7150 8100
	-1   0    0    1   
$EndComp
Text GLabel 6850 7900 0    50   Input ~ 0
C8
Text GLabel 7350 7900 2    50   Input ~ 0
C7
Text GLabel 6850 8000 0    50   Input ~ 0
C6
Text GLabel 7350 8000 2    50   Input ~ 0
C5
Text GLabel 6850 8100 0    50   Input ~ 0
C4
Text GLabel 7350 8100 2    50   Input ~ 0
C3
Text GLabel 6850 8200 0    50   Input ~ 0
C2
Text GLabel 7350 8200 2    50   Input ~ 0
C1
Text GLabel 6850 4925 0    50   Input ~ 0
+5V
Text GLabel 7350 4925 2    50   Input ~ 0
GND
Text GLabel 6850 5125 0    50   Input ~ 0
-5
Text GLabel 6850 5225 0    50   Input ~ 0
+12
Wire Wire Line
	6850 4925 6850 5025
Wire Wire Line
	7350 4925 7350 5025
Wire Wire Line
	7350 5025 7350 5125
Connection ~ 7350 5025
Wire Wire Line
	7350 5125 7350 5225
Connection ~ 7350 5125
$Comp
L power:GND #PWR0121
U 1 1 60B6ABE0
P 10225 3175
F 0 "#PWR0121" H 10225 2925 50  0001 C CNN
F 1 "GND" V 10230 3002 50  0000 C CNN
F 2 "" H 10225 3175 50  0001 C CNN
F 3 "" H 10225 3175 50  0001 C CNN
	1    10225 3175
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0122
U 1 1 60B6ABE6
P 10225 3275
F 0 "#PWR0122" H 10225 3125 50  0001 C CNN
F 1 "+5V" H 10240 3448 50  0000 C CNN
F 2 "" H 10225 3275 50  0001 C CNN
F 3 "" H 10225 3275 50  0001 C CNN
	1    10225 3275
	-1   0    0    1   
$EndComp
Wire Wire Line
	10425 1475 10225 1475
Wire Wire Line
	10225 2075 10475 2075
Wire Wire Line
	9325 1875 9475 1875
Wire Wire Line
	10775 1975 10225 1975
Wire Wire Line
	10225 2275 10475 2275
Wire Wire Line
	10425 2975 10225 2975
Wire Wire Line
	10425 2475 10225 2475
Wire Wire Line
	10425 1325 10325 1325
Wire Wire Line
	10325 1325 10325 1375
Wire Wire Line
	10325 1375 10225 1375
Wire Wire Line
	9075 1975 9475 1975
$Comp
L wilson-z80:TRS80W-header J10
U 1 1 60B6ABF7
P 9825 2275
F 0 "J10" H 9850 3440 50  0000 C CNN
F 1 "TRS80W-header" H 9850 3349 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 9325 3375 50  0001 C CNN
F 3 "" H 9325 3375 50  0001 C CNN
	1    9825 2275
	1    0    0    -1  
$EndComp
Text GLabel 10425 2475 2    50   Input ~ 0
CLK
Text GLabel 10225 2575 2    50   Input ~ 0
F_A0
Text GLabel 10225 2675 2    50   Input ~ 0
F_A1
Text GLabel 9475 3275 0    50   Input ~ 0
F_A2
Text GLabel 9475 2975 0    50   Input ~ 0
F_A3
Text GLabel 10225 2875 2    50   Input ~ 0
F_A4
Text GLabel 10225 3075 2    50   Input ~ 0
F_A5
Text GLabel 9475 3175 0    50   Input ~ 0
F_A6
Text GLabel 9475 3075 0    50   Input ~ 0
F_A7
Text GLabel 10225 1875 2    50   Input ~ 0
F_A8
Text GLabel 10225 2175 2    50   Input ~ 0
F_A9
Text GLabel 9475 1475 0    50   Input ~ 0
F_A10
Text GLabel 10225 1775 2    50   Input ~ 0
F_A11
Text GLabel 10225 1575 2    50   Input ~ 0
F_A12
Text GLabel 9475 1575 0    50   Input ~ 0
F_A13
Text GLabel 9475 1775 0    50   Input ~ 0
F_A14
Text GLabel 10225 1675 2    50   Input ~ 0
F_A15
Text GLabel 9475 2775 0    50   Input ~ 0
F_D0
Text GLabel 9475 2375 0    50   Input ~ 0
F_D1
Text GLabel 9475 2875 0    50   Input ~ 0
F_D2
Text GLabel 9475 2575 0    50   Input ~ 0
F_D3
Text GLabel 9475 2175 0    50   Input ~ 0
F_D4
Text GLabel 9475 2675 0    50   Input ~ 0
F_D5
Text GLabel 9475 2475 0    50   Input ~ 0
F_D6
Text GLabel 9475 2275 0    50   Input ~ 0
F_D7
$Comp
L power:GND #PWR0123
U 1 1 60B6AC16
P 10225 2775
F 0 "#PWR0123" H 10225 2525 50  0001 C CNN
F 1 "GND" V 10230 2602 50  0000 C CNN
F 2 "" H 10225 2775 50  0001 C CNN
F 3 "" H 10225 2775 50  0001 C CNN
	1    10225 2775
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 60B6AC1C
P 9475 1675
F 0 "#PWR0124" H 9475 1425 50  0001 C CNN
F 1 "GND" V 9480 1502 50  0000 C CNN
F 2 "" H 9475 1675 50  0001 C CNN
F 3 "" H 9475 1675 50  0001 C CNN
	1    9475 1675
	0    1    1    0   
$EndComp
Text GLabel 9175 1375 0    50   Input ~ 0
~F_SYSRES~
Wire Wire Line
	9175 1375 9475 1375
Text GLabel 9325 1875 0    50   Input ~ 0
~F_OUT~
Text GLabel 9075 1975 0    50   Input ~ 0
~F_INTAK~
Text GLabel 10425 1325 2    50   Input ~ 0
~F_MREQ~
Text GLabel 10425 1475 2    50   Input ~ 0
~F_EXMEM~
Text GLabel 10775 1975 2    50   Input ~ 0
~F_WRITE~
Text GLabel 10475 2075 2    50   Input ~ 0
~F_READ~
Text GLabel 10475 2275 2    50   Input ~ 0
~F_IN~
Text GLabel 10225 2375 2    50   Input ~ 0
~F_INT~
Text GLabel 10425 2975 2    50   Input ~ 0
~F_WAIT~
Text GLabel 9475 2075 0    50   Input ~ 0
~F_INUSE~
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J5
U 1 1 60B6AC2E
P 9800 800
F 0 "J5" H 9850 1117 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 9850 1026 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 9800 800 50  0001 C CNN
F 3 "~" H 9800 800 50  0001 C CNN
	1    9800 800 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J15
U 1 1 60B6AC34
P 9900 3875
F 0 "J15" H 9950 3450 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 9950 3541 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 9900 3875 50  0001 C CNN
F 3 "~" H 9900 3875 50  0001 C CNN
	1    9900 3875
	-1   0    0    1   
$EndComp
Text GLabel 9600 3675 0    50   Input ~ 0
C8
Text GLabel 10100 3675 2    50   Input ~ 0
C7
Text GLabel 9600 3775 0    50   Input ~ 0
C6
Text GLabel 10100 3775 2    50   Input ~ 0
C5
Text GLabel 9600 3875 0    50   Input ~ 0
C4
Text GLabel 10100 3875 2    50   Input ~ 0
C3
Text GLabel 9600 3975 0    50   Input ~ 0
C2
Text GLabel 10100 3975 2    50   Input ~ 0
C1
Text GLabel 9600 700  0    50   Input ~ 0
+5V
Text GLabel 10100 700  2    50   Input ~ 0
GND
Text GLabel 9600 900  0    50   Input ~ 0
-5
Text GLabel 9600 1000 0    50   Input ~ 0
+12
Wire Wire Line
	9600 700  9600 800 
Wire Wire Line
	10100 700  10100 800 
Wire Wire Line
	10100 800  10100 900 
Connection ~ 10100 800 
Wire Wire Line
	10100 900  10100 1000
Connection ~ 10100 900 
$Comp
L power:GND #PWR0125
U 1 1 60B7268F
P 10125 7400
F 0 "#PWR0125" H 10125 7150 50  0001 C CNN
F 1 "GND" V 10130 7227 50  0000 C CNN
F 2 "" H 10125 7400 50  0001 C CNN
F 3 "" H 10125 7400 50  0001 C CNN
	1    10125 7400
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0126
U 1 1 60B72695
P 10125 7500
F 0 "#PWR0126" H 10125 7350 50  0001 C CNN
F 1 "+5V" H 10140 7673 50  0000 C CNN
F 2 "" H 10125 7500 50  0001 C CNN
F 3 "" H 10125 7500 50  0001 C CNN
	1    10125 7500
	-1   0    0    1   
$EndComp
Wire Wire Line
	10325 5700 10125 5700
Wire Wire Line
	10125 6300 10375 6300
Wire Wire Line
	9225 6100 9375 6100
Wire Wire Line
	10675 6200 10125 6200
Wire Wire Line
	10125 6500 10375 6500
Wire Wire Line
	10325 7200 10125 7200
Wire Wire Line
	10325 6700 10125 6700
Wire Wire Line
	10325 5550 10225 5550
Wire Wire Line
	10225 5550 10225 5600
Wire Wire Line
	10225 5600 10125 5600
Wire Wire Line
	8975 6200 9375 6200
$Comp
L wilson-z80:TRS80W-header J29
U 1 1 60B726A6
P 9725 6500
F 0 "J29" H 9750 7665 50  0000 C CNN
F 1 "TRS80W-header" H 9750 7574 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 9225 7600 50  0001 C CNN
F 3 "" H 9225 7600 50  0001 C CNN
	1    9725 6500
	1    0    0    -1  
$EndComp
Text GLabel 10325 6700 2    50   Input ~ 0
CLK
Text GLabel 10125 6800 2    50   Input ~ 0
F_A0
Text GLabel 10125 6900 2    50   Input ~ 0
F_A1
Text GLabel 9375 7500 0    50   Input ~ 0
F_A2
Text GLabel 9375 7200 0    50   Input ~ 0
F_A3
Text GLabel 10125 7100 2    50   Input ~ 0
F_A4
Text GLabel 10125 7300 2    50   Input ~ 0
F_A5
Text GLabel 9375 7400 0    50   Input ~ 0
F_A6
Text GLabel 9375 7300 0    50   Input ~ 0
F_A7
Text GLabel 10125 6100 2    50   Input ~ 0
F_A8
Text GLabel 10125 6400 2    50   Input ~ 0
F_A9
Text GLabel 9375 5700 0    50   Input ~ 0
F_A10
Text GLabel 10125 6000 2    50   Input ~ 0
F_A11
Text GLabel 10125 5800 2    50   Input ~ 0
F_A12
Text GLabel 9375 5800 0    50   Input ~ 0
F_A13
Text GLabel 9375 6000 0    50   Input ~ 0
F_A14
Text GLabel 10125 5900 2    50   Input ~ 0
F_A15
Text GLabel 9375 7000 0    50   Input ~ 0
F_D0
Text GLabel 9375 6600 0    50   Input ~ 0
F_D1
Text GLabel 9375 7100 0    50   Input ~ 0
F_D2
Text GLabel 9375 6800 0    50   Input ~ 0
F_D3
Text GLabel 9375 6400 0    50   Input ~ 0
F_D4
Text GLabel 9375 6900 0    50   Input ~ 0
F_D5
Text GLabel 9375 6700 0    50   Input ~ 0
F_D6
Text GLabel 9375 6500 0    50   Input ~ 0
F_D7
$Comp
L power:GND #PWR0127
U 1 1 60B726C5
P 10125 7000
F 0 "#PWR0127" H 10125 6750 50  0001 C CNN
F 1 "GND" V 10130 6827 50  0000 C CNN
F 2 "" H 10125 7000 50  0001 C CNN
F 3 "" H 10125 7000 50  0001 C CNN
	1    10125 7000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 60B726CB
P 9375 5900
F 0 "#PWR0128" H 9375 5650 50  0001 C CNN
F 1 "GND" V 9380 5727 50  0000 C CNN
F 2 "" H 9375 5900 50  0001 C CNN
F 3 "" H 9375 5900 50  0001 C CNN
	1    9375 5900
	0    1    1    0   
$EndComp
Text GLabel 9075 5600 0    50   Input ~ 0
~F_SYSRES~
Wire Wire Line
	9075 5600 9375 5600
Text GLabel 9225 6100 0    50   Input ~ 0
~F_OUT~
Text GLabel 8975 6200 0    50   Input ~ 0
~F_INTAK~
Text GLabel 10325 5550 2    50   Input ~ 0
~F_MREQ~
Text GLabel 10325 5700 2    50   Input ~ 0
~F_EXMEM~
Text GLabel 10675 6200 2    50   Input ~ 0
~F_WRITE~
Text GLabel 10375 6300 2    50   Input ~ 0
~F_READ~
Text GLabel 10375 6500 2    50   Input ~ 0
~F_IN~
Text GLabel 10125 6600 2    50   Input ~ 0
~F_INT~
Text GLabel 10325 7200 2    50   Input ~ 0
~F_WAIT~
Text GLabel 9375 6300 0    50   Input ~ 0
~F_INUSE~
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J23
U 1 1 60B726DD
P 9700 5025
F 0 "J23" H 9750 5342 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 9750 5251 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 9700 5025 50  0001 C CNN
F 3 "~" H 9700 5025 50  0001 C CNN
	1    9700 5025
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J35
U 1 1 60B726E3
P 9800 8100
F 0 "J35" H 9850 7675 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 9850 7766 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 9800 8100 50  0001 C CNN
F 3 "~" H 9800 8100 50  0001 C CNN
	1    9800 8100
	-1   0    0    1   
$EndComp
Text GLabel 9500 7900 0    50   Input ~ 0
C8
Text GLabel 10000 7900 2    50   Input ~ 0
C7
Text GLabel 9500 8000 0    50   Input ~ 0
C6
Text GLabel 10000 8000 2    50   Input ~ 0
C5
Text GLabel 9500 8100 0    50   Input ~ 0
C4
Text GLabel 10000 8100 2    50   Input ~ 0
C3
Text GLabel 9500 8200 0    50   Input ~ 0
C2
Text GLabel 10000 8200 2    50   Input ~ 0
C1
Text GLabel 9500 4925 0    50   Input ~ 0
+5V
Text GLabel 10000 4925 2    50   Input ~ 0
GND
Text GLabel 9500 5125 0    50   Input ~ 0
-5
Text GLabel 9500 5225 0    50   Input ~ 0
+12
Wire Wire Line
	9500 4925 9500 5025
Wire Wire Line
	10000 4925 10000 5025
Wire Wire Line
	10000 5025 10000 5125
Connection ~ 10000 5025
Wire Wire Line
	10000 5125 10000 5225
Connection ~ 10000 5125
$Comp
L power:GND #PWR0129
U 1 1 60B7B10B
P 12750 3075
F 0 "#PWR0129" H 12750 2825 50  0001 C CNN
F 1 "GND" V 12755 2902 50  0000 C CNN
F 2 "" H 12750 3075 50  0001 C CNN
F 3 "" H 12750 3075 50  0001 C CNN
	1    12750 3075
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0130
U 1 1 60B7B111
P 12750 3175
F 0 "#PWR0130" H 12750 3025 50  0001 C CNN
F 1 "+5V" H 12765 3348 50  0000 C CNN
F 2 "" H 12750 3175 50  0001 C CNN
F 3 "" H 12750 3175 50  0001 C CNN
	1    12750 3175
	-1   0    0    1   
$EndComp
Wire Wire Line
	12950 1375 12750 1375
Wire Wire Line
	12750 1975 13000 1975
Wire Wire Line
	11850 1775 12000 1775
Wire Wire Line
	13300 1875 12750 1875
Wire Wire Line
	12750 2175 13000 2175
Wire Wire Line
	12950 2875 12750 2875
Wire Wire Line
	12950 2375 12750 2375
Wire Wire Line
	12950 1225 12850 1225
Wire Wire Line
	12850 1225 12850 1275
Wire Wire Line
	12850 1275 12750 1275
Wire Wire Line
	11600 1875 12000 1875
$Comp
L wilson-z80:TRS80W-header J9
U 1 1 60B7B122
P 12350 2175
F 0 "J9" H 12375 3340 50  0000 C CNN
F 1 "TRS80W-header" H 12375 3249 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 11850 3275 50  0001 C CNN
F 3 "" H 11850 3275 50  0001 C CNN
	1    12350 2175
	1    0    0    -1  
$EndComp
Text GLabel 12950 2375 2    50   Input ~ 0
CLK
Text GLabel 12750 2475 2    50   Input ~ 0
F_A0
Text GLabel 12750 2575 2    50   Input ~ 0
F_A1
Text GLabel 12000 3175 0    50   Input ~ 0
F_A2
Text GLabel 12000 2875 0    50   Input ~ 0
F_A3
Text GLabel 12750 2775 2    50   Input ~ 0
F_A4
Text GLabel 12750 2975 2    50   Input ~ 0
F_A5
Text GLabel 12000 3075 0    50   Input ~ 0
F_A6
Text GLabel 12000 2975 0    50   Input ~ 0
F_A7
Text GLabel 12750 1775 2    50   Input ~ 0
F_A8
Text GLabel 12750 2075 2    50   Input ~ 0
F_A9
Text GLabel 12000 1375 0    50   Input ~ 0
F_A10
Text GLabel 12750 1675 2    50   Input ~ 0
F_A11
Text GLabel 12750 1475 2    50   Input ~ 0
F_A12
Text GLabel 12000 1475 0    50   Input ~ 0
F_A13
Text GLabel 12000 1675 0    50   Input ~ 0
F_A14
Text GLabel 12750 1575 2    50   Input ~ 0
F_A15
Text GLabel 12000 2675 0    50   Input ~ 0
F_D0
Text GLabel 12000 2275 0    50   Input ~ 0
F_D1
Text GLabel 12000 2775 0    50   Input ~ 0
F_D2
Text GLabel 12000 2475 0    50   Input ~ 0
F_D3
Text GLabel 12000 2075 0    50   Input ~ 0
F_D4
Text GLabel 12000 2575 0    50   Input ~ 0
F_D5
Text GLabel 12000 2375 0    50   Input ~ 0
F_D6
Text GLabel 12000 2175 0    50   Input ~ 0
F_D7
$Comp
L power:GND #PWR0131
U 1 1 60B7B141
P 12750 2675
F 0 "#PWR0131" H 12750 2425 50  0001 C CNN
F 1 "GND" V 12755 2502 50  0000 C CNN
F 2 "" H 12750 2675 50  0001 C CNN
F 3 "" H 12750 2675 50  0001 C CNN
	1    12750 2675
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 60B7B147
P 12000 1575
F 0 "#PWR0132" H 12000 1325 50  0001 C CNN
F 1 "GND" V 12005 1402 50  0000 C CNN
F 2 "" H 12000 1575 50  0001 C CNN
F 3 "" H 12000 1575 50  0001 C CNN
	1    12000 1575
	0    1    1    0   
$EndComp
Text GLabel 11700 1275 0    50   Input ~ 0
~F_SYSRES~
Wire Wire Line
	11700 1275 12000 1275
Text GLabel 11850 1775 0    50   Input ~ 0
~F_OUT~
Text GLabel 11600 1875 0    50   Input ~ 0
~F_INTAK~
Text GLabel 12950 1225 2    50   Input ~ 0
~F_MREQ~
Text GLabel 12950 1375 2    50   Input ~ 0
~F_EXMEM~
Text GLabel 13300 1875 2    50   Input ~ 0
~F_WRITE~
Text GLabel 13000 1975 2    50   Input ~ 0
~F_READ~
Text GLabel 13000 2175 2    50   Input ~ 0
~F_IN~
Text GLabel 12750 2275 2    50   Input ~ 0
~F_INT~
Text GLabel 12950 2875 2    50   Input ~ 0
~F_WAIT~
Text GLabel 12000 1975 0    50   Input ~ 0
~F_INUSE~
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J4
U 1 1 60B7B159
P 12325 700
F 0 "J4" H 12375 1017 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 12375 926 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 12325 700 50  0001 C CNN
F 3 "~" H 12325 700 50  0001 C CNN
	1    12325 700 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J14
U 1 1 60B7B15F
P 12425 3775
F 0 "J14" H 12475 3350 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 12475 3441 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 12425 3775 50  0001 C CNN
F 3 "~" H 12425 3775 50  0001 C CNN
	1    12425 3775
	-1   0    0    1   
$EndComp
Text GLabel 12125 3575 0    50   Input ~ 0
C8
Text GLabel 12625 3575 2    50   Input ~ 0
C7
Text GLabel 12125 3675 0    50   Input ~ 0
C6
Text GLabel 12625 3675 2    50   Input ~ 0
C5
Text GLabel 12125 3775 0    50   Input ~ 0
C4
Text GLabel 12625 3775 2    50   Input ~ 0
C3
Text GLabel 12125 3875 0    50   Input ~ 0
C2
Text GLabel 12625 3875 2    50   Input ~ 0
C1
Text GLabel 12125 600  0    50   Input ~ 0
+5V
Text GLabel 12625 600  2    50   Input ~ 0
GND
Text GLabel 12125 800  0    50   Input ~ 0
-5
Text GLabel 12125 900  0    50   Input ~ 0
+12
Wire Wire Line
	12125 600  12125 700 
Wire Wire Line
	12625 600  12625 700 
Wire Wire Line
	12625 700  12625 800 
Connection ~ 12625 700 
Wire Wire Line
	12625 800  12625 900 
Connection ~ 12625 800 
$Comp
L power:GND #PWR0133
U 1 1 60B8321B
P 12725 7425
F 0 "#PWR0133" H 12725 7175 50  0001 C CNN
F 1 "GND" V 12730 7252 50  0000 C CNN
F 2 "" H 12725 7425 50  0001 C CNN
F 3 "" H 12725 7425 50  0001 C CNN
	1    12725 7425
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0134
U 1 1 60B83221
P 12725 7525
F 0 "#PWR0134" H 12725 7375 50  0001 C CNN
F 1 "+5V" H 12740 7698 50  0000 C CNN
F 2 "" H 12725 7525 50  0001 C CNN
F 3 "" H 12725 7525 50  0001 C CNN
	1    12725 7525
	-1   0    0    1   
$EndComp
Wire Wire Line
	12925 5725 12725 5725
Wire Wire Line
	12725 6325 12975 6325
Wire Wire Line
	11825 6125 11975 6125
Wire Wire Line
	13275 6225 12725 6225
Wire Wire Line
	12725 6525 12975 6525
Wire Wire Line
	12925 7225 12725 7225
Wire Wire Line
	12925 6725 12725 6725
Wire Wire Line
	12925 5575 12825 5575
Wire Wire Line
	12825 5575 12825 5625
Wire Wire Line
	12825 5625 12725 5625
Wire Wire Line
	11575 6225 11975 6225
$Comp
L wilson-z80:TRS80W-header J30
U 1 1 60B83232
P 12325 6525
F 0 "J30" H 12350 7690 50  0000 C CNN
F 1 "TRS80W-header" H 12350 7599 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 11825 7625 50  0001 C CNN
F 3 "" H 11825 7625 50  0001 C CNN
	1    12325 6525
	1    0    0    -1  
$EndComp
Text GLabel 12925 6725 2    50   Input ~ 0
CLK
Text GLabel 12725 6825 2    50   Input ~ 0
F_A0
Text GLabel 12725 6925 2    50   Input ~ 0
F_A1
Text GLabel 11975 7525 0    50   Input ~ 0
F_A2
Text GLabel 11975 7225 0    50   Input ~ 0
F_A3
Text GLabel 12725 7125 2    50   Input ~ 0
F_A4
Text GLabel 12725 7325 2    50   Input ~ 0
F_A5
Text GLabel 11975 7425 0    50   Input ~ 0
F_A6
Text GLabel 11975 7325 0    50   Input ~ 0
F_A7
Text GLabel 12725 6125 2    50   Input ~ 0
F_A8
Text GLabel 12725 6425 2    50   Input ~ 0
F_A9
Text GLabel 11975 5725 0    50   Input ~ 0
F_A10
Text GLabel 12725 6025 2    50   Input ~ 0
F_A11
Text GLabel 12725 5825 2    50   Input ~ 0
F_A12
Text GLabel 11975 5825 0    50   Input ~ 0
F_A13
Text GLabel 11975 6025 0    50   Input ~ 0
F_A14
Text GLabel 12725 5925 2    50   Input ~ 0
F_A15
Text GLabel 11975 7025 0    50   Input ~ 0
F_D0
Text GLabel 11975 6625 0    50   Input ~ 0
F_D1
Text GLabel 11975 7125 0    50   Input ~ 0
F_D2
Text GLabel 11975 6825 0    50   Input ~ 0
F_D3
Text GLabel 11975 6425 0    50   Input ~ 0
F_D4
Text GLabel 11975 6925 0    50   Input ~ 0
F_D5
Text GLabel 11975 6725 0    50   Input ~ 0
F_D6
Text GLabel 11975 6525 0    50   Input ~ 0
F_D7
$Comp
L power:GND #PWR0135
U 1 1 60B83251
P 12725 7025
F 0 "#PWR0135" H 12725 6775 50  0001 C CNN
F 1 "GND" V 12730 6852 50  0000 C CNN
F 2 "" H 12725 7025 50  0001 C CNN
F 3 "" H 12725 7025 50  0001 C CNN
	1    12725 7025
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 60B83257
P 11975 5925
F 0 "#PWR0136" H 11975 5675 50  0001 C CNN
F 1 "GND" V 11980 5752 50  0000 C CNN
F 2 "" H 11975 5925 50  0001 C CNN
F 3 "" H 11975 5925 50  0001 C CNN
	1    11975 5925
	0    1    1    0   
$EndComp
Text GLabel 11675 5625 0    50   Input ~ 0
~F_SYSRES~
Wire Wire Line
	11675 5625 11975 5625
Text GLabel 11825 6125 0    50   Input ~ 0
~F_OUT~
Text GLabel 11575 6225 0    50   Input ~ 0
~F_INTAK~
Text GLabel 12925 5575 2    50   Input ~ 0
~F_MREQ~
Text GLabel 12925 5725 2    50   Input ~ 0
~F_EXMEM~
Text GLabel 13275 6225 2    50   Input ~ 0
~F_WRITE~
Text GLabel 12975 6325 2    50   Input ~ 0
~F_READ~
Text GLabel 12975 6525 2    50   Input ~ 0
~F_IN~
Text GLabel 12725 6625 2    50   Input ~ 0
~F_INT~
Text GLabel 12925 7225 2    50   Input ~ 0
~F_WAIT~
Text GLabel 11975 6325 0    50   Input ~ 0
~F_INUSE~
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J24
U 1 1 60B83269
P 12300 5050
F 0 "J24" H 12350 5367 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 12350 5276 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 12300 5050 50  0001 C CNN
F 3 "~" H 12300 5050 50  0001 C CNN
	1    12300 5050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J36
U 1 1 60B8326F
P 12400 8125
F 0 "J36" H 12450 7700 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 12450 7791 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 12400 8125 50  0001 C CNN
F 3 "~" H 12400 8125 50  0001 C CNN
	1    12400 8125
	-1   0    0    1   
$EndComp
Text GLabel 12100 7925 0    50   Input ~ 0
C8
Text GLabel 12600 7925 2    50   Input ~ 0
C7
Text GLabel 12100 8025 0    50   Input ~ 0
C6
Text GLabel 12600 8025 2    50   Input ~ 0
C5
Text GLabel 12100 8125 0    50   Input ~ 0
C4
Text GLabel 12600 8125 2    50   Input ~ 0
C3
Text GLabel 12100 8225 0    50   Input ~ 0
C2
Text GLabel 12600 8225 2    50   Input ~ 0
C1
Text GLabel 12100 4950 0    50   Input ~ 0
+5V
Text GLabel 12600 4950 2    50   Input ~ 0
GND
Text GLabel 12100 5150 0    50   Input ~ 0
-5
Text GLabel 12100 5250 0    50   Input ~ 0
+12
Wire Wire Line
	12100 4950 12100 5050
Wire Wire Line
	12600 4950 12600 5050
Wire Wire Line
	12600 5050 12600 5150
Connection ~ 12600 5050
Wire Wire Line
	12600 5150 12600 5250
Connection ~ 12600 5150
$Comp
L power:GND #PWR0137
U 1 1 60B8C0A7
P 15450 3325
F 0 "#PWR0137" H 15450 3075 50  0001 C CNN
F 1 "GND" V 15455 3152 50  0000 C CNN
F 2 "" H 15450 3325 50  0001 C CNN
F 3 "" H 15450 3325 50  0001 C CNN
	1    15450 3325
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0138
U 1 1 60B8C0AD
P 15450 3425
F 0 "#PWR0138" H 15450 3275 50  0001 C CNN
F 1 "+5V" H 15465 3598 50  0000 C CNN
F 2 "" H 15450 3425 50  0001 C CNN
F 3 "" H 15450 3425 50  0001 C CNN
	1    15450 3425
	-1   0    0    1   
$EndComp
Wire Wire Line
	15650 1625 15450 1625
Wire Wire Line
	15450 2225 15700 2225
Wire Wire Line
	14550 2025 14700 2025
Wire Wire Line
	16000 2125 15450 2125
Wire Wire Line
	15450 2425 15700 2425
Wire Wire Line
	15650 3125 15450 3125
Wire Wire Line
	15650 2625 15450 2625
Wire Wire Line
	15650 1475 15550 1475
Wire Wire Line
	15550 1475 15550 1525
Wire Wire Line
	15550 1525 15450 1525
Wire Wire Line
	14300 2125 14700 2125
$Comp
L wilson-z80:TRS80W-header J11
U 1 1 60B8C0BE
P 15050 2425
F 0 "J11" H 15075 3590 50  0000 C CNN
F 1 "TRS80W-header" H 15075 3499 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 14550 3525 50  0001 C CNN
F 3 "" H 14550 3525 50  0001 C CNN
	1    15050 2425
	1    0    0    -1  
$EndComp
Text GLabel 15650 2625 2    50   Input ~ 0
CLK
Text GLabel 15450 2725 2    50   Input ~ 0
F_A0
Text GLabel 15450 2825 2    50   Input ~ 0
F_A1
Text GLabel 14700 3425 0    50   Input ~ 0
F_A2
Text GLabel 14700 3125 0    50   Input ~ 0
F_A3
Text GLabel 15450 3025 2    50   Input ~ 0
F_A4
Text GLabel 15450 3225 2    50   Input ~ 0
F_A5
Text GLabel 14700 3325 0    50   Input ~ 0
F_A6
Text GLabel 14700 3225 0    50   Input ~ 0
F_A7
Text GLabel 15450 2025 2    50   Input ~ 0
F_A8
Text GLabel 15450 2325 2    50   Input ~ 0
F_A9
Text GLabel 14700 1625 0    50   Input ~ 0
F_A10
Text GLabel 15450 1925 2    50   Input ~ 0
F_A11
Text GLabel 15450 1725 2    50   Input ~ 0
F_A12
Text GLabel 14700 1725 0    50   Input ~ 0
F_A13
Text GLabel 14700 1925 0    50   Input ~ 0
F_A14
Text GLabel 15450 1825 2    50   Input ~ 0
F_A15
Text GLabel 14700 2925 0    50   Input ~ 0
F_D0
Text GLabel 14700 2525 0    50   Input ~ 0
F_D1
Text GLabel 14700 3025 0    50   Input ~ 0
F_D2
Text GLabel 14700 2725 0    50   Input ~ 0
F_D3
Text GLabel 14700 2325 0    50   Input ~ 0
F_D4
Text GLabel 14700 2825 0    50   Input ~ 0
F_D5
Text GLabel 14700 2625 0    50   Input ~ 0
F_D6
Text GLabel 14700 2425 0    50   Input ~ 0
F_D7
$Comp
L power:GND #PWR0139
U 1 1 60B8C0DD
P 15450 2925
F 0 "#PWR0139" H 15450 2675 50  0001 C CNN
F 1 "GND" V 15455 2752 50  0000 C CNN
F 2 "" H 15450 2925 50  0001 C CNN
F 3 "" H 15450 2925 50  0001 C CNN
	1    15450 2925
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0140
U 1 1 60B8C0E3
P 14700 1825
F 0 "#PWR0140" H 14700 1575 50  0001 C CNN
F 1 "GND" V 14705 1652 50  0000 C CNN
F 2 "" H 14700 1825 50  0001 C CNN
F 3 "" H 14700 1825 50  0001 C CNN
	1    14700 1825
	0    1    1    0   
$EndComp
Text GLabel 14400 1525 0    50   Input ~ 0
~F_SYSRES~
Wire Wire Line
	14400 1525 14700 1525
Text GLabel 14550 2025 0    50   Input ~ 0
~F_OUT~
Text GLabel 14300 2125 0    50   Input ~ 0
~F_INTAK~
Text GLabel 15650 1475 2    50   Input ~ 0
~F_MREQ~
Text GLabel 15650 1625 2    50   Input ~ 0
~F_EXMEM~
Text GLabel 16000 2125 2    50   Input ~ 0
~F_WRITE~
Text GLabel 15700 2225 2    50   Input ~ 0
~F_READ~
Text GLabel 15700 2425 2    50   Input ~ 0
~F_IN~
Text GLabel 15450 2525 2    50   Input ~ 0
~F_INT~
Text GLabel 15650 3125 2    50   Input ~ 0
~F_WAIT~
Text GLabel 14700 2225 0    50   Input ~ 0
~F_INUSE~
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J6
U 1 1 60B8C0F5
P 15025 950
F 0 "J6" H 15075 1267 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 15075 1176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 15025 950 50  0001 C CNN
F 3 "~" H 15025 950 50  0001 C CNN
	1    15025 950 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J16
U 1 1 60B8C0FB
P 15125 4025
F 0 "J16" H 15175 3600 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 15175 3691 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 15125 4025 50  0001 C CNN
F 3 "~" H 15125 4025 50  0001 C CNN
	1    15125 4025
	-1   0    0    1   
$EndComp
Text GLabel 14825 3825 0    50   Input ~ 0
C8
Text GLabel 15325 3825 2    50   Input ~ 0
C7
Text GLabel 14825 3925 0    50   Input ~ 0
C6
Text GLabel 15325 3925 2    50   Input ~ 0
C5
Text GLabel 14825 4025 0    50   Input ~ 0
C4
Text GLabel 15325 4025 2    50   Input ~ 0
C3
Text GLabel 14825 4125 0    50   Input ~ 0
C2
Text GLabel 15325 4125 2    50   Input ~ 0
C1
Text GLabel 14825 850  0    50   Input ~ 0
+5V
Text GLabel 15325 850  2    50   Input ~ 0
GND
Text GLabel 14825 1050 0    50   Input ~ 0
-5
Text GLabel 14825 1150 0    50   Input ~ 0
+12
Wire Wire Line
	14825 850  14825 950 
Wire Wire Line
	15325 850  15325 950 
Wire Wire Line
	15325 950  15325 1050
Connection ~ 15325 950 
Wire Wire Line
	15325 1050 15325 1150
Connection ~ 15325 1050
$Comp
L power:GND #PWR0141
U 1 1 60B94199
P 15450 7375
F 0 "#PWR0141" H 15450 7125 50  0001 C CNN
F 1 "GND" V 15455 7202 50  0000 C CNN
F 2 "" H 15450 7375 50  0001 C CNN
F 3 "" H 15450 7375 50  0001 C CNN
	1    15450 7375
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0142
U 1 1 60B9419F
P 15450 7475
F 0 "#PWR0142" H 15450 7325 50  0001 C CNN
F 1 "+5V" H 15465 7648 50  0000 C CNN
F 2 "" H 15450 7475 50  0001 C CNN
F 3 "" H 15450 7475 50  0001 C CNN
	1    15450 7475
	-1   0    0    1   
$EndComp
Wire Wire Line
	15650 5675 15450 5675
Wire Wire Line
	15450 6275 15700 6275
Wire Wire Line
	14550 6075 14700 6075
Wire Wire Line
	16000 6175 15450 6175
Wire Wire Line
	15450 6475 15700 6475
Wire Wire Line
	15650 7175 15450 7175
Wire Wire Line
	15650 6675 15450 6675
Wire Wire Line
	15650 5525 15550 5525
Wire Wire Line
	15550 5525 15550 5575
Wire Wire Line
	15550 5575 15450 5575
Wire Wire Line
	14300 6175 14700 6175
$Comp
L wilson-z80:TRS80W-header J27
U 1 1 60B941B0
P 15050 6475
F 0 "J27" H 15075 7640 50  0000 C CNN
F 1 "TRS80W-header" H 15075 7549 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 14550 7575 50  0001 C CNN
F 3 "" H 14550 7575 50  0001 C CNN
	1    15050 6475
	1    0    0    -1  
$EndComp
Text GLabel 15650 6675 2    50   Input ~ 0
CLK
Text GLabel 15450 6775 2    50   Input ~ 0
F_A0
Text GLabel 15450 6875 2    50   Input ~ 0
F_A1
Text GLabel 14700 7475 0    50   Input ~ 0
F_A2
Text GLabel 14700 7175 0    50   Input ~ 0
F_A3
Text GLabel 15450 7075 2    50   Input ~ 0
F_A4
Text GLabel 15450 7275 2    50   Input ~ 0
F_A5
Text GLabel 14700 7375 0    50   Input ~ 0
F_A6
Text GLabel 14700 7275 0    50   Input ~ 0
F_A7
Text GLabel 15450 6075 2    50   Input ~ 0
F_A8
Text GLabel 15450 6375 2    50   Input ~ 0
F_A9
Text GLabel 14700 5675 0    50   Input ~ 0
F_A10
Text GLabel 15450 5975 2    50   Input ~ 0
F_A11
Text GLabel 15450 5775 2    50   Input ~ 0
F_A12
Text GLabel 14700 5775 0    50   Input ~ 0
F_A13
Text GLabel 14700 5975 0    50   Input ~ 0
F_A14
Text GLabel 15450 5875 2    50   Input ~ 0
F_A15
Text GLabel 14700 6975 0    50   Input ~ 0
F_D0
Text GLabel 14700 6575 0    50   Input ~ 0
F_D1
Text GLabel 14700 7075 0    50   Input ~ 0
F_D2
Text GLabel 14700 6775 0    50   Input ~ 0
F_D3
Text GLabel 14700 6375 0    50   Input ~ 0
F_D4
Text GLabel 14700 6875 0    50   Input ~ 0
F_D5
Text GLabel 14700 6675 0    50   Input ~ 0
F_D6
Text GLabel 14700 6475 0    50   Input ~ 0
F_D7
$Comp
L power:GND #PWR0143
U 1 1 60B941CF
P 15450 6975
F 0 "#PWR0143" H 15450 6725 50  0001 C CNN
F 1 "GND" V 15455 6802 50  0000 C CNN
F 2 "" H 15450 6975 50  0001 C CNN
F 3 "" H 15450 6975 50  0001 C CNN
	1    15450 6975
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0144
U 1 1 60B941D5
P 14700 5875
F 0 "#PWR0144" H 14700 5625 50  0001 C CNN
F 1 "GND" V 14705 5702 50  0000 C CNN
F 2 "" H 14700 5875 50  0001 C CNN
F 3 "" H 14700 5875 50  0001 C CNN
	1    14700 5875
	0    1    1    0   
$EndComp
Text GLabel 14400 5575 0    50   Input ~ 0
~F_SYSRES~
Wire Wire Line
	14400 5575 14700 5575
Text GLabel 14550 6075 0    50   Input ~ 0
~F_OUT~
Text GLabel 14300 6175 0    50   Input ~ 0
~F_INTAK~
Text GLabel 15650 5525 2    50   Input ~ 0
~F_MREQ~
Text GLabel 15650 5675 2    50   Input ~ 0
~F_EXMEM~
Text GLabel 16000 6175 2    50   Input ~ 0
~F_WRITE~
Text GLabel 15700 6275 2    50   Input ~ 0
~F_READ~
Text GLabel 15700 6475 2    50   Input ~ 0
~F_IN~
Text GLabel 15450 6575 2    50   Input ~ 0
~F_INT~
Text GLabel 15650 7175 2    50   Input ~ 0
~F_WAIT~
Text GLabel 14700 6275 0    50   Input ~ 0
~F_INUSE~
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J21
U 1 1 60B941E7
P 15025 5000
F 0 "J21" H 15075 5317 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 15075 5226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 15025 5000 50  0001 C CNN
F 3 "~" H 15025 5000 50  0001 C CNN
	1    15025 5000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J33
U 1 1 60B941ED
P 15125 8075
F 0 "J33" H 15175 7650 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 15175 7741 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 15125 8075 50  0001 C CNN
F 3 "~" H 15125 8075 50  0001 C CNN
	1    15125 8075
	-1   0    0    1   
$EndComp
Text GLabel 14825 7875 0    50   Input ~ 0
C8
Text GLabel 15325 7875 2    50   Input ~ 0
C7
Text GLabel 14825 7975 0    50   Input ~ 0
C6
Text GLabel 15325 7975 2    50   Input ~ 0
C5
Text GLabel 14825 8075 0    50   Input ~ 0
C4
Text GLabel 15325 8075 2    50   Input ~ 0
C3
Text GLabel 14825 8175 0    50   Input ~ 0
C2
Text GLabel 15325 8175 2    50   Input ~ 0
C1
Text GLabel 14825 4900 0    50   Input ~ 0
+5V
Text GLabel 15325 4900 2    50   Input ~ 0
GND
Text GLabel 14825 5100 0    50   Input ~ 0
-5
Text GLabel 14825 5200 0    50   Input ~ 0
+12
Wire Wire Line
	14825 4900 14825 5000
Wire Wire Line
	15325 4900 15325 5000
Wire Wire Line
	15325 5000 15325 5100
Connection ~ 15325 5000
Wire Wire Line
	15325 5100 15325 5200
Connection ~ 15325 5100
$Comp
L power:GND #PWR0145
U 1 1 60C5961F
P 18550 3350
F 0 "#PWR0145" H 18550 3100 50  0001 C CNN
F 1 "GND" V 18555 3177 50  0000 C CNN
F 2 "" H 18550 3350 50  0001 C CNN
F 3 "" H 18550 3350 50  0001 C CNN
	1    18550 3350
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0146
U 1 1 60C59625
P 18550 3450
F 0 "#PWR0146" H 18550 3300 50  0001 C CNN
F 1 "+5V" H 18565 3623 50  0000 C CNN
F 2 "" H 18550 3450 50  0001 C CNN
F 3 "" H 18550 3450 50  0001 C CNN
	1    18550 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	18750 1650 18550 1650
Wire Wire Line
	18550 2250 18800 2250
Wire Wire Line
	17650 2050 17800 2050
Wire Wire Line
	19100 2150 18550 2150
Wire Wire Line
	18550 2450 18800 2450
Wire Wire Line
	18750 3150 18550 3150
Wire Wire Line
	18750 2650 18550 2650
Wire Wire Line
	18750 1500 18650 1500
Wire Wire Line
	18650 1500 18650 1550
Wire Wire Line
	18650 1550 18550 1550
Wire Wire Line
	17400 2150 17800 2150
$Comp
L wilson-z80:TRS80W-header J38
U 1 1 60C59636
P 18150 2450
F 0 "J38" H 18175 3615 50  0000 C CNN
F 1 "TRS80W-header" H 18175 3524 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 17650 3550 50  0001 C CNN
F 3 "" H 17650 3550 50  0001 C CNN
	1    18150 2450
	1    0    0    -1  
$EndComp
Text GLabel 18750 2650 2    50   Input ~ 0
CLK
Text GLabel 18550 2750 2    50   Input ~ 0
F_A0
Text GLabel 18550 2850 2    50   Input ~ 0
F_A1
Text GLabel 17800 3450 0    50   Input ~ 0
F_A2
Text GLabel 17800 3150 0    50   Input ~ 0
F_A3
Text GLabel 18550 3050 2    50   Input ~ 0
F_A4
Text GLabel 18550 3250 2    50   Input ~ 0
F_A5
Text GLabel 17800 3350 0    50   Input ~ 0
F_A6
Text GLabel 17800 3250 0    50   Input ~ 0
F_A7
Text GLabel 18550 2050 2    50   Input ~ 0
F_A8
Text GLabel 18550 2350 2    50   Input ~ 0
F_A9
Text GLabel 17800 1650 0    50   Input ~ 0
F_A10
Text GLabel 18550 1950 2    50   Input ~ 0
F_A11
Text GLabel 18550 1750 2    50   Input ~ 0
F_A12
Text GLabel 17800 1750 0    50   Input ~ 0
F_A13
Text GLabel 17800 1950 0    50   Input ~ 0
F_A14
Text GLabel 18550 1850 2    50   Input ~ 0
F_A15
Text GLabel 17800 2950 0    50   Input ~ 0
F_D0
Text GLabel 17800 2550 0    50   Input ~ 0
F_D1
Text GLabel 17800 3050 0    50   Input ~ 0
F_D2
Text GLabel 17800 2750 0    50   Input ~ 0
F_D3
Text GLabel 17800 2350 0    50   Input ~ 0
F_D4
Text GLabel 17800 2850 0    50   Input ~ 0
F_D5
Text GLabel 17800 2650 0    50   Input ~ 0
F_D6
Text GLabel 17800 2450 0    50   Input ~ 0
F_D7
$Comp
L power:GND #PWR0147
U 1 1 60C59655
P 18550 2950
F 0 "#PWR0147" H 18550 2700 50  0001 C CNN
F 1 "GND" V 18555 2777 50  0000 C CNN
F 2 "" H 18550 2950 50  0001 C CNN
F 3 "" H 18550 2950 50  0001 C CNN
	1    18550 2950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0148
U 1 1 60C5965B
P 17800 1850
F 0 "#PWR0148" H 17800 1600 50  0001 C CNN
F 1 "GND" V 17805 1677 50  0000 C CNN
F 2 "" H 17800 1850 50  0001 C CNN
F 3 "" H 17800 1850 50  0001 C CNN
	1    17800 1850
	0    1    1    0   
$EndComp
Text GLabel 17500 1550 0    50   Input ~ 0
~F_SYSRES~
Wire Wire Line
	17500 1550 17800 1550
Text GLabel 17650 2050 0    50   Input ~ 0
~F_OUT~
Text GLabel 17400 2150 0    50   Input ~ 0
~F_INTAK~
Text GLabel 18750 1500 2    50   Input ~ 0
~F_MREQ~
Text GLabel 18750 1650 2    50   Input ~ 0
~F_EXMEM~
Text GLabel 19100 2150 2    50   Input ~ 0
~F_WRITE~
Text GLabel 18800 2250 2    50   Input ~ 0
~F_READ~
Text GLabel 18800 2450 2    50   Input ~ 0
~F_IN~
Text GLabel 18550 2550 2    50   Input ~ 0
~F_INT~
Text GLabel 18750 3150 2    50   Input ~ 0
~F_WAIT~
Text GLabel 17800 2250 0    50   Input ~ 0
~F_INUSE~
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J37
U 1 1 60C5966D
P 18125 975
F 0 "J37" H 18175 1292 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 18175 1201 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 18125 975 50  0001 C CNN
F 3 "~" H 18125 975 50  0001 C CNN
	1    18125 975 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J39
U 1 1 60C59673
P 18225 4050
F 0 "J39" H 18275 3625 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 18275 3716 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 18225 4050 50  0001 C CNN
F 3 "~" H 18225 4050 50  0001 C CNN
	1    18225 4050
	-1   0    0    1   
$EndComp
Text GLabel 17925 3850 0    50   Input ~ 0
C8
Text GLabel 18425 3850 2    50   Input ~ 0
C7
Text GLabel 17925 3950 0    50   Input ~ 0
C6
Text GLabel 18425 3950 2    50   Input ~ 0
C5
Text GLabel 17925 4050 0    50   Input ~ 0
C4
Text GLabel 18425 4050 2    50   Input ~ 0
C3
Text GLabel 17925 4150 0    50   Input ~ 0
C2
Text GLabel 18425 4150 2    50   Input ~ 0
C1
Text GLabel 17925 875  0    50   Input ~ 0
+5V
Text GLabel 18425 875  2    50   Input ~ 0
GND
Text GLabel 17925 1075 0    50   Input ~ 0
-5
Text GLabel 17925 1175 0    50   Input ~ 0
+12
Wire Wire Line
	17925 875  17925 975 
Wire Wire Line
	18425 875  18425 975 
Wire Wire Line
	18425 975  18425 1075
Connection ~ 18425 975 
Wire Wire Line
	18425 1075 18425 1175
Connection ~ 18425 1075
$Comp
L Mechanical:MountingHole H?
U 1 1 60ADD721
P 2375 9575
F 0 "H?" H 2475 9621 50  0000 L CNN
F 1 "MountingHole" H 2475 9530 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 2375 9575 50  0001 C CNN
F 3 "~" H 2375 9575 50  0001 C CNN
	1    2375 9575
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 60ADDE9A
P 2375 9800
F 0 "H?" H 2475 9846 50  0000 L CNN
F 1 "MountingHole" H 2475 9755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 2375 9800 50  0001 C CNN
F 3 "~" H 2375 9800 50  0001 C CNN
	1    2375 9800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 60ADE144
P 2400 10000
F 0 "H?" H 2500 10046 50  0000 L CNN
F 1 "MountingHole" H 2500 9955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 2400 10000 50  0001 C CNN
F 3 "~" H 2400 10000 50  0001 C CNN
	1    2400 10000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 60ADE49A
P 1975 9975
F 0 "H?" H 2075 10021 50  0000 L CNN
F 1 "MountingHole" H 2075 9930 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 1975 9975 50  0001 C CNN
F 3 "~" H 1975 9975 50  0001 C CNN
	1    1975 9975
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 60ADE627
P 1900 9725
F 0 "H?" H 2000 9771 50  0000 L CNN
F 1 "MountingHole" H 2000 9680 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 1900 9725 50  0001 C CNN
F 3 "~" H 1900 9725 50  0001 C CNN
	1    1900 9725
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 60ADE952
P 1900 9400
F 0 "H?" H 2000 9446 50  0000 L CNN
F 1 "MountingHole" H 2000 9355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 1900 9400 50  0001 C CNN
F 3 "~" H 1900 9400 50  0001 C CNN
	1    1900 9400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
