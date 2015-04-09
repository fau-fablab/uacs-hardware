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
LIBS:_stm32
LIBS:_display
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
LIBS:7499210124
LIBS:_power
LIBS:_sd
LIBS:_filter
LIBS:_ic
LIBS:_sound
LIBS:_diode
LIBS:_transistor
LIBS:uacs-2-bot-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 12
Title "UACS"
Date "Sa 28 Mär 2015"
Rev "2.0"
Comp "FAU FabLab"
Comment1 ""
Comment2 "bottom PCB"
Comment3 "Universal Access Control System"
Comment4 ""
$EndDescr
$Sheet
S 4475 875  1025 1150
U 5517E6FE
F0 "uacs-ethernet" 39
F1 "uacs-2-bot-ethernet.sch" 39
F2 "MII_TXD0" I R 5500 950 39 
F3 "MII_TXD1" I R 5500 1050 39 
F4 "MII_TXD2" I R 5500 1150 39 
F5 "MII_TXD3" I R 5500 1250 39 
F6 "MII_TX_CLK" O R 5500 1400 39 
F7 "MII_RX_CLK" O R 5500 1500 39 
F8 "MII_RXD0" O R 5500 1650 39 
F9 "MII_RXD1" O R 5500 1750 39 
F10 "MII_RXD2" O R 5500 1850 39 
F11 "MII_RXD3" O R 5500 1950 39 
F12 "MII_TX_EN" I L 4475 950 39 
F13 "MII_RX_ER" O L 4475 1050 39 
F14 "MII_RX_DV" O L 4475 1150 39 
F15 "MII_COL" O L 4475 1250 39 
F16 "MII_CRS" O L 4475 1350 39 
F17 "MII_MDC" I L 4475 1450 39 
F18 "MII_MDIO" O L 4475 1550 39 
F19 "phy_reset" I L 4475 1700 39 
F20 "phy_int" O L 4475 1800 39 
$EndSheet
$Sheet
S 6950 1825 1025 2250
U 551DD125
F0 "uacs-display" 39
F1 "uacs-2-bot-display.sch" 39
F2 "LCD_VSYNC" I R 7975 1900 39 
F3 "LCD_CLK" I R 7975 2100 39 
F4 "LCD_R7" I L 6950 2400 39 
F5 "LCD_R5" I L 6950 2200 39 
F6 "LCD_R3" I L 6950 2000 39 
F7 "LCD_G7" I L 6950 3050 39 
F8 "LCD_G5" I L 6950 2850 39 
F9 "LCD_G3" I L 6950 2650 39 
F10 "LCD_B7" I L 6950 3700 39 
F11 "LCD_B5" I L 6950 3500 39 
F12 "LCD_B3" I L 6950 3300 39 
F13 "LCD_HSYNC" I R 7975 2000 39 
F14 "LCD_DE" I R 7975 2200 39 
F15 "LCD_R6" I L 6950 2300 39 
F16 "LCD_R4" I L 6950 2100 39 
F17 "LCD_R2" I L 6950 1900 39 
F18 "LCD_G6" I L 6950 2950 39 
F19 "LCD_G4" I L 6950 2750 39 
F20 "LCD_G2" I L 6950 2550 39 
F21 "LCD_B6" I L 6950 3600 39 
F22 "LCD_B4" I L 6950 3400 39 
F23 "LCD_B2" I L 6950 3200 39 
F24 "lcd_sdo" B R 7975 2350 39 
F25 "lcd_rd" B R 7975 2450 39 
F26 "lcd_dcx/scl" B R 7975 2550 39 
F27 "lcd_te" I R 7975 2650 39 
F28 "lcd_sdi" B R 7975 2750 39 
F29 "lcd_wrx/dcx" B R 7975 2850 39 
F30 "lcd_csx" B R 7975 2950 39 
F31 "lcd_reset" I R 7975 3100 39 
F32 "~lcd_bl" I R 7975 3200 39 
F33 "lcd_im0" B R 7975 3350 39 
F34 "lcd_im1" B R 7975 3450 39 
F35 "lcd_im2" B R 7975 3550 39 
F36 "lcd_im3" B R 7975 3650 39 
F37 "~lcd_ts_int" O R 7975 3800 39 
F38 "lcd_ts_scl" I R 7975 3900 39 
F39 "lcd_ts_sda" O R 7975 4000 39 
$EndSheet
Text GLabel 8075 2350 2    39   BiDi ~ 0
lcd_sdo
Text GLabel 8075 2450 2    39   BiDi ~ 0
lcd_rd
Text GLabel 8075 2550 2    39   BiDi ~ 0
lcd_dcx/scl
Text GLabel 8075 2650 2    39   Input ~ 0
lcd_te
Text GLabel 8075 2750 2    39   BiDi ~ 0
lcd_sdi
Text GLabel 8075 2850 2    39   BiDi ~ 0
lcd_wrx/dcx
Text GLabel 8075 2950 2    39   BiDi ~ 0
lcd_csx
Text GLabel 8075 3100 2    39   Input ~ 0
~lcd_reset
Text GLabel 8075 3200 2    39   Input ~ 0
~lcd_bl
Text GLabel 8075 3350 2    39   BiDi ~ 0
lcd_im0
Text GLabel 8075 3450 2    39   BiDi ~ 0
lcd_im1
Text GLabel 8075 3550 2    39   BiDi ~ 0
lcd_im2
Text GLabel 8075 3650 2    39   BiDi ~ 0
lcd_im3
Text GLabel 8075 3800 2    39   Output ~ 0
~lcd_ts_int
$Sheet
S 4475 2875 1025 450 
U 5523FE33
F0 "uacs-usb" 39
F1 "uacs-2-bottom-usb.sch" 39
F2 "~usb_psen" I L 4475 2950 39 
F3 "~usb_oc" O L 4475 3050 39 
F4 "USB_VBUS" B R 5500 2950 39 
F5 "USB_FS_DP" B R 5500 3050 39 
F6 "USB_FS_DM" B R 5500 3150 39 
F7 "USB_FS_ID" B R 5500 3250 39 
$EndSheet
$Sheet
S 4475 4200 1025 450 
U 5514A728
F0 "uacs-sd" 39
F1 "uacs-2-bot-sd.sch" 39
F2 "SDIO_D2" B R 5500 4475 39 
F3 "SDIO_D3" B R 5500 4575 39 
F4 "SDIO_CMD" B L 4475 4275 39 
F5 "SDIO_CK" I L 4475 4375 39 
F6 "SDIO_D0" B R 5500 4275 39 
F7 "SDIO_D1" B R 5500 4375 39 
F8 "sdio_cd" O L 4475 4575 39 
$EndSheet
$Sheet
S 9425 850  1025 2150
U 551768CE
F0 "uacs-ram" 39
F1 "uacs-2-bot-ram.sch" 39
F2 "FMC_A0" B L 9425 925 39 
F3 "FMC_A1" B L 9425 1025 39 
F4 "FMC_A2" B L 9425 1125 39 
F5 "FMC_A3" B L 9425 1225 39 
F6 "FMC_A4" B L 9425 1325 39 
F7 "FMC_A5" B L 9425 1425 39 
F8 "FMC_A6" B L 9425 1525 39 
F9 "FMC_A7" B L 9425 1625 39 
F10 "FMC_A8" B L 9425 1725 39 
F11 "FMC_A9" B L 9425 1825 39 
F12 "FMC_A10" B L 9425 1925 39 
F13 "FMC_A11" B L 9425 2025 39 
F14 "FMC_BA0" B L 9425 2825 39 
F15 "FMC_BA1" B L 9425 2925 39 
F16 "FMC_SDCLK" B L 9425 2175 39 
F17 "FMC_SDCKE0" B L 9425 2275 39 
F18 "~FMC_SDNRAS" B L 9425 2375 39 
F19 "~FMC_SDNCAS" B L 9425 2475 39 
F20 "~FMC_SDNWE" B L 9425 2575 39 
F21 "FMC_D0" B R 10450 925 39 
F22 "FMC_D1" B R 10450 1025 39 
F23 "FMC_D2" B R 10450 1125 39 
F24 "FMC_D3" B R 10450 1225 39 
F25 "FMC_D4" B R 10450 1325 39 
F26 "FMC_D5" B R 10450 1425 39 
F27 "FMC_D6" B R 10450 1525 39 
F28 "FMC_D7" B R 10450 1625 39 
F29 "FMC_D8" B R 10450 1725 39 
F30 "FMC_D9" B R 10450 1825 39 
F31 "FMC_D10" B R 10450 1925 39 
F32 "FMC_D11" B R 10450 2025 39 
F33 "FMC_D12" B R 10450 2125 39 
F34 "FMC_D13" B R 10450 2225 39 
F35 "FMC_D14" B R 10450 2325 39 
F36 "FMC_D15" B R 10450 2425 39 
F37 "FMC_NBL0" B R 10450 2575 39 
F38 "FMC_NBL1" B R 10450 2675 39 
F39 "~FMC_SDNE0" B L 9425 2675 39 
$EndSheet
$Sheet
S 1550 800  1200 2150
U 551FE5A9
F0 "uacs-stm32-pa-c" 39
F1 "uacs-2-bot-stm32-pa-c.sch" 39
F2 "ETH_CRS" I R 2750 875 39 
F3 "ETH_RX_CLK" I R 2750 975 39 
F4 "ETH_MDIO" I R 2750 1075 39 
F5 "ETH_COL" B R 2750 1175 39 
F6 "ETH_RX_DV" I R 2750 1275 39 
F7 "USB_OTG_FS_VBUS" B L 1550 875 39 
F8 "USB_OTG_FS_ID" B L 1550 975 39 
F9 "USB_OTG_FS_DM" B L 1550 1075 39 
F10 "USB_OTG_FS_DP" B L 1550 1175 39 
F11 "SYS_JTMS_SWDIO" I L 1550 1425 39 
F12 "SYS_JTCK_SWCLK" I L 1550 1525 39 
F13 "SYS_JTDI" I L 1550 1625 39 
F14 "LTDC_R3" I L 1550 2475 39 
F15 "ETH_RXD3" I R 2750 2175 39 
F16 "SYS_JTDO-SWO" O L 1550 1725 39 
F17 "SYS_JTRST" I L 1550 1825 39 
F18 "LTDC_B6" I L 1550 2075 39 
F19 "LTDC_B7" I L 1550 2175 39 
F20 "LTDC_G4" I L 1550 2275 39 
F21 "ETH_TX_EN" O R 2750 1375 39 
F22 "ETH_TXD0" O R 2750 1475 39 
F23 "ETH_TXD1" O R 2750 1575 39 
F24 "~FMC_SDNWE" B L 1550 2625 39 
F25 "ETH_MDC" O R 2750 1775 39 
F26 "ETH_TXD2" O R 2750 1675 39 
F27 "ETH_TX_CLK" I R 2750 1875 39 
F28 "ETH_RXD0" I R 2750 1975 39 
F29 "ETH_RXD1" I R 2750 2075 39 
F30 "LTDC_HSYNC" I L 1550 1975 39 
F31 "LTDC_G6" I L 1550 2375 39 
F32 "SDIO_D0" B R 2750 2325 39 
F33 "SDIO_D1" B R 2750 2425 39 
F34 "SDIO_D2" B R 2750 2525 39 
F35 "SDIO_D3" B R 2750 2625 39 
F36 "SDIO_CK" O R 2750 2725 39 
F37 "I2C1_SCL" B L 1550 2775 39 
F38 "I2C1_SDA" B L 1550 2875 39 
F39 "~usb_psen" O L 1550 1275 39 
$EndSheet
$Sheet
S 1550 3125 1200 2050
U 55200A18
F0 "uacs-stm32-pd-f" 39
F1 "uacs-2-bot-stm32-pd-f.sch" 39
F2 "FMC_D2" B R 2750 3400 39 
F3 "FMC_D3" B R 2750 3500 39 
F4 "SDIO_CMD" B L 1550 4800 39 
F5 "LTDC_B2" I L 1550 5050 39 
F6 "FMC_D13" B R 2750 4500 39 
F7 "FMC_D14" B R 2750 4600 39 
F8 "FMC_D15" B R 2750 4700 39 
F9 "FMC_D0" B R 2750 3200 39 
F10 "FMC_D1" B R 2750 3300 39 
F11 "FMC_NBL0" B R 2750 4850 39 
F12 "FMC_NBL1" B R 2750 4950 39 
F13 "ETH_TXD3" O L 1550 4650 39 
F14 "FMC_D4" B R 2750 3600 39 
F15 "FMC_D5" B R 2750 3700 39 
F16 "FMC_D6" B R 2750 3800 39 
F17 "FMC_D7" B R 2750 3900 39 
F18 "FMC_D8" B R 2750 4000 39 
F19 "FMC_D9" B R 2750 4100 39 
F20 "FMC_D10" B R 2750 4200 39 
F21 "FMC_D11" B R 2750 4300 39 
F22 "FMC_D12" B R 2750 4400 39 
F23 "FMC_A0" B L 1550 3200 39 
F24 "FMC_A1" B L 1550 3300 39 
F25 "FMC_A2" B L 1550 3400 39 
F26 "FMC_A3" B L 1550 3500 39 
F27 "FMC_A4" B L 1550 3600 39 
F28 "FMC_A5" B L 1550 3700 39 
F29 "UART7_RX" I L 1550 4400 39 
F30 "UART7_TX" O L 1550 4500 39 
F31 "LTDC_DE" I L 1550 4950 39 
F32 "~FMC_SDNRAS" B L 1550 4250 39 
F33 "FMC_A6" B L 1550 3800 39 
F34 "FMC_A7" B L 1550 3900 39 
F35 "FMC_A8" B L 1550 4000 39 
F36 "FMC_A9" B L 1550 4100 39 
F37 "sdio_cd" I R 2750 5100 39 
$EndSheet
$Sheet
S 1550 5325 1200 2000
U 55202185
F0 "uacs-stm32-pg-i" 39
F1 "uacs-2-bot-stm32-pg-i.sch" 39
F2 "FMC_A10" B L 1550 5400 39 
F3 "FMC_A11" B L 1550 5500 39 
F4 "FMC_BA0" B L 1550 5650 39 
F5 "FMC_BA1" B L 1550 5750 39 
F6 "LTDC_R7" I L 1550 5900 39 
F7 "LTDC_CLK" I L 1550 6000 39 
F8 "FMC_SDCLK" B R 2750 5400 39 
F9 "LTDC_B3" I L 1550 6100 39 
F10 "LTDC_B4" I L 1550 6200 39 
F11 "~FMC_SDNCAS" B R 2750 5500 39 
F12 "FMC_SDCKE0" B R 2750 5600 39 
F13 "~FMC_SDNE0" B R 2750 5700 39 
F14 "ETH_RXD2" I R 2750 5950 39 
F15 "LTDC_R2" I L 1550 6300 39 
F16 "LTDC_R4" I L 1550 6400 39 
F17 "LTDC_R5" I L 1550 6500 39 
F18 "LTDC_R6" I L 1550 6600 39 
F19 "LTDC_G2" I L 1550 6700 39 
F20 "LTDC_G3" I L 1550 6800 39 
F21 "LTDC_G5" I L 1550 6900 39 
F22 "LTDC_G7" I L 1550 7000 39 
F23 "LTDC_B5" I L 1550 7100 39 
F24 "LTDC_VSYNC" I L 1550 7250 39 
F25 "ETH_RX_ER" I R 2750 5850 39 
F26 "~usb_oc" I R 2750 6100 39 
F27 "~eth_int" I R 2750 6250 39 
F28 "~eth_reset" O R 2750 6350 39 
F29 "USART6_RX" I R 2750 6500 39 
F30 "USART6_TX" O R 2750 6600 39 
$EndSheet
Text Notes 2175 2100 1    39   ~ 0
STM32 PORT A-C
Text Notes 2175 4400 1    39   ~ 0
STM32 PORT D-F
Text Notes 2175 6650 1    39   ~ 0
STM32 PORT G-I
Text Label 1450 3200 2    39   ~ 0
FMC_A0
Text Label 1450 3300 2    39   ~ 0
FMC_A1
Text Label 1450 3400 2    39   ~ 0
FMC_A2
Text Label 1450 3500 2    39   ~ 0
FMC_A3
Text Label 1450 3600 2    39   ~ 0
FMC_A4
Text Label 1450 3700 2    39   ~ 0
FMC_A5
Text Label 1450 3800 2    39   ~ 0
FMC_A6
Text Label 1450 3900 2    39   ~ 0
FMC_A7
Text Label 1450 4000 2    39   ~ 0
FMC_A8
Text Label 1450 4100 2    39   ~ 0
FMC_A9
Text Label 1450 5400 2    39   ~ 0
FMC_A10
Text Label 1450 5500 2    39   ~ 0
FMC_A11
Text Label 9325 925  2    39   ~ 0
FMC_A0
Text Label 9325 1025 2    39   ~ 0
FMC_A1
Text Label 9325 1125 2    39   ~ 0
FMC_A2
Text Label 9325 1225 2    39   ~ 0
FMC_A3
Text Label 9325 1325 2    39   ~ 0
FMC_A4
Text Label 9325 1425 2    39   ~ 0
FMC_A5
Text Label 9325 1525 2    39   ~ 0
FMC_A6
Text Label 9325 1625 2    39   ~ 0
FMC_A7
Text Label 9325 1725 2    39   ~ 0
FMC_A8
Text Label 9325 1825 2    39   ~ 0
FMC_A9
Text Label 9325 1925 2    39   ~ 0
FMC_A10
Text Label 9325 2025 2    39   ~ 0
FMC_A11
Text Label 2850 3200 0    39   ~ 0
FMC_D0
Text Label 2850 3300 0    39   ~ 0
FMC_D1
Text Label 2850 3400 0    39   ~ 0
FMC_D2
Text Label 2850 3500 0    39   ~ 0
FMC_D3
Text Label 2850 3600 0    39   ~ 0
FMC_D4
Text Label 2850 3700 0    39   ~ 0
FMC_D5
Text Label 2850 3800 0    39   ~ 0
FMC_D6
Text Label 2850 3900 0    39   ~ 0
FMC_D7
Text Label 2850 4000 0    39   ~ 0
FMC_D8
Text Label 2850 4100 0    39   ~ 0
FMC_D9
Text Label 2850 4200 0    39   ~ 0
FMC_D10
Text Label 2850 4300 0    39   ~ 0
FMC_D11
Text Label 2850 4400 0    39   ~ 0
FMC_D12
Text Label 2850 4500 0    39   ~ 0
FMC_D13
Text Label 2850 4600 0    39   ~ 0
FMC_D14
Text Label 2850 4700 0    39   ~ 0
FMC_D15
Text Label 10550 925  0    39   ~ 0
FMC_D0
Text Label 10550 1025 0    39   ~ 0
FMC_D1
Text Label 10550 1125 0    39   ~ 0
FMC_D2
Text Label 10550 1225 0    39   ~ 0
FMC_D3
Text Label 10550 1325 0    39   ~ 0
FMC_D4
Text Label 10550 1425 0    39   ~ 0
FMC_D5
Text Label 10550 1525 0    39   ~ 0
FMC_D6
Text Label 10550 1625 0    39   ~ 0
FMC_D7
Text Label 10550 1725 0    39   ~ 0
FMC_D8
Text Label 10550 1825 0    39   ~ 0
FMC_D9
Text Label 10550 1925 0    39   ~ 0
FMC_D10
Text Label 10550 2025 0    39   ~ 0
FMC_D11
Text Label 10550 2125 0    39   ~ 0
FMC_D12
Text Label 10550 2225 0    39   ~ 0
FMC_D13
Text Label 10550 2325 0    39   ~ 0
FMC_D14
Text Label 10550 2425 0    39   ~ 0
FMC_D15
Text Label 2850 4850 0    39   ~ 0
FMC_NBL0
Text Label 2850 4950 0    39   ~ 0
FMC_NBL1
Text Label 10550 2575 0    39   ~ 0
FMC_NBL0
Text Label 10550 2675 0    39   ~ 0
FMC_NBL1
Text Label 1450 4250 2    39   ~ 0
~FMC_SDNRAS
Text Label 9325 2375 2    39   ~ 0
~FMC_SDNRAS
Text Label 1450 2625 2    39   ~ 0
~FMC_SDNWE
Text Label 9325 2575 2    39   ~ 0
~FMC_SDNWE
Text Label 2850 5400 0    39   ~ 0
FMC_SDCLK
Text Label 2850 5500 0    39   ~ 0
~FMC_SDNCAS
Text Label 2850 5600 0    39   ~ 0
FMC_SDCKE0
Text Label 2850 5700 0    39   ~ 0
~FMC_SDNE0
Text Label 9325 2175 2    39   ~ 0
FMC_SDCLK
Text Label 9325 2475 2    39   ~ 0
~FMC_SDNCAS
Text Label 9325 2275 2    39   ~ 0
FMC_SDCKE0
Text Label 9325 2675 2    39   ~ 0
~FMC_SDNE0
Text Label 1450 5750 2    39   ~ 0
FMC_BA1
Text Label 1450 5650 2    39   ~ 0
FMC_BA0
Text Label 9325 2925 2    39   ~ 0
FMC_BA1
Text Label 9325 2825 2    39   ~ 0
FMC_BA0
Text Label 2850 1375 0    39   ~ 0
ETH_TX_EN
Text Label 4375 950  2    39   ~ 0
ETH_TX_EN
Text Label 2850 5850 0    39   ~ 0
ETH_RX_ER
Text Label 4375 1050 2    39   ~ 0
ETH_RX_ER
Text Label 2850 1275 0    39   ~ 0
ETH_RX_DV
Text Label 4375 1150 2    39   ~ 0
ETH_RX_DV
Text Label 2850 1175 0    39   ~ 0
ETH_COL
Text Label 4375 1250 2    39   ~ 0
ETH_COL
Text Label 2850 875  0    39   ~ 0
ETH_CRS
Text Label 4375 1350 2    39   ~ 0
ETH_CRS
Text Label 2850 1775 0    39   ~ 0
ETH_MDC
Text Label 4375 1450 2    39   ~ 0
ETH_MDC
Text Label 2850 1075 0    39   ~ 0
ETH_MDIO
Text Label 4375 1550 2    39   ~ 0
ETH_MDIO
Text Label 2850 1475 0    39   ~ 0
ETH_TXD0
Text Label 2850 1575 0    39   ~ 0
ETH_TXD1
Text Label 2850 1675 0    39   ~ 0
ETH_TXD2
Text Label 1450 4650 2    39   ~ 0
ETH_TXD3
Text Label 5600 1250 0    39   ~ 0
ETH_TXD3
Text Label 5600 950  0    39   ~ 0
ETH_TXD0
Text Label 5600 1050 0    39   ~ 0
ETH_TXD1
Text Label 5600 1150 0    39   ~ 0
ETH_TXD2
Text Label 2850 975  0    39   ~ 0
ETH_RX_CLK
Text Label 2850 1875 0    39   ~ 0
ETH_TX_CLK
Text Label 5600 1400 0    39   ~ 0
ETH_TX_CLK
Text Label 5600 1500 0    39   ~ 0
ETH_RX_CLK
Text Label 2850 1975 0    39   ~ 0
ETH_RXD0
Text Label 2850 2075 0    39   ~ 0
ETH_RXD1
Text Label 2850 2175 0    39   ~ 0
ETH_RXD3
Text Label 2850 5950 0    39   ~ 0
ETH_RXD2
Text Label 5600 1850 0    39   ~ 0
ETH_RXD2
Text Label 5600 1650 0    39   ~ 0
ETH_RXD0
Text Label 5600 1750 0    39   ~ 0
ETH_RXD1
Text Label 5600 1950 0    39   ~ 0
ETH_RXD3
Text Label 1450 1975 2    39   ~ 0
LTDC_HSYNC
Text Label 1450 2075 2    39   ~ 0
LTDC_B6
Text Label 1450 2175 2    39   ~ 0
LTDC_B7
Text Label 1450 2275 2    39   ~ 0
LTDC_G4
Text Label 1450 2375 2    39   ~ 0
LTDC_G6
Text Label 1450 2475 2    39   ~ 0
LTDC_R3
Text Label 1450 5900 2    39   ~ 0
LTDC_R7
Text Label 1450 6000 2    39   ~ 0
LTDC_CLK
Text Label 1450 6100 2    39   ~ 0
LTDC_B3
Text Label 1450 6200 2    39   ~ 0
LTDC_B4
Text Label 1450 6300 2    39   ~ 0
LTDC_R2
Text Label 1450 6400 2    39   ~ 0
LTDC_R4
Text Label 1450 6500 2    39   ~ 0
LTDC_R5
Text Label 1450 6600 2    39   ~ 0
LTDC_R6
Text Label 1450 6700 2    39   ~ 0
LTDC_G2
Text Label 1450 6800 2    39   ~ 0
LTDC_G3
Text Label 1450 6900 2    39   ~ 0
LTDC_G5
Text Label 1450 7000 2    39   ~ 0
LTDC_G7
Text Label 1450 7100 2    39   ~ 0
LTDC_B5
Text Label 1450 7250 2    39   ~ 0
LTDC_VSYNC
Text Label 6850 2400 2    39   ~ 0
LTDC_R7
Text Label 8075 2100 0    39   ~ 0
LTDC_CLK
Text Label 6850 3300 2    39   ~ 0
LTDC_B3
Text Label 6850 3400 2    39   ~ 0
LTDC_B4
Text Label 6850 1900 2    39   ~ 0
LTDC_R2
Text Label 6850 2100 2    39   ~ 0
LTDC_R4
Text Label 6850 2200 2    39   ~ 0
LTDC_R5
Text Label 6850 2300 2    39   ~ 0
LTDC_R6
Text Label 6850 2550 2    39   ~ 0
LTDC_G2
Text Label 6850 2000 2    39   ~ 0
LTDC_R3
Text Label 6850 2850 2    39   ~ 0
LTDC_G5
Text Label 6850 3050 2    39   ~ 0
LTDC_G7
Text Label 6850 3500 2    39   ~ 0
LTDC_B5
Text Label 8075 1900 0    39   ~ 0
LTDC_VSYNC
Text Label 8075 2000 0    39   ~ 0
LTDC_HSYNC
Text Label 6850 3600 2    39   ~ 0
LTDC_B6
Text Label 6850 3700 2    39   ~ 0
LTDC_B7
Text Label 6850 2750 2    39   ~ 0
LTDC_G4
Text Label 6850 2950 2    39   ~ 0
LTDC_G6
Text Label 6850 2650 2    39   ~ 0
LTDC_G3
Text Label 1450 4950 2    39   ~ 0
LTDC_DE
Text Label 1450 5050 2    39   ~ 0
LTDC_B2
Text Label 8075 2200 0    39   ~ 0
LTDC_DE
Text Label 6850 3200 2    39   ~ 0
LTDC_B2
Text Label 8075 4000 0    39   ~ 0
I2C1_SDA
Text Label 8075 3900 0    39   ~ 0
I2C1_SCL
Text Label 1450 2875 2    39   ~ 0
I2C1_SDA
Text Label 1450 2775 2    39   ~ 0
I2C1_SCL
Text Label 1450 875  2    39   ~ 0
USB_OTG_FS_VBUS
Text Label 1450 975  2    39   ~ 0
USB_OTG_FS_ID
Text Label 1450 1075 2    39   ~ 0
USB_OTG_FS_DM
Text Label 1450 1175 2    39   ~ 0
USB_OTG_FS_DP
Text Label 5600 2950 0    39   ~ 0
USB_OTG_FS_VBUS
Text Label 5600 3250 0    39   ~ 0
USB_OTG_FS_ID
Text Label 5600 3150 0    39   ~ 0
USB_OTG_FS_DM
Text Label 5600 3050 0    39   ~ 0
USB_OTG_FS_DP
Text Label 2850 2325 0    39   ~ 0
SDIO_D0
Text Label 2850 2425 0    39   ~ 0
SDIO_D1
Text Label 2850 2525 0    39   ~ 0
SDIO_D2
Text Label 2850 2625 0    39   ~ 0
SDIO_D3
Text Label 2850 2725 0    39   ~ 0
SDIO_CK
Text Label 1450 4800 2    39   ~ 0
SDIO_CMD
Text Label 4375 4275 2    39   ~ 0
SDIO_CMD
Text Label 5600 4275 0    39   ~ 0
SDIO_D0
Text Label 5600 4375 0    39   ~ 0
SDIO_D1
Text Label 5600 4475 0    39   ~ 0
SDIO_D2
Text Label 5600 4575 0    39   ~ 0
SDIO_D3
Text Label 4375 4375 2    39   ~ 0
SDIO_CK
Text Label 4375 2950 2    39   ~ 0
~usb_psen
Text Label 4375 3050 2    39   ~ 0
~usb_oc
Text Label 1450 1275 2    39   ~ 0
~usb_psen
Text Label 2850 6100 0    39   ~ 0
~usb_oc
Text Label 4375 4575 2    39   ~ 0
sdio_cd
Text Label 2850 5100 0    39   ~ 0
sdio_cd
Text Label 4375 1800 2    39   ~ 0
~eth_int
Text Label 2850 6250 0    39   ~ 0
~eth_int
Text Label 4375 1700 2    39   ~ 0
~eth_reset
Text Label 2850 6350 0    39   ~ 0
~eth_reset
Text Notes 7450 4050 2    39   ~ 0
touch\nscreen
$Sheet
S 4475 7100 1200 200 
U 5556C013
F0 "uacs-power-supply" 39
F1 "uacs-2-bot-power-supply.sch" 39
$EndSheet
Text Notes 5225 7225 2    39   ~ 0
Power Supply
$Sheet
S 4475 5550 1200 650 
U 55595F9A
F0 "uacs-connectors" 39
F1 "uacs-2-bot-connectors.sch" 39
F2 "SYS_JTRST" O L 4475 5625 39 
F3 "SYS_JTDI" O L 4475 5725 39 
F4 "SYS_JTMS-SWDIO" O L 4475 5825 39 
F5 "SYS_JTCK-SWCLK" O L 4475 5925 39 
F6 "SYS_JTDO-SWO" I L 4475 6025 39 
F7 "~RESET" B L 4475 6125 39 
F8 "rfid_rxd" I R 5675 5625 39 
F9 "rfid_txd" O R 5675 5725 39 
$EndSheet
Text Notes 5325 6050 0    39   ~ 0
i/os
$Sheet
S 6950 875  1200 200 
U 555A5132
F0 "uacs-speaker" 39
F1 "uacs-2-bot-speaker.sch" 39
F2 "~speaker" I R 8150 975 39 
$EndSheet
Text Notes 7625 1000 2    39   ~ 0
Speaker
Text Label 8250 975  0    39   ~ 0
~speaker
Text Notes 5075 5575 3    39   ~ 0
jtag
Text Notes 5175 5575 3    39   ~ 0
rfid
Text Label 1450 1425 2    39   ~ 0
SYS_JTMS_SWDIO
Text Label 1450 1525 2    39   ~ 0
SYS_JTCK_SWCLK
Text Label 1450 1625 2    39   ~ 0
SYS_JTDI
Text Label 1450 1725 2    39   ~ 0
SYS_JTDO-SWO
Text Label 1450 1825 2    39   ~ 0
SYS_JTRST
Text Label 4375 5825 2    39   ~ 0
SYS_JTMS_SWDIO
Text Label 4375 5925 2    39   ~ 0
SYS_JTCK_SWCLK
Text Label 4375 5725 2    39   ~ 0
SYS_JTDI
Text Label 4375 6025 2    39   ~ 0
SYS_JTDO-SWO
Text Label 4375 5625 2    39   ~ 0
SYS_JTRST
Text Label 1450 4400 2    39   ~ 0
UART7_RX
Text Label 1450 4500 2    39   ~ 0
UART7_TX
Text Label 5775 5725 0    39   ~ 0
UART7_RX
Text Label 5775 5625 0    39   ~ 0
UART7_TX
Text Notes 525  575  0    39   ~ 0
STM32F429IIT
Text Notes 3700 575  0    39   ~ 0
Ethernet
Text Notes 3700 2525 0    39   ~ 0
USB
Text Notes 3700 3850 0    39   ~ 0
SD Card
Text Notes 3700 5200 0    39   ~ 0
Connectors
Text Notes 3700 6775 0    39   ~ 0
Power Supply
Text Notes 6350 575  0    39   ~ 0
Speaker
Text Notes 6350 1525 0    39   ~ 0
Display
Text Notes 8775 575  0    39   ~ 0
SDRAM
Text Label 2850 6500 0    39   ~ 0
USART6_RX
Text Label 2850 6600 0    39   ~ 0
USART6_TX
Wire Wire Line
	5500 950  5600 950 
