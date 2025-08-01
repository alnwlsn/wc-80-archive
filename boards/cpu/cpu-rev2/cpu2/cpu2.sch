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
$Comp
L wilson-z80:Z80CPU U5
U 1 1 601B9AC1
P 7400 8800
F 0 "U5" H 7800 10300 50  0000 C CNN
F 1 "Z80CPU" H 7000 10300 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_Socket" H 7400 9200 50  0001 C CNN
F 3 "www.zilog.com/manage_directlink.php?filepath=docs/z80/um0080" H 7400 9200 50  0001 C CNN
	1    7400 8800
	1    0    0    -1  
$EndComp
$Comp
L wilson-z80:74HC670 U14
U 1 1 601BEC76
P 13200 6850
F 0 "U14" H 13200 6277 50  0000 C CNN
F 1 "74HC670" H 13200 6186 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 13200 6300 50  0001 C CNN
F 3 "" H 13200 6850 50  0001 C CNN
	1    13200 6850
	1    0    0    -1  
$EndComp
Text GLabel 8100 7600 2    50   Input ~ 0
A0
Text GLabel 8100 7700 2    50   Input ~ 0
A1
Text GLabel 8100 7800 2    50   Input ~ 0
A2
Text GLabel 8100 7900 2    50   Input ~ 0
A3
Text GLabel 8100 8000 2    50   Input ~ 0
A4
Text GLabel 8100 8100 2    50   Input ~ 0
A5
Text GLabel 8100 8200 2    50   Input ~ 0
A6
Text GLabel 8100 8300 2    50   Input ~ 0
A7
Text GLabel 8100 8400 2    50   Input ~ 0
A8
Text GLabel 8100 8500 2    50   Input ~ 0
A9
Text GLabel 8100 8600 2    50   Input ~ 0
A10
Text GLabel 8100 8700 2    50   Input ~ 0
A11
Text GLabel 8100 8800 2    50   Input ~ 0
A12
Text GLabel 8100 8900 2    50   Input ~ 0
A13
Text GLabel 8100 9000 2    50   Input ~ 0
A14
Text GLabel 8100 9100 2    50   Input ~ 0
A15
Text GLabel 8100 9300 2    50   Input ~ 0
D0
Text GLabel 8100 9400 2    50   Input ~ 0
D1
Text GLabel 8100 9500 2    50   Input ~ 0
D2
Text GLabel 8100 9600 2    50   Input ~ 0
D3
Text GLabel 8100 9700 2    50   Input ~ 0
D4
Text GLabel 8100 9900 2    50   Input ~ 0
D6
Text GLabel 8100 10000 2    50   Input ~ 0
D7
Text GLabel 12650 5550 0    50   Input ~ 0
D0
Text GLabel 12650 5650 0    50   Input ~ 0
D1
Text GLabel 12650 5750 0    50   Input ~ 0
D2
Text GLabel 12650 5850 0    50   Input ~ 0
D3
Text GLabel 12650 7000 0    50   Input ~ 0
D4
Text GLabel 8100 9800 2    50   Input ~ 0
D5
Text GLabel 12650 7100 0    50   Input ~ 0
D5
Text GLabel 12650 7200 0    50   Input ~ 0
D6
Text GLabel 12650 7300 0    50   Input ~ 0
D7
Text GLabel 13750 5650 2    50   Input ~ 0
S1
Text GLabel 13750 5750 2    50   Input ~ 0
S2
Text GLabel 13750 5850 2    50   Input ~ 0
S3
$Comp
L wilson-z80:74HC670 U13
U 1 1 601BE04C
P 13200 5400
F 0 "U13" H 13200 5450 50  0000 C CNN
F 1 "74HC670" H 12950 6050 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 13200 4850 50  0001 C CNN
F 3 "" H 13200 5400 50  0001 C CNN
	1    13200 5400
	1    0    0    -1  
$EndComp
Text GLabel 13750 5550 2    50   Input ~ 0
S0
Text GLabel 13750 7000 2    50   Input ~ 0
S4
$Comp
L 74xx:74LS132 U2
U 1 1 601CC31C
P 9525 7850
F 0 "U2" H 9525 8150 50  0000 C CNN
F 1 "74LS132" H 9525 8050 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 9525 7850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS132" H 9525 7850 50  0001 C CNN
	1    9525 7850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS132 U2
U 2 1 601CEC3C
P 9525 8200
F 0 "U2" H 9525 7925 50  0000 C CNN
F 1 "74LS132" H 9525 8000 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 9525 8200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS132" H 9525 8200 50  0001 C CNN
	2    9525 8200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS132 U2
U 3 1 601D0E18
P 5800 8200
F 0 "U2" H 5800 8525 50  0000 C CNN
F 1 "74LS132" H 5800 8434 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5800 8200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS132" H 5800 8200 50  0001 C CNN
	3    5800 8200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS132 U2
U 4 1 601D2518
P 5800 9450
F 0 "U2" H 5800 9775 50  0000 C CNN
F 1 "74LS132" H 5800 9684 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5800 9450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS132" H 5800 9450 50  0001 C CNN
	4    5800 9450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS132 U2
U 5 1 601D2C8E
P 6650 1250
F 0 "U2" H 6880 1296 50  0000 L CNN
F 1 "74LS132" H 6880 1205 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6650 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS132" H 6650 1250 50  0001 C CNN
	5    6650 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 8100 5500 8300
Wire Wire Line
	5500 9350 5500 9550
$Comp
L Device:R R6
U 1 1 601F321E
P 5300 9600
F 0 "R6" H 5370 9646 50  0000 L CNN
F 1 "4k7" H 5370 9555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5230 9600 50  0001 C CNN
F 3 "~" H 5300 9600 50  0001 C CNN
	1    5300 9600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 601F37E3
P 5300 9750
F 0 "#PWR0101" H 5300 9500 50  0001 C CNN
F 1 "GND" H 5305 9577 50  0000 C CNN
F 2 "" H 5300 9750 50  0001 C CNN
F 3 "" H 5300 9750 50  0001 C CNN
	1    5300 9750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 601F4545
P 5300 8950
F 0 "#PWR0102" H 5300 8800 50  0001 C CNN
F 1 "+5V" H 5175 9025 50  0000 C CNN
F 2 "" H 5300 8950 50  0001 C CNN
F 3 "" H 5300 8950 50  0001 C CNN
	1    5300 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 9350 5300 9350
Connection ~ 5500 9350
Wire Wire Line
	5300 9350 5300 9450
Connection ~ 5300 9350
Wire Wire Line
	5300 9000 5300 8950
Wire Wire Line
	5300 9300 5300 9350
$Comp
L Device:C C1
U 1 1 602025A0
P 5300 7900
F 0 "C1" H 5415 7946 50  0000 L CNN
F 1 "4u7" H 5415 7855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5338 7750 50  0001 C CNN
F 3 "~" H 5300 7900 50  0001 C CNN
	1    5300 7900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 602025AC
P 5300 8500
F 0 "#PWR0103" H 5300 8250 50  0001 C CNN
F 1 "GND" H 5425 8425 50  0000 C CNN
F 2 "" H 5300 8500 50  0001 C CNN
F 3 "" H 5300 8500 50  0001 C CNN
	1    5300 8500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 602025B2
P 5300 7700
F 0 "#PWR0104" H 5300 7550 50  0001 C CNN
F 1 "+5V" H 5315 7873 50  0000 C CNN
F 2 "" H 5300 7700 50  0001 C CNN
F 3 "" H 5300 7700 50  0001 C CNN
	1    5300 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 8100 5300 8100
Wire Wire Line
	5300 8100 5300 8200
Connection ~ 5300 8100
Wire Wire Line
	5300 7750 5300 7700
Wire Wire Line
	5300 8050 5300 8100
Connection ~ 5500 8100
Wire Wire Line
	6700 7600 6300 7600
Wire Wire Line
	6300 9450 6100 9450
Wire Wire Line
	6100 8200 6200 8200
Wire Wire Line
	12650 5400 12300 5400
Wire Wire Line
	12650 6850 12300 6850
Text GLabel 12650 4900 0    50   Input ~ 0
A0
Text GLabel 12650 5000 0    50   Input ~ 0
A1
Text GLabel 12650 5100 0    50   Input ~ 0
A14
Text GLabel 12650 5200 0    50   Input ~ 0
A15
Text GLabel 12650 6350 0    50   Input ~ 0
A0
Text GLabel 12650 6450 0    50   Input ~ 0
A1
Text GLabel 12650 6550 0    50   Input ~ 0
A14
Text GLabel 12650 6650 0    50   Input ~ 0
A15
$Comp
L power:GND #PWR0105
U 1 1 6026FD2D
P 7400 10300
F 0 "#PWR0105" H 7400 10050 50  0001 C CNN
F 1 "GND" H 7405 10127 50  0000 C CNN
F 2 "" H 7400 10300 50  0001 C CNN
F 3 "" H 7400 10300 50  0001 C CNN
	1    7400 10300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 60270228
P 7400 7300
F 0 "#PWR0106" H 7400 7150 50  0001 C CNN
F 1 "+5V" H 7415 7473 50  0000 C CNN
F 2 "" H 7400 7300 50  0001 C CNN
F 3 "" H 7400 7300 50  0001 C CNN
	1    7400 7300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 602745F6
P 6650 750
F 0 "#PWR0107" H 6650 600 50  0001 C CNN
F 1 "+5V" H 6665 923 50  0000 C CNN
F 2 "" H 6650 750 50  0001 C CNN
F 3 "" H 6650 750 50  0001 C CNN
	1    6650 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 60274B3C
P 6650 1750
F 0 "#PWR0108" H 6650 1500 50  0001 C CNN
F 1 "GND" H 6655 1577 50  0000 C CNN
F 2 "" H 6650 1750 50  0001 C CNN
F 3 "" H 6650 1750 50  0001 C CNN
	1    6650 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 602752C8
P 13350 4750
F 0 "#PWR0109" H 13350 4600 50  0001 C CNN
F 1 "+5V" H 13400 4900 50  0000 C CNN
F 2 "" H 13350 4750 50  0001 C CNN
F 3 "" H 13350 4750 50  0001 C CNN
	1    13350 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 60275B40
P 13250 4750
F 0 "#PWR0110" H 13250 4500 50  0001 C CNN
F 1 "GND" H 13300 4600 50  0000 C CNN
F 2 "" H 13250 4750 50  0001 C CNN
F 3 "" H 13250 4750 50  0001 C CNN
	1    13250 4750
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 602762D4
P 13350 6200
F 0 "#PWR0111" H 13350 6050 50  0001 C CNN
F 1 "+5V" H 13400 6350 50  0000 C CNN
F 2 "" H 13350 6200 50  0001 C CNN
F 3 "" H 13350 6200 50  0001 C CNN
	1    13350 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 60276ACA
P 13250 6200
F 0 "#PWR0112" H 13250 5950 50  0001 C CNN
F 1 "GND" H 13300 6050 50  0000 C CNN
F 2 "" H 13250 6200 50  0001 C CNN
F 3 "" H 13250 6200 50  0001 C CNN
	1    13250 6200
	-1   0    0    1   
$EndComp
Text GLabel 9775 6000 2    50   Input ~ 0
RAM~ROM~
$Comp
L power:+5V #PWR0113
U 1 1 60285638
P 7500 750
F 0 "#PWR0113" H 7500 600 50  0001 C CNN
F 1 "+5V" H 7515 923 50  0000 C CNN
F 2 "" H 7500 750 50  0001 C CNN
F 3 "" H 7500 750 50  0001 C CNN
	1    7500 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 60285C5C
P 7500 1750
F 0 "#PWR0114" H 7500 1500 50  0001 C CNN
F 1 "GND" H 7505 1577 50  0000 C CNN
F 2 "" H 7500 1750 50  0001 C CNN
F 3 "" H 7500 1750 50  0001 C CNN
	1    7500 1750
	1    0    0    -1  
$EndComp
Text GLabel 6600 9200 0    50   Input ~ 0
~RD~
Text GLabel 6600 9350 0    50   Input ~ 0
~WR~
Text GLabel 6700 9500 0    50   Input ~ 0
~MREQ~
Text GLabel 6700 9650 0    50   Input ~ 0
~IORQ~
Wire Wire Line
	6700 9600 6700 9650
Text GLabel 12125 3150 0    50   Input ~ 0
~MREQ~
Text GLabel 12125 3700 0    50   Input ~ 0
~MREQ~
Text GLabel 12125 4250 0    50   Input ~ 0
~IORQ~
Text GLabel 13325 3650 0    50   Input ~ 0
~IORQ~
Text GLabel 12125 2950 0    50   Input ~ 0
~RD~
Text GLabel 12125 4050 0    50   Input ~ 0
~RD~
Text GLabel 12125 3500 0    50   Input ~ 0
~WR~
Text GLabel 13325 3450 0    50   Input ~ 0
~WR~
Text GLabel 12725 3050 2    50   Input ~ 0
~READ~
Text GLabel 12725 3600 2    50   Input ~ 0
~WRITE~
Text GLabel 12725 4150 2    50   Input ~ 0
~IN~
Text GLabel 13925 3550 2    50   Input ~ 0
~OUT~
$Comp
L 74xx:74LS32 U6
U 1 1 602AFEBA
P 12425 3050
F 0 "U6" H 12425 3375 50  0000 C CNN
F 1 "74LS32" H 12425 3284 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 12425 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 12425 3050 50  0001 C CNN
	1    12425 3050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U6
U 2 1 602B1F3F
P 12425 3600
F 0 "U6" H 12425 3925 50  0000 C CNN
F 1 "74LS32" H 12425 3834 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 12425 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 12425 3600 50  0001 C CNN
	2    12425 3600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U6
U 3 1 602B4802
P 12425 4150
F 0 "U6" H 12425 4475 50  0000 C CNN
F 1 "74LS32" H 12425 4384 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 12425 4150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 12425 4150 50  0001 C CNN
	3    12425 4150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U6
U 4 1 602B5EBA
P 13625 3550
F 0 "U6" H 13625 3875 50  0000 C CNN
F 1 "74LS32" H 13625 3784 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 13625 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 13625 3550 50  0001 C CNN
	4    13625 3550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U6
U 5 1 602B7EEF
P 7500 1250
F 0 "U6" H 7730 1296 50  0000 L CNN
F 1 "74LS32" H 7730 1205 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 7500 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 7500 1250 50  0001 C CNN
	5    7500 1250
	1    0    0    -1  
$EndComp
Text GLabel 8575 5100 0    50   Input ~ 0
~OUT~
Text GLabel 8825 5200 0    50   Input ~ 0
~MREQ~
Text GLabel 8825 6000 0    50   Input ~ 0
A0
Text GLabel 8825 5900 0    50   Input ~ 0
A1
Text GLabel 8825 5800 0    50   Input ~ 0
A2
Text GLabel 8825 5700 0    50   Input ~ 0
A3
Text GLabel 8825 5600 0    50   Input ~ 0
A4
Text GLabel 8825 5500 0    50   Input ~ 0
A5
Text GLabel 8825 5400 0    50   Input ~ 0
A6
Text GLabel 8825 5300 0    50   Input ~ 0
A7
$Comp
L power:GND #PWR0115
U 1 1 602BCEA5
P 8825 6200
F 0 "#PWR0115" H 8825 5950 50  0001 C CNN
F 1 "GND" H 8825 6050 50  0000 C CNN
F 2 "" H 8825 6200 50  0001 C CNN
F 3 "" H 8825 6200 50  0001 C CNN
	1    8825 6200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 602BDC9E
P 9425 5100
F 0 "#PWR0116" H 9425 4950 50  0001 C CNN
F 1 "+5V" H 9425 5250 50  0000 C CNN
F 2 "" H 9425 5100 50  0001 C CNN
F 3 "" H 9425 5100 50  0001 C CNN
	1    9425 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	12650 6750 12400 6750
Wire Wire Line
	12650 5300 12400 5300
Wire Wire Line
	12400 5300 12400 6125
$Comp
L power:GND #PWR0117
U 1 1 602EB38A
P 15675 8700
F 0 "#PWR0117" H 15675 8450 50  0001 C CNN
F 1 "GND" H 15675 8550 50  0000 C CNN
F 2 "" H 15675 8700 50  0001 C CNN
F 3 "" H 15675 8700 50  0001 C CNN
	1    15675 8700
	0    1    1    0   
