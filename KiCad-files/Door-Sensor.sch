EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Dr. Sens V1.0 – frz.icu/dr-sens"
Date ""
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Nordic:nRF52832-QFxx U1
U 1 1 5FDC02CF
P 8350 4150
F 0 "U1" H 9000 2500 50  0000 C CNN
F 1 "nRF52832-QFxx" H 7850 2500 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-48-1EP_6x6mm_P0.4mm_EP4.6x4.6mm" H 8350 2050 50  0001 C CNN
F 3 "http://infocenter.nordicsemi.com/pdf/nRF52832_PS_v1.4.pdf" H 7850 4350 50  0001 C CNN
F 4 "C77540" H 8350 4150 50  0001 C CNN "LCSC Part #"
	1    8350 4150
	-1   0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5FDC46C0
P 2250 1850
F 0 "BT1" H 2368 1946 50  0000 L CNN
F 1 "Battery_Cell" H 2368 1855 50  0000 L CNN
F 2 "Battery:BatteryHolder_MYOUNG_BS-16-B4AK003" V 2250 1910 50  0001 C CNN
F 3 "~" V 2250 1910 50  0001 C CNN
	1    2250 1850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR018
U 1 1 5FDD094A
P 8350 1650
F 0 "#PWR018" H 8350 1500 50  0001 C CNN
F 1 "VCC" H 8365 1823 50  0000 C CNN
F 2 "" H 8350 1650 50  0001 C CNN
F 3 "" H 8350 1650 50  0001 C CNN
	1    8350 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5FDD12C2
P 8350 5900
F 0 "#PWR019" H 8350 5650 50  0001 C CNN
F 1 "GND" H 8355 5727 50  0000 C CNN
F 2 "" H 8350 5900 50  0001 C CNN
F 3 "" H 8350 5900 50  0001 C CNN
	1    8350 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5FDD23CD
P 2250 2100
F 0 "#PWR02" H 2250 1850 50  0001 C CNN
F 1 "GND" H 2255 1927 50  0000 C CNN
F 2 "" H 2250 2100 50  0001 C CNN
F 3 "" H 2250 2100 50  0001 C CNN
	1    2250 2100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:AO3401A Q1
U 1 1 5FDD2B99
P 3200 1550
F 0 "Q1" V 3542 1550 50  0000 C CNN
F 1 "AO3401A" V 3451 1550 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3400 1475 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3401A.pdf" H 3200 1550 50  0001 L CNN
F 4 "C15127" H 3200 1550 50  0001 C CNN "LCSC Part #"
	1    3200 1550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5FDD5E89
P 3200 2000
F 0 "R2" H 3270 2046 50  0000 L CNN
F 1 "100kΩ" H 3270 1955 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3130 2000 50  0001 C CNN
F 3 "~" H 3200 2000 50  0001 C CNN
F 4 "C25741" H 3200 2000 50  0001 C CNN "LCSC Part #"
	1    3200 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5FDD708E
P 3200 2200
F 0 "#PWR07" H 3200 1950 50  0001 C CNN
F 1 "GND" H 3205 2027 50  0000 C CNN
F 2 "" H 3200 2200 50  0001 C CNN
F 3 "" H 3200 2200 50  0001 C CNN
	1    3200 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2200 3200 2150
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J3
U 1 1 5FDD7FFB
P 1900 3900
F 0 "J3" H 1950 4217 50  0000 C CNN
F 1 "TC2030" H 1950 4126 50  0000 C CNN
F 2 "Connector:Tag-Connect_TC2030-IDC-NL_2x03_P1.27mm_Vertical" H 1900 3900 50  0001 C CNN
F 3 "~" H 1900 3900 50  0001 C CNN
	1    1900 3900
	1    0    0    -1  
$EndComp
Text GLabel 9300 4750 2    50   Input ~ 0
RESET
Text GLabel 9300 4850 2    50   Input ~ 0
SWDCLK
Text GLabel 9300 4950 2    50   Input ~ 0
SWDIO
Wire Wire Line
	9300 4950 9250 4950
Wire Wire Line
	9250 4850 9300 4850
Wire Wire Line
	9300 4750 9250 4750
Text GLabel 2300 4000 2    50   Input ~ 0
SWO
Text GLabel 2300 3800 2    50   Input ~ 0
SWDIO
Text GLabel 1350 3900 0    50   Input ~ 0
RESET
Text GLabel 2300 3900 2    50   Input ~ 0
SWDCLK
$Comp
L power:GND #PWR06
U 1 1 5FDD9EBD
P 1650 4050
F 0 "#PWR06" H 1650 3800 50  0001 C CNN
F 1 "GND" H 1655 3877 50  0000 C CNN
F 2 "" H 1650 4050 50  0001 C CNN
F 3 "" H 1650 4050 50  0001 C CNN
	1    1650 4050
	1    0    0    -1  