Wire Wire Line
	5500 1050 5600 1050
Wire Wire Line
	5500 1150 5600 1150
Wire Wire Line
	5500 1250 5600 1250
Wire Wire Line
	5500 1400 5600 1400
Wire Wire Line
	5500 1500 5600 1500
Wire Wire Line
	5500 1650 5600 1650
Wire Wire Line
	5500 1750 5600 1750
Wire Wire Line
	5500 1850 5600 1850
Wire Wire Line
	5500 1950 5600 1950
Wire Wire Line
	4375 950  4475 950 
Wire Wire Line
	4375 1050 4475 1050
Wire Wire Line
	4375 1150 4475 1150
Wire Wire Line
	4375 1250 4475 1250
Wire Wire Line
	4375 1350 4475 1350
Wire Wire Line
	4375 1450 4475 1450
Wire Wire Line
	4375 1550 4475 1550
Wire Wire Line
	4375 1700 4475 1700
Wire Wire Line
	4375 1800 4475 1800
Wire Wire Line
	6850 1900 6950 1900
Wire Wire Line
	6850 2000 6950 2000
Wire Wire Line
	6850 2100 6950 2100
Wire Wire Line
	6850 2200 6950 2200
Wire Wire Line
	6850 2300 6950 2300
Wire Wire Line
	6850 2400 6950 2400