$EndComp
Text GLabel 15975 7650 2    50   Input ~ 0
S0
Text GLabel 15975 7825 2    50   Input ~ 0
S1
Text GLabel 15975 8000 2    50   Input ~ 0
S2
Text GLabel 15975 8175 2    50   Input ~ 0
S3
Text GLabel 15975 8350 2    50   Input ~ 0
S4
Text GLabel 15975 8700 2    50   Input ~ 0
RAM~ROM~
Text GLabel 15975 8875 2    50   Input ~ 0
~EXMEM~
Text GLabel 13750 7300 2    50   Input ~ 0
~EXMEM~
Text GLabel 13750 7100 2    50   Input ~ 0
MEMCHIP
Text GLabel 6300 7550 1    50   Input ~ 0
~SYSRES~
Wire Wire Line
	6300 7550 6300 7600
Connection ~ 6300 7600
$Comp
L Device:R R17
U 1 1 60203BFA
P 13525 4175
F 0 "R17" H 13595 4221 50  0000 L CNN
F 1 "4k7" H 13595 4130 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 13455 4175 50  0001 C CNN
F 3 "~" H 13525 4175 50  0001 C CNN
	1    13525 4175
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 602047BC
P 13525 3900
F 0 "R16" H 13595 3946 50  0000 L CNN
F 1 "4k7" H 13595 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 13455 3900 50  0001 C CNN
F 3 "~" H 13525 3900 50  0001 C CNN
	1    13525 3900
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0118
U 1 1 60205122
P 13375 3900
F 0 "#PWR0118" H 13375 3750 50  0001 C CNN
F 1 "+5V" H 13390 4073 50  0000 C CNN
F 2 "" H 13375 3900 50  0001 C CNN
F 3 "" H 13375 3900 50  0001 C CNN
	1    13375 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0119
U 1 1 6020570C
P 13375 4175
F 0 "#PWR0119" H 13375 4025 50  0001 C CNN
F 1 "+5V" H 13390 4348 50  0000 C CNN
F 2 "" H 13375 4175 50  0001 C CNN
F 3 "" H 13375 4175 50  0001 C CNN
	1    13375 4175
	0    -1   -1   0   
$EndComp
Text GLabel 13675 4175 2    50   Input ~ 0
~WAIT~
Text GLabel 6700 8300 0    50   Input ~ 0
~INT~
$Comp
L Device:R R9
U 1 1 60220DB4
P 6550 9900
F 0 "R9" H 6620 9946 50  0000 L CNN
F 1 "4k7" H 6620 9855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6480 9900 50  0001 C CNN
F 3 "~" H 6550 9900 50  0001 C CNN
	1    6550 9900
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0120
U 1 1 6022162E
P 6400 9900
F 0 "#PWR0120" H 6400 9750 50  0001 C CNN
F 1 "+5V" H 6415 10073 50  0000 C CNN
F 2 "" H 6400 9900 50  0001 C CNN
F 3 "" H 6400 9900 50  0001 C CNN
	1    6400 9900
	0    -1   -1   0   
$EndComp
Text GLabel 14525 3050 2    50   Input ~ 0
~INTAK~
Text GLabel 6700 8600 0    50   Input ~ 0
M1
Text GLabel 13325 2950 0    50   Input ~ 0
M1
Text GLabel 13325 3150 0    50   Input ~ 0
~IORQ~
$Comp
L Device:C C2
U 1 1 601EE4D7
P 5300 9150
F 0 "C2" H 5415 9196 50  0000 L CNN
F 1 "2u2" H 5415 9105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5338 9000 50  0001 C CNN
F 3 "~" H 5300 9150 50  0001 C CNN
	1    5300 9150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 602025A6
P 5300 8350
F 0 "R5" H 5370 8396 50  0000 L CNN
F 1 "4k7" H 5370 8305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5230 8350 50  0001 C CNN
F 3 "~" H 5300 8350 50  0001 C CNN
	1    5300 8350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 60316CA4
P 5150 8100
F 0 "R3" H 5220 8146 50  0000 L CNN
F 1 "10" H 5220 8055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5080 8100 50  0001 C CNN
F 3 "~" H 5150 8100 50  0001 C CNN
	1    5150 8100
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 603175B3
P 5150 9350
F 0 "R4" H 5220 9396 50  0000 L CNN
F 1 "10" H 5220 9305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5080 9350 50  0001 C CNN
F 3 "~" H 5150 9350 50  0001 C CNN
	1    5150 9350
	0    1    1    0   
$EndComp
Text GLabel 6700 7900 0    50   Input ~ 0
CLK
NoConn ~ 6700 8700
$Comp
L Device:R R8
U 1 1 603776B5
P 6100 8900
F 0 "R8" V 6175 8850 50  0000 L CNN
F 1 "1K" V 6100 8850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6030 8900 50  0001 C CNN
F 3 "~" H 6100 8900 50  0001 C CNN
	1    6100 8900
	0    1    1    0   
$EndComp
$Comp
L Device:LED D3
U 1 1 60377DBA
P 5800 8900
F 0 "D3" H 5900 8850 50  0000 L CNN
F 1 "HALT" H 5875 8975 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm_FlatTop" H 5800 8900 50  0001 C CNN
F 3 "~" H 5800 8900 50  0001 C CNN
	1    5800 8900
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0121
U 1 1 6037F08B
P 5650 8900
F 0 "#PWR0121" H 5650 8750 50  0001 C CNN
F 1 "+5V" H 5665 9073 50  0000 C CNN
F 2 "" H 5650 8900 50  0001 C CNN
F 3 "" H 5650 8900 50  0001 C CNN
	1    5650 8900
	0    -1   -1   0   
$EndComp
Text Notes 14550 9750 0    50   ~ 0
WC-80 CPU\nrev2 - Alan Wilson 2022
$Comp
L power:GND #PWR0122
U 1 1 607DD22C
P 15550 6925
F 0 "#PWR0122" H 15550 6675 50  0001 C CNN
F 1 "GND" V 15555 6752 50  0000 C CNN
F 2 "" H 15550 6925 50  0001 C CNN
F 3 "" H 15550 6925 50  0001 C CNN
	1    15550 6925
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0123
U 1 1 607DD23E
P 15550 7025
F 0 "#PWR0123" H 15550 6875 50  0001 C CNN
F 1 "+5V" H 15565 7198 50  0000 C CNN
F 2 "" H 15550 7025 50  0001 C CNN
F 3 "" H 15550 7025 50  0001 C CNN
	1    15550 7025
	-1   0    0    1   
$EndComp
Text GLabel 14725 1025 0    50   Input ~ 0
~SYSRES~
Text GLabel 14725 1225 0    50   Input ~ 0
~EXMEM~
Wire Wire Line
	15750 5225 15550 5225
Text GLabel 14425 1725 0    50   Input ~ 0
~READ~
Text GLabel 14725 1625 0    50   Input ~ 0
~WRITE~
Text GLabel 14425 1525 0    50   Input ~ 0
~IN~
Text GLabel 14725 1425 0    50   Input ~ 0
~OUT~
Wire Wire Line
	15550 5825 15800 5825
Wire Wire Line
	14650 5625 14800 5625
Wire Wire Line
	16100 5725 15550 5725
Wire Wire Line
	15550 6025 15800 6025
Text GLabel 9550 1325 0    50   Input ~ 0
D3
Text GLabel 9550 1225 0    50   Input ~ 0
D2
Text GLabel 9550 1125 0    50   Input ~ 0
D1
Text GLabel 9550 1025 0    50   Input ~ 0
D0
Text GLabel 12800 1725 0    50   Input ~ 0
A15
Text GLabel 12800 1625 0    50   Input ~ 0
A14
Text GLabel 12800 1525 0    50   Input ~ 0
A13
Text GLabel 12800 1425 0    50   Input ~ 0
A12
Text GLabel 12800 1325 0    50   Input ~ 0
A11
Text GLabel 12800 1225 0    50   Input ~ 0
A10
Text GLabel 12800 1125 0    50   Input ~ 0
A9
Text GLabel 12800 1025 0    50   Input ~ 0
A8
Text GLabel 11200 1725 0    50   Input ~ 0
A7
Text GLabel 11200 1625 0    50   Input ~ 0
A6
Text GLabel 11200 1525 0    50   Input ~ 0
A5
Text GLabel 11200 1425 0    50   Input ~ 0
A4
Text GLabel 11200 1325 0    50   Input ~ 0
A3
Text GLabel 11200 1225 0    50   Input ~ 0
A2
Text GLabel 11200 1125 0    50   Input ~ 0
A1
Text GLabel 11200 1025 0    50   Input ~ 0
A0
Wire Wire Line
	15750 6725 15550 6725
Wire Wire Line
	15750 6225 15550 6225
Text GLabel 14375 1125 0    50   Input ~ 0
~MREQ~
Wire Wire Line
	15750 5075 15650 5075
Wire Wire Line
	15650 5075 15650 5125
Wire Wire Line
	15650 5125 15550 5125
Text GLabel 14375 1325 0    50   Input ~ 0
~INTAK~
Wire Wire Line
	14400 5725 14800 5725
$Comp
L wilson-z80:TRS80W-header J3
U 1 1 607DD279
P 15150 6025
F 0 "J3" H 15175 7190 50  0000 C CNN
F 1 "TRS80W-header" H 15175 7099 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 14650 7125 50  0001 C CNN
F 3 "" H 14650 7125 50  0001 C CNN
	1    15150 6025
	1    0    0    -1  
$EndComp
Text GLabel 15750 6225 2    50   Input ~ 0
CLK
$Comp
L power:GND #PWR0124
U 1 1 607EE1EC
P 11700 2375
F 0 "#PWR0124" H 11700 2125 50  0001 C CNN
F 1 "GND" H 11705 2202 50  0000 C CNN
F 2 "" H 11700 2375 50  0001 C CNN
F 3 "" H 11700 2375 50  0001 C CNN
	1    11700 2375
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0125
U 1 1 607EEF0C
P 11700 725
F 0 "#PWR0125" H 11700 575 50  0001 C CNN
F 1 "+5V" H 11500 725 50  0000 C CNN
F 2 "" H 11700 725 50  0001 C CNN
F 3 "" H 11700 725 50  0001 C CNN
	1    11700 725 
	1    0    0    -1  
$EndComp
Wire Wire Line
	11700 2325 11700 2375
Wire Wire Line
	13300 2325 13300 2375
$Comp
L 74xx:74HC245 U10
U 1 1 608278E0
P 10050 1525
F 0 "U10" H 10050 1775 50  0000 C CNN
F 1 "74HC245" V 10150 1575 50  0000 C CNN
F 2 "Package_SO:SO-20_5.3x12.6mm_P1.27mm" H 10050 1525 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 10050 1525 50  0001 C CNN
	1    10050 1525
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 608278E6
P 10050 2375
F 0 "#PWR0126" H 10050 2125 50  0001 C CNN
F 1 "GND" H 10055 2202 50  0000 C CNN
F 2 "" H 10050 2375 50  0001 C CNN
F 3 "" H 10050 2375 50  0001 C CNN
	1    10050 2375
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0127
U 1 1 608278EC
P 10050 725
F 0 "#PWR0127" H 10050 575 50  0001 C CNN
F 1 "+5V" H 10065 898 50  0000 C CNN
F 2 "" H 10050 725 50  0001 C CNN
F 3 "" H 10050 725 50  0001 C CNN
	1    10050 725 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 2325 10050 2375
Text GLabel 9550 1425 0    50   Input ~ 0
D4
Text GLabel 9550 1525 0    50   Input ~ 0
D5
Text GLabel 9550 1625 0    50   Input ~ 0
D6
Text GLabel 9550 1725 0    50   Input ~ 0
D7
Text GLabel 12200 1025 2    50   Input ~ 0
F_A0
Text GLabel 12200 1125 2    50   Input ~ 0
F_A1
Text GLabel 12200 1225 2    50   Input ~ 0
F_A2
Text GLabel 12200 1325 2    50   Input ~ 0
F_A3
Text GLabel 12200 1425 2    50   Input ~ 0
F_A4
Text GLabel 12200 1525 2    50   Input ~ 0
F_A5
Text GLabel 12200 1625 2    50   Input ~ 0
F_A6
Text GLabel 12200 1725 2    50   Input ~ 0
F_A7
Text GLabel 13800 1025 2    50   Input ~ 0
F_A8
Text GLabel 13800 1225 2    50   Input ~ 0
F_A10
Text GLabel 13800 1125 2    50   Input ~ 0
F_A9
Text GLabel 13800 1325 2    50   Input ~ 0
F_A11
Text GLabel 13800 1425 2    50   Input ~ 0
F_A12
Text GLabel 13800 1525 2    50   Input ~ 0
F_A13
Text GLabel 13800 1625 2    50   Input ~ 0
F_A14
Text GLabel 13800 1725 2    50   Input ~ 0
F_A15
Text GLabel 10550 1025 2    50   Input ~ 0
F_D0
Text GLabel 10550 1125 2    50   Input ~ 0
F_D1
Text GLabel 10550 1225 2    50   Input ~ 0
F_D2
Text GLabel 10550 1325 2    50   Input ~ 0
F_D3
Text GLabel 10550 1425 2    50   Input ~ 0
F_D4
Text GLabel 10550 1525 2    50   Input ~ 0
F_D5
Text GLabel 10550 1625 2    50   Input ~ 0
F_D6
Text GLabel 10550 1725 2    50   Input ~ 0
F_D7
Text GLabel 15550 6325 2    50   Input ~ 0
F_A0
Text GLabel 15550 6425 2    50   Input ~ 0
F_A1
Text GLabel 14800 7025 0    50   Input ~ 0
F_A2
Text GLabel 14800 6725 0    50   Input ~ 0
F_A3
Text GLabel 15550 6625 2    50   Input ~ 0
F_A4
Text GLabel 15550 6825 2    50   Input ~ 0
F_A5
Text GLabel 14800 6925 0    50   Input ~ 0
F_A6
Text GLabel 14800 6825 0    50   Input ~ 0
F_A7
Text GLabel 15550 5625 2    50   Input ~ 0
F_A8
Text GLabel 15550 5925 2    50   Input ~ 0
F_A9
Text GLabel 14800 5225 0    50   Input ~ 0
F_A10
Text GLabel 15550 5525 2    50   Input ~ 0
F_A11
Text GLabel 15550 5325 2    50   Input ~ 0
F_A12
Text GLabel 14800 5325 0    50   Input ~ 0
F_A13
Text GLabel 14800 5525 0    50   Input ~ 0
F_A14
Text GLabel 15550 5425 2    50   Input ~ 0
F_A15
Text GLabel 14800 6525 0    50   Input ~ 0
F_D0
Text GLabel 14800 6125 0    50   Input ~ 0
F_D1
Text GLabel 14800 6625 0    50   Input ~ 0
F_D2
Text GLabel 14800 6325 0    50   Input ~ 0
F_D3
Text GLabel 14800 5925 0    50   Input ~ 0
F_D4
Text GLabel 14800 6425 0    50   Input ~ 0
F_D5
Text GLabel 14800 6225 0    50   Input ~ 0
F_D6
Text GLabel 14800 6025 0    50   Input ~ 0
F_D7
$Comp
L power:GND #PWR0128
U 1 1 60801C43
P 13300 2375
F 0 "#PWR0128" H 13300 2125 50  0001 C CNN
F 1 "GND" H 13305 2202 50  0000 C CNN
F 2 "" H 13300 2375 50  0001 C CNN
F 3 "" H 13300 2375 50  0001 C CNN
	1    13300 2375
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0129
U 1 1 60801FD0
P 13300 725
F 0 "#PWR0129" H 13300 575 50  0001 C CNN
F 1 "+5V" H 13150 675 50  0000 C CNN
F 2 "" H 13300 725 50  0001 C CNN
F 3 "" H 13300 725 50  0001 C CNN
	1    13300 725 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 60820152
P 15550 6525
F 0 "#PWR0130" H 15550 6275 50  0001 C CNN
F 1 "GND" V 15555 6352 50  0000 C CNN
F 2 "" H 15550 6525 50  0001 C CNN
F 3 "" H 15550 6525 50  0001 C CNN
	1    15550 6525
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 608206D8
P 14800 5425
F 0 "#PWR0131" H 14800 5175 50  0001 C CNN
F 1 "GND" V 14805 5252 50  0000 C CNN
F 2 "" H 14800 5425 50  0001 C CNN
F 3 "" H 14800 5425 50  0001 C CNN
	1    14800 5425
	0    1    1    0   