$EndComp
Text GLabel 7350 3250 0    50   Input ~ 0
TX
Text GLabel 7350 3450 0    50   Input ~ 0
RX
Text GLabel 2100 6150 0    50   Input ~ 0
TX
Text GLabel 2100 6250 0    50   Input ~ 0
RX
Text GLabel 7350 5250 0    50   Input ~ 0
SCL
Text GLabel 7350 5150 0    50   Input ~ 0
SDA
Text GLabel 2000 6550 0    50   Input ~ 0
SCL
Text GLabel 2000 6650 0    50   Input ~ 0
SDA
NoConn ~ 8150 2450
$Comp
L Device:R R4
U 1 1 5FDE1B07
P 4400 6300
F 0 "R4" H 4470 6346 50  0000 L CNN
F 1 "10MΩ" H 4470 6255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4330 6300 50  0001 C CNN
F 3 "~" H 4400 6300 50  0001 C CNN
F 4 "C7250" H 4400 6300 50  0001 C CNN "LCSC Part #"
	1    4400 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5FDE23E8
P 4400 5900
F 0 "R3" H 4470 5946 50  0000 L CNN
F 1 "4.7MΩ" H 4470 5855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4330 5900 50  0001 C CNN
F 3 "~" H 4400 5900 50  0001 C CNN
F 4 "C23163" H 4400 5900 50  0001 C CNN "LCSC Part #"
	1    4400 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5FDE33CD
P 4150 6300
F 0 "C1" H 4036 6254 50  0000 R CNN
F 1 "10nF" H 4036 6345 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4188 6150 50  0001 C CNN
F 3 "~" H 4150 6300 50  0001 C CNN
F 4 "C15195" H 4150 6300 50  0001 C CNN "LCSC Part #"
	1    4150 6300
	1    0    0    1   
$EndComp
Wire Wire Line
	4150 6150 4150 6100
Wire Wire Line
	4150 6100 4400 6100
Wire Wire Line
	4400 6100 4400 6050
Wire Wire Line
	4400 6100 4400 6150
Connection ~ 4400 6100
$Comp
L power:GND #PWR012
U 1 1 5FDE818A
P 4400 6500
F 0 "#PWR012" H 4400 6250 50  0001 C CNN
F 1 "GND" H 4405 6327 50  0000 C CNN
F 2 "" H 4400 6500 50  0001 C CNN
F 3 "" H 4400 6500 50  0001 C CNN
	1    4400 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5FDE8681
P 4150 6500
F 0 "#PWR010" H 4150 6250 50  0001 C CNN
F 1 "GND" H 4155 6327 50  0000 C CNN
F 2 "" H 4150 6500 50  0001 C CNN
F 3 "" H 4150 6500 50  0001 C CNN
	1    4150 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 6500 4150 6450
Wire Wire Line
	4400 6500 4400 6450
$Comp
L power:VCC #PWR011
U 1 1 5FDEB879
P 4400 5700
F 0 "#PWR011" H 4400 5550 50  0001 C CNN
F 1 "VCC" H 4415 5873 50  0000 C CNN
F 2 "" H 4400 5700 50  0001 C CNN
F 3 "" H 4400 5700 50  0001 C CNN
	1    4400 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 5700 4400 5750
Text Notes 6000 6450 0    50   ~ 0
Basically just an nRF52832 Board with antenna that sends a message when the reed switch or the button is actuated.\nThe board is also able to be used as a very basic dev board for the nRF as an home automation node.
Wire Wire Line
	2250 1450 2250 1650
$Comp
L power:VCC #PWR09
U 1 1 5FDF3A2C
P 3950 1400
F 0 "#PWR09" H 3950 1250 50  0001 C CNN
F 1 "VCC" H 3965 1573 50  0000 C CNN
F 2 "" H 3950 1400 50  0001 C CNN
F 3 "" H 3950 1400 50  0001 C CNN
	1    3950 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1400 3950 1450
Wire Wire Line
	3200 1750 3200 1800
Text GLabel 3250 1800 2    50   Input ~ 0
DISABL_BAT
Wire Wire Line
	3250 1800 3200 1800
Connection ~ 3200 1800
Wire Wire Line
	3200 1800 3200 1850
$Comp
L Device:C C11
U 1 1 5FE039C7
P 9500 3300
F 0 "C11" H 9615 3346 50  0000 L CNN
F 1 "0.8pF" H 9615 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9538 3150 50  0001 C CNN
F 3 "~" H 9500 3300 50  0001 C CNN
	1    9500 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5FE04FC3
P 9850 3050
F 0 "L1" V 10040 3050 50  0000 C CNN
F 1 "3.9nH" V 9949 3050 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 9850 3050 50  0001 C CNN
F 3 "~" H 9850 3050 50  0001 C CNN
F 4 "C14033" H 9850 3050 50  0001 C CNN "LCSC Part #"
	1    9850 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9500 3150 9500 3050
Wire Wire Line
	9500 3050 9250 3050
Wire Wire Line
	9500 3050 9700 3050
Connection ~ 9500 3050
$Comp
L power:GND #PWR020
U 1 1 5FE08885
P 9500 3500
F 0 "#PWR020" H 9500 3250 50  0001 C CNN
F 1 "GND" H 9505 3327 50  0000 C CNN
F 2 "" H 9500 3500 50  0001 C CNN
F 3 "" H 9500 3500 50  0001 C CNN
	1    9500 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3500 9500 3450
Wire Wire Line
	10000 3050 10200 3050
$Comp
L Device:C C10
U 1 1 5FE13B23
P 9400 2350
F 0 "C10" V 9148 2350 50  0000 C CNN
F 1 "100nF" V 9239 2350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9438 2200 50  0001 C CNN
F 3 "~" H 9400 2350 50  0001 C CNN
F 4 "C1525" H 9400 2350 50  0001 C CNN "LCSC Part #"
	1    9400 2350
	0    1    1    0   