Wire Wire Line
	6850 2550 6950 2550
Wire Wire Line
	6850 2650 6950 2650
Wire Wire Line
	6850 2750 6950 2750
Wire Wire Line
	6850 2850 6950 2850
Wire Wire Line
	6850 2950 6950 2950
Wire Wire Line
	6850 3050 6950 3050
Wire Wire Line
	6850 3200 6950 3200
Wire Wire Line
	6850 3300 6950 3300
Wire Wire Line
	6850 3400 6950 3400
Wire Wire Line
	6850 3500 6950 3500
Wire Wire Line
	6850 3600 6950 3600
Wire Wire Line
	6850 3700 6950 3700
Wire Wire Line
	7975 1900 8075 1900
Wire Wire Line
	7975 2000 8075 2000
Wire Wire Line
	7975 2100 8075 2100
Wire Wire Line
	7975 2200 8075 2200
Wire Wire Line
	7975 2350 8075 2350
Wire Wire Line
	7975 2450 8075 2450
Wire Wire Line
	7975 2550 8075 2550
Wire Wire Line
	7975 2650 8075 2650
Wire Wire Line
	7975 2750 8075 2750
Wire Wire Line
	8075 2850 7975 2850
Wire Wire Line
	7975 2950 8075 2950
Wire Wire Line
	7975 3100 8075 3100