$EndComp
Wire Wire Line
	15225 2325 15225 2375
$Comp
L power:GND #PWR0132
U 1 1 6082D209
P 15225 2375
F 0 "#PWR0132" H 15225 2125 50  0001 C CNN
F 1 "GND" H 15230 2202 50  0000 C CNN
F 2 "" H 15225 2375 50  0001 C CNN
F 3 "" H 15225 2375 50  0001 C CNN
	1    15225 2375
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0133
U 1 1 6082D20F
P 15225 725
F 0 "#PWR0133" H 15225 575 50  0001 C CNN
F 1 "+5V" H 15075 675 50  0000 C CNN
F 2 "" H 15225 725 50  0001 C CNN
F 3 "" H 15225 725 50  0001 C CNN
	1    15225 725 
	1    0    0    -1  
$EndComp
Wire Wire Line
	14375 1125 14725 1125
Wire Wire Line
	14725 1325 14375 1325
Wire Wire Line
	14725 1525 14425 1525
Wire Wire Line
	14725 1725 14425 1725
Text GLabel 16075 1025 2    50   Input ~ 0
~F_SYSRES~
Text GLabel 16075 1225 2    50   Input ~ 0
~F_EXMEM~
Text GLabel 15725 1725 2    50   Input ~ 0
~F_READ~
Text GLabel 16075 1625 2    50   Input ~ 0
~F_WRITE~
Text GLabel 15725 1525 2    50   Input ~ 0
~F_IN~
Text GLabel 16075 1425 2    50   Input ~ 0
~F_OUT~
Text GLabel 15725 1125 2    50   Input ~ 0
~F_MREQ~
Text GLabel 15725 1325 2    50   Input ~ 0
~F_INTAK~
Wire Wire Line
	16075 1025 15725 1025
Wire Wire Line
	16075 1225 15725 1225
Wire Wire Line
	16075 1425 15725 1425
Wire Wire Line
	15725 1625 16075 1625
Text GLabel 14500 5125 0    50   Input ~ 0
~F_SYSRES~
Wire Wire Line
	14500 5125 14800 5125
Text GLabel 14650 5625 0    50   Input ~ 0
~F_OUT~
Text GLabel 14400 5725 0    50   Input ~ 0
~F_INTAK~
Text GLabel 15750 5075 2    50   Input ~ 0
~F_MREQ~
Text GLabel 15750 5225 2    50   Input ~ 0
~F_EXMEM~
Text GLabel 16100 5725 2    50   Input ~ 0
~F_WRITE~
Text GLabel 15800 5825 2    50   Input ~ 0
~F_READ~
Text GLabel 15800 6025 2    50   Input ~ 0
~F_IN~
Text GLabel 15550 6125 2    50   Input ~ 0
~F_INT~
Text GLabel 15750 6725 2    50   Input ~ 0
~F_WAIT~
Text GLabel 15350 3925 0    50   Input ~ 0
~F_WAIT~
Text GLabel 14800 5825 0    50   Input ~ 0
~F_INUSE~
Text GLabel 15350 2825 0    50   Input ~ 0
~F_INUSE~
Text GLabel 15950 2925 2    50   Input ~ 0
~INUSE~
Text GLabel 15350 3375 0    50   Input ~ 0
~F_INT~
Text GLabel 15950 3475 2    50   Input ~ 0
~INT~
Text GLabel 15950 4025 2    50   Input ~ 0
~WAIT~
Wire Wire Line
	15350 3025 15350 2925
Wire Wire Line
	15350 3575 15350 3475
Wire Wire Line
	15350 4125 15350 4025
$Comp
L Device:R R18
U 1 1 608AF3F5
P 15150 3025
F 0 "R18" V 15250 3075 50  0000 L CNN
F 1 "4k7" V 15150 2975 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 15080 3025 50  0001 C CNN
F 3 "~" H 15150 3025 50  0001 C CNN
	1    15150 3025
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 608B0386
P 15150 4125
F 0 "R20" V 15250 4175 50  0000 L CNN
F 1 "4k7" V 15150 4075 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 15080 4125 50  0001 C CNN
F 3 "~" H 15150 4125 50  0001 C CNN
	1    15150 4125
	0    1    1    0   
$EndComp
Wire Wire Line
	15300 3025 15350 3025
Wire Wire Line
	15300 3575 15350 3575
Wire Wire Line
	15300 4125 15350 4125
$Comp
L power:+5V #PWR0136
U 1 1 608BACA8
P 15000 3025
F 0 "#PWR0136" H 15000 2875 50  0001 C CNN
F 1 "+5V" V 14900 2975 50  0000 C CNN
F 2 "" H 15000 3025 50  0001 C CNN
F 3 "" H 15000 3025 50  0001 C CNN
	1    15000 3025
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0137
U 1 1 608BB743
P 15000 3575
F 0 "#PWR0137" H 15000 3425 50  0001 C CNN
F 1 "+5V" V 14900 3525 50  0000 C CNN
F 2 "" H 15000 3575 50  0001 C CNN
F 3 "" H 15000 3575 50  0001 C CNN
	1    15000 3575
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0138
U 1 1 608BBBF7
P 15000 4125
F 0 "#PWR0138" H 15000 3975 50  0001 C CNN
F 1 "+5V" V 14900 4075 50  0000 C CNN
F 2 "" H 15000 4125 50  0001 C CNN
F 3 "" H 15000 4125 50  0001 C CNN
	1    15000 4125
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0139
U 1 1 608C14A2
P 750 6300
F 0 "#PWR0139" H 750 6150 50  0001 C CNN
F 1 "+5V" H 765 6473 50  0000 C CNN
F 2 "" H 750 6300 50  0001 C CNN
F 3 "" H 750 6300 50  0001 C CNN
	1    750  6300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0140
U 1 1 608C1CF6
P 750 6600
F 0 "#PWR0140" H 750 6350 50  0001 C CNN
F 1 "GND" V 755 6427 50  0000 C CNN
F 2 "" H 750 6600 50  0001 C CNN
F 3 "" H 750 6600 50  0001 C CNN
	1    750  6600
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 608AFEEF
P 15150 3575
F 0 "R19" V 15250 3575 50  0000 L CNN
F 1 "4k7" V 15150 3525 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 15080 3575 50  0001 C CNN
F 3 "~" H 15150 3575 50  0001 C CNN
	1    15150 3575
	0    1    1    0   
$EndComp
$Comp
L wilson-z80:SST39SF040 U8
U 1 1 607EE925
P 9125 3700
F 0 "U8" H 9125 4765 50  0000 C CNN
F 1 "SST39SF040" H 9125 4674 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm_Socket" H 9225 2800 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/268/39%20Series_MPF_MPF__Product%20Brief-373259.pdf" H 8425 3300 50  0001 C CNN
	1    9125 3700
	1    0    0    -1  
$EndComp
$Comp
L wilson-z80:AS6C4008 U11
U 1 1 607EE92B
P 10675 3700
F 0 "U11" H 10675 4765 50  0000 C CNN
F 1 "AS6C4008" H 10675 4674 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm_Socket" H 10675 2800 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/12/AS6C4008-1265427.pdf" H 9975 3300 50  0001 C CNN
	1    10675 3700
	1    0    0    -1  
$EndComp
Text GLabel 8725 4000 0    50   Input ~ 0
A0
Text GLabel 8725 3900 0    50   Input ~ 0
A1
Text GLabel 8725 3800 0    50   Input ~ 0
A2
Text GLabel 8725 3700 0    50   Input ~ 0
A3
Text GLabel 8725 3600 0    50   Input ~ 0
A4
Text GLabel 8725 3500 0    50   Input ~ 0
A5
Text GLabel 8725 3400 0    50   Input ~ 0
A6
Text GLabel 8725 3300 0    50   Input ~ 0
A7
Text GLabel 9525 3400 2    50   Input ~ 0
A8
Text GLabel 9525 3500 2    50   Input ~ 0
A9
Text GLabel 9525 3800 2    50   Input ~ 0
A10
Text GLabel 9525 3600 2    50   Input ~ 0
A11
Text GLabel 8725 4100 0    50   Input ~ 0
D0
Text GLabel 8725 4200 0    50   Input ~ 0
D1
Text GLabel 8725 4300 0    50   Input ~ 0
D2
Text GLabel 9525 4400 2    50   Input ~ 0
D3
Text GLabel 9525 4300 2    50   Input ~ 0
D4
Text GLabel 9525 4200 2    50   Input ~ 0
D5
Text GLabel 9525 4100 2    50   Input ~ 0
D6
Text GLabel 9525 4000 2    50   Input ~ 0
D7
Text GLabel 10275 4000 0    50   Input ~ 0
A0
Text GLabel 10275 3900 0    50   Input ~ 0
A1
Text GLabel 10275 3800 0    50   Input ~ 0
A2
Text GLabel 10275 3700 0    50   Input ~ 0
A3
Text GLabel 10275 3600 0    50   Input ~ 0
A4
Text GLabel 10275 3500 0    50   Input ~ 0
A5
Text GLabel 10275 3400 0    50   Input ~ 0
A6
Text GLabel 10275 3300 0    50   Input ~ 0
A7
Text GLabel 10275 4100 0    50   Input ~ 0
D0
Text GLabel 10275 4200 0    50   Input ~ 0
D1
Text GLabel 10275 4300 0    50   Input ~ 0
D2
Text GLabel 11075 3400 2    50   Input ~ 0
A8
Text GLabel 11075 3500 2    50   Input ~ 0
A9
Text GLabel 11075 3800 2    50   Input ~ 0
A10
Text GLabel 11075 3600 2    50   Input ~ 0
A11
Text GLabel 11075 4300 2    50   Input ~ 0
D4
Text GLabel 11075 4200 2    50   Input ~ 0
D5
Text GLabel 11075 4100 2    50   Input ~ 0
D6
Text GLabel 11075 4000 2    50   Input ~ 0
D7
Text GLabel 8725 3200 0    50   Input ~ 0
A12
Text GLabel 10275 3200 0    50   Input ~ 0
A12
Text GLabel 9525 3300 2    50   Input ~ 0
A13
Text GLabel 11075 3300 2    50   Input ~ 0
A13
Text GLabel 9525 3200 2    50   Input ~ 0
S0
Text GLabel 8725 3100 0    50   Input ~ 0
S1
Text GLabel 8725 3000 0    50   Input ~ 0
S2
Text GLabel 9525 3100 2    50   Input ~ 0
S3
Text GLabel 10275 3100 0    50   Input ~ 0
S0
Text GLabel 11075 3000 2    50   Input ~ 0
S1
Text GLabel 10275 3000 0    50   Input ~ 0
S2
Text GLabel 11075 3100 2    50   Input ~ 0
S3
Text GLabel 8725 2900 0    50   Input ~ 0
S4
Text GLabel 10275 2900 0    50   Input ~ 0
S4
$Comp
L power:GND #PWR0141
U 1 1 607EE969
P 8725 4400
F 0 "#PWR0141" H 8725 4150 50  0001 C CNN
F 1 "GND" H 8730 4227 50  0000 C CNN
F 2 "" H 8725 4400 50  0001 C CNN
F 3 "" H 8725 4400 50  0001 C CNN
	1    8725 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0142
U 1 1 607EE96F
P 9525 2900
F 0 "#PWR0142" H 9525 2750 50  0001 C CNN
F 1 "+5V" H 9540 3073 50  0000 C CNN
F 2 "" H 9525 2900 50  0001 C CNN
F 3 "" H 9525 2900 50  0001 C CNN
	1    9525 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0143
U 1 1 607EE975
P 10275 4400
F 0 "#PWR0143" H 10275 4150 50  0001 C CNN
F 1 "GND" H 10280 4227 50  0000 C CNN
F 2 "" H 10275 4400 50  0001 C CNN
F 3 "" H 10275 4400 50  0001 C CNN
	1    10275 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9525 2900 9525 3000
Connection ~ 9525 2900
Wire Wire Line
	9725 3900 9525 3900
Text GLabel 9725 3700 2    50   Input ~ 0
~READ~
Text GLabel 11275 3700 2    50   Input ~ 0
~READ~
Text GLabel 11275 3200 2    50   Input ~ 0
~WRITE~
Wire Wire Line
	11075 3200 11275 3200
Wire Wire Line
	11275 3700 11075 3700
Wire Wire Line
	9725 3700 9525 3700
$Comp
L Device:R R15
U 1 1 608713E6
P 12350 750
F 0 "R15" V 12450 800 50  0000 L CNN
F 1 "4k7" V 12350 700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 12280 750 50  0001 C CNN
F 3 "~" H 12350 750 50  0001 C CNN
	1    12350 750 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0144
U 1 1 60871BC7
P 12200 750
F 0 "#PWR0144" H 12200 500 50  0001 C CNN
F 1 "GND" H 12205 577 50  0000 C CNN
F 2 "" H 12200 750 50  0001 C CNN
F 3 "" H 12200 750 50  0001 C CNN
	1    12200 750 
	0    1    1    0   
$EndComp
$Comp
L wilson-z80:ATF22V10C U9
U 1 1 601C6BF5
P 9125 5400
F 0 "U9" H 9125 5965 50  0000 C CNN
F 1 "ATF22V10C" H 9125 5874 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W7.62mm_Socket" H 9125 4400 50  0001 C CNN
F 3 "https://ww1.microchip.com/downloads/en/DeviceDoc/doc0735.pdf" H 9125 5400 50  0001 C CNN
	1    9125 5400
	1    0    0    -1  
$EndComp
Text GLabel 8675 6100 0    50   Input ~ 0
~RD~
Wire Wire Line
	8675 6100 8825 6100
Text GLabel 9775 6200 2    50   Input ~ 0
~INUSE~
Text GLabel 9425 6100 2    50   Input ~ 0
MEMCHIP
Wire Wire Line
	9775 6000 9425 6000
Text GLabel 15975 8525 2    50   Input ~ 0
MEMCHIP
Text GLabel 9425 5900 2    50   Input ~ 0
~BankSel~
Text GLabel 9775 5200 2    50   Input ~ 0
~IORQ~
Text GLabel 9425 5300 2    50   Input ~ 0
~BUSBUF~
Wire Wire Line
	9775 5800 9425 5800
Wire Wire Line
	9775 5200 9425 5200
Text GLabel 9725 3900 2    50   Input ~ 0
~ROM0~
Text GLabel 9550 1925 0    50   Input ~ 0
~BUSBUF~
$Comp
L power:+5V #PWR0145
U 1 1 609311AB
P 9125 1450
F 0 "#PWR0145" H 9125 1300 50  0001 C CNN
F 1 "+5V" H 9140 1623 50  0000 C CNN
F 2 "" H 9125 1450 50  0001 C CNN
F 3 "" H 9125 1450 50  0001 C CNN
	1    9125 1450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0146
U 1 1 609318D2
P 9125 850
F 0 "#PWR0146" H 9125 600 50  0001 C CNN
F 1 "GND" H 9130 677 50  0000 C CNN
F 2 "" H 9125 850 50  0001 C CNN
F 3 "" H 9125 850 50  0001 C CNN
	1    9125 850 
	-1   0    0    1   
$EndComp
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
P 13500 8725
F 0 "J2" H 13550 9042 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 13550 8951 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 13500 8725 50  0001 C CNN
F 3 "~" H 13500 8725 50  0001 C CNN
	1    13500 8725
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J1
U 1 1 60982D72
P 4350 8700
F 0 "J1" H 4400 8275 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 4400 8366 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 4350 8700 50  0001 C CNN
F 3 "~" H 4350 8700 50  0001 C CNN
	1    4350 8700
	-1   0    0    1   
$EndComp
Wire Wire Line
	13800 8625 13800 8725
Wire Wire Line
	13800 8725 13800 8825
Connection ~ 13800 8725
Wire Wire Line
	13800 8825 13800 8925
