EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
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
LIBS:stm32
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:elec-unifil
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:ir
LIBS:logo
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:motor_drivers
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:supertex
LIBS:switches
LIBS:transf
LIBS:ttl_ieee
LIBS:video
LIBS:tinkerforge
LIBS:_display
LIBS:uacs-2-top-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "uacs"
Date "Mo 09 Mär 2015"
Rev "2.0"
Comp "FAU FabLab"
Comment1 "universal access control system"
Comment2 "top pcb"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PN532 IC2
U 1 1 54FB7DCF
P 8550 2500
F 0 "IC2" H 7725 3450 60  0000 C CNN
F 1 "PN532" H 9300 1550 60  0000 C CNN
F 2 "" H 8550 2500 60  0000 C CNN
F 3 "" H 8550 2500 60  0000 C CNN
	1    8550 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 54FB7DD6
P 8100 3650
F 0 "#PWR03" H 8100 3400 60  0001 C CNN
F 1 "GND" H 8100 3500 60  0000 C CNN
F 2 "" H 8100 3650 60  0000 C CNN
F 3 "" H 8100 3650 60  0000 C CNN
	1    8100 3650
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL_SMD X2
U 1 1 54FB7DE8
P 8450 4250
F 0 "X2" H 8450 4340 50  0000 C CNN
F 1 "27.12M" V 8475 4025 50  0000 C TNN
F 2 "" H 8450 4250 60  0000 C CNN
F 3 "" H 8450 4250 60  0000 C CNN
	1    8450 4250
	1    0    0    -1  
$EndComp
$Comp
L C C21
U 1 1 54FB7DEF
P 8150 4525
F 0 "C21" H 8200 4625 50  0000 L CNN
F 1 "22p" H 8200 4425 50  0000 L CNN
F 2 "" H 8188 4375 30  0000 C CNN
F 3 "" H 8150 4525 60  0000 C CNN
	1    8150 4525
	1    0    0    -1  
$EndComp
$Comp
L C C25
U 1 1 54FB7DF6
P 8750 4525
F 0 "C25" H 8800 4625 50  0000 L CNN
F 1 "22p" H 8800 4425 50  0000 L CNN
F 2 "" H 8788 4375 30  0000 C CNN
F 3 "" H 8750 4525 60  0000 C CNN
	1    8750 4525
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 54FB7DFD
P 8150 4900
F 0 "#PWR04" H 8150 4650 60  0001 C CNN
F 1 "GND" H 8150 4750 60  0000 C CNN
F 2 "" H 8150 4900 60  0000 C CNN
F 3 "" H 8150 4900 60  0000 C CNN
	1    8150 4900
	1    0    0    -1  
$EndComp
Text Notes 8300 4000 1    60   ~ 0
testpoint
$Comp
L GND #PWR05
U 1 1 54FB7E04
P 9750 3300
F 0 "#PWR05" H 9750 3050 60  0001 C CNN
F 1 "GND" H 9750 3150 60  0000 C CNN
F 2 "" H 9750 3300 60  0000 C CNN
F 3 "" H 9750 3300 60  0000 C CNN
	1    9750 3300
	1    0    0    -1  
$EndComp
$Comp
L C C29
U 1 1 54FB7E0A
P 10150 5875
F 0 "C29" H 10200 5975 50  0000 L CNN
F 1 "100n" H 10200 5775 50  0000 L CNN
F 2 "" H 10188 5725 30  0000 C CNN
F 3 "" H 10150 5875 60  0000 C CNN
	1    10150 5875
	1    0    0    -1  
$EndComp
NoConn ~ 9600 2650
NoConn ~ 9600 2450
NoConn ~ 8900 3550
NoConn ~ 8200 3550
NoConn ~ 8300 3550
NoConn ~ 9000 1450
NoConn ~ 8900 1450
NoConn ~ 8800 1450
NoConn ~ 8700 1450
NoConn ~ 8600 1450
$Comp
L C C24
U 1 1 54FB7E34
P 8700 1075
F 0 "C24" H 8750 1175 50  0000 L CNN
F 1 "100n" H 8750 975 50  0000 L CNN
F 2 "" H 8738 925 30  0000 C CNN
F 3 "" H 8700 1075 60  0000 C CNN
	1    8700 1075
	0    1    1    0   
$EndComp
$Comp
L C C26
U 1 1 54FB7E49
P 8975 5875
F 0 "C26" H 9025 5975 50  0000 L CNN
F 1 "100n" H 9025 5775 50  0000 L CNN
F 2 "" H 9013 5725 30  0000 C CNN
F 3 "" H 8975 5875 60  0000 C CNN
	1    8975 5875
	1    0    0    -1  
$EndComp
$Comp
L C C28
U 1 1 54FB7E50
P 9750 5875
F 0 "C28" H 9800 5975 50  0000 L CNN
F 1 "100n" H 9800 5775 50  0000 L CNN
F 2 "" H 9788 5725 30  0000 C CNN
F 3 "" H 9750 5875 60  0000 C CNN
	1    9750 5875
	1    0    0    -1  