$EndComp
$Comp
L Device:C C9
U 1 1 5FE14ACA
P 9250 2000
F 0 "C9" V 8998 2000 50  0000 C CNN
F 1 "DNP" V 9089 2000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9288 1850 50  0001 C CNN
F 3 "~" H 9250 2000 50  0001 C CNN
	1    9250 2000
	0    1    1    0   
$EndComp
$Comp
L Device:C C8
U 1 1 5FE152E6
P 9100 1650
F 0 "C8" V 8848 1650 50  0000 C CNN
F 1 "100pF" V 8939 1650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9138 1500 50  0001 C CNN
F 3 "~" H 9100 1650 50  0001 C CNN
F 4 "C1546" H 9100 1650 50  0001 C CNN "LCSC Part #"
	1    9100 1650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5FE19344
P 9650 2450
F 0 "#PWR021" H 9650 2200 50  0001 C CNN
F 1 "GND" H 9655 2277 50  0000 C CNN
F 2 "" H 9650 2450 50  0001 C CNN
F 3 "" H 9650 2450 50  0001 C CNN
	1    9650 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 2350 9600 2350
Wire Wire Line
	9650 2350 9650 2450
Wire Wire Line
	9400 2000 9450 2000
Wire Wire Line
	9600 2000 9600 2350
Wire Wire Line
	9250 1650 9300 1650
Wire Wire Line
	9450 1650 9450 2000
Connection ~ 9450 2000
Wire Wire Line
	9450 2000 9600 2000
Connection ~ 9600 2350
Wire Wire Line
	9600 2350 9650 2350
$Comp
L Device:C C7
U 1 1 5FE26BAF
P 8900 1300
F 0 "C7" V 8648 1300 50  0000 C CNN
F 1 "1.0µF" V 8739 1300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8938 1150 50  0001 C CNN
F 3 "~" H 8900 1300 50  0001 C CNN
F 4 "C15849" H 8900 1300 50  0001 C CNN "LCSC Part #"
	1    8900 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	9050 1300 9300 1300
Wire Wire Line
	9300 1300 9300 1650
Connection ~ 9300 1650
Wire Wire Line
	9300 1650 9450 1650
Wire Wire Line
	8750 1300 8550 1300
Wire Wire Line
	8550 1300 8550 2450
Wire Wire Line
	8950 1650 8650 1650
Wire Wire Line
	8650 1650 8650 2450
Wire Wire Line
	9100 2000 8750 2000
Wire Wire Line
	8750 2000 8750 2450
Wire Wire Line
	9250 2350 8850 2350
Wire Wire Line
	8850 2350 8850 2450
$Comp
L Device:Crystal_GND2 Y2
U 1 1 5FE2CD5A
P 9650 4100
F 0 "Y2" V 9604 4231 50  0000 L CNN
F 1 "32MHz" V 9695 4231 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 9650 4100 50  0001 C CNN
F 3 "~" H 9650 4100 50  0001 C CNN
F 4 "C9009" H 9650 4100 50  0001 C CNN "LCSC Part #"
	1    9650 4100
	0    -1   1    0   
$EndComp
Wire Wire Line
	9650 4250 9650 4350
Wire Wire Line
	9650 3850 9650 3950
$Comp
L Device:C C13
U 1 1 5FE37A2B
P 9900 4350
F 0 "C13" V 10050 4350 50  0000 C CNN
F 1 "16pF" V 10150 4350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9938 4200 50  0001 C CNN
F 3 "~" H 9900 4350 50  0001 C CNN
F 4 "C1548" H 9900 4350 50  0001 C CNN "LCSC Part #"
	1    9900 4350
	0    1    1    0   
$EndComp
$Comp
L Device:C C12
U 1 1 5FE3879E
P 9900 3850
F 0 "C12" V 9648 3850 50  0000 C CNN
F 1 "16pF" V 9739 3850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9938 3700 50  0001 C CNN
F 3 "~" H 9900 3850 50  0001 C CNN
F 4 "C1548" H 9900 3850 50  0001 C CNN "LCSC Part #"
	1    9900 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	9750 3850 9650 3850
Wire Wire Line
	10050 4350 10150 4350
Wire Wire Line
	10150 4350 10150 4100
Wire Wire Line
	10150 3850 10050 3850
Connection ~ 10150 4100
Wire Wire Line
	10150 4100 10150 3850
Wire Wire Line
	10150 4400 10150 4350
Connection ~ 10150 4350
Wire Wire Line
	9850 4100 10150 4100
Connection ~ 9650 3850
Connection ~ 9650 4350
Wire Wire Line
	9650 4350 9750 4350
$Comp
L Device:Crystal Y1
U 1 1 5FE65111
P 6600 2700
F 0 "Y1" V 6554 2831 50  0000 L CNN
F 1 "32.768kHz" V 6645 2831 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3215-2Pin_3.2x1.5mm" H 6600 2700 50  0001 C CNN
F 3 "~" H 6600 2700 50  0001 C CNN
F 4 "C32346" H 6600 2700 50  0001 C CNN "LCSC Part #"
	1    6600 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 2550 6600 2500
Wire Wire Line
	6600 2850 6600 2900
Wire Wire Line
	7200 2900 7200 2750