Connection ~ 13800 8825
$Comp
L power:GND #PWR0147
U 1 1 6099924B
P 13850 8725
F 0 "#PWR0147" H 13850 8475 50  0001 C CNN
F 1 "GND" V 13855 8552 50  0000 C CNN
F 2 "" H 13850 8725 50  0001 C CNN
F 3 "" H 13850 8725 50  0001 C CNN
	1    13850 8725
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13850 8725 13800 8725
$Comp
L power:+5V #PWR0148
U 1 1 609A0640
P 13150 8625
F 0 "#PWR0148" H 13150 8475 50  0001 C CNN
F 1 "+5V" H 13165 8798 50  0000 C CNN
F 2 "" H 13150 8625 50  0001 C CNN
F 3 "" H 13150 8625 50  0001 C CNN
	1    13150 8625
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13150 8625 13300 8625
Wire Wire Line
	13300 8725 13300 8625
Connection ~ 13300 8625
Wire Wire Line
	5000 9350 5000 8800
Wire Wire Line
	5000 8800 4550 8800
Wire Wire Line
	5000 8100 5000 8700
Wire Wire Line
	5000 8700 4550 8700
Connection ~ 6200 8200
$Comp
L Device:CP C21
U 1 1 60C909CF
P 775 6450
F 0 "C21" V 850 6525 50  0000 L CNN
F 1 "470uF" V 850 6175 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 813 6300 50  0001 C CNN
F 3 "~" H 775 6450 50  0001 C CNN
	1    775  6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 60CB3ED1
P 1175 6450
F 0 "C14" V 1250 6500 50  0000 L CNN
F 1 "100n" V 1250 6225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1213 6300 50  0001 C CNN
F 3 "~" H 1175 6450 50  0001 C CNN
	1    1175 6450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW2
U 1 1 60A3C4D3
P 4750 9350
F 0 "SW2" H 4750 9585 50  0000 C CNN
F 1 "RESET" H 4750 9494 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4750 9350 50  0001 C CNN
F 3 "~" H 4750 9350 50  0001 C CNN
	1    4750 9350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0155
U 1 1 60A4D7A8
P 4550 9350
F 0 "#PWR0155" H 4550 9200 50  0001 C CNN
F 1 "+5V" H 4565 9523 50  0000 C CNN
F 2 "" H 4550 9350 50  0001 C CNN
F 3 "" H 4550 9350 50  0001 C CNN
	1    4550 9350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 9350 5000 9350
Connection ~ 5000 9350
$Comp
L Switch:SW_SPST SW1
U 1 1 60A5B734
P 4575 8100
F 0 "SW1" H 4575 8335 50  0000 C CNN
F 1 "NMI" H 4575 8244 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4575 8100 50  0001 C CNN
F 3 "~" H 4575 8100 50  0001 C CNN
	1    4575 8100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0156
U 1 1 60A5DDCB
P 4375 8100
F 0 "#PWR0156" H 4375 7950 50  0001 C CNN
F 1 "+5V" H 4390 8273 50  0000 C CNN
F 2 "" H 4375 8100 50  0001 C CNN
F 3 "" H 4375 8100 50  0001 C CNN
	1    4375 8100
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C17
U 1 1 60BF1D60
P 975 6450
F 0 "C17" V 1025 6525 50  0000 L CNN
F 1 "470uF" V 1050 6175 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 1013 6300 50  0001 C CNN
F 3 "~" H 975 6450 50  0001 C CNN
	1    975  6450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 60930B06
P 9125 1000
F 0 "R11" H 9195 1046 50  0000 L CNN
F 1 "1K" H 9195 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9055 1000 50  0001 C CNN
F 3 "~" H 9125 1000 50  0001 C CNN
	1    9125 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 60930144
P 9125 1300
F 0 "D5" V 9125 1100 50  0000 L CNN
F 1 "PWR" V 9225 1100 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm_FlatTop" H 9125 1300 50  0001 C CNN
F 3 "~" H 9125 1300 50  0001 C CNN
	1    9125 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	9475 5700 9425 5700
Text GLabel 11075 4400 2    50   Input ~ 0
D3
Text GLabel 9775 5800 2    50   Input ~ 0
~ROM0~
Text GLabel 9475 5700 2    50   Input ~ 0
~RAM0~
Text GLabel 9975 7250 3    50   Input ~ 0
~RAM0~
Wire Wire Line
	11075 3900 11275 3900
Wire Wire Line
	11150 2900 11075 2900
NoConn ~ 13300 8825
NoConn ~ 13300 8925
NoConn ~ 4050 8700
NoConn ~ 4050 8800
NoConn ~ 4075 -500
$Comp
L Device:R R21
U 1 1 6243CB76
P 15825 7650
F 0 "R21" V 15750 7600 50  0000 L CNN
F 1 "4k7" V 15825 7575 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 15755 7650 50  0001 C CNN
F 3 "~" H 15825 7650 50  0001 C CNN
	1    15825 7650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0163
U 1 1 6243D1A3
P 15675 7650
F 0 "#PWR0163" H 15675 7400 50  0001 C CNN
F 1 "GND" H 15675 7500 50  0000 C CNN
F 2 "" H 15675 7650 50  0001 C CNN
F 3 "" H 15675 7650 50  0001 C CNN
	1    15675 7650
	0    1    1    0   
$EndComp
$Comp
L Device:R R22
U 1 1 6244AF4C
P 15825 7825
F 0 "R22" V 15750 7775 50  0000 L CNN
F 1 "4k7" V 15825 7750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 15755 7825 50  0001 C CNN
F 3 "~" H 15825 7825 50  0001 C CNN
	1    15825 7825
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0164
U 1 1 6244B73D
P 15675 7825
F 0 "#PWR0164" H 15675 7575 50  0001 C CNN
F 1 "GND" H 15675 7675 50  0000 C CNN
F 2 "" H 15675 7825 50  0001 C CNN
F 3 "" H 15675 7825 50  0001 C CNN
	1    15675 7825
	0    1    1    0   
$EndComp
$Comp
L Device:R R23
U 1 1 62456D78
P 15825 8000
F 0 "R23" V 15750 7950 50  0000 L CNN
F 1 "4k7" V 15825 7925 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 15755 8000 50  0001 C CNN
F 3 "~" H 15825 8000 50  0001 C CNN
	1    15825 8000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0165
U 1 1 624572F5
P 15675 8000
F 0 "#PWR0165" H 15675 7750 50  0001 C CNN
F 1 "GND" H 15675 7850 50  0000 C CNN
F 2 "" H 15675 8000 50  0001 C CNN
F 3 "" H 15675 8000 50  0001 C CNN
	1    15675 8000
	0    1    1    0   
$EndComp
$Comp
L Device:R R24
U 1 1 6246260C
P 15825 8175
F 0 "R24" V 15750 8125 50  0000 L CNN
F 1 "4k7" V 15825 8100 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 15755 8175 50  0001 C CNN
F 3 "~" H 15825 8175 50  0001 C CNN
	1    15825 8175
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0166
U 1 1 62462DC0
P 15675 8175
F 0 "#PWR0166" H 15675 7925 50  0001 C CNN
F 1 "GND" H 15675 8025 50  0000 C CNN
F 2 "" H 15675 8175 50  0001 C CNN
F 3 "" H 15675 8175 50  0001 C CNN
	1    15675 8175
	0    1    1    0   
$EndComp
$Comp
L Device:R R25
U 1 1 6246E123
P 15825 8350
F 0 "R25" V 15750 8300 50  0000 L CNN
F 1 "4k7" V 15825 8275 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 15755 8350 50  0001 C CNN
F 3 "~" H 15825 8350 50  0001 C CNN
	1    15825 8350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0167
U 1 1 6246E7D4
P 15675 8350
F 0 "#PWR0167" H 15675 8100 50  0001 C CNN
F 1 "GND" H 15675 8200 50  0000 C CNN
F 2 "" H 15675 8350 50  0001 C CNN
F 3 "" H 15675 8350 50  0001 C CNN
	1    15675 8350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0168
U 1 1 6247A032
P 15675 8525
F 0 "#PWR0168" H 15675 8275 50  0001 C CNN
F 1 "GND" H 15675 8375 50  0000 C CNN
F 2 "" H 15675 8525 50  0001 C CNN
F 3 "" H 15675 8525 50  0001 C CNN
	1    15675 8525
	0    1    1    0   
$EndComp
$Comp
L Device:R R26
U 1 1 624798D1
P 15825 8525
F 0 "R26" V 15750 8475 50  0000 L CNN
F 1 "4k7" V 15825 8450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 15755 8525 50  0001 C CNN
F 3 "~" H 15825 8525 50  0001 C CNN
	1    15825 8525
	0    1    1    0   
$EndComp
$Comp
L Device:R R27
U 1 1 62497F22
P 15825 8700
F 0 "R27" V 15750 8650 50  0000 L CNN
F 1 "4k7" V 15825 8625 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 15755 8700 50  0001 C CNN
F 3 "~" H 15825 8700 50  0001 C CNN
	1    15825 8700
	0    1    1    0   
$EndComp
$Comp
L Device:R R28
U 1 1 62498CE7
P 15825 8875
F 0 "R28" V 15750 8825 50  0000 L CNN
F 1 "4k7" V 15825 8800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 15755 8875 50  0001 C CNN
F 3 "~" H 15825 8875 50  0001 C CNN
	1    15825 8875
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0169
U 1 1 62499097
P 15675 8875
F 0 "#PWR0169" H 15675 8625 50  0001 C CNN
F 1 "GND" H 15675 8725 50  0000 C CNN
F 2 "" H 15675 8875 50  0001 C CNN
F 3 "" H 15675 8875 50  0001 C CNN
	1    15675 8875
	0    1    1    0   
$EndComp
Text GLabel 12500 750  2    50   Input ~ 0
BUSISO
Text GLabel 11200 2025 3    50   Input ~ 0
BUSISO
Text GLabel 9550 2025 3    50   Input ~ 0
BUSISO
Text GLabel 12800 2025 3    50   Input ~ 0
BUSISO
Text GLabel 14725 2025 3    50   Input ~ 0
BUSISO
$Comp
L 74xx:74HC244 U12
U 1 1 6253C162
P 11700 1525
F 0 "U12" H 11650 1775 50  0000 C CNN
F 1 "74HC244" H 11775 1200 50  0000 C CNN
F 2 "Package_SO:SO-20_5.3x12.6mm_P1.27mm" H 11700 1525 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT244.pdf" H 11700 1525 50  0001 C CNN
	1    11700 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	11200 2025 11200 1925
$Comp
L 74xx:74HC244 U15
U 1 1 625492F6
P 13300 1525
F 0 "U15" H 13250 1775 50  0000 C CNN
F 1 "74HC244" H 13375 1200 50  0000 C CNN
F 2 "Package_SO:SO-20_5.3x12.6mm_P1.27mm" H 13300 1525 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT244.pdf" H 13300 1525 50  0001 C CNN
	1    13300 1525
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC244 U16
U 1 1 6254A1ED
P 15225 1525
F 0 "U16" H 15175 1775 50  0000 C CNN
F 1 "74HC244" H 15300 1200 50  0000 C CNN
F 2 "Package_SO:SO-20_5.3x12.6mm_P1.27mm" H 15225 1525 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT244.pdf" H 15225 1525 50  0001 C CNN
	1    15225 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	12800 2025 12800 1925
Wire Wire Line
	14725 2025 14725 1925
Text GLabel 13675 3900 2    50   Input ~ 0
~INT~
Text GLabel 6700 8800 0    50   Input ~ 0
~WAIT~
Wire Wire Line
	8825 5100 8575 5100
NoConn ~ 13750 7200
Text GLabel 12475 6125 2    50   Input ~ 0
~BankSel~
Wire Wire Line
	12475 6125 12400 6125
Connection ~ 12400 6125
Wire Wire Line
	12400 6125 12400 6750
NoConn ~ 6700 10000
Wire Wire Line
	6600 9350 6625 9350
Wire Wire Line
	6625 9350 6625 9400
Wire Wire Line
	6625 9400 6700 9400
Wire Wire Line
	6600 9200 6650 9200
Wire Wire Line
	6650 9200 6650 9300
Wire Wire Line
	6650 9300 6700 9300
Wire Wire Line
	6250 8900 6700 8900
NoConn ~ 4050 8500
NoConn ~ 4050 8600
Wire Wire Line
	5000 8100 4775 8100
Connection ~ 5000 8100
Wire Wire Line
	5150 8600 5150 8625
Wire Wire Line
	5150 8625 6200 8625
Wire Wire Line
	6200 8200 6200 8625
$Comp
L 74xx:74LS74 U4
U 1 1 62898210
P 4800 1725
F 0 "U4" H 4800 2206 50  0000 C CNN
F 1 "74LS74" H 4800 2115 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4800 1725 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 4800 1725 50  0001 C CNN
	1    4800 1725
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U4
U 2 1 62898216
P 11850 6000
F 0 "U4" H 12050 6425 50  0000 C CNN
F 1 "74LS74" H 12075 6325 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 11850 6000 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 11850 6000 50  0001 C CNN
	2    11850 6000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U4
U 3 1 6289821C
P 5900 1225
F 0 "U4" H 6130 1271 50  0000 L CNN
F 1 "74LS74" H 6130 1180 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5900 1225 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 5900 1225 50  0001 C CNN
	3    5900 1225
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 8600 5150 8600
$Comp
L power:GND #PWR0170
U 1 1 628E6FCD
P 3700 2725
F 0 "#PWR0170" H 3700 2475 50  0001 C CNN
F 1 "GND" H 3705 2552 50  0000 C CNN
F 2 "" H 3700 2725 50  0001 C CNN
F 3 "" H 3700 2725 50  0001 C CNN
	1    3700 2725
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0171
U 1 1 628E74E0
P 3700 1125
F 0 "#PWR0171" H 3700 975 50  0001 C CNN
F 1 "+5V" H 3715 1298 50  0000 C CNN
F 2 "" H 3700 1125 50  0001 C CNN
F 3 "" H 3700 1125 50  0001 C CNN
	1    3700 1125
	0    1    1    0   
$EndComp
$Comp
L Oscillator:SG-7050CAN X1
U 1 1 628F4C4E
P 2375 2225
F 0 "X1" H 2475 2475 50  0000 L CNN
F 1 "SG-7050CAN" H 2425 1950 50  0000 L CNN
F 2 "Oscillator:Oscillator_SMD_SeikoEpson_SG8002CA-4Pin_7.0x5.0mm" H 3075 1875 50  0001 C CNN
F 3 "https://support.epson.biz/td/api/doc_check.php?dl=brief_SG7050CAN&lang=en" H 2275 2225 50  0001 C CNN
	1    2375 2225
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS163 U3
U 1 1 628F7B7D
P 3700 1925
F 0 "U3" H 3700 1950 50  0000 C CNN
F 1 "74LS163" H 3800 1625 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 3700 1925 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS163" H 3700 1925 50  0001 C CNN
	1    3700 1925
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS175 U1
U 1 1 628FA3DF
P 1375 1625
F 0 "U1" H 1375 2506 50  0000 C CNN
F 1 "74LS175" H 1375 2415 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 1375 1625 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS175" H 1375 1625 50  0001 C CNN
	1    1375 1625
	1    0    0    -1  
$EndComp
Wire Wire Line
	12300 5400 12300 6100
$Comp
L power:GND #PWR0172
U 1 1 6291CE01
P 11550 6000
F 0 "#PWR0172" H 11550 5750 50  0001 C CNN
F 1 "GND" V 11555 5827 50  0000 C CNN
F 2 "" H 11550 6000 50  0001 C CNN
F 3 "" H 11550 6000 50  0001 C CNN
	1    11550 6000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0173
U 1 1 6291E05F
P 11550 5900
F 0 "#PWR0173" H 11550 5650 50  0001 C CNN
F 1 "GND" V 11555 5727 50  0000 C CNN
F 2 "" H 11550 5900 50  0001 C CNN
F 3 "" H 11550 5900 50  0001 C CNN
	1    11550 5900
	0    1    1    0   
$EndComp
Text GLabel 11850 6300 3    50   Input ~ 0
~SYSRES~
Text GLabel 11850 5700 1    50   Input ~ 0
~BankSel~
Wire Wire Line
	12150 6100 12300 6100
Connection ~ 12300 6100
Wire Wire Line
	12300 6100 12300 6850