Wire Wire Line
	7975 3200 8075 3200
Wire Wire Line
	7975 3350 8075 3350
Wire Wire Line
	7975 3450 8075 3450
Wire Wire Line
	7975 3550 8075 3550
Wire Wire Line
	7975 3650 8075 3650
Wire Wire Line
	7975 3800 8075 3800
Wire Wire Line
	7975 3900 8075 3900
Wire Wire Line
	7975 4000 8075 4000
Wire Wire Line
	4375 2950 4475 2950
Wire Wire Line
	4375 3050 4475 3050
Wire Wire Line
	5500 2950 5600 2950
Wire Wire Line
	5500 3050 5600 3050
Wire Wire Line
	5500 3150 5600 3150
Wire Wire Line
	5500 3250 5600 3250
Wire Wire Line
	4375 4275 4475 4275
Wire Wire Line
	4375 4375 4475 4375
Wire Wire Line
	4375 4575 4475 4575
Wire Wire Line
	5500 4275 5600 4275
Wire Wire Line
	5500 4375 5600 4375
Wire Wire Line
	5500 4475 5600 4475
Wire Wire Line
	5500 4575 5600 4575
Wire Wire Line
	9325 925  9425 925 
Wire Wire Line
	9325 1025 9425 1025
Wire Wire Line
	9325 1125 9425 1125
