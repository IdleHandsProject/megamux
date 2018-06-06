EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ADG732
LIBS:megamux_sp-cache
EELAYER 25 0
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
L ADG732 U1
U 1 1 5AF9D7A6
P 3750 3000
F 0 "U1" H 4000 400 60  0000 C CNN
F 1 "ADG732" H 3750 4650 60  0000 C CNN
F 2 "project_libs:TQFP-48_7x7mm_Pitch0.5mm" H 3750 3000 60  0001 C CNN
F 3 "" H 3750 3000 60  0001 C CNN
F 4 "ADG732BSUZ-ND" H 3750 3000 60  0001 C CNN "Digikey Part No."
	1    3750 3000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 5AF9DAA7
P 2700 4600
F 0 "#PWR01" H 2700 4450 50  0001 C CNN
F 1 "VCC" H 2700 4750 50  0000 C CNN
F 2 "" H 2700 4600 50  0001 C CNN
F 3 "" H 2700 4600 50  0001 C CNN
	1    2700 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4850 3200 4850
Wire Wire Line
	3200 4750 2700 4750
Connection ~ 2700 4750
Text GLabel 3200 5150 0    44   Input ~ 0
CS
Text GLabel 3200 5250 0    44   Input ~ 0
WR
Text GLabel 3200 5350 0    44   Input ~ 0
EN
$Comp
L GND #PWR02
U 1 1 5AF9DAF5
P 3100 5700
F 0 "#PWR02" H 3100 5450 50  0001 C CNN
F 1 "GND" H 3100 5550 50  0000 C CNN
F 2 "" H 3100 5700 50  0001 C CNN
F 3 "" H 3100 5700 50  0001 C CNN
	1    3100 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5500 3100 5500
Wire Wire Line
	3100 5500 3100 5700
Wire Wire Line
	3200 5600 3100 5600
Connection ~ 3100 5600
Text GLabel 4300 3000 2    44   Input ~ 0
IO
Text GLabel 3550 6050 3    44   Input ~ 0
A0
Text GLabel 3650 6050 3    44   Input ~ 0
A1
Text GLabel 3750 6050 3    44   Input ~ 0
A2
Text GLabel 3850 6050 3    44   Input ~ 0
A3
Text GLabel 3950 6050 3    44   Input ~ 0
A4
$Comp
L VCC #PWR03
U 1 1 5AF9DE73
P 6400 2700
F 0 "#PWR03" H 6400 2550 50  0001 C CNN
F 1 "VCC" H 6400 2850 50  0000 C CNN
F 2 "" H 6400 2700 50  0001 C CNN
F 3 "" H 6400 2700 50  0001 C CNN
	1    6400 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5AF9DE87
P 6200 2900
F 0 "#PWR04" H 6200 2650 50  0001 C CNN
F 1 "GND" H 6200 2750 50  0000 C CNN
F 2 "" H 6200 2900 50  0001 C CNN
F 3 "" H 6200 2900 50  0001 C CNN
	1    6200 2900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 5AF9DE9A
P 2700 5000
F 0 "C2" H 2710 5070 50  0000 L CNN
F 1 "1uF" H 2710 4920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2700 5000 50  0001 C CNN
F 3 "" H 2700 5000 50  0001 C CNN
	1    2700 5000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 5AF9DF23
P 2500 5000
F 0 "C1" H 2510 5070 50  0000 L CNN
F 1 "0.1uF" H 2510 4920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2500 5000 50  0001 C CNN
F 3 "" H 2500 5000 50  0001 C CNN
	1    2500 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4600 2700 4900
Wire Wire Line
	2500 4850 2500 4900
Connection ~ 2700 4850
Wire Wire Line
	2500 5100 2500 5350
Wire Wire Line
	2500 5250 2700 5250
Wire Wire Line
	2700 5250 2700 5100
$Comp
L GND #PWR05
U 1 1 5AF9DFE2
P 2500 5350
F 0 "#PWR05" H 2500 5100 50  0001 C CNN
F 1 "GND" H 2500 5200 50  0000 C CNN
F 2 "" H 2500 5350 50  0001 C CNN
F 3 "" H 2500 5350 50  0001 C CNN
	1    2500 5350
	1    0    0    -1  
$EndComp
Connection ~ 2500 5250
Wire Wire Line
	6550 2850 6200 2850
Wire Wire Line
	6200 2850 6200 2900
Wire Wire Line
	6550 2750 6400 2750
Wire Wire Line
	6400 2750 6400 2700
Text GLabel 6550 3450 0    44   Input ~ 0
CS
Text GLabel 6550 3550 0    44   Input ~ 0
WR
Text GLabel 6550 3650 0    44   Input ~ 0
EN
Text GLabel 6550 2950 0    44   Input ~ 0
A0
Text GLabel 6550 3050 0    44   Input ~ 0
A1
Text GLabel 6550 3150 0    44   Input ~ 0
A2
Text GLabel 6550 3250 0    44   Input ~ 0
A3
Text GLabel 6550 3350 0    44   Input ~ 0
A4
$Comp
L Conn_01x11 J2
U 1 1 5AF9E2E8
P 6750 3250
F 0 "J2" H 6750 3850 50  0000 C CNN
F 1 "Conn_01x11" H 6750 2650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x11_Pitch2.54mm" H 6750 3250 50  0001 C CNN
F 3 "" H 6750 3250 50  0001 C CNN
	1    6750 3250
	1    0    0    -1  
$EndComp
Text GLabel 6550 3750 0    44   Input ~ 0
IO
$Comp
L CONN_01X16 P1
U 1 1 5AF9F017
P 3000 2200
F 0 "P1" H 3000 3050 50  0000 C CNN
F 1 "CONN_01X16" V 3100 2200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x16_Pitch2.54mm" H 3000 2200 50  0001 C CNN
F 3 "" H 3000 2200 50  0000 C CNN
	1    3000 2200
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X16 P2
U 1 1 5AF9F0BB
P 3000 3800
F 0 "P2" H 3000 4650 50  0000 C CNN
F 1 "CONN_01X16" V 3100 3800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x16_Pitch2.54mm" H 3000 3800 50  0001 C CNN
F 3 "" H 3000 3800 50  0000 C CNN
	1    3000 3800
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