NoConn ~ 12150 5900
$Comp
L power:GND #PWR0174
U 1 1 6295CC72
P 1375 2425
F 0 "#PWR0174" H 1375 2175 50  0001 C CNN
F 1 "GND" H 1380 2252 50  0000 C CNN
F 2 "" H 1375 2425 50  0001 C CNN
F 3 "" H 1375 2425 50  0001 C CNN
	1    1375 2425
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0175
U 1 1 6295D320
P 1375 925
F 0 "#PWR0175" H 1375 775 50  0001 C CNN
F 1 "+5V" H 1390 1098 50  0000 C CNN
F 2 "" H 1375 925 50  0001 C CNN
F 3 "" H 1375 925 50  0001 C CNN
	1    1375 925 
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0176
U 1 1 6295E239
P 2375 1925
F 0 "#PWR0176" H 2375 1775 50  0001 C CNN
F 1 "+5V" H 2390 2098 50  0000 C CNN
F 2 "" H 2375 1925 50  0001 C CNN
F 3 "" H 2375 1925 50  0001 C CNN
	1    2375 1925
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0177
U 1 1 6295EEA4
P 2075 2225
F 0 "#PWR0177" H 2075 2075 50  0001 C CNN
F 1 "+5V" H 2090 2398 50  0000 C CNN
F 2 "" H 2075 2225 50  0001 C CNN
F 3 "" H 2075 2225 50  0001 C CNN
	1    2075 2225
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0178
U 1 1 6295F56A
P 2375 2525
F 0 "#PWR0178" H 2375 2275 50  0001 C CNN
F 1 "GND" H 2380 2352 50  0000 C CNN
F 2 "" H 2375 2525 50  0001 C CNN
F 3 "" H 2375 2525 50  0001 C CNN
	1    2375 2525
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2225 2675 2225
Wire Wire Line
	3200 2025 3175 2025
Wire Wire Line
	3175 2025 3175 2125
Wire Wire Line
	3175 2125 3200 2125
Wire Wire Line
	3200 2425 3175 2425
Wire Wire Line
	3175 2425 3175 2125
Connection ~ 3175 2125
$Comp
L Device:R R7
U 1 1 62992108
P 3175 2600
F 0 "R7" H 3245 2646 50  0000 L CNN
F 1 "4k7" H 3245 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3105 2600 50  0001 C CNN
F 3 "~" H 3175 2600 50  0001 C CNN
	1    3175 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0179
U 1 1 6299210E
P 3175 2750
F 0 "#PWR0179" H 3175 2600 50  0001 C CNN
F 1 "+5V" H 3190 2923 50  0000 C CNN
F 2 "" H 3175 2750 50  0001 C CNN
F 3 "" H 3175 2750 50  0001 C CNN
	1    3175 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	3175 2450 3175 2425
Connection ~ 3175 2425
Text GLabel 875  1225 0    50   Input ~ 0
D0
Text GLabel 875  1425 0    50   Input ~ 0
D1
Text GLabel 875  1625 0    50   Input ~ 0
D2
Text GLabel 875  1825 0    50   Input ~ 0
D3
Text GLabel 9425 5400 2    50   Input ~ 0
CLKDIV
Text GLabel 875  2025 0    50   Input ~ 0
CLKDIV
Text GLabel 875  2125 0    50   Input ~ 0
~SYSRES~
$Comp
L power:GND #PWR0180
U 1 1 629C3C1E
P 3200 1725
F 0 "#PWR0180" H 3200 1475 50  0001 C CNN
F 1 "GND" V 3250 1775 50  0000 C CNN
F 2 "" H 3200 1725 50  0001 C CNN
F 3 "" H 3200 1725 50  0001 C CNN
	1    3200 1725
	0    1    1    0   
$EndComp
NoConn ~ 4200 1625
NoConn ~ 4200 1525
NoConn ~ 4200 1425
Wire Wire Line
	3950 975  3950 875 
Wire Wire Line
	4200 1725 4275 1725
Wire Wire Line
	4275 1725 4275 875 
Wire Wire Line
	4275 875  3950 875 
Connection ~ 3950 875 
Wire Wire Line
	3950 875  3950 775 
NoConn ~ 4200 1925
Text GLabel 3200 1425 0    50   Input ~ 0
CLKD0
Text GLabel 3200 1525 0    50   Input ~ 0
CLKD1
Text GLabel 3200 1625 0    50   Input ~ 0
CLKD2
Wire Wire Line
	2875 1925 2875 875 
Wire Wire Line
	2875 1925 3200 1925
Wire Wire Line
	2875 875  3350 875 
$Comp
L Device:R R10
U 1 1 62A2811E
P 4800 2225
F 0 "R10" H 4870 2271 50  0000 L CNN
F 1 "4k7" H 4870 2180 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4730 2225 50  0001 C CNN
F 3 "~" H 4800 2225 50  0001 C CNN
	1    4800 2225
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0181
U 1 1 62A28124
P 4800 2375
F 0 "#PWR0181" H 4800 2225 50  0001 C CNN
F 1 "+5V" H 4815 2548 50  0000 C CNN
F 2 "" H 4800 2375 50  0001 C CNN
F 3 "" H 4800 2375 50  0001 C CNN
	1    4800 2375
	-1   0    0    1   
$EndComp
Wire Wire Line
	4800 1425 4875 1425
Wire Wire Line
	4875 1425 4875 2025
Wire Wire Line
	4875 2025 4800 2025
Wire Wire Line
	4800 2025 4800 2075
Connection ~ 4800 2025
Wire Wire Line
	4500 1625 4500 1400
Wire Wire Line
	4500 1400 5175 1400
Wire Wire Line
	5175 1400 5175 1825
Wire Wire Line
	5175 1825 5100 1825
Wire Wire Line
	4500 1725 4275 1725
Connection ~ 4275 1725
Text GLabel 5225 1625 2    50   Input ~ 0
CLK
Wire Wire Line
	5100 1625 5225 1625
Text GLabel 1875 1225 2    50   Input ~ 0
CLKD0
Text GLabel 1875 1425 2    50   Input ~ 0
CLKD1
Text GLabel 1875 1625 2    50   Input ~ 0
CLKD2
NoConn ~ 1875 1925
NoConn ~ 1875 1825
NoConn ~ 1875 1725
NoConn ~ 1875 1525
NoConn ~ 1875 1325
$Comp
L power:+5V #PWR0182
U 1 1 62AB0713
P 5900 825
F 0 "#PWR0182" H 5900 675 50  0001 C CNN
F 1 "+5V" H 5915 998 50  0000 C CNN
F 2 "" H 5900 825 50  0001 C CNN
F 3 "" H 5900 825 50  0001 C CNN
	1    5900 825 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0183
U 1 1 62AB1630
P 5900 1625
F 0 "#PWR0183" H 5900 1375 50  0001 C CNN
F 1 "GND" H 5905 1452 50  0000 C CNN
F 2 "" H 5900 1625 50  0001 C CNN
F 3 "" H 5900 1625 50  0001 C CNN
	1    5900 1625
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 62AFC2EF
P 7900 1825
F 0 "#PWR01" H 7900 1675 50  0001 C CNN
F 1 "+5V" H 7915 1998 50  0000 C CNN
F 2 "" H 7900 1825 50  0001 C CNN
F 3 "" H 7900 1825 50  0001 C CNN
	1    7900 1825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 62AFC2F5
P 7900 2825
F 0 "#PWR02" H 7900 2575 50  0001 C CNN
F 1 "GND" H 7905 2652 50  0000 C CNN
F 2 "" H 7900 2825 50  0001 C CNN
F 3 "" H 7900 2825 50  0001 C CNN
	1    7900 2825
	1    0    0    -1  
$EndComp
$Comp
L wilson-z80:LM3900D U17
U 1 1 62B1E093
P 6450 4350
F 0 "U17" H 6450 4915 50  0000 C CNN
F 1 "LM3900D" H 6450 4824 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6525 3900 50  0001 C CNN
F 3 "" H 6450 4350 50  0001 C CNN
	1    6450 4350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U19
U 1 1 62B33723
P 10250 8025
F 0 "U19" H 10250 8342 50  0000 C CNN
F 1 "74LS125" H 10250 8251 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 10250 8025 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 10250 8025 50  0001 C CNN
	1    10250 8025
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U19
U 2 1 62B3760D
P 15650 3475
F 0 "U19" H 15575 3475 50  0000 C CNN
F 1 "74LS125" H 15950 3700 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 15650 3475 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 15650 3475 50  0001 C CNN
	2    15650 3475
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U19
U 3 1 62B38434
P 15650 2925
F 0 "U19" H 15575 2925 50  0000 C CNN
F 1 "74LS125" H 15975 3250 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 15650 2925 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 15650 2925 50  0001 C CNN
	3    15650 2925
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U19
U 4 1 62B3BECD
P 15650 4025
F 0 "U19" H 15575 4025 50  0000 C CNN
F 1 "74LS125" H 15950 4250 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 15650 4025 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 15650 4025 50  0001 C CNN
	4    15650 4025
	1    0    0    -1  
$EndComp
Connection ~ 15350 2925
Wire Wire Line
	15350 2925 15350 2825
Connection ~ 15350 3475
Wire Wire Line
	15350 3475 15350 3375
Connection ~ 15350 4025
Wire Wire Line
	15350 4025 15350 3925
$Comp
L power:GND #PWR03
U 1 1 62B65A86
P 15650 3175
F 0 "#PWR03" H 15650 2925 50  0001 C CNN
F 1 "GND" H 15525 3125 50  0000 C CNN
F 2 "" H 15650 3175 50  0001 C CNN
F 3 "" H 15650 3175 50  0001 C CNN
	1    15650 3175
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 62B667DF
P 15650 3725
F 0 "#PWR04" H 15650 3475 50  0001 C CNN
F 1 "GND" H 15525 3675 50  0000 C CNN
F 2 "" H 15650 3725 50  0001 C CNN
F 3 "" H 15650 3725 50  0001 C CNN
	1    15650 3725
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 62B67049
P 15650 4275
F 0 "#PWR05" H 15650 4025 50  0001 C CNN
F 1 "GND" H 15525 4225 50  0000 C CNN
F 2 "" H 15650 4275 50  0001 C CNN
F 3 "" H 15650 4275 50  0001 C CNN
	1    15650 4275
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT02 U18
U 1 1 62B6791B
P 3650 875
F 0 "U18" H 3650 558 50  0000 C CNN
F 1 "74HCT02" H 3650 649 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3650 875 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct02" H 3650 875 50  0001 C CNN
	1    3650 875 
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74HCT02 U18
U 2 1 62B6A995
P 13625 3050
F 0 "U18" H 13625 3375 50  0000 C CNN
F 1 "74HCT02" H 13625 3284 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 13625 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct02" H 13625 3050 50  0001 C CNN
	2    13625 3050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT02 U18
U 3 1 62B6ECBD
P 6725 5875
F 0 "U18" H 6725 6200 50  0000 C CNN
F 1 "74HCT02" H 6725 6109 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6725 5875 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct02" H 6725 5875 50  0001 C CNN
	3    6725 5875
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT02 U18
U 4 1 62B72F3D
P 14225 3050
F 0 "U18" H 14225 3375 50  0000 C CNN
F 1 "74HCT02" H 14225 3284 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 14225 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct02" H 14225 3050 50  0001 C CNN
	4    14225 3050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT02 U18
U 5 1 62B73EA9
P 7900 2325
F 0 "U18" H 8130 2371 50  0000 L CNN
F 1 "74HCT02" H 8130 2280 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 7900 2325 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct02" H 7900 2325 50  0001 C CNN
	5    7900 2325
	1    0    0    -1  
$EndComp
Wire Wire Line
	13925 3150 13925 3050
Wire Wire Line
	13925 2950 13925 3050
Connection ~ 13925 3050
$Comp
L 74xx:74LS125 U19
U 5 1 62BA7B71
P 7075 2325
F 0 "U19" H 7305 2371 50  0000 L CNN
F 1 "74LS125" H 7305 2280 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 7075 2325 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 7075 2325 50  0001 C CNN
	5    7075 2325
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0184
U 1 1 62BAB3C4
P 7075 2825
F 0 "#PWR0184" H 7075 2575 50  0001 C CNN
F 1 "GND" H 7080 2652 50  0000 C CNN
F 2 "" H 7075 2825 50  0001 C CNN
F 3 "" H 7075 2825 50  0001 C CNN
	1    7075 2825
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0185
U 1 1 62BAB909
P 7075 1825
F 0 "#PWR0185" H 7075 1675 50  0001 C CNN
F 1 "+5V" H 7090 1998 50  0000 C CNN
F 2 "" H 7075 1825 50  0001 C CNN
F 3 "" H 7075 1825 50  0001 C CNN
	1    7075 1825
	1    0    0    -1  
$EndComp
Wire Wire Line
	9225 8100 9225 8025
Wire Wire Line
	9225 8025 9825 8025
Wire Wire Line
	9825 8025 9825 7850
Wire Wire Line
	9225 7950 9225 7800
Wire Wire Line
	9825 8025 9950 8025
Connection ~ 9825 8025
Wire Wire Line
	9900 7800 9900 8200
Wire Wire Line
	9225 7800 9900 7800
Wire Wire Line
	9825 8200 9900 8200
$Comp
L power:GND #PWR0186
U 1 1 62C2C0A8
P 8750 9875
F 0 "#PWR0186" H 8750 9625 50  0001 C CNN
F 1 "GND" H 8750 9725 50  0000 C CNN
F 2 "" H 8750 9875 50  0001 C CNN
F 3 "" H 8750 9875 50  0001 C CNN
	1    8750 9875
	0    1    1    0   
$EndComp
$Comp
L Device:R R29
U 1 1 62C2C0AE
P 8900 8825
F 0 "R29" V 8825 8775 50  0000 L CNN
F 1 "4k7" V 8900 8750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8830 8825 50  0001 C CNN
F 3 "~" H 8900 8825 50  0001 C CNN
	1    8900 8825
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0187
U 1 1 62C2C0B4
P 8750 8825
F 0 "#PWR0187" H 8750 8575 50  0001 C CNN
F 1 "GND" H 8750 8675 50  0000 C CNN
F 2 "" H 8750 8825 50  0001 C CNN
F 3 "" H 8750 8825 50  0001 C CNN
	1    8750 8825
	0    1    1    0   
$EndComp
$Comp
L Device:R R30
U 1 1 62C2C0BA
P 8900 9000
F 0 "R30" V 8825 8950 50  0000 L CNN
F 1 "4k7" V 8900 8925 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8830 9000 50  0001 C CNN
F 3 "~" H 8900 9000 50  0001 C CNN
	1    8900 9000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0188
U 1 1 62C2C0C0
P 8750 9000
F 0 "#PWR0188" H 8750 8750 50  0001 C CNN
F 1 "GND" H 8750 8850 50  0000 C CNN
F 2 "" H 8750 9000 50  0001 C CNN
F 3 "" H 8750 9000 50  0001 C CNN
	1    8750 9000
	0    1    1    0   
$EndComp
$Comp
L Device:R R31
U 1 1 62C2C0C6
P 8900 9175
F 0 "R31" V 8825 9125 50  0000 L CNN
F 1 "4k7" V 8900 9100 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8830 9175 50  0001 C CNN
F 3 "~" H 8900 9175 50  0001 C CNN
	1    8900 9175
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0189
U 1 1 62C2C0CC
P 8750 9175
F 0 "#PWR0189" H 8750 8925 50  0001 C CNN
F 1 "GND" H 8750 9025 50  0000 C CNN
F 2 "" H 8750 9175 50  0001 C CNN
F 3 "" H 8750 9175 50  0001 C CNN
	1    8750 9175
	0    1    1    0   
$EndComp
$Comp
L Device:R R32
U 1 1 62C2C0D2
P 8900 9350
F 0 "R32" V 8825 9300 50  0000 L CNN
F 1 "4k7" V 8900 9275 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8830 9350 50  0001 C CNN
F 3 "~" H 8900 9350 50  0001 C CNN
	1    8900 9350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0190
U 1 1 62C2C0D8
P 8750 9350
F 0 "#PWR0190" H 8750 9100 50  0001 C CNN
F 1 "GND" H 8750 9200 50  0000 C CNN
F 2 "" H 8750 9350 50  0001 C CNN
F 3 "" H 8750 9350 50  0001 C CNN
	1    8750 9350
	0    1    1    0   