$EndComp
$Comp
L C C27
U 1 1 54FB7E57
P 9250 5875
F 0 "C27" H 9300 5975 50  0000 L CNN
F 1 "10u" H 9300 5775 50  0000 L CNN
F 2 "" H 9288 5725 30  0000 C CNN
F 3 "" H 9250 5875 60  0000 C CNN
	1    9250 5875
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 54FB7E6A
P 9250 6175
F 0 "#PWR06" H 9250 5925 60  0001 C CNN
F 1 "GND" H 9250 6025 60  0000 C CNN
F 2 "" H 9250 6175 60  0000 C CNN
F 3 "" H 9250 6175 60  0000 C CNN
	1    9250 6175
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 54FB7E70
P 8750 825
F 0 "R6" V 8830 825 50  0000 C CNN
F 1 "47k" V 8757 826 50  0000 C CNN
F 2 "" V 8680 825 30  0000 C CNN
F 3 "" H 8750 825 30  0000 C CNN
	1    8750 825 
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR07
U 1 1 54FB7E77
P 9100 825
F 0 "#PWR07" H 9100 675 60  0001 C CNN
F 1 "VCC" H 9100 975 60  0000 C CNN
F 2 "" H 9100 825 60  0000 C CNN
F 3 "" H 9100 825 60  0000 C CNN
	1    9100 825 
	0    1    1    0   
$EndComp
NoConn ~ 7500 2150
$Comp
L C C18
U 1 1 54FB7E9B
P 7050 2850
F 0 "C18" H 7100 2950 50  0000 L CNN
F 1 "100n" H 7100 2750 50  0000 L CNN
F 2 "" H 7088 2700 30  0000 C CNN
F 3 "" H 7050 2850 60  0000 C CNN
	1    7050 2850
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 54FB7EA2
P 7300 3150
F 0 "R5" V 7380 3150 50  0000 C CNN
F 1 "1k" V 7307 3151 50  0000 C CNN
F 2 "" V 7230 3150 30  0000 C CNN
F 3 "" H 7300 3150 30  0000 C CNN
	1    7300 3150
	-1   0    0    1   
$EndComp
$Comp
L INDUCTOR L1
U 1 1 54FB7EAB
P 4450 5350
F 0 "L1" V 4400 5350 50  0000 C CNN
F 1 "560n" V 4550 5350 50  0000 C CNN
F 2 "" H 4450 5350 60  0000 C CNN
F 3 "" H 4450 5350 60  0000 C CNN
	1    4450 5350
	0    -1   -1   0   
$EndComp
$Comp
L C C9
U 1 1 54FB7EB2
P 4050 5650
F 0 "C9" H 4100 5750 50  0000 L CNN
F 1 "220p" H 4100 5550 50  0000 L CNN
F 2 "" H 4088 5500 30  0000 C CNN
F 3 "" H 4050 5650 60  0000 C CNN
	1    4050 5650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 54FB7EB9
P 4150 5950
F 0 "#PWR08" H 4150 5700 60  0001 C CNN
F 1 "GND" H 4150 5800 60  0000 C CNN
F 2 "" H 4150 5950 60  0000 C CNN
F 3 "" H 4150 5950 60  0000 C CNN
	1    4150 5950
	0    -1   -1   0   
$EndComp
$Comp
L C C6
U 1 1 54FB7EBF
P 3750 5350
F 0 "C6" H 3800 5450 50  0000 L CNN
F 1 "na" H 3800 5250 50  0001 L CNN
F 2 "" H 3788 5200 30  0000 C CNN
F 3 "" H 3750 5350 60  0000 C CNN
	1    3750 5350
	0    1    1    0   
$EndComp
$Comp
L C C5
U 1 1 54FB7EC6
P 3750 5100
F 0 "C5" H 3800 5200 50  0000 L CNN
F 1 "na" H 3800 5000 50  0001 L CNN
F 2 "" H 3788 4950 30  0000 C CNN
F 3 "" H 3750 5100 60  0000 C CNN
	1    3750 5100
	0    1    1    0   
$EndComp
$Comp
L INDUCTOR L2
U 1 1 54FB7ECD
P 4450 6550
F 0 "L2" V 4400 6550 50  0000 C CNN
F 1 "560n" V 4550 6550 50  0000 C CNN
F 2 "" H 4450 6550 60  0000 C CNN
F 3 "" H 4450 6550 60  0000 C CNN
	1    4450 6550
	0    1    1    0   
$EndComp
$Comp
L C C10
U 1 1 54FB7ED4
P 4050 6250
F 0 "C10" H 4100 6350 50  0000 L CNN
F 1 "220p" H 4100 6150 50  0000 L CNN
F 2 "" H 4088 6100 30  0000 C CNN
F 3 "" H 4050 6250 60  0000 C CNN
	1    4050 6250
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 54FB7EDB
P 3750 6550
F 0 "C7" H 3800 6650 50  0000 L CNN
F 1 "na" H 3800 6450 50  0001 L CNN
F 2 "" H 3788 6400 30  0000 C CNN
F 3 "" H 3750 6550 60  0000 C CNN
	1    3750 6550
	0    1    1    0   