$Comp
L Device:C C3
U 1 1 5FE6A8A5
P 6350 3100
F 0 "C3" H 6465 3146 50  0000 L CNN
F 1 "16pF" H 6465 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6388 2950 50  0001 C CNN
F 3 "~" H 6350 3100 50  0001 C CNN
F 4 "C1548" H 6350 3100 50  0001 C CNN "LCSC Part #"
	1    6350 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5FE6C916
P 6100 3100
F 0 "C2" H 5986 3054 50  0000 R CNN
F 1 "16pF" H 5986 3145 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6138 2950 50  0001 C CNN
F 3 "~" H 6100 3100 50  0001 C CNN
F 4 "C1548" H 6100 3100 50  0001 C CNN "LCSC Part #"
	1    6100 3100
	1    0    0    1   
$EndComp
Wire Wire Line
	6100 2950 6100 2500
Wire Wire Line
	6100 2500 6600 2500
Connection ~ 6600 2500
Wire Wire Line
	6350 2950 6350 2900
Wire Wire Line
	6350 2900 6600 2900
Connection ~ 6600 2900
$Comp
L power:GND #PWR014
U 1 1 5FE70CD3
P 6350 3300
F 0 "#PWR014" H 6350 3050 50  0001 C CNN
F 1 "GND" H 6355 3127 50  0000 C CNN
F 2 "" H 6350 3300 50  0001 C CNN
F 3 "" H 6350 3300 50  0001 C CNN
	1    6350 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5FE713A4
P 6100 3300
F 0 "#PWR013" H 6100 3050 50  0001 C CNN
F 1 "GND" H 6105 3127 50  0000 C CNN
F 2 "" H 6100 3300 50  0001 C CNN
F 3 "" H 6100 3300 50  0001 C CNN
	1    6100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3300 6100 3250
Wire Wire Line
	6350 3300 6350 3250
Wire Wire Line
	7200 2750 7450 2750
Wire Wire Line
	6600 2900 7200 2900
Wire Wire Line
	7200 2650 7200 2500
Wire Wire Line
	7200 2650 7450 2650
Wire Wire Line
	6600 2500 7200 2500
$Comp
L Device:C C6
U 1 1 5FE86BA0
P 7950 1900
F 0 "C6" H 8065 1946 50  0000 L CNN
F 1 "4.7µF" H 8065 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7988 1750 50  0001 C CNN
F 3 "~" H 7950 1900 50  0001 C CNN
F 4 "C19666" H 7950 1900 50  0001 C CNN "LCSC Part #"
	1    7950 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5FE87709
P 7450 1900
F 0 "C5" H 7565 1946 50  0000 L CNN
F 1 "100nF" H 7565 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7488 1750 50  0001 C CNN
F 3 "~" H 7450 1900 50  0001 C CNN
F 4 "C1525" H 7450 1900 50  0001 C CNN "LCSC Part #"
	1    7450 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5FE87EB2
P 6950 1900
F 0 "C4" H 7065 1946 50  0000 L CNN
F 1 "100nF" H 7065 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6988 1750 50  0001 C CNN
F 3 "~" H 6950 1900 50  0001 C CNN
F 4 "C1525" H 6950 1900 50  0001 C CNN "LCSC Part #"
	1    6950 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1650 8350 1700
Wire Wire Line
	7450 1700 7450 1750
Wire Wire Line
	6950 1700 6950 1750
$Comp
L power:GND #PWR015
U 1 1 5FE917AF
P 6950 2100
F 0 "#PWR015" H 6950 1850 50  0001 C CNN
F 1 "GND" H 6955 1927 50  0000 C CNN
F 2 "" H 6950 2100 50  0001 C CNN
F 3 "" H 6950 2100 50  0001 C CNN
	1    6950 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5FE91CDD
P 7450 2100
F 0 "#PWR016" H 7450 1850 50  0001 C CNN
F 1 "GND" H 7455 1927 50  0000 C CNN
F 2 "" H 7450 2100 50  0001 C CNN
F 3 "" H 7450 2100 50  0001 C CNN
	1    7450 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5FE920B7
P 7950 2100
F 0 "#PWR017" H 7950 1850 50  0001 C CNN
F 1 "GND" H 7955 1927 50  0000 C CNN
F 2 "" H 7950 2100 50  0001 C CNN
F 3 "" H 7950 2100 50  0001 C CNN
	1    7950 2100
	1    0    0    -1  
$EndComp
Connection ~ 8350 1700
Wire Wire Line
	8350 1700 8350 2450
Wire Wire Line
	6950 2050 6950 2100
Wire Wire Line
	7450 2050 7450 2100
Wire Wire Line
	7950 2050 7950 2100
Wire Wire Line
	6950 1700 7450 1700
Connection ~ 7450 1700
Wire Wire Line
	7450 1700 7950 1700
Wire Wire Line
	7950 1750 7950 1700
Connection ~ 7950 1700
Wire Wire Line
	7950 1700 8350 1700
Wire Wire Line
	2300 4000 2200 4000
Wire Wire Line
	2200 3900 2300 3900
Wire Wire Line
	2300 3800 2200 3800
Wire Wire Line
	1650 4050 1650 4000
Wire Wire Line
	1650 4000 1700 4000