Wire Wire Line
	9325 1225 9425 1225
Wire Wire Line
	9325 1325 9425 1325
Wire Wire Line
	9325 1425 9425 1425
Wire Wire Line
	9325 1525 9425 1525
Wire Wire Line
	9325 1625 9425 1625
Wire Wire Line
	9425 1725 9325 1725
Wire Wire Line
	9325 1825 9425 1825
Wire Wire Line
	9325 1925 9425 1925
Wire Wire Line
	9325 2025 9425 2025
Wire Wire Line
	9325 2175 9425 2175
Wire Wire Line
	9325 2275 9425 2275
Wire Wire Line
	9325 2375 9425 2375
Wire Wire Line
	9325 2475 9425 2475
Wire Wire Line
	9325 2575 9425 2575
Wire Wire Line
	9325 2675 9425 2675
Wire Wire Line
	9325 2825 9425 2825
Wire Wire Line
	9325 2925 9425 2925
Wire Wire Line
	10550 925  10450 925 
Wire Wire Line
	10450 1025 10550 1025
Wire Wire Line
	10450 1125 10550 1125
Wire Wire Line
	10450 1225 10550 1225
Wire Wire Line
	10450 1325 10550 1325
Wire Wire Line
	10450 1425 10550 1425
Wire Wire Line
	10450 1525 10550 1525