$EndComp
$Comp
L C C8
U 1 1 54FB7EE2
P 3750 6800
F 0 "C8" H 3800 6900 50  0000 L CNN
F 1 "na" H 3800 6700 50  0001 L CNN
F 2 "" H 3788 6650 30  0000 C CNN
F 3 "" H 3750 6800 60  0000 C CNN
	1    3750 6800
	0    1    1    0   
$EndComp
$Comp
L C C3
U 1 1 54FB7EE9
P 3450 5650
F 0 "C3" H 3500 5750 50  0000 L CNN
F 1 "na" H 3500 5550 50  0001 L CNN
F 2 "" H 3488 5500 30  0000 C CNN
F 3 "" H 3450 5650 60  0000 C CNN
	1    3450 5650
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 54FB7EF0
P 3200 5650
F 0 "C1" H 3250 5750 50  0000 L CNN
F 1 "na" H 3250 5550 50  0001 L CNN
F 2 "" H 3238 5500 30  0000 C CNN
F 3 "" H 3200 5650 60  0000 C CNN
	1    3200 5650
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 54FB7EF7
P 3450 6250
F 0 "C4" H 3500 6350 50  0000 L CNN
F 1 "na" H 3500 6150 50  0001 L CNN
F 2 "" H 3488 6100 30  0000 C CNN
F 3 "" H 3450 6250 60  0000 C CNN
	1    3450 6250
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 54FB7EFE
P 3200 6250
F 0 "C2" H 3250 6350 50  0000 L CNN
F 1 "na" H 3250 6150 50  0001 L CNN
F 2 "" H 3238 6100 30  0000 C CNN
F 3 "" H 3200 6250 60  0000 C CNN
	1    3200 6250
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 54FB7F8A
P 2850 5350
F 0 "R1" V 2930 5350 50  0000 C CNN
F 1 "na" V 2857 5351 50  0001 C CNN
F 2 "" V 2780 5350 30  0000 C CNN
F 3 "" H 2850 5350 30  0000 C CNN
	1    2850 5350
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 54FB7F91
P 2850 6550
F 0 "R2" V 2930 6550 50  0000 C CNN
F 1 "na" V 2857 6551 50  0001 C CNN
F 2 "" V 2780 6550 30  0000 C CNN
F 3 "" H 2850 6550 30  0000 C CNN
	1    2850 6550
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 54FB7F9A
P 4400 7050
F 0 "R3" V 4480 7050 50  0000 C CNN
F 1 "2.7k" V 4407 7051 50  0000 C CNN
F 2 "" V 4330 7050 30  0000 C CNN
F 3 "" H 4400 7050 30  0000 C CNN
	1    4400 7050
	0    1    1    0   
$EndComp
$Comp
L C C12
U 1 1 54FB7FA3
P 4950 7050
F 0 "C12" H 5000 7150 50  0000 L CNN
F 1 "1n" H 5000 6950 50  0000 L CNN
F 2 "" H 4988 6900 30  0000 C CNN
F 3 "" H 4950 7050 60  0000 C CNN
	1    4950 7050
	0    1    1    0   
$EndComp
Text Notes 3900 4925 0    39   ~ 0
EMC-Filter
Text Notes 2550 4925 0    39   ~ 0
Matching
$Comp
L ATMEGA328P-A IC1
U 1 1 54FB7FB3
P 3325 2875
F 0 "IC1" H 2575 4100 59  0000 L BNN
F 1 "ATMEGA328P-A" H 3725 1475 40  0000 L BNN
F 2 "TQFP32" H 3325 2875 30  0000 C CIN
F 3 "" H 3325 2875 60  0000 C CNN
	1    3325 2875
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR09
U 1 1 54FB7FC1
P 2325 1675
F 0 "#PWR09" H 2325 1525 60  0001 C CNN
F 1 "VCC" H 2325 1825 60  0000 C CNN
F 2 "" H 2325 1675 60  0000 C CNN
F 3 "" H 2325 1675 60  0000 C CNN
	1    2325 1675
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 54FB7FCD
P 2325 4175
F 0 "#PWR010" H 2325 3925 60  0001 C CNN
F 1 "GND" H 2325 4025 60  0000 C CNN
F 2 "" H 2325 4175 60  0000 C CNN
F 3 "" H 2325 4175 60  0000 C CNN
	1    2325 4175
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 54FB7FD9
P 5450 3650
F 0 "C16" H 5500 3750 50  0000 L CNN
F 1 "100n" H 5500 3550 50  0000 L CNN
F 2 "" H 5488 3500 30  0000 C CNN
F 3 "" H 5450 3650 60  0000 C CNN
	1    5450 3650
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 54FB7FE0
P 5150 3650
F 0 "C15" H 5200 3750 50  0000 L CNN
F 1 "100n" H 5200 3550 50  0000 L CNN
F 2 "" H 5188 3500 30  0000 C CNN
F 3 "" H 5150 3650 60  0000 C CNN
	1    5150 3650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR011
U 1 1 54FB7FE7
P 5150 3300
F 0 "#PWR011" H 5150 3150 60  0001 C CNN
F 1 "VCC" H 5150 3450 60  0000 C CNN
F 2 "" H 5150 3300 60  0000 C CNN
F 3 "" H 5150 3300 60  0000 C CNN
	1    5150 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 54FB7FED