$Comp
L Device:R R1
U 1 1 5FECBB0C
P 1400 3650
F 0 "R1" H 1331 3604 50  0000 R CNN
F 1 "10kΩ" H 1331 3695 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1330 3650 50  0001 C CNN
F 3 "~" H 1400 3650 50  0001 C CNN
F 4 "C25744" H 1400 3650 50  0001 C CNN "LCSC Part #"
	1    1400 3650
	1    0    0    1   
$EndComp
Wire Wire Line
	1350 3900 1400 3900
Wire Wire Line
	1400 3800 1400 3900
Connection ~ 1400 3900
Wire Wire Line
	1400 3900 1700 3900
$Comp
L power:VCC #PWR03
U 1 1 5FED2E9B
P 1400 3450
F 0 "#PWR03" H 1400 3300 50  0001 C CNN
F 1 "VCC" H 1415 3623 50  0000 C CNN
F 2 "" H 1400 3450 50  0001 C CNN
F 3 "" H 1400 3450 50  0001 C CNN
	1    1400 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3500 1400 3450
Wire Wire Line
	1600 3800 1700 3800
Text GLabel 4550 6100 2    50   Input ~ 0
V_SENSE
Wire Wire Line
	4550 6100 4400 6100
Text GLabel 7350 5650 0    50   Input ~ 0
V_SENSE
Wire Wire Line
	7350 5650 7450 5650
Wire Wire Line
	7350 5250 7450 5250
Wire Wire Line
	7350 5150 7450 5150
Wire Wire Line
	7350 3450 7450 3450
Wire Wire Line
	7350 3250 7450 3250
Wire Wire Line
	7350 4450 7450 4450
Wire Notes Line
	5700 750  10950 750 
Wire Notes Line
	10950 6200 5700 6200
Wire Wire Line
	2100 6250 2200 6250
Wire Wire Line
	2100 6150 2200 6150
NoConn ~ 7450 2950
NoConn ~ 7450 2850
NoConn ~ 7450 3550
NoConn ~ 7450 3650
NoConn ~ 7450 3750
NoConn ~ 7450 4650
NoConn ~ 7450 4550
Wire Notes Line
	5700 750  5700 6200
Wire Notes Line
	10950 750  10950 6200
Wire Wire Line
	2000 6550 2100 6550
Wire Wire Line
	2100 6650 2000 6650
Text Notes 1850 1000 0    79   ~ 0
Battery and reverse polarity protection
Wire Notes Line
	4750 750  1450 750 
Wire Notes Line
	1450 2650 4750 2650
Text Notes 5900 1000 0    79   ~ 0
nRF52832
Text Notes 1000 3100 0    79   ~ 0
Program and debug connectors
Wire Notes Line
	850  2900 850  4750
Wire Notes Line
	3050 4750 3050 2900
Text Notes 1900 5200 0    79   ~ 0
IO Pins
Text Notes 3950 5200 0    79   ~ 0
Voltage divider
Wire Notes Line
	3300 7400 900  7400
Wire Notes Line
	900  7400 900  4950
Wire Notes Line
	900  4950 3300 4950
Wire Notes Line
	3300 4950 3300 7400
Wire Notes Line
	3500 7400 3500 4950
Wire Notes Line
	3500 4950 5300 4950
Wire Notes Line
	5300 4950 5300 7400
Wire Notes Line
	5300 7400 3500 7400
Text Notes 3600 7350 0    50   ~ 0
https://devzone.nordicsemi.com/nordic/\nnordic-blog/b/blog/posts/measuring-\nlithium-battery-voltage-with-nrf52
Text Notes 3600 7050 0    50   ~ 0
Only 0603 package available at JLCPCB
Wire Wire Line
	8350 5900 8350 5850
Text GLabel 7350 4450 0    50   Input ~ 0
SWO
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6028E401
P 3600 1400
F 0 "#FLG0101" H 3600 1475 50  0001 C CNN
F 1 "PWR_FLAG" H 3600 1573 50  0000 C CNN
F 2 "" H 3600 1400 50  0001 C CNN
F 3 "~" H 3600 1400 50  0001 C CNN
	1    3600 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1450 3600 1450
Wire Wire Line
	3600 1450 3600 1400
Wire Wire Line
	3600 1450 3950 1450
Connection ~ 3600 1450
Wire Wire Line
	2250 1950 2250 2000
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 602C2ABE
P 2400 2000
F 0 "#FLG0102" H 2400 2075 50  0001 C CNN
F 1 "PWR_FLAG" V 2400 2128 50  0000 L CNN
F 2 "" H 2400 2000 50  0001 C CNN
F 3 "~" H 2400 2000 50  0001 C CNN
	1    2400 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 2000 2250 2000
Connection ~ 2250 2000
Wire Wire Line
	2250 2000 2250 2100
Wire Notes Line
	1450 750  1450 2650
Wire Notes Line
	4750 750  4750 2650
$Comp
L power:GND #PWR0101
U 1 1 5FDF8557
P 1750 6100
F 0 "#PWR0101" H 1750 5850 50  0001 C CNN
F 1 "GND" H 1755 5927 50  0000 C CNN
F 2 "" H 1750 6100 50  0001 C CNN
F 3 "" H 1750 6100 50  0001 C CNN
	1    1750 6100
	1    0    0    -1  
$EndComp
NoConn ~ 7450 5550
NoConn ~ 7450 3350
Wire Wire Line
	1750 6100 1750 6050