Wire Wire Line
	10450 1625 10550 1625
Wire Wire Line
	10450 1725 10550 1725
Wire Wire Line
	10450 1825 10550 1825
Wire Wire Line
	10450 1925 10550 1925
Wire Wire Line
	10450 2025 10550 2025
Wire Wire Line
	10450 2125 10550 2125
Wire Wire Line
	10450 2225 10550 2225
Wire Wire Line
	10450 2325 10550 2325
Wire Wire Line
	10450 2425 10550 2425
Wire Wire Line
	10450 2575 10550 2575
Wire Wire Line
	10450 2675 10550 2675
Wire Wire Line
	1450 875  1550 875 
Wire Wire Line
	1450 975  1550 975 
Wire Wire Line
	1450 1075 1550 1075
Wire Wire Line
	1450 1175 1550 1175
Wire Wire Line
	1450 1975 1550 1975
Wire Wire Line
	1450 2075 1550 2075
Wire Wire Line
	1450 2175 1550 2175
Wire Wire Line
	1450 2275 1550 2275
Wire Wire Line
	1450 2375 1550 2375
Wire Wire Line
	1450 2475 1550 2475
Wire Wire Line
	2750 875  2850 875 
Wire Wire Line
	2750 975  2850 975 
Wire Wire Line
	2750 1075 2850 1075