$EndComp
$Comp
L Device:R R33
U 1 1 62C2C0DE
P 8900 9525
F 0 "R33" V 8825 9475 50  0000 L CNN
F 1 "4k7" V 8900 9450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8830 9525 50  0001 C CNN
F 3 "~" H 8900 9525 50  0001 C CNN
	1    8900 9525
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0191
U 1 1 62C2C0E4
P 8750 9525
F 0 "#PWR0191" H 8750 9275 50  0001 C CNN
F 1 "GND" H 8750 9375 50  0000 C CNN
F 2 "" H 8750 9525 50  0001 C CNN
F 3 "" H 8750 9525 50  0001 C CNN
	1    8750 9525
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0192
U 1 1 62C2C0EA
P 8750 9700
F 0 "#PWR0192" H 8750 9450 50  0001 C CNN
F 1 "GND" H 8750 9550 50  0000 C CNN
F 2 "" H 8750 9700 50  0001 C CNN
F 3 "" H 8750 9700 50  0001 C CNN
	1    8750 9700
	0    1    1    0   
$EndComp
$Comp
L Device:R R34
U 1 1 62C2C0F0
P 8900 9700
F 0 "R34" V 8825 9650 50  0000 L CNN
F 1 "4k7" V 8900 9625 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8830 9700 50  0001 C CNN
F 3 "~" H 8900 9700 50  0001 C CNN
	1    8900 9700
	0    1    1    0   
$EndComp
$Comp
L Device:R R35
U 1 1 62C2C0F6
P 8900 9875
F 0 "R35" V 8825 9825 50  0000 L CNN
F 1 "4k7" V 8900 9800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8830 9875 50  0001 C CNN
F 3 "~" H 8900 9875 50  0001 C CNN
	1    8900 9875
	0    1    1    0   
$EndComp
$Comp
L Device:R R36
U 1 1 62C2C0FC
P 8900 10050
F 0 "R36" V 8825 10000 50  0000 L CNN
F 1 "4k7" V 8900 9975 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8830 10050 50  0001 C CNN
F 3 "~" H 8900 10050 50  0001 C CNN
	1    8900 10050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0193
U 1 1 62C2C102
P 8750 10050
F 0 "#PWR0193" H 8750 9800 50  0001 C CNN
F 1 "GND" H 8750 9900 50  0000 C CNN
F 2 "" H 8750 10050 50  0001 C CNN
F 3 "" H 8750 10050 50  0001 C CNN
	1    8750 10050
	0    1    1    0   
$EndComp
Text GLabel 9050 8825 2    50   Input ~ 0
D0
Text GLabel 9050 9000 2    50   Input ~ 0
D1
Text GLabel 9050 9175 2    50   Input ~ 0
D2
Text GLabel 9050 9350 2    50   Input ~ 0
D3
Text GLabel 9050 9525 2    50   Input ~ 0
D4
Text GLabel 9050 9875 2    50   Input ~ 0
D6
Text GLabel 9050 10050 2    50   Input ~ 0
D7
Text GLabel 9050 9700 2    50   Input ~ 0
D5
$Comp
L power:GND #PWR0194
U 1 1 62C57A89
P 9600 9875
F 0 "#PWR0194" H 9600 9625 50  0001 C CNN
F 1 "GND" H 9600 9725 50  0000 C CNN
F 2 "" H 9600 9875 50  0001 C CNN
F 3 "" H 9600 9875 50  0001 C CNN
	1    9600 9875
	0    1    1    0   
$EndComp
$Comp
L Device:R R37
U 1 1 62C57A8F
P 9750 8825
F 0 "R37" V 9675 8775 50  0000 L CNN
F 1 "4k7" V 9750 8750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9680 8825 50  0001 C CNN
F 3 "~" H 9750 8825 50  0001 C CNN
	1    9750 8825
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0195
U 1 1 62C57A95
P 9600 8825
F 0 "#PWR0195" H 9600 8575 50  0001 C CNN
F 1 "GND" H 9600 8675 50  0000 C CNN
F 2 "" H 9600 8825 50  0001 C CNN
F 3 "" H 9600 8825 50  0001 C CNN
	1    9600 8825
	0    1    1    0   
$EndComp
$Comp
L Device:R R38
U 1 1 62C57A9B
P 9750 9000
F 0 "R38" V 9675 8950 50  0000 L CNN
F 1 "4k7" V 9750 8925 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9680 9000 50  0001 C CNN
F 3 "~" H 9750 9000 50  0001 C CNN
	1    9750 9000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0196
U 1 1 62C57AA1
P 9600 9000
F 0 "#PWR0196" H 9600 8750 50  0001 C CNN
F 1 "GND" H 9600 8850 50  0000 C CNN
F 2 "" H 9600 9000 50  0001 C CNN
F 3 "" H 9600 9000 50  0001 C CNN
	1    9600 9000
	0    1    1    0   
$EndComp
$Comp
L Device:R R39
U 1 1 62C57AA7
P 9750 9175
F 0 "R39" V 9675 9125 50  0000 L CNN
F 1 "4k7" V 9750 9100 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9680 9175 50  0001 C CNN
F 3 "~" H 9750 9175 50  0001 C CNN
	1    9750 9175
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0197
U 1 1 62C57AAD
P 9600 9175
F 0 "#PWR0197" H 9600 8925 50  0001 C CNN
F 1 "GND" H 9600 9025 50  0000 C CNN
F 2 "" H 9600 9175 50  0001 C CNN
F 3 "" H 9600 9175 50  0001 C CNN
	1    9600 9175
	0    1    1    0   
$EndComp
$Comp
L Device:R R40
U 1 1 62C57AB3
P 9750 9350
F 0 "R40" V 9675 9300 50  0000 L CNN
F 1 "4k7" V 9750 9275 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9680 9350 50  0001 C CNN
F 3 "~" H 9750 9350 50  0001 C CNN
	1    9750 9350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0198
U 1 1 62C57AB9
P 9600 9350
F 0 "#PWR0198" H 9600 9100 50  0001 C CNN
F 1 "GND" H 9600 9200 50  0000 C CNN
F 2 "" H 9600 9350 50  0001 C CNN
F 3 "" H 9600 9350 50  0001 C CNN
	1    9600 9350
	0    1    1    0   
$EndComp
$Comp
L Device:R R41
U 1 1 62C57ABF
P 9750 9525
F 0 "R41" V 9675 9475 50  0000 L CNN
F 1 "4k7" V 9750 9450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9680 9525 50  0001 C CNN
F 3 "~" H 9750 9525 50  0001 C CNN
	1    9750 9525
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0199
U 1 1 62C57AC5
P 9600 9525
F 0 "#PWR0199" H 9600 9275 50  0001 C CNN
F 1 "GND" H 9600 9375 50  0000 C CNN
F 2 "" H 9600 9525 50  0001 C CNN
F 3 "" H 9600 9525 50  0001 C CNN
	1    9600 9525
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0200
U 1 1 62C57ACB
P 9600 9700
F 0 "#PWR0200" H 9600 9450 50  0001 C CNN
F 1 "GND" H 9600 9550 50  0000 C CNN
F 2 "" H 9600 9700 50  0001 C CNN
F 3 "" H 9600 9700 50  0001 C CNN
	1    9600 9700
	0    1    1    0   
$EndComp
$Comp
L Device:R R42
U 1 1 62C57AD1
P 9750 9700
F 0 "R42" V 9675 9650 50  0000 L CNN
F 1 "4k7" V 9750 9625 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9680 9700 50  0001 C CNN
F 3 "~" H 9750 9700 50  0001 C CNN
	1    9750 9700
	0    1    1    0   
$EndComp
$Comp
L Device:R R43
U 1 1 62C57AD7
P 9750 9875
F 0 "R43" V 9675 9825 50  0000 L CNN
F 1 "4k7" V 9750 9800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9680 9875 50  0001 C CNN
F 3 "~" H 9750 9875 50  0001 C CNN
	1    9750 9875
	0    1    1    0   
$EndComp
$Comp
L Device:R R44
U 1 1 62C57ADD
P 9750 10050
F 0 "R44" V 9675 10000 50  0000 L CNN
F 1 "4k7" V 9750 9975 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9680 10050 50  0001 C CNN
F 3 "~" H 9750 10050 50  0001 C CNN
	1    9750 10050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0201
U 1 1 62C57AE3
P 9600 10050
F 0 "#PWR0201" H 9600 9800 50  0001 C CNN
F 1 "GND" H 9600 9900 50  0000 C CNN
F 2 "" H 9600 10050 50  0001 C CNN
F 3 "" H 9600 10050 50  0001 C CNN
	1    9600 10050
	0    1    1    0   
$EndComp
Text GLabel 9900 8825 2    50   Input ~ 0
F_D0
Text GLabel 9900 9000 2    50   Input ~ 0
F_D1
Text GLabel 9900 9175 2    50   Input ~ 0
F_D2
Text GLabel 9900 9350 2    50   Input ~ 0
F_D3
Text GLabel 9900 9525 2    50   Input ~ 0
F_D4
Text GLabel 9900 9700 2    50   Input ~ 0
F_D5
Text GLabel 9900 9875 2    50   Input ~ 0
F_D6
Text GLabel 9900 10050 2    50   Input ~ 0
F_D7
Text GLabel 9725 5500 2    50   Input ~ 0
CASSIN
Text GLabel 9725 5600 2    50   Input ~ 0
CASSOUT
Wire Wire Line
	9725 5500 9425 5500
Wire Wire Line
	9725 5600 9425 5600
Text GLabel 10250 8275 3    50   Input ~ 0
CASSIN
Text GLabel 10550 8025 2    50   Input ~ 0
D7
$Comp
L 74xx:74LS175 U20
U 1 1 62C96BB8
P 1425 8475
F 0 "U20" H 1425 9356 50  0000 C CNN
F 1 "74LS175" H 1425 9265 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 1425 8475 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS175" H 1425 8475 50  0001 C CNN
	1    1425 8475
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0202
U 1 1 62C980E2
P 1425 7775
F 0 "#PWR0202" H 1425 7625 50  0001 C CNN
F 1 "+5V" H 1440 7948 50  0000 C CNN
F 2 "" H 1425 7775 50  0001 C CNN
F 3 "" H 1425 7775 50  0001 C CNN
	1    1425 7775
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0203
U 1 1 62C98BC7
P 1425 9275
F 0 "#PWR0203" H 1425 9025 50  0001 C CNN
F 1 "GND" H 1430 9102 50  0000 C CNN
F 2 "" H 1425 9275 50  0001 C CNN
F 3 "" H 1425 9275 50  0001 C CNN
	1    1425 9275
	0    1    1    0   
$EndComp
$Comp
L Device:R R45
U 1 1 62C9B3F2
P 925 9125
F 0 "R45" H 995 9171 50  0000 L CNN
F 1 "4k7" H 995 9080 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 855 9125 50  0001 C CNN
F 3 "~" H 925 9125 50  0001 C CNN
	1    925  9125
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0204
U 1 1 62C9BCF5
P 925 9275
F 0 "#PWR0204" H 925 9125 50  0001 C CNN
F 1 "+5V" H 940 9448 50  0000 C CNN
F 2 "" H 925 9275 50  0001 C CNN
F 3 "" H 925 9275 50  0001 C CNN
	1    925  9275
	-1   0    0    1   
$EndComp
Text GLabel 925  8075 0    50   Input ~ 0
D0
Text GLabel 925  8275 0    50   Input ~ 0
D1
Text GLabel 925  8475 0    50   Input ~ 0
D2
Text GLabel 925  8675 0    50   Input ~ 0
D3
Text GLabel 925  8875 0    50   Input ~ 0
CASSOUT
Text GLabel 9225 8300 0    50   Input ~ 0
CASSOUT
Text GLabel 9225 7750 0    50   Input ~ 0
CASIND
$Comp
L Device:D D10
U 1 1 62CC1CD5
P 4200 3575
F 0 "D10" H 4200 3358 50  0000 C CNN
F 1 "1N4148" H 4200 3449 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 4200 3575 50  0001 C CNN
F 3 "~" H 4200 3575 50  0001 C CNN
	1    4200 3575
	-1   0    0    1   
$EndComp
Text GLabel 6850 4450 2    50   Input ~ 0
CASIND
$Comp
L Device:R R52
U 1 1 62CC3DCF
P 6850 3775
F 0 "R52" H 6920 3821 50  0000 L CNN
F 1 "10" H 6920 3730 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6780 3775 50  0001 C CNN
F 3 "~" H 6850 3775 50  0001 C CNN
	1    6850 3775
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C22
U 1 1 62CC4AB2
P 7175 3775
F 0 "C22" H 7057 3729 50  0000 R CNN
F 1 "100uF" H 7057 3820 50  0000 R CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.4" H 7213 3625 50  0001 C CNN
F 3 "~" H 7175 3775 50  0001 C CNN
	1    7175 3775
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0205
U 1 1 62CC7A9D
P 6850 3625
F 0 "#PWR0205" H 6850 3475 50  0001 C CNN
F 1 "+5V" H 6865 3798 50  0000 C CNN
F 2 "" H 6850 3625 50  0001 C CNN
F 3 "" H 6850 3625 50  0001 C CNN
	1    6850 3625
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0206
U 1 1 62CC8262
P 7175 3625
F 0 "#PWR0206" H 7175 3375 50  0001 C CNN
F 1 "GND" H 7180 3452 50  0000 C CNN
F 2 "" H 7175 3625 50  0001 C CNN
F 3 "" H 7175 3625 50  0001 C CNN
	1    7175 3625
	-1   0    0    1   
$EndComp
Wire Wire Line
	6850 4050 6850 3925
Wire Wire Line
	6850 3925 7175 3925
Connection ~ 6850 3925
$Comp
L Device:R R47
U 1 1 62CF0DE2
P 2225 8075
F 0 "R47" H 2295 8121 50  0000 L CNN
F 1 "7k5" H 2295 8030 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2155 8075 50  0001 C CNN
F 3 "~" H 2225 8075 50  0001 C CNN
	1    2225 8075
	0    -1   -1   0   
$EndComp
NoConn ~ 1925 8775
NoConn ~ 1925 8575
NoConn ~ 1925 8275
NoConn ~ 1925 8175
$Comp
L Device:R R49
U 1 1 62D35D58
P 2475 8225
F 0 "R49" H 2545 8271 50  0000 L CNN
F 1 "7k5" H 2545 8180 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2405 8225 50  0001 C CNN
F 3 "~" H 2475 8225 50  0001 C CNN
	1    2475 8225
	1    0    0    -1  
$EndComp
$Comp
L Device:R R50
U 1 1 62D3614C
P 2800 8375
F 0 "R50" H 2870 8421 50  0000 L CNN
F 1 "220K" H 2870 8330 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2730 8375 50  0001 C CNN
F 3 "~" H 2800 8375 50  0001 C CNN
	1    2800 8375
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0207
U 1 1 62D367A8
P 2950 8375
F 0 "#PWR0207" H 2950 8225 50  0001 C CNN
F 1 "+5V" H 2965 8548 50  0000 C CNN
F 2 "" H 2950 8375 50  0001 C CNN
F 3 "" H 2950 8375 50  0001 C CNN
	1    2950 8375
	0    1    1    0   
$EndComp
Wire Wire Line
	1925 8075 2075 8075
Wire Wire Line
	2475 8075 2375 8075
Wire Wire Line
	1925 8375 2475 8375
Wire Wire Line
	2650 8375 2475 8375
Connection ~ 2475 8375
$Comp
L Device:R R51
U 1 1 62D6C1C1
P 3275 8225
F 0 "R51" H 3345 8271 50  0000 L CNN
F 1 "1.2K" H 3345 8180 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3205 8225 50  0001 C CNN
F 3 "~" H 3275 8225 50  0001 C CNN
	1    3275 8225
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0208
U 1 1 62D6C9D7
P 3275 8375
F 0 "#PWR0208" H 3275 8125 50  0001 C CNN
F 1 "GND" H 3280 8202 50  0000 C CNN
F 2 "" H 3275 8375 50  0001 C CNN
F 3 "" H 3275 8375 50  0001 C CNN
	1    3275 8375
	1    0    0    -1  
$EndComp
Wire Wire Line
	3275 8075 2475 8075
Connection ~ 2475 8075
Text GLabel 3400 8075 2    50   Input ~ 0
CASSAOUT
Wire Wire Line
	3400 8075 3275 8075
