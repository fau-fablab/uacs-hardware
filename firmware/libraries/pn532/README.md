Files
-----

* `faucard_getuid.c, faucard_getuid.h`
  * Implementation of reading the FAUcard UID including detailed description of commands. Only needs a callback-function to talk to the reader.

* `desfire_functions.c, desfire_functions.h`
  * DESfire functions needed by faucard_getuid.c like CMACing, calculating subkeys, etc.

* `aes.h`
  * AES interface used by faucard_getuid.c and faucard-aes-example. Can be implemented with every AES implementation providing single block or CBC mode.

* `aes-openssl.c`
  * Thin wrapper around OpenSSL AES functions

* `aes-rijndael.c`
  * Thin wrapper around Rijndael reference implementation

* `random.h`
  * RNG interface definition for faucard_getuid.c

* `random-openssl.c`
  * Thin wrapper around OpenSSL RAND_bytes function

* `hexdump.h`
  * Prints out debug hexdumps

* `getuid-key.h`
  * Dummy key material