P 5150 4000
F 0 "#PWR012" H 5150 3750 60  0001 C CNN
F 1 "GND" H 5150 3850 60  0000 C CNN
F 2 "" H 5150 4000 60  0000 C CNN
F 3 "" H 5150 4000 60  0000 C CNN
	1    5150 4000
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL_SMD X1
U 1 1 54FB7FFB
P 4675 2575
F 0 "X1" H 4675 2665 50  0000 C CNN
F 1 "8M" H 4525 2450 50  0000 L CNN
F 2 "" H 4675 2575 60  0000 C CNN
F 3 "" H 4675 2575 60  0000 C CNN
	1    4675 2575
	0    -1   -1   0   
$EndComp
$Comp
L C C13
U 1 1 54FB8002
P 5025 2375
F 0 "C13" H 5075 2475 50  0000 L CNN
F 1 "22p" H 5075 2275 50  0000 L CNN
F 2 "" H 5063 2225 30  0000 C CNN
F 3 "" H 5025 2375 60  0000 C CNN
	1    5025 2375
	0    -1   1    0   
$EndComp
$Comp
L C C14
U 1 1 54FB8009
P 5025 2775
F 0 "C14" H 5075 2875 50  0000 L CNN
F 1 "22p" H 5075 2675 50  0000 L CNN
F 2 "" H 5063 2625 30  0000 C CNN
F 3 "" H 5025 2775 60  0000 C CNN
	1    5025 2775
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR013
U 1 1 54FB8018
P 5375 2775
F 0 "#PWR013" H 5375 2525 60  0001 C CNN
F 1 "GND" H 5375 2625 60  0000 C CNN
F 2 "" H 5375 2775 60  0000 C CNN
F 3 "" H 5375 2775 60  0000 C CNN
	1    5375 2775
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR014
U 1 1 54FB8022
P 3775 1075
F 0 "#PWR014" H 3775 925 60  0001 C CNN
F 1 "VCC" H 3775 1225 60  0000 C CNN
F 2 "" H 3775 1075 60  0000 C CNN
F 3 "" H 3775 1075 60  0000 C CNN
	1    3775 1075
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 P2
U 1 1 54FB8028
P 3425 1225
F 0 "P2" H 3425 1425 50  0000 C CNN
F 1 "ISP" H 3425 1025 50  0000 C CNN
F 2 "" H 3425 25  60  0000 C CNN
F 3 "" H 3425 25  60  0000 C CNN
	1    3425 1225
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 54FB8031
P 3775 1375
F 0 "#PWR015" H 3775 1125 60  0001 C CNN
F 1 "GND" H 3775 1225 60  0000 C CNN
F 2 "" H 3775 1375 60  0000 C CNN
F 3 "" H 3775 1375 60  0000 C CNN
	1    3775 1375
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 54FB8041
P 4850 3650
F 0 "C11" H 4900 3750 50  0000 L CNN
F 1 "100n" H 4900 3550 50  0000 L CNN
F 2 "" H 4888 3500 30  0000 C CNN
F 3 "" H 4850 3650 60  0000 C CNN
	1    4850 3650
	1    0    0    -1  
$EndComp
Text HLabel 4425 3375 2    39   Input ~ 0
rxd
Text HLabel 4425 3475 2    39   Output ~ 0
txd
$Comp
L INDUCTOR L4
U 1 1 54FE3B55
P 7925 5625
F 0 "L4" V 7875 5625 50  0000 C CNN
F 1 "FERRIT" V 8025 5625 50  0000 C CNN
F 2 "" H 7925 5625 60  0000 C CNN
F 3 "" H 7925 5625 60  0000 C CNN
	1    7925 5625
	0    -1   -1   0   
$EndComp
$Comp
L C C23
U 1 1 54FE79E2
P 8550 5875
F 0 "C23" H 8600 5975 50  0000 L CNN
F 1 "100n" H 8600 5775 50  0000 L CNN
F 2 "" H 8588 5725 30  0000 C CNN
F 3 "" H 8550 5875 60  0000 C CNN
	1    8550 5875
	1    0    0    -1  
$EndComp
$Comp
L C C22
U 1 1 54FE810C
P 8275 5875
F 0 "C22" H 8325 5975 50  0000 L CNN
F 1 "10u" H 8325 5775 50  0000 L CNN
F 2 "" H 8313 5725 30  0000 C CNN
F 3 "" H 8275 5875 60  0000 C CNN
	1    8275 5875
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 54FE9FE2
P 7575 5875
F 0 "C20" H 7625 5975 50  0000 L CNN
F 1 "100n" H 7625 5775 50  0000 L CNN
F 2 "" H 7613 5725 30  0000 C CNN
F 3 "" H 7575 5875 60  0000 C CNN
	1    7575 5875
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 54FEEBFD
P 8550 6175
F 0 "#PWR016" H 8550 5925 60  0001 C CNN
F 1 "GND" H 8550 6025 60  0000 C CNN
F 2 "" H 8550 6175 60  0000 C CNN
F 3 "" H 8550 6175 60  0000 C CNN
	1    8550 6175
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L3
U 1 1 54FF1C76
P 6550 5625
F 0 "L3" V 6500 5625 50  0000 C CNN
F 1 "FERRIT" V 6650 5625 50  0000 C CNN
F 2 "" H 6550 5625 60  0000 C CNN
F 3 "" H 6550 5625 60  0000 C CNN
	1    6550 5625
	0    -1   -1   0   