Connection ~ 3275 8075
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 62D9849F
P 2575 9475
F 0 "Q1" H 2765 9521 50  0000 L CNN
F 1 "2N3904" H 2765 9430 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2775 9400 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 2575 9475 50  0001 L CNN
	1    2575 9475
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0209
U 1 1 62D9A99D
P 1900 9650
F 0 "#PWR0209" H 1900 9400 50  0001 C CNN
F 1 "GND" H 1905 9477 50  0000 C CNN
F 2 "" H 1900 9650 50  0001 C CNN
F 3 "" H 1900 9650 50  0001 C CNN
	1    1900 9650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R48
U 1 1 62D9AF4D
P 2225 9475
F 0 "R48" H 2295 9521 50  0000 L CNN
F 1 "1K" H 2295 9430 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2155 9475 50  0001 C CNN
F 3 "~" H 2225 9475 50  0001 C CNN
	1    2225 9475
	0    1    1    0   
$EndComp
Wire Wire Line
	2075 9475 2075 8475
Wire Wire Line
	2075 8475 1925 8475
$Comp
L wilson-z80:SIP-1A05 U21
U 1 1 62DBCF4D
P 3025 9150
F 0 "U21" H 3025 8860 50  0000 C CNN
F 1 "SIP-1A05" H 3025 8951 50  0000 C CNN
F 2 "wilson-z80:SIP-1A05" H 2950 9300 50  0001 C CNN
F 3 "" H 2950 9300 50  0001 C CNN
	1    3025 9150
	-1   0    0    1   
$EndComp
$Comp
L Device:D D9
U 1 1 62DCDBD9
P 2550 9050
F 0 "D9" H 2500 8875 50  0000 L CNN
F 1 "1N4148" H 2400 8950 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 2550 9050 50  0001 C CNN
F 3 "~" H 2550 9050 50  0001 C CNN
	1    2550 9050
	0    1    1    0   
$EndComp
Wire Wire Line
	2675 9200 2675 9275
Wire Wire Line
	2550 9200 2675 9200
Connection ~ 2675 9200
Wire Wire Line
	2550 8900 2675 8900
Wire Wire Line
	2675 8900 2675 9075
$Comp
L power:+5V #PWR0210
U 1 1 62DFD8BE
P 2675 8900
F 0 "#PWR0210" H 2675 8750 50  0001 C CNN
F 1 "+5V" H 2690 9073 50  0000 C CNN
F 2 "" H 2675 8900 50  0001 C CNN
F 3 "" H 2675 8900 50  0001 C CNN
	1    2675 8900
	1    0    0    -1  
$EndComp
Connection ~ 2675 8900
$Comp
L Device:R R46
U 1 1 62E01D1C
P 1900 9200
F 0 "R46" H 1970 9246 50  0000 L CNN
F 1 "1K" H 1970 9155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1830 9200 50  0001 C CNN
F 3 "~" H 1900 9200 50  0001 C CNN
	1    1900 9200
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D8
U 1 1 62E01D22
P 1900 9500
F 0 "D8" V 1900 9300 50  0000 L CNN
F 1 "32" H 1800 9600 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm_FlatTop" H 1900 9500 50  0001 C CNN
F 3 "~" H 1900 9500 50  0001 C CNN
	1    1900 9500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1900 9050 1900 8975
Wire Wire Line
	1975 8675 1925 8675
Wire Wire Line
	1900 8975 1975 8975
Wire Wire Line
	1975 8975 1975 8675
$Comp
L power:GND #PWR0211
U 1 1 62E502B7
P 2675 9675
F 0 "#PWR0211" H 2675 9425 50  0001 C CNN
F 1 "GND" H 2680 9502 50  0000 C CNN
F 2 "" H 2675 9675 50  0001 C CNN
F 3 "" H 2675 9675 50  0001 C CNN
	1    2675 9675
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 62F87F4A
P 6050 4650
F 0 "#PWR010" H 6050 4400 50  0001 C CNN
F 1 "GND" H 6055 4477 50  0000 C CNN
F 2 "" H 6050 4650 50  0001 C CNN
F 3 "" H 6050 4650 50  0001 C CNN
	1    6050 4650
	1    0    0    -1  
$EndComp
Text GLabel 1025 3575 0    50   Input ~ 0
CASSAIN
$Comp
L Device:C C23
U 1 1 62FABBAE
P 1275 3575
F 0 "C23" V 1023 3575 50  0000 C CNN
F 1 "220pF" V 1114 3575 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1313 3425 50  0001 C CNN
F 3 "~" H 1275 3575 50  0001 C CNN
	1    1275 3575
	0    1    1    0   
$EndComp
Wire Wire Line
	1025 3575 1075 3575
Wire Wire Line
	1075 3600 1075 3575
Connection ~ 1075 3575
Wire Wire Line
	1075 3575 1125 3575
$Comp
L power:GND #PWR06
U 1 1 62FCDEEC
P 1075 3900
F 0 "#PWR06" H 1075 3650 50  0001 C CNN
F 1 "GND" H 1080 3727 50  0000 C CNN
F 2 "" H 1075 3900 50  0001 C CNN
F 3 "" H 1075 3900 50  0001 C CNN
	1    1075 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R53
U 1 1 62FADD4E
P 1075 3750
F 0 "R53" H 1145 3796 50  0000 L CNN
F 1 "100" H 1145 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1005 3750 50  0001 C CNN
F 3 "~" H 1075 3750 50  0001 C CNN
	1    1075 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R55
U 1 1 62FED81F
P 1700 3375
F 0 "R55" H 1770 3421 50  0000 L CNN
F 1 "360K" H 1770 3330 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1630 3375 50  0001 C CNN
F 3 "~" H 1700 3375 50  0001 C CNN
	1    1700 3375
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R58
U 1 1 630284B9
P 2175 3375
F 0 "R58" H 2245 3421 50  0000 L CNN
F 1 "560K" H 2245 3330 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2105 3375 50  0001 C CNN
F 3 "~" H 2175 3375 50  0001 C CNN
	1    2175 3375
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C24
U 1 1 63028932
P 1875 3575
F 0 "C24" V 1650 3575 50  0000 C CNN
F 1 "220pF" V 1725 3575 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1913 3425 50  0001 C CNN
F 3 "~" H 1875 3575 50  0001 C CNN
	1    1875 3575
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R59
U 1 1 63058CBD
P 2175 3575
F 0 "R59" H 2245 3621 50  0000 L CNN
F 1 "360K" H 2245 3530 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2105 3575 50  0001 C CNN
F 3 "~" H 2175 3575 50  0001 C CNN
	1    2175 3575
	0    1    1    0   
$EndComp
$Comp
L Device:R R63
U 1 1 6306A98B
P 3625 3250
F 0 "R63" V 3725 3275 50  0000 L CNN
F 1 "470K" V 3725 3075 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3555 3250 50  0001 C CNN
F 3 "~" H 3625 3250 50  0001 C CNN
	1    3625 3250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R61
U 1 1 630E92F2
P 3175 3475
F 0 "R61" H 3245 3521 50  0000 L CNN
F 1 "470K" H 3245 3430 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3105 3475 50  0001 C CNN
F 3 "~" H 3175 3475 50  0001 C CNN
	1    3175 3475
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1425 3575 1550 3575
Wire Wire Line
	1550 3375 1550 3575
Connection ~ 1550 3575
Wire Wire Line
	1550 3575 1725 3575
Wire Wire Line
	1850 3375 1925 3375
Wire Wire Line
	2325 3375 2375 3375
Wire Wire Line
	2325 3575 2350 3575
Wire Wire Line
	3025 3475 3000 3475
Wire Wire Line
	3325 3475 3350 3475
Wire Wire Line
	3000 3475 3000 3025
Wire Wire Line
	3000 3025 1925 3025
Wire Wire Line
	1925 3025 1925 3375
Connection ~ 3000 3475
Wire Wire Line
	3000 3475 2975 3475
Connection ~ 1925 3375
Wire Wire Line
	1925 3375 2025 3375
Wire Wire Line
	3975 3575 3975 3250
Wire Wire Line
	3975 3250 3775 3250
Wire Wire Line
	3350 3475 3350 3250
Wire Wire Line
	3350 3250 3475 3250
Connection ~ 3350 3475
Wire Wire Line
	3350 3475 3375 3475
Wire Wire Line
	4050 3575 3975 3575
$Comp
L Device:D D13
U 1 1 63246BF9
P 4200 3025
F 0 "D13" H 4200 2808 50  0000 C CNN
F 1 "1N4148" H 4200 2899 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 4200 3025 50  0001 C CNN
F 3 "~" H 4200 3025 50  0001 C CNN
	1    4200 3025
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 3025 3000 3025
Connection ~ 3000 3025
$Comp
L Device:R R62
U 1 1 63273C2C
P 3375 3925
F 0 "R62" H 3445 3971 50  0000 L CNN
F 1 "680K" H 3445 3880 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3305 3925 50  0001 C CNN
F 3 "~" H 3375 3925 50  0001 C CNN
	1    3375 3925
	1    0    0    -1  
$EndComp
Wire Wire Line
	3375 3775 3375 3675
$Comp
L Device:R R64
U 1 1 63288141
P 3750 4100
F 0 "R64" H 3820 4146 50  0000 L CNN
F 1 "10K" H 3820 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3680 4100 50  0001 C CNN
F 3 "~" H 3750 4100 50  0001 C CNN
	1    3750 4100
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 63288D12
P 3900 4100
F 0 "#PWR09" H 3900 3950 50  0001 C CNN
F 1 "+5V" H 3915 4273 50  0000 C CNN
F 2 "" H 3900 4100 50  0001 C CNN
F 3 "" H 3900 4100 50  0001 C CNN
	1    3900 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 4100 3375 4100
Wire Wire Line
	3375 4100 3375 4075
$Comp
L Device:R R60
U 1 1 632C5534
P 2825 4100
F 0 "R60" H 2895 4146 50  0000 L CNN
F 1 "1.8M" H 2895 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2755 4100 50  0001 C CNN
F 3 "~" H 2825 4100 50  0001 C CNN
	1    2825 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	2975 4100 3275 4100
Connection ~ 3375 4100
Wire Wire Line
	2350 4100 2350 3575
Wire Wire Line
	2350 4100 2675 4100
Connection ~ 2350 3575
Wire Wire Line
	2350 3575 2375 3575
$Comp
L Device:R R56
U 1 1 6330B305
P 2100 4575
F 0 "R56" H 2170 4621 50  0000 L CNN
F 1 "1M" H 2170 4530 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2030 4575 50  0001 C CNN
F 3 "~" H 2100 4575 50  0001 C CNN
	1    2100 4575
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R54
U 1 1 6330BD4D
P 1600 4800
F 0 "R54" V 1700 4825 50  0000 L CNN
F 1 "470K" V 1700 4625 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1530 4800 50  0001 C CNN
F 3 "~" H 1600 4800 50  0001 C CNN
	1    1600 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C25
U 1 1 6330C1B1
P 3025 4950
F 0 "C25" V 2800 4950 50  0000 C CNN
F 1 "10uF" V 2875 4950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3063 4800 50  0001 C CNN
F 3 "~" H 3025 4950 50  0001 C CNN
	1    3025 4950
	0    1    1    0   
$EndComp
$Comp
L Device:R R57
U 1 1 6330E1DB
P 2125 5275
F 0 "R57" H 2195 5321 50  0000 L CNN
F 1 "1M" H 2195 5230 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2055 5275 50  0001 C CNN
F 3 "~" H 2125 5275 50  0001 C CNN
	1    2125 5275
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 4800 1775 4800
Wire Wire Line
	1775 4800 1775 4575
Wire Wire Line
	1775 4575 1950 4575
Connection ~ 1775 4800
Wire Wire Line
	1775 4800 1800 4800
Wire Wire Line
	1975 5275 1800 5275
Wire Wire Line
	1800 5275 1800 5000
Wire Wire Line
	4350 3575 4400 3575
Wire Wire Line
	4400 3575 4400 3025
Wire Wire Line
	4400 3025 4350 3025
Wire Wire Line
	4400 3575 4400 4375
Wire Wire Line
	4400 4375 1325 4375
Wire Wire Line
	1325 4375 1325 4800
Wire Wire Line
	1325 4800 1450 4800
Connection ~ 4400 3575
$Comp
L power:GND #PWR07
U 1 1 633E4C18
P 2875 4950
F 0 "#PWR07" H 2875 4700 50  0001 C CNN
F 1 "GND" H 2880 4777 50  0000 C CNN
F 2 "" H 2875 4950 50  0001 C CNN
F 3 "" H 2875 4950 50  0001 C CNN
	1    2875 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	2275 5275 3275 5275
Wire Wire Line
	3275 5275 3275 4950
Connection ~ 3275 4100
Wire Wire Line
	3275 4100 3375 4100
Wire Wire Line
	3175 4950 3275 4950
Connection ~ 3275 4950
Wire Wire Line
	3275 4950 3275 4100
$Comp
L Device:C C26
U 1 1 63418490
P 3575 5500
F 0 "C26" V 3350 5500 50  0000 C CNN
F 1 "10uF" V 3425 5500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3613 5350 50  0001 C CNN
F 3 "~" H 3575 5500 50  0001 C CNN
	1    3575 5500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 63419F46
P 3575 5350
F 0 "#PWR08" H 3575 5100 50  0001 C CNN
F 1 "GND" H 3580 5177 50  0000 C CNN
F 2 "" H 3575 5350 50  0001 C CNN
F 3 "" H 3575 5350 50  0001 C CNN
	1    3575 5350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R65
U 1 1 6341ABD5
P 3775 5725
F 0 "R65" V 3875 5750 50  0000 L CNN
F 1 "470K" V 3875 5550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3705 5725 50  0001 C CNN
F 3 "~" H 3775 5725 50  0001 C CNN
	1    3775 5725
	0    1    1    0   
$EndComp
$Comp
L Device:D D12
U 1 1 6341B3D0
P 3300 5725
F 0 "D12" H 3300 5508 50  0000 C CNN
F 1 "1N4148" H 3300 5599 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 3300 5725 50  0001 C CNN
F 3 "~" H 3300 5725 50  0001 C CNN
	1    3300 5725
	-1   0    0    1   
$EndComp
$Comp
L Device:D D11
U 1 1 6341C1D9
P 3000 5725
F 0 "D11" H 3000 5508 50  0000 C CNN
F 1 "1N4148" H 3000 5599 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 3000 5725 50  0001 C CNN
F 3 "~" H 3000 5725 50  0001 C CNN
	1    3000 5725
	-1   0    0    1   
$EndComp
$Comp
L Device:R R66
U 1 1 63475C1C
P 3775 5925
F 0 "R66" V 3875 5950 50  0000 L CNN
F 1 "470K" V 3875 5750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3705 5925 50  0001 C CNN
F 3 "~" H 3775 5925 50  0001 C CNN
	1    3775 5925
	0    1    1    0   
$EndComp
Wire Wire Line
	3925 5925 3975 5925
Wire Wire Line
	3925 5725 3975 5725
Wire Wire Line
	3450 5725 3575 5725
Wire Wire Line
	3575 5650 3575 5725
Connection ~ 3575 5725
Wire Wire Line
	3575 5725 3625 5725
Wire Wire Line
	2850 5725 2750 5725
Wire Wire Line
	2750 5725 2750 5925
Wire Wire Line
	2750 5925 3625 5925
Wire Wire Line
	2400 4900 2450 4900
Wire Wire Line
	2450 4900 2450 4575
Wire Wire Line
	2250 4575 2450 4575
Wire Wire Line
	2450 4900 2450 5725
Wire Wire Line
	2450 5725 2750 5725