Wire Wire Line
	1750 6050 2200 6050
Wire Wire Line
	1900 5950 2200 5950
Connection ~ 1900 5950
Wire Wire Line
	1700 5950 1900 5950
Wire Wire Line
	1200 5950 1300 5950
Wire Wire Line
	1200 5900 1200 5950
$Comp
L power:VDD #PWR04
U 1 1 5FED7BD2
P 1900 5550
F 0 "#PWR04" H 1900 5400 50  0001 C CNN
F 1 "VDD" H 1915 5723 50  0000 C CNN
F 2 "" H 1900 5550 50  0001 C CNN
F 3 "" H 1900 5550 50  0001 C CNN
	1    1900 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5900 1700 5950
Text GLabel 1700 5900 1    50   Input ~ 0
DISABL_BAT
Connection ~ 1700 5950
Wire Wire Line
	1600 5950 1700 5950
$Comp
L power:VCC #PWR01
U 1 1 5FE00635
P 1200 5900
F 0 "#PWR01" H 1200 5750 50  0001 C CNN
F 1 "VCC" H 1215 6073 50  0000 C CNN
F 2 "" H 1200 5900 50  0001 C CNN
F 3 "" H 1200 5900 50  0001 C CNN
	1    1200 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5FDFCFF4
P 1450 5950
F 0 "D1" H 1450 6167 50  0000 C CNN
F 1 "B5819W" H 1450 6076 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 1450 5950 50  0001 C CNN
F 3 "~" H 1450 5950 50  0001 C CNN
F 4 "C8598" H 1450 5950 50  0001 C CNN "LCSC Part #"
	1    1450 5950
	1    0    0    -1  
$EndComp
Connection ~ 1900 5600
Wire Wire Line
	1900 5550 1900 5600
Wire Wire Line
	1900 5600 1900 5950
Wire Wire Line
	2050 5600 1900 5600
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 602CAB25
P 2050 5600
F 0 "#FLG0103" H 2050 5675 50  0001 C CNN
F 1 "PWR_FLAG" V 2050 5728 50  0000 L CNN
F 2 "" H 2050 5600 50  0001 C CNN
F 3 "~" H 2050 5600 50  0001 C CNN
	1    2050 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 3700 1600 3800
$Comp
L power:VDD #PWR05
U 1 1 5FEE2E4F
P 1600 3700
F 0 "#PWR05" H 1600 3550 50  0001 C CNN
F 1 "VDD" H 1615 3873 50  0000 C CNN
F 2 "" H 1600 3700 50  0001 C CNN
F 3 "" H 1600 3700 50  0001 C CNN
	1    1600 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5FEE1CA1
P 1950 7150
F 0 "D2" H 1943 7367 50  0000 C CNN
F 1 "LED PINK" H 1943 7276 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 1950 7150 50  0001 C CNN
F 3 "~" H 1950 7150 50  0001 C CNN
	1    1950 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5FEE2FC9
P 2350 7150
F 0 "R5" V 2143 7150 50  0000 C CNN
F 1 "1kΩ" V 2234 7150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2280 7150 50  0001 C CNN
F 3 "~" H 2350 7150 50  0001 C CNN
F 4 "C21190" H 2350 7150 50  0001 C CNN "LCSC Part #"
	1    2350 7150
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR08
U 1 1 5FEE3654
P 2650 7100
F 0 "#PWR08" H 2650 6950 50  0001 C CNN
F 1 "VCC" H 2665 7273 50  0000 C CNN
F 2 "" H 2650 7100 50  0001 C CNN
F 3 "" H 2650 7100 50  0001 C CNN
	1    2650 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 7150 2650 7150
Wire Wire Line
	2650 7150 2650 7100
Wire Wire Line
	2200 7150 2100 7150
Text GLabel 1600 7150 0    50   Input ~ 0
LED
Wire Wire Line
	1600 7150 1800 7150
Text GLabel 7350 4350 0    50   Input ~ 0
LED
Wire Wire Line
	7350 4350 7450 4350
Wire Wire Line
	7300 3850 7450 3850
Wire Wire Line
	7450 3950 7300 3950
Wire Wire Line
	7300 5350 7450 5350
Wire Wire Line
	7300 3050 7450 3050
$Comp
L Device:C C14
U 1 1 5FE14690
P 1400 4150
F 0 "C14" H 1285 4104 50  0000 R CNN
F 1 "DNP" H 1285 4195 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1438 4000 50  0001 C CNN
F 3 "~" H 1400 4150 50  0001 C CNN
	1    1400 4150
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5FE149A3
P 1400 4350
F 0 "#PWR023" H 1400 4100 50  0001 C CNN
F 1 "GND" H 1405 4177 50  0000 C CNN
F 2 "" H 1400 4350 50  0001 C CNN
F 3 "" H 1400 4350 50  0001 C CNN
	1    1400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4350 1400 4300
Wire Wire Line
	1400 4000 1400 3900