$EndComp
$Comp
L C C19
U 1 1 54FF1C7C
P 7175 5875
F 0 "C19" H 7225 5975 50  0000 L CNN
F 1 "100n" H 7225 5775 50  0000 L CNN
F 2 "" H 7213 5725 30  0000 C CNN
F 3 "" H 7175 5875 60  0000 C CNN
	1    7175 5875
	1    0    0    -1  
$EndComp
$Comp
L C C17
U 1 1 54FF1C82
P 6900 5875
F 0 "C17" H 6950 5975 50  0000 L CNN
F 1 "10u" H 6950 5775 50  0000 L CNN
F 2 "" H 6938 5725 30  0000 C CNN
F 3 "" H 6900 5875 60  0000 C CNN
	1    6900 5875
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 54FF1C94
P 7175 6150
F 0 "#PWR017" H 7175 5900 60  0001 C CNN
F 1 "GND" H 7175 6000 60  0000 C CNN
F 2 "" H 7175 6150 60  0000 C CNN
F 3 "" H 7175 6150 60  0000 C CNN
	1    7175 6150
	1    0    0    -1  
$EndComp
Text Notes 7150 850  0    39   ~ 0
power-on-reset fähig!
$Comp
L VCC #PWR018
U 1 1 55000CFC
P 9750 5575
F 0 "#PWR018" H 9750 5425 60  0001 C CNN
F 1 "VCC" H 9750 5725 60  0000 C CNN
F 2 "" H 9750 5575 60  0000 C CNN
F 3 "" H 9750 5575 60  0000 C CNN
	1    9750 5575
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 55001490
P 9750 6175
F 0 "#PWR019" H 9750 5925 60  0001 C CNN
F 1 "GND" H 9750 6025 60  0000 C CNN
F 2 "" H 9750 6175 60  0000 C CNN
F 3 "" H 9750 6175 60  0000 C CNN
	1    9750 6175
	1    0    0    -1  
$EndComp
NoConn ~ 8500 1450
$Comp
L GND #PWR020
U 1 1 550102DB
P 8950 1075
F 0 "#PWR020" H 8950 825 60  0001 C CNN
F 1 "GND" H 8950 925 60  0000 C CNN
F 2 "" H 8950 1075 60  0000 C CNN
F 3 "" H 8950 1075 60  0000 C CNN
	1    8950 1075
	0    -1   -1   0   
$EndComp
NoConn ~ 9000 3550
$Comp
L GND #PWR021
U 1 1 55020658
P 6750 2850
F 0 "#PWR021" H 6750 2600 60  0001 C CNN
F 1 "GND" H 6750 2700 60  0000 C CNN
F 2 "" H 6750 2850 60  0000 C CNN
F 3 "" H 6750 2850 60  0000 C CNN
	1    6750 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 3650 8100 3550
Wire Wire Line
	8700 3550 8700 3725
Wire Wire Line
	8600 3550 8600 3900
Wire Wire Line
	8150 4250 8250 4250
Connection ~ 8450 4825
Connection ~ 8150 4825
Wire Wire Line
	8400 3550 8400 4100
Wire Wire Line
	8400 4100 8150 4100
Connection ~ 8150 4250
Wire Wire Line
	8500 3550 8500 4100
Wire Wire Line
	9600 3200 9750 3200
Wire Wire Line
	9750 3200 9750 3300
Wire Wire Line
	8150 4825 8750 4825
Wire Wire Line
	8750 4250 8650 4250
Wire Wire Line
	8750 4825 8750 4725
Wire Wire Line
	8500 4100 8750 4100
Connection ~ 8750 4250
Wire Wire Line
	8300 1075 8500 1075
Connection ~ 8300 1075
Wire Wire Line
	8200 825  8500 825 
Connection ~ 8300 825 
Wire Wire Line
	9000 825  9100 825 
Wire Wire Line
	6800 2650 7500 2650
Wire Wire Line
	4050 5850 4050 6050
Wire Wire Line
	3200 5950 4150 5950
Wire Wire Line
	4050 5100 4050 5450
Wire Wire Line
	3950 5350 4150 5350
Wire Wire Line
	4750 5350 5250 5350
Connection ~ 4050 5350
Wire Wire Line
	3950 5100 4050 5100
Connection ~ 4050 5950
Wire Wire Line
	3950 6550 4150 6550
Wire Wire Line
	4050 6450 4050 7050
Wire Wire Line
	4750 6550 5250 6550
Connection ~ 4050 6550
Wire Wire Line
	4050 6800 3950 6800
Wire Wire Line
	3550 5100 3450 5100
Wire Wire Line
	3450 5100 3450 5450
Wire Wire Line
	3100 5350 3550 5350