Wire Wire Line
	2750 1175 2850 1175
Wire Wire Line
	2750 1275 2850 1275
Wire Wire Line
	2750 1375 2850 1375
Wire Wire Line
	2750 1475 2850 1475
Wire Wire Line
	2750 1575 2850 1575
Wire Wire Line
	2750 1675 2850 1675
Wire Wire Line
	2750 1775 2850 1775
Wire Wire Line
	2750 1875 2850 1875
Wire Wire Line
	2750 1975 2850 1975
Wire Wire Line
	2750 2075 2850 2075
Wire Wire Line
	2750 2175 2850 2175
Wire Wire Line
	2750 2325 2850 2325
Wire Wire Line
	2750 2425 2850 2425
Wire Wire Line
	2750 2525 2850 2525
Wire Wire Line
	2750 2625 2850 2625
Wire Wire Line
	2750 2725 2850 2725
Wire Wire Line
	2750 3200 2850 3200
Wire Wire Line
	2750 3300 2850 3300
Wire Wire Line
	2750 3400 2850 3400
Wire Wire Line
	2750 3500 2850 3500
Wire Wire Line
	2750 3600 2850 3600
Wire Wire Line
	2750 3700 2850 3700
Wire Wire Line
	2750 3800 2850 3800
Wire Wire Line
	2750 3900 2850 3900
