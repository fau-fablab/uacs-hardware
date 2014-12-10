getuid-libfreefare.c	=> Get the UID of a FAUcard, Mifare DESfire without
			   random UID and Mifare Classic using libfreefare
			   Supported readers: ACR ACS122U/Touchatag, SCL3711
			   http://www.libnfc.org/documentation/hardware/compatibility

getuid-pcsc.c		=> Get the UID of a FAUcard using the standard PC/SC
			   interface on Linux, Mac OSX and Windows
			   Supported readers: cyberjack RFID basis/standard,
			   ACR ACS122U/Touchatag (special workaround),
			   Omnikey CardMan 5321 (only Windows),
			   every RFID reader providing a transparent PC/SC I/F

getuid-scriptor.c	=> Get the UID of a FAUcard by manually pasting the
			   commands into scriptor (from pcsc-tools)
			   Supported readers: cyberjack RFID basis/standard,
			   every RFID reader providing a transparent PC/SC I/F

faucard-aes-example.c	=> Get the UID of a recorded FAUcard transaction.
			   Example of AES usage and protocol description

faucard_getuid.c	=> Implementation of reading the FAUcard UID including
faucard_getuid.h	   detailed description of commands.
			   Only needs a callback-function to talk to the
			   reader.
			   (Used in getuid-pcsc and getuid-scriptor)

desfire_functions.c	=> DESfire functions needed by faucard_getuid.c like
desfire_functions.h	   CMACing, calculating subkeys, etc.

aes.h			=> AES interface used by faucard_getuid.c and
		   	   faucard-aes-example. Can be implemented with
			   every AES implementation providing single block
			   or CBC mode.
aes-openssl.c		-> Thin wrapper around OpenSSL AES functions
aes-rijndael.c		-> Thin wrapper around Rijndael reference implementation

random.h		=> RNG interface definition for faucard_getuid.c
random-openssl.c	-> Thin wrapper around OpenSSL RAND_bytes function
random-unix.c		-> Random number interface on Unix reading /dev/urandom
			   or using random()
random-windows.c	-> Random number interface on Windows using
			   CryptGenRandom()

hexdump.h		=> Prints out debug hexdumps

getuid-key.h		=> Dummy key material
getuid-key-faucard.h	=> Private FAU key material