Connection ~ 3450 5350
Wire Wire Line
	3200 5450 3200 5350
Wire Wire Line
	3200 6050 3200 5850
Wire Wire Line
	3450 6050 3450 5850
Connection ~ 3450 5950
Connection ~ 3200 5950
Wire Wire Line
	3200 6450 3200 6550
Wire Wire Line
	3100 6550 3550 6550
Wire Wire Line
	3450 6450 3450 6800
Connection ~ 3450 6550
Wire Wire Line
	3450 6800 3550 6800
Connection ~ 3200 6550
Connection ~ 3200 5350
Wire Wire Line
	4050 7050 4150 7050
Connection ~ 4050 6800
Wire Wire Line
	4650 7050 4750 7050
Wire Wire Line
	5150 7050 5250 7050
Wire Notes Line
	5200 7250 5200 4950
Wire Notes Line
	5200 4950 2550 4950
Wire Notes Line
	3900 4950 3900 7250
Wire Notes Line
	2550 7250 5200 7250
Wire Notes Line
	2550 4950 2550 7250
Wire Wire Line
	2425 1875 2325 1875
Wire Wire Line
	2325 1675 2325 2075
Wire Wire Line
	2425 1775 2325 1775
Connection ~ 2325 1775
Wire Wire Line
	2325 2075 2425 2075
Connection ~ 2325 1875
Wire Wire Line
	2425 3875 2325 3875
Wire Wire Line
	2325 3875 2325 4175
Wire Wire Line
	2425 3975 2325 3975
Connection ~ 2325 3975
Wire Wire Line
	2425 4075 2325 4075
Connection ~ 2325 4075
Wire Wire Line
	5150 3850 5150 4000
Wire Wire Line
	4850 3950 5450 3950
Wire Wire Line
	5450 3950 5450 3850
Connection ~ 5150 3950
Wire Wire Line
	5150 3300 5150 3450
Wire Wire Line
	4850 3350 5450 3350
Wire Wire Line
	5450 3350 5450 3450
Connection ~ 5150 3350
Wire Wire Line
	4475 2475 4475 2775
Wire Wire Line
	4475 2775 4825 2775
Connection ~ 4675 2775
Wire Wire Line
	4325 2375 4825 2375
Connection ~ 4675 2375
Wire Wire Line
	5225 2375 5325 2375
Wire Wire Line
	5325 2375 5325 2775
Wire Wire Line
	5225 2775 5375 2775
Connection ~ 5325 2775
Wire Wire Line
	3675 1125 3775 1125
Wire Wire Line
	3775 1125 3775 1075
Wire Wire Line
	3675 1325 3775 1325
Wire Wire Line
	3775 1325 3775 1375
Wire Wire Line
	3675 1225 3775 1225
Wire Wire Line
	3175 1125 3075 1125
Wire Wire Line
	3175 1225 3075 1225
Wire Wire Line
	3175 1325 3075 1325
Wire Wire Line
	4850 3350 4850 3450
Wire Wire Line
	4850 3950 4850 3850
Wire Wire Line
	4425 3375 4325 3375
Wire Wire Line
	4425 3475 4325 3475
Wire Wire Line
	8225 5625 8600 5625
Wire Wire Line
	8275 5625 8275 5675
Connection ~ 8275 5625
Wire Wire Line
	8550 6075 8550 6175
Wire Wire Line
	8275 6075 8275 6125
Wire Wire Line
	7575 6125 8550 6125
Connection ~ 8550 6125
Wire Wire Line
	7575 6075 7575 6125
Connection ~ 8275 6125
Wire Wire Line
	7575 5575 7575 5675
Wire Wire Line
	6850 5625 7225 5625
Wire Wire Line
	6900 5625 6900 5675
Wire Wire Line
	7175 5625 7175 5675
Connection ~ 6900 5625
Connection ~ 7175 5625
Wire Wire Line
	7175 6075 7175 6150
Wire Wire Line
	6900 6075 6900 6125
Connection ~ 7175 6125
Wire Wire Line
	6900 6125 7175 6125
Wire Wire Line
	9750 5575 9750 5675
Wire Wire Line
	9750 6075 9750 6175
Wire Wire Line
	9700 5625 9825 5625
Connection ~ 9750 5625
Wire Wire Line
	9250 6075 9250 6175
Wire Wire Line
	9250 6125 8975 6125
Wire Wire Line
	8975 6125 8975 6075
Connection ~ 9250 6125
Wire Wire Line
	8975 5675 8975 5625
Wire Wire Line
	8900 1075 8950 1075
Wire Wire Line
	8150 4100 8150 4325
Wire Wire Line
	8450 4350 8450 4825
Wire Wire Line
	8750 4100 8750 4325
Wire Wire Line
	8150 4725 8150 4900
Wire Wire Line
	7500 2950 7425 2950
Wire Wire Line
	7425 2950 7425 3450
Wire Wire Line
	7425 3450 7175 3450
Wire Wire Line
	7500 2250 7425 2250
Wire Wire Line
	7425 2050 7425 2650
Connection ~ 7425 2650
Wire Wire Line
	7300 2900 7300 2850
Wire Wire Line
	7250 2850 7500 2850