Text Notes 1600 4650 0    50   ~ 0
- The capacitor is only really\n   needed when a button is used.\n- TX/RX under “IO Pins”.
$Comp
L Connector:TestPoint TP4
U 1 1 5FE3E0AB
P 7350 4750
F 0 "TP4" V 7350 5000 50  0000 C CNN
F 1 "CS" V 7350 5200 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7550 4750 50  0001 C CNN
F 3 "~" H 7550 4750 50  0001 C CNN
	1    7350 4750
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 5FE3E6E9
P 7350 4850
F 0 "TP5" V 7350 5100 50  0000 C CNN
F 1 "MOSI" V 7350 5300 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7550 4850 50  0001 C CNN
F 3 "~" H 7550 4850 50  0001 C CNN
	1    7350 4850
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 5FE3E867
P 7350 4950
F 0 "TP6" V 7350 5200 50  0000 C CNN
F 1 "MISO" V 7350 5400 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7550 4950 50  0001 C CNN
F 3 "~" H 7550 4950 50  0001 C CNN
	1    7350 4950
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 5FE3E9BF
P 7350 5050
F 0 "TP8" V 7350 5300 50  0000 C CNN
F 1 "SCK" V 7350 5500 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7550 5050 50  0001 C CNN
F 3 "~" H 7550 5050 50  0001 C CNN
	1    7350 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7350 5050 7450 5050
Wire Wire Line
	7450 4950 7350 4950
Wire Wire Line
	7350 4850 7450 4850
Wire Wire Line
	7450 4750 7350 4750
NoConn ~ 7450 4050
NoConn ~ 7450 4150
NoConn ~ 7450 4250
NoConn ~ 7450 5450
$Comp
L Connector:Conn_Coaxial J5
U 1 1 5FF54588
P 10500 3450
F 0 "J5" H 10600 3425 50  0000 L CNN
F 1 "U.FL" H 10600 3334 50  0000 L CNN
F 2 "Connector_Coaxial:U.FL_Hirose_U.FL-R-SMT-1_Vertical" H 10500 3450 50  0001 C CNN
F 3 " ~" H 10500 3450 50  0001 C CNN
	1    10500 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5FE36C39
P 10150 4400
F 0 "#PWR022" H 10150 4150 50  0001 C CNN
F 1 "GND" H 10155 4227 50  0000 C CNN
F 2 "" H 10150 4400 50  0001 C CNN
F 3 "" H 10150 4400 50  0001 C CNN
	1    10150 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5FF6400F
P 10500 3700
F 0 "#PWR024" H 10500 3450 50  0001 C CNN
F 1 "GND" H 10505 3527 50  0000 C CNN
F 2 "" H 10500 3700 50  0001 C CNN
F 3 "" H 10500 3700 50  0001 C CNN
	1    10500 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 3700 10500 3650
Wire Wire Line
	9250 3850 9650 3850
Wire Wire Line
	9250 4350 9650 4350
$Comp
L Device:R R6
U 1 1 5FFA049D
P 10200 2850
F 0 "R6" H 10270 2896 50  0000 L CNN
F 1 "0Ω" H 10270 2805 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10130 2850 50  0001 C CNN
F 3 "~" H 10200 2850 50  0001 C CNN
F 4 "C17168" H 10200 2850 50  0001 C CNN "LCSC Part #"
	1    10200 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 3000 10200 3050
Wire Wire Line
	10200 2600 10200 2700
$Comp
L Device:R R7
U 1 1 5FFB487E
P 10200 3250
F 0 "R7" H 10270 3296 50  0000 L CNN
F 1 "DNP" H 10270 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10130 3250 50  0001 C CNN
F 3 "~" H 10200 3250 50  0001 C CNN
	1    10200 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 3100 10200 3050
Connection ~ 10200 3050
Wire Wire Line
	10200 3400 10200 3450
Wire Wire Line
	10200 3450 10300 3450
$Comp
L Device:Antenna_Shield AE1
U 1 1 5FFFC230
P 10200 2400
F 0 "AE1" H 10344 2439 50  0000 L CNN
F 1 "Antenna_Shield" H 10344 2348 50  0000 L CNN
F 2 "RF_Antenna:Texas_SWRR034C_2.4GHz_Right" H 10200 2500 50  0001 C CNN
F 3 "~" H 10200 2500 50  0001 C CNN
	1    10200 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6000A5C0
P 10500 2700
F 0 "#PWR0102" H 10500 2450 50  0001 C CNN
F 1 "GND" H 10505 2527 50  0000 C CNN
F 2 "" H 10500 2700 50  0001 C CNN
F 3 "" H 10500 2700 50  0001 C CNN
	1    10500 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 2700 10500 2650
Wire Wire Line
	10500 2650 10300 2650
Wire Wire Line
	10300 2650 10300 2600
$Comp
L Connector:TestPoint TP7
U 1 1 5FE43A65
P 7300 5350
F 0 "TP7" V 7300 5600 50  0000 C CNN
F 1 "A2" V 7300 5800 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7500 5350 50  0001 C CNN
F 3 "~" H 7500 5350 50  0001 C CNN
	1    7300 5350
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 5FE430D0
P 7300 3050
F 0 "TP1" V 7300 3300 50  0000 C CNN
F 1 "A1" V 7300 3500 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7500 3050 50  0001 C CNN
F 3 "~" H 7500 3050 50  0001 C CNN
	1    7300 3050
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 5FF18BB1
P 7300 3950
F 0 "TP3" V 7300 4200 50  0000 C CNN
F 1 "D2" V 7300 4400 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7500 3950 50  0001 C CNN
F 3 "~" H 7500 3950 50  0001 C CNN
	1    7300 3950
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5FF181E9
P 7300 3850
F 0 "TP2" V 7300 4100 50  0000 C CNN
F 1 "D1" V 7300 4300 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7500 3850 50  0001 C CNN
F 3 "~" H 7500 3850 50  0001 C CNN
	1    7300 3850
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 5FEF4FCC
P 2300 6550
F 0 "J1" H 2328 6526 50  0000 L CNN
F 1 "I2C-Conn" H 2328 6435 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 2300 6550 50  0001 C CNN
F 3 "~" H 2300 6550 50  0001 C CNN
	1    2300 6550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5FF23DDD