Wire Wire Line
	2750 4000 2850 4000
Wire Wire Line
	2750 4100 2850 4100
Wire Wire Line
	2750 4200 2850 4200
Wire Wire Line
	2750 4300 2850 4300
Wire Wire Line
	2750 4400 2850 4400
Wire Wire Line
	2750 4500 2850 4500
Wire Wire Line
	2750 4600 2850 4600
Wire Wire Line
	2750 4700 2850 4700
Wire Wire Line
	1450 3200 1550 3200
Wire Wire Line
	1450 3300 1550 3300
Wire Wire Line
	1450 3400 1550 3400
Wire Wire Line
	1450 3500 1550 3500
Wire Wire Line
	1450 3600 1550 3600
Wire Wire Line
	1450 3700 1550 3700
Wire Wire Line
	1450 3800 1550 3800
Wire Wire Line
	1450 3900 1550 3900
Wire Wire Line
	1450 5900 1550 5900
Wire Wire Line
	1450 6000 1550 6000
Wire Wire Line
	1450 6100 1550 6100
Wire Wire Line
	1450 6200 1550 6200
Wire Wire Line
	1450 6300 1550 6300
Wire Wire Line
	1450 6400 1550 6400
Wire Wire Line
	1450 6500 1550 6500
Wire Wire Line
	1450 6600 1550 6600
Wire Wire Line
	1450 6700 1550 6700
Wire Wire Line
	1450 6800 1550 6800
Wire Wire Line
	1450 6900 1550 6900
Wire Wire Line
	1450 7000 1550 7000
Wire Wire Line
	1450 7100 1550 7100
Wire Wire Line
	1450 7250 1550 7250
Wire Wire Line
	1450 5400 1550 5400
Wire Wire Line
	1450 5500 1550 5500
Wire Wire Line
	1450 5650 1550 5650
Wire Wire Line
	1450 5750 1550 5750
Wire Wire Line
	2750 5400 2850 5400
Wire Wire Line
	2750 5500 2850 5500
Wire Wire Line
	2750 5600 2850 5600
Wire Wire Line
	2750 5700 2850 5700
Wire Wire Line
	2750 5850 2850 5850
Wire Wire Line
	2750 5950 2850 5950
Wire Wire Line
	1450 5050 1550 5050
Wire Wire Line
	1450 4950 1550 4950
Wire Wire Line
	1450 4800 1550 4800
Wire Wire Line
	1450 4650 1550 4650
Wire Wire Line
	1450 4250 1550 4250
Wire Wire Line
	1450 4100 1550 4100
Wire Wire Line
	1450 4000 1550 4000
Wire Wire Line
	2750 4850 2850 4850
Wire Wire Line
	2750 4950 2850 4950
Wire Wire Line
	1450 2625 1550 2625
Wire Wire Line
	1450 2775 1550 2775
Wire Wire Line
	1450 2875 1550 2875
Wire Wire Line
	1450 1275 1550 1275
Wire Wire Line
	2850 6100 2750 6100
Wire Wire Line
	2850 5100 2750 5100
Wire Wire Line
	2850 6250 2750 6250
Wire Wire Line
	2850 6350 2750 6350
Wire Notes Line
	7975 3725 7475 3725
Wire Notes Line
	7475 3725 7475 4075
Wire Wire Line
	8250 975  8150 975 
Wire Notes Line
	5675 5775 5100 5775
Wire Wire Line
	1450 1425 1550 1425
Wire Wire Line
	1450 1525 1550 1525
Wire Wire Line
	1450 1625 1550 1625
Wire Wire Line
	1450 1725 1550 1725
Wire Wire Line
	1450 1825 1550 1825
Wire Notes Line
	5100 5550 5100 6200
Wire Wire Line
	4375 5625 4475 5625
Wire Wire Line
	4375 5725 4475 5725
Wire Wire Line
	4375 5825 4475 5825
Wire Wire Line
	4375 5925 4475 5925
Wire Wire Line
	4375 6025 4475 6025
Wire Wire Line
	1450 4500 1550 4500
Wire Wire Line
	1450 4400 1550 4400
Wire Wire Line
	5775 5625 5675 5625
Wire Wire Line
	5675 5725 5775 5725
Wire Notes Line
	3650 475  3650 7800
Wire Notes Line
	6300 475  6300 7800
Wire Notes Line
	6300 2425 3650 2425
Wire Notes Line
	6300 3750 3650 3750
Wire Notes Line
	6300 5100 3650 5100
Wire Notes Line
	6300 6675 3650 6675
Wire Notes Line
	8725 475  8725 4525
Wire Notes Line
	8725 1425 6300 1425
Wire Notes Line
	8725 4525 6300 4525
Wire Notes Line
	8725 3425 11225 3425
Wire Wire Line
	2850 6600 2750 6600
Wire Wire Line
	2850 6500 2750 6500
$EndSCHEMATC