Wire Wire Line
	7300 3400 7300 3450
Connection ~ 7300 3450
Connection ~ 7300 2850
Wire Wire Line
	6750 2850 6850 2850
Wire Wire Line
	7575 5625 7625 5625
Connection ~ 7575 5625
Wire Wire Line
	8550 5675 8550 5625
Connection ~ 8550 5625
Wire Wire Line
	6250 5625 6200 5625
Wire Wire Line
	6200 5625 6200 5575
Text Notes 6475 650  0    39   ~ 0
rfid-ic
Wire Notes Line
	6050 5300 10475 5300
Wire Notes Line
	6050 6425 10475 6425
Wire Notes Line
	6050 6425 6050 5300
Text Notes 6050 5275 0    39   ~ 0
rfid power decoupling
Text Notes 2525 5475 3    39   ~ 0
TODO: design 13.56MHz antenna
Text Notes 8700 3250 1    39   ~ 0
config for spi\noperation
Text Notes 8425 1850 3    39   ~ 0
nc (section 8.4.2)
NoConn ~ 8400 1450
Text Notes 9200 2775 2    39   ~ 0
host interface supply
Text Notes 8125 1850 3    39   ~ 0
main power supply
Text Notes 4200 7000 0    39   ~ 0
see section 13
Text GLabel 8100 1350 1    39   Input ~ 0
vbat
Text GLabel 8200 1350 1    39   Output ~ 0
dvdd
Text GLabel 9700 2750 2    39   Input ~ 0
pvdd
Wire Wire Line
	8100 1350 8100 1450
Wire Wire Line
	8200 1450 8200 1350
Wire Wire Line
	9700 2750 9600 2750
Wire Wire Line
	9700 2550 9600 2550
Wire Wire Line
	9700 2350 9600 2350
Wire Wire Line
	9700 2250 9600 2250
Wire Wire Line
	9700 2150 9600 2150
Wire Wire Line
	9700 2050 9600 2050
Text GLabel 9700 2550 2    39   Output ~ 0
irq
Text GLabel 9700 2350 2    39   Input ~ 0
ss
Text GLabel 9700 2250 2    39   Input ~ 0
mosi
Text GLabel 9700 2150 2    39   Output ~ 0
miso
Text GLabel 9700 2050 2    39   Input ~ 0
sck
$Comp
L VCC #PWR022
U 1 1 5505F379
P 10150 5575
F 0 "#PWR022" H 10150 5425 60  0001 C CNN
F 1 "VCC" H 10150 5725 60  0000 C CNN
F 2 "" H 10150 5575 60  0000 C CNN
F 3 "" H 10150 5575 60  0000 C CNN
	1    10150 5575
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 5575 10150 5675
Text GLabel 10200 5625 2    39   Output ~ 0
pvdd
Wire Wire Line
	10200 5625 10150 5625
Connection ~ 10150 5625
$Comp
L GND #PWR023
U 1 1 5506101C
P 10150 6175
F 0 "#PWR023" H 10150 5925 60  0001 C CNN
F 1 "GND" H 10150 6025 60  0000 C CNN
F 2 "" H 10150 6175 60  0000 C CNN
F 3 "" H 10150 6175 60  0000 C CNN
	1    10150 6175
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 6075 10150 6175
Text GLabel 9825 5625 2    39   Output ~ 0
vbat
Wire Wire Line
	9250 5575 9250 5675
Connection ~ 9250 5625
Wire Wire Line
	8975 5625 9250 5625
Text GLabel 9250 5575 1    39   Input ~ 0
dvdd
Wire Wire Line
	7325 2350 7500 2350
Text GLabel 7325 2350 0    39   Output ~ 0
ant_tx1
Wire Wire Line
	7325 2450 7500 2450
Text GLabel 7325 2450 0    39   Input ~ 0
tvdd
Text GLabel 7325 2550 0    39   Output ~ 0
ant_tx2
Wire Wire Line
	7325 2550 7500 2550
Wire Wire Line
	7500 2050 7425 2050
Connection ~ 7425 2250
Wire Wire Line
	6800 2650 6800 2850
Connection ~ 6800 2850
Text GLabel 7325 2750 0    39   Input ~ 0
avdd
Wire Wire Line
	7325 2750 7500 2750
Text GLabel 7175 3450 0    39   Input ~ 0
ant_rx
Text GLabel 8200 825  0    39   Input ~ 0
rfid_reset
Text GLabel 7225 5625 2    39   Output ~ 0
avdd
Text GLabel 6200 5575 1    39   Input ~ 0
dvdd
Text GLabel 7575 5575 1    39   Input ~ 0
dvdd
Text GLabel 8600 5625 2    39   Output ~ 0
tvdd
Text Notes 6825 5275 0    39   ~ 0
remark: choose a low esr (x5r/x7r) version for all 10u caps
Text GLabel 8925 3725 2    39   Input ~ 0
pvdd
Wire Wire Line
	8800 3550 8800 3900