P 2400 6150
F 0 "J2" H 2372 6032 50  0000 R CNN
F 1 "PWR-SERIAL-CONN" H 2372 6123 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2400 6150 50  0001 C CNN
F 3 "~" H 2400 6150 50  0001 C CNN
	1    2400 6150
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Reed SW1
U 1 1 5FF3F11F
P 4700 4150
F 0 "SW1" V 4650 4250 50  0000 L CNN
F 1 "SW_Reed" V 4750 4250 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_SPST_REED_14.2mm" H 4700 4150 50  0001 C CNN
F 3 "~" H 4700 4150 50  0001 C CNN
	1    4700 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 1450 3000 1450
Text GLabel 7350 3150 0    50   Input ~ 0
WAKEUP
Wire Wire Line
	7350 3150 7450 3150
$Comp
L Device:R R8
U 1 1 5FF82D32
P 4700 3600
F 0 "R8" H 4630 3554 50  0000 R CNN
F 1 "1MΩ" H 4630 3645 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4630 3600 50  0001 C CNN
F 3 "~" H 4700 3600 50  0001 C CNN
F 4 "C26083" H 4700 3600 50  0001 C CNN "LCSC Part #"
	1    4700 3600
	1    0    0    1   
$EndComp
Text GLabel 4800 3850 2    50   Input ~ 0
WAKEUP
Wire Wire Line
	4800 3850 4700 3850
Wire Wire Line
	4700 3750 4700 3850
Connection ~ 4700 3850
Wire Wire Line
	4700 3850 4700 3950
$Comp
L power:GND #PWR026
U 1 1 5FF90ADD
P 4700 4450
F 0 "#PWR026" H 4700 4200 50  0001 C CNN
F 1 "GND" H 4705 4277 50  0000 C CNN
F 2 "" H 4700 4450 50  0001 C CNN
F 3 "" H 4700 4450 50  0001 C CNN
	1    4700 4450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR025
U 1 1 5FF98225
P 4700 3400
F 0 "#PWR025" H 4700 3250 50  0001 C CNN
F 1 "VCC" H 4715 3573 50  0000 C CNN
F 2 "" H 4700 3400 50  0001 C CNN
F 3 "" H 4700 3400 50  0001 C CNN
	1    4700 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3400 4700 3450
Wire Wire Line
	4700 4350 4700 4400
Connection ~ 4700 4400
Wire Wire Line
	4700 4400 4700 4450
Wire Wire Line
	4500 4350 4500 4400
Connection ~ 4500 4400
Wire Wire Line
	4500 4400 4700 4400
Wire Wire Line
	4500 3950 4500 3850
Connection ~ 4500 3850
Wire Wire Line
	4500 3850 4700 3850
$Comp
L Device:R R9
U 1 1 5FEF137F
P 4100 3850
F 0 "R9" V 3900 3850 50  0000 C CNN
F 1 "1kΩ" V 4000 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4030 3850 50  0001 C CNN
F 3 "~" H 4100 3850 50  0001 C CNN
F 4 "C11702" H 4100 3850 50  0001 C CNN "LCSC Part #"
	1    4100 3850
	0    -1   1    0   
$EndComp
Wire Wire Line
	4250 3850 4500 3850
Wire Wire Line
	3950 3850 3800 3850
Wire Wire Line
	3800 4400 3800 4300
Wire Wire Line
	3800 4000 3800 3850
$Comp
L Device:C C15
U 1 1 5FFBB718
P 3800 4150
F 0 "C15" H 3915 4196 50  0000 L CNN
F 1 "100nF" H 3915 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3838 4000 50  0001 C CNN
F 3 "~" H 3800 4150 50  0001 C CNN
F 4 "C1525" H 3800 4150 50  0001 C CNN "LCSC Part #"
	1    3800 4150
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW2
U 1 1 5FF26BC6
P 4500 4150
F 0 "SW2" V 4400 4450 50  0000 R CNN
F 1 "SW_SPST" V 4500 4600 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_DIP_SPSTx01_Push_TSA343G00-250J2" H 4500 4150 50  0001 C CNN
F 3 "~" H 4500 4150 50  0001 C CNN
	1    4500 4150
	0    -1   1    0   
$EndComp
Wire Notes Line
	850  4750 3050 4750
Wire Notes Line
	850  2900 3050 2900
Wire Notes Line
	3250 2900 5350 2900
Wire Notes Line
	5350 2900 5350 4750
Wire Notes Line
	5350 4750 3250 4750
Wire Notes Line
	3250 4750 3250 2900
Text Notes 3500 3100 0    79   ~ 0
REED, BUTTON and circuitry
Wire Wire Line
	3800 4400 4500 4400
$EndSCHEMATC
