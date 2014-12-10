uacs
====

An universal access control system.

Usecase(s)
----------

* machine access control system:
  * monitor access to the machine
  * monitor the machine use time and whether the machine is in use or not
  * add the possibility to reserve machines
  * add a dead man's switch to the machine (force the user to interact with the uacs terminal every x minutes)

Features
--------

* [2.8" Touchscreen](../v2.0/pcb/datasheets/ILI9341.pdf)
* [ISO/IEC 14443A/MIFARE Reader/Writer (supports e.g. MIFARE Classic + DESFire)](../v2.0/pcb/datasheets/PN532-short.pdf)
* [ethernet-access](../v2.0/pcb/datasheets/W5100.pdf)
* powered via 2.1mm DC-Jack (Voltage: 7-50V) or passive POE (power over ethernet)
* micro-sd-card reader to store data (lcd-background images, caching of authorized rfid cards, ..)
* multiple IOs (I²C, UART, SPI, digital/analog pins e.g. to control relais or get sensor values)
* (piezo-)speaker for audio feedback
* real time clock

Remark
------

Development is still in progress, this is not a final version!<br />
If you want to contribute, take a look at the [wiki](./.wiki/Contribution).

PCB
---

The terminal is build from two stacked pcbs in order to save space.<br />
Eagle Layout files and datasheets of used components can be found under [/pcb](../v2.0/pcb).

Firmware
--------

The firmware is written in arduino (c/c++) since the pcb is arduino mega compatible.<br />
The backend is (not yet ;)) written in Python.<br />
All code can be found under [/firmware](../v2.0/firmware).

License
-------

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