Connection ~ 2450 4900
Connection ~ 2750 5725
Text GLabel 6850 4150 2    50   Input ~ 0
C3INP
Text GLabel 6850 4250 2    50   Input ~ 0
C4INP
Text GLabel 6850 4350 2    50   Input ~ 0
C4INN
Text GLabel 6850 4550 2    50   Input ~ 0
C3OUT
Text GLabel 6850 4650 2    50   Input ~ 0
C3INN
Text GLabel 6050 4050 0    50   Input ~ 0
C1INP
Text GLabel 6050 4150 0    50   Input ~ 0
C2INP
Text GLabel 6050 4250 0    50   Input ~ 0
C2INN
Text GLabel 6050 4350 0    50   Input ~ 0
C2OUT
Text GLabel 6050 4450 0    50   Input ~ 0
C1OUT
Text GLabel 6050 4550 0    50   Input ~ 0
C1INN
Text GLabel 3975 5725 2    50   Input ~ 0
C4INN
Text GLabel 3975 5925 2    50   Input ~ 0
C4INP
Text GLabel 2400 4900 0    50   Input ~ 0
C3OUT
Text GLabel 1800 4800 2    50   Input ~ 0
C3INN
Text GLabel 1800 5000 2    50   Input ~ 0
C3INP
Text GLabel 2375 3375 2    50   Input ~ 0
C1INN
Text GLabel 2375 3575 2    50   Input ~ 0
C1INP
Text GLabel 2975 3475 0    50   Input ~ 0
C1OUT
Text GLabel 3375 3475 2    50   Input ~ 0
C2INN
Text GLabel 3375 3675 2    50   Input ~ 0
C2INP
Text GLabel 3975 3575 0    50   Input ~ 0
C2OUT
Text GLabel 3375 9200 2    50   Input ~ 0
CASS_SW1
Text GLabel 3375 9075 2    50   Input ~ 0
CASS_SW2
NoConn ~ 7025 5875
Wire Wire Line
	6425 5775 6425 5875
$Comp
L power:GND #PWR0212
U 1 1 63605A2B
P 6425 5875
F 0 "#PWR0212" H 6425 5625 50  0001 C CNN
F 1 "GND" H 6430 5702 50  0000 C CNN
F 2 "" H 6425 5875 50  0001 C CNN
F 3 "" H 6425 5875 50  0001 C CNN
	1    6425 5875
	0    1    1    0   
$EndComp
Connection ~ 6425 5875
Wire Wire Line
	6425 5875 6425 5975
$Comp
L Connector:Conn_01x06_Male J4
U 1 1 6360E381
P 5275 5725
F 0 "J4" H 5247 5607 50  0000 R CNN
F 1 "Conn_01x06_Male" H 5247 5698 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 5275 5725 50  0001 C CNN
F 3 "~" H 5275 5725 50  0001 C CNN
	1    5275 5725
	-1   0    0    1   
$EndComp
Text GLabel 5075 5725 0    50   Input ~ 0
CASSAOUT
Text GLabel 5075 5925 0    50   Input ~ 0
CASSAIN
Text GLabel 5075 5525 0    50   Input ~ 0
CASS_SW2
Text GLabel 5075 5425 0    50   Input ~ 0
CASS_SW1
$Comp
L power:GND #PWR011
U 1 1 63611E4C
P 4675 5625
F 0 "#PWR011" H 4675 5375 50  0001 C CNN
F 1 "GND" H 4680 5452 50  0000 C CNN
F 2 "" H 4675 5625 50  0001 C CNN
F 3 "" H 4675 5625 50  0001 C CNN
	1    4675 5625
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 63612ACB
P 4675 5825
F 0 "#PWR012" H 4675 5575 50  0001 C CNN
F 1 "GND" H 4680 5652 50  0000 C CNN
F 2 "" H 4675 5825 50  0001 C CNN
F 3 "" H 4675 5825 50  0001 C CNN
	1    4675 5825
	0    1    1    0   
$EndComp
Wire Wire Line
	4675 5625 5075 5625
Wire Wire Line
	4675 5825 5075 5825
$Comp
L Power_Management:DS1210 U22
U 1 1 63A9F8A2
P 10450 7025
F 0 "U22" H 10450 7606 50  0000 C CNN
F 1 "DS1210" H 10450 7515 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 10450 6225 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS1210.pdf" H 10350 6925 50  0001 C CNN
	1    10450 7025
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 63AA1A0C
P 10450 7425
F 0 "#PWR017" H 10450 7175 50  0001 C CNN
F 1 "GND" H 10450 7275 50  0000 C CNN
F 2 "" H 10450 7425 50  0001 C CNN
F 3 "" H 10450 7425 50  0001 C CNN
	1    10450 7425
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 63AA2782
P 9850 6825
F 0 "BT1" V 9595 6875 50  0000 C CNN
F 1 "Battery_Cell" V 9686 6875 50  0000 C CNN
F 2 "wilson-z80:BS-01-A4CJ004" V 9850 6885 50  0001 C CNN
F 3 "~" V 9850 6885 50  0001 C CNN
	1    9850 6825
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 63AA5E3D
P 9750 6825
F 0 "#PWR013" H 9750 6575 50  0001 C CNN
F 1 "GND" H 9750 6675 50  0000 C CNN
F 2 "" H 9750 6825 50  0001 C CNN
F 3 "" H 9750 6825 50  0001 C CNN
	1    9750 6825
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 63AA6913
P 10050 7125
F 0 "#PWR015" H 10050 6875 50  0001 C CNN
F 1 "GND" H 10050 6975 50  0000 C CNN
F 2 "" H 10050 7125 50  0001 C CNN
F 3 "" H 10050 7125 50  0001 C CNN
	1    10050 7125
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 63AA73AD
P 10050 6925
F 0 "#PWR014" H 10050 6675 50  0001 C CNN
F 1 "GND" H 10075 6700 50  0000 C CNN
F 2 "" H 10050 6925 50  0001 C CNN
F 3 "" H 10050 6925 50  0001 C CNN
	1    10050 6925
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 63AA7C5E
P 10450 6625
F 0 "#PWR016" H 10450 6475 50  0001 C CNN
F 1 "+5V" V 10450 6800 50  0000 C CNN
F 2 "" H 10450 6625 50  0001 C CNN
F 3 "" H 10450 6625 50  0001 C CNN
	1    10450 6625
	0    1    1    0   
$EndComp
Wire Wire Line
	9975 7250 9975 7225
Wire Wire Line
	9975 7225 10050 7225
Text GLabel 10850 6925 2    50   Input ~ 0
BB_VCC
Text GLabel 10850 7225 2    50   Input ~ 0
BB_CE
Text GLabel 11150 2900 2    50   Input ~ 0
BB_VCC
Text GLabel 11275 3900 2    50   Input ~ 0
BB_CE
Wire Wire Line
	6300 7600 6300 9450
Wire Wire Line
	6200 8200 6700 8200
Wire Wire Line
	9425 6200 9775 6200
Text GLabel 4550 8500 2    50   Input ~ 0
BUSISO
Wire Wire Line
	750  6300 775  6300
Wire Wire Line
	750  6600 775  6600
Connection ~ 775  6300
Wire Wire Line
	775  6300 975  6300
Connection ~ 775  6600
Wire Wire Line
	775  6600 975  6600
Connection ~ 975  6300
Wire Wire Line
	975  6300 1175 6300
Connection ~ 975  6600
Wire Wire Line
	975  6600 1175 6600
Connection ~ 1175 6300
Connection ~ 1175 6600
$Comp
L Device:C C29
U 1 1 63F05844
P 8550 6450
F 0 "C29" V 8625 6500 50  0000 L CNN
F 1 "100n" V 8625 6225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8588 6300 50  0001 C CNN
F 3 "~" H 8550 6450 50  0001 C CNN
	1    8550 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1175 6300 1375 6300
Wire Wire Line
	1175 6600 1375 6600
$Comp
L Device:C C3
U 1 1 63F51412
P 1375 6450
F 0 "C3" V 1450 6500 50  0000 L CNN
F 1 "100n" V 1450 6225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1413 6300 50  0001 C CNN
F 3 "~" H 1375 6450 50  0001 C CNN
	1    1375 6450
	1    0    0    -1  
$EndComp
Connection ~ 1375 6300
Wire Wire Line
	1375 6300 1575 6300
Connection ~ 1375 6600
Wire Wire Line
	1375 6600 1575 6600
$Comp
L Device:C C4
U 1 1 63F51A15
P 1575 6450
F 0 "C4" V 1650 6500 50  0000 L CNN
F 1 "100n" V 1650 6225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1613 6300 50  0001 C CNN
F 3 "~" H 1575 6450 50  0001 C CNN
	1    1575 6450
	1    0    0    -1  
$EndComp
Connection ~ 1575 6300
Wire Wire Line
	1575 6300 1775 6300
Connection ~ 1575 6600
Wire Wire Line
	1575 6600 1775 6600
$Comp
L Device:C C5
U 1 1 63F51E88
P 1775 6450
F 0 "C5" V 1850 6500 50  0000 L CNN
F 1 "100n" V 1850 6225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1813 6300 50  0001 C CNN
F 3 "~" H 1775 6450 50  0001 C CNN
	1    1775 6450
	1    0    0    -1  
$EndComp
Connection ~ 1775 6300
Wire Wire Line
	1775 6300 1975 6300
Connection ~ 1775 6600
Wire Wire Line
	1775 6600 1975 6600
$Comp
L Device:C C6
U 1 1 63F521E1
P 1975 6450
F 0 "C6" V 2050 6500 50  0000 L CNN
F 1 "100n" V 2050 6225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2013 6300 50  0001 C CNN
F 3 "~" H 1975 6450 50  0001 C CNN
	1    1975 6450
	1    0    0    -1  
$EndComp
Connection ~ 1975 6300
Wire Wire Line
	1975 6300 2175 6300
Connection ~ 1975 6600
Wire Wire Line
	1975 6600 2175 6600
$Comp
L Device:C C7
U 1 1 63F526F0
P 2175 6450
F 0 "C7" V 2250 6500 50  0000 L CNN
F 1 "100n" V 2250 6225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2213 6300 50  0001 C CNN
F 3 "~" H 2175 6450 50  0001 C CNN
	1    2175 6450
	1    0    0    -1  
$EndComp
Connection ~ 2175 6300
Wire Wire Line
	2175 6300 2375 6300
Connection ~ 2175 6600
Wire Wire Line
	2175 6600 2375 6600
$Comp
L Device:C C8
U 1 1 63F52BF0
P 2375 6450
F 0 "C8" V 2450 6500 50  0000 L CNN
F 1 "100n" V 2450 6225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2413 6300 50  0001 C CNN
F 3 "~" H 2375 6450 50  0001 C CNN
	1    2375 6450
	1    0    0    -1  
$EndComp
Connection ~ 2375 6300
Wire Wire Line
	2375 6300 2575 6300
Connection ~ 2375 6600
Wire Wire Line
	2375 6600 2575 6600
$Comp
L Device:C C9
U 1 1 63F53020
P 2575 6450
F 0 "C9" V 2650 6500 50  0000 L CNN
F 1 "100n" V 2650 6225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2613 6300 50  0001 C CNN
F 3 "~" H 2575 6450 50  0001 C CNN
	1    2575 6450
	1    0    0    -1  
$EndComp
Connection ~ 2575 6300
Wire Wire Line
	2575 6300 2775 6300
Connection ~ 2575 6600
Wire Wire Line
	2575 6600 2775 6600
$Comp
L Device:C C10
U 1 1 63F53526
P 2775 6450
F 0 "C10" V 2850 6500 50  0000 L CNN
F 1 "100n" V 2850 6225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2813 6300 50  0001 C CNN
F 3 "~" H 2775 6450 50  0001 C CNN
	1    2775 6450
	1    0    0    -1  
$EndComp
Connection ~ 2775 6300
Wire Wire Line
	2775 6300 2975 6300
Connection ~ 2775 6600
Wire Wire Line
	2775 6600 2975 6600
$Comp
L Device:C C11
U 1 1 63F53A5A
P 2975 6450
F 0 "C11" V 3050 6500 50  0000 L CNN
F 1 "100n" V 3050 6225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3013 6300 50  0001 C CNN
F 3 "~" H 2975 6450 50  0001 C CNN
	1    2975 6450
	1    0    0    -1  
$EndComp
Connection ~ 2975 6300
Wire Wire Line
	2975 6300 3175 6300
Connection ~ 2975 6600
Wire Wire Line
	2975 6600 3175 6600
$Comp
L Device:C C12
U 1 1 63F53F7B
P 3175 6450
F 0 "C12" V 3250 6500 50  0000 L CNN
F 1 "100n" V 3250 6225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3213 6300 50  0001 C CNN
F 3 "~" H 3175 6450 50  0001 C CNN
	1    3175 6450
	1    0    0    -1  
$EndComp
Connection ~ 3175 6300
Wire Wire Line
	3175 6300 3375 6300
Connection ~ 3175 6600
Wire Wire Line
	3175 6600 3375 6600
$Comp
L Device:C C13
U 1 1 63F54368
P 3375 6450
F 0 "C13" V 3450 6500 50  0000 L CNN
F 1 "100n" V 3450 6225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3413 6300 50  0001 C CNN
F 3 "~" H 3375 6450 50  0001 C CNN
	1    3375 6450
	1    0    0    -1  
$EndComp
Connection ~ 3375 6300
Wire Wire Line
	3375 6300 3575 6300
Connection ~ 3375 6600
Wire Wire Line
	3375 6600 3575 6600
$Comp
L Device:C C15
U 1 1 63F54773
P 3575 6450
F 0 "C15" V 3650 6500 50  0000 L CNN
F 1 "100n" V 3650 6225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3613 6300 50  0001 C CNN
F 3 "~" H 3575 6450 50  0001 C CNN
	1    3575 6450
	1    0    0    -1  
$EndComp
Connection ~ 3575 6300
Wire Wire Line
	3575 6300 3775 6300
Connection ~ 3575 6600
Wire Wire Line
	3575 6600 3775 6600
$Comp
L Device:C C16
U 1 1 63F54C42
P 3775 6450
F 0 "C16" V 3850 6500 50  0000 L CNN
F 1 "100n" V 3850 6225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3813 6300 50  0001 C CNN
F 3 "~" H 3775 6450 50  0001 C CNN
	1    3775 6450
	1    0    0    -1  
$EndComp
Connection ~ 3775 6300
Wire Wire Line
	3775 6300 3975 6300
Connection ~ 3775 6600
Wire Wire Line
	3775 6600 3975 6600
$Comp
L Device:C C18
U 1 1 63F5509F
P 3975 6450
F 0 "C18" V 4050 6500 50  0000 L CNN
F 1 "100n" V 4050 6225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4013 6300 50  0001 C CNN
F 3 "~" H 3975 6450 50  0001 C CNN
	1    3975 6450
	1    0    0    -1  
$EndComp
Connection ~ 3975 6300
Wire Wire Line
	3975 6300 4175 6300
Connection ~ 3975 6600
Wire Wire Line
	3975 6600 4175 6600
$Comp
L Device:C C19
U 1 1 63F555E6
P 4175 6450
F 0 "C19" V 4250 6500 50  0000 L CNN
F 1 "100n" V 4250 6225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4213 6300 50  0001 C CNN
F 3 "~" H 4175 6450 50  0001 C CNN
	1    4175 6450
	1    0    0    -1  
$EndComp
Connection ~ 4175 6300
Wire Wire Line
	4175 6300 4375 6300
Connection ~ 4175 6600
Wire Wire Line
	4175 6600 4375 6600
$Comp
L Device:C C20
U 1 1 63F55B84
P 4375 6450
F 0 "C20" V 4450 6500 50  0000 L CNN
F 1 "100n" V 4450 6225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4413 6300 50  0001 C CNN
F 3 "~" H 4375 6450 50  0001 C CNN
	1    4375 6450
	1    0    0    -1  
$EndComp
Connection ~ 4375 6300
Connection ~ 4375 6600
Wire Wire Line
	4375 6600 4575 6600
Wire Wire Line
	4375 6300 4575 6300
$Comp
L Device:C C27
U 1 1 63F582C3
P 4575 6450
F 0 "C27" V 4650 6500 50  0000 L CNN
F 1 "100n" V 4650 6225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4613 6300 50  0001 C CNN
F 3 "~" H 4575 6450 50  0001 C CNN
	1    4575 6450
	1    0    0    -1  
$EndComp
Connection ~ 4575 6300
Wire Wire Line
	4575 6300 4775 6300
Connection ~ 4575 6600
Wire Wire Line
	4575 6600 4775 6600
$Comp
L Device:C C28
U 1 1 63F58727
P 4775 6450
F 0 "C28" V 4850 6500 50  0000 L CNN
F 1 "100n" V 4850 6225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4813 6300 50  0001 C CNN
F 3 "~" H 4775 6450 50  0001 C CNN
	1    4775 6450
	1    0    0    -1  
$EndComp
Connection ~ 4775 6300
Wire Wire Line
	4775 6300 8550 6300
Connection ~ 4775 6600
Wire Wire Line
	4775 6600 8550 6600
$EndSCHEMATC