$Comp
L GND #PWR024
U 1 1 5508E977
P 8925 3975
F 0 "#PWR024" H 8925 3725 60  0001 C CNN
F 1 "GND" H 8925 3825 60  0000 C CNN
F 2 "" H 8925 3975 60  0000 C CNN
F 3 "" H 8925 3975 60  0000 C CNN
	1    8925 3975
	1    0    0    -1  
$EndComp
Connection ~ 8800 3900
Wire Wire Line
	8600 3900 8925 3900
Wire Wire Line
	8925 3900 8925 3975
Wire Wire Line
	8700 3725 8925 3725
$Comp
L R R4
U 1 1 550985D2
P 4450 1525
F 0 "R4" V 4530 1525 50  0000 C CNN
F 1 "10k" V 4457 1526 50  0000 C CNN
F 2 "" V 4380 1525 30  0000 C CNN
F 3 "" H 4450 1525 30  0000 C CNN
	1    4450 1525
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR025
U 1 1 55098ED6
P 4450 1225
F 0 "#PWR025" H 4450 1075 60  0001 C CNN
F 1 "VCC" H 4450 1375 60  0000 C CNN
F 2 "" H 4450 1225 60  0000 C CNN
F 3 "" H 4450 1225 60  0000 C CNN
	1    4450 1225
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1225 4450 1275
Wire Wire Line
	4325 1975 4575 1975
Text GLabel 4575 1975 2    39   Output ~ 0
ss
Text GLabel 4575 2075 2    39   Output ~ 0
mosi
Text GLabel 4575 2175 2    39   Input ~ 0
miso
Wire Wire Line
	4325 2075 4575 2075
Wire Wire Line
	4325 2175 4575 2175
Wire Wire Line
	4475 2475 4325 2475
Text GLabel 4575 2275 2    39   Output ~ 0
sck
Wire Wire Line
	4325 2275 4575 2275
Text GLabel 4425 3575 2    39   Input ~ 0
irq
Wire Wire Line
	4425 3575 4325 3575
Wire Wire Line
	4450 1775 4450 1975
Connection ~ 4450 1975
Text GLabel 4575 1875 2    39   Output ~ 0
rfid_reset
Wire Wire Line
	4575 1875 4325 1875
Wire Wire Line
	8300 825  8300 1450
Text Notes 8775 2000 0    39   ~ 0
floating\nAN153710\n2.1.1/2.1.2\n
Text Notes 3000 4925 0    39   ~ 0
remark: use C0G caps
Text GLabel 3075 1125 0    39   Input ~ 0
miso
Text GLabel 3075 1225 0    39   Output ~ 0
sck
Text GLabel 3075 1325 0    39   Output ~ 0
reset
Text GLabel 3775 1225 2    39   Output ~ 0
mosi
Text GLabel 4425 3225 2    39   Input ~ 0
reset
Wire Wire Line
	4425 3225 4325 3225
Wire Notes Line
	6475 675  6475 5175
Wire Notes Line
	6475 5175 10000 5175
Wire Notes Line
	10000 5175 10000 675 
Wire Notes Line
	10000 675  6475 675 
Text GLabel 5250 5350 2    39   Input ~ 0
ant_tx1
Text GLabel 5250 6550 2    39   Input ~ 0
ant_tx2
Wire Notes Line
	2100 750  5775 750 
Wire Notes Line
	5775 750  5775 4475
Wire Notes Line
	5775 4475 2100 4475
Wire Notes Line
	2100 4475 2100 750 
Text Notes 2100 725  0    39   ~ 0
rfid mcu
Text GLabel 5250 7050 2    39   Output ~ 0
ant_rx
Wire Wire Line
	4775 2575 5325 2575
Connection ~ 5325 2575
NoConn ~ 9600 2850
NoConn ~ 9600 2950
NoConn ~ 4325 4075
NoConn ~ 4325 3975
NoConn ~ 4325 3875
NoConn ~ 4325 3775
NoConn ~ 4325 3675
NoConn ~ 4325 3125
NoConn ~ 4325 3025
NoConn ~ 4325 2925
NoConn ~ 4325 2825
NoConn ~ 4325 2725
NoConn ~ 4325 2625
NoConn ~ 4325 1775
NoConn ~ 2425 3125
NoConn ~ 2425 3225
$Comp
L PWR_FLAG #FLG026
U 1 1 54FF95E8
P 9700 5625
F 0 "#FLG026" H 9700 5720 30  0001 C CNN
F 1 "PWR_FLAG" H 9700 5805 30  0000 C CNN
F 2 "" H 9700 5625 60  0000 C CNN
F 3 "" H 9700 5625 60  0000 C CNN
	1    9700 5625
	0    -1   -1   0   
$EndComp
Wire Notes Line
	10475 6425 10475 5300
$Comp
L PWR_FLAG #FLG027
U 1 1 54FFA566
P 9700 6125
F 0 "#FLG027" H 9700 6220 30  0001 C CNN
F 1 "PWR_FLAG" H 9700 6305 30  0000 C CNN
F 2 "" H 9700 6125 60  0000 C CNN
F 3 "" H 9700 6125 60  0000 C CNN
	1    9700 6125
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9700 6125 9750 6125
Connection ~ 9750 6125
NoConn ~ 2425 2375
$EndSCHEMATC
