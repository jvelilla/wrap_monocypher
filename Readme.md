# wrap_monocypher
`wrap_monocypher` is an Eiffel binding of Monocypher C API](https://monocypher.org/) 
using [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.


`Monocypher` is an easy to use crypto library. It is:

Small. Sloccount counts under 2000 lines of code, small enough to allow audits. The binaries can be under 50KB, small enough for many embedded targets.
Easy to deploy. Just add monocypher.c and monocypher.h to your project. They compile as C99 or C++ and are dedicated to the public domain (CC0-1.0, alternatively 2-clause BSD).
Portable. There are no dependencies, not even on libc.
Honest. The API is small, consistent, and cannot fail on correct input.
Direct. The abstractions are minimal. A developer with experience in applied cryptography can be productive in minutes.

## Requirements 

*  [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.
*  [Mpnocypher C API](https://github.com/LoupVaillant/Monocypher)


## Download and  Install
Monocypher library is included in wrap_monocypher so you only need to run the install script.

### Windows

	install.bat

### Linux

	./install.sh

## Examples


### How to compile the C library glue code.

Before to use the examples you will need to compile the C glue code, go to 

	library/generated_wrapper/c/src

and run

	finish_freezing --library

It will copy the C lib `eif_monocypher.a` to `$ECF_CONFIG_PATH/C/spec/$(ISE_PLATFORM)/lib/`  or `eif_monocypher.lib`  to `$ECF_CONFIG_PATH/C/spec/$ISE_C_COMPILER/$ISE_PLATFORM/lib` 






