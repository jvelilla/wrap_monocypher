@echo on
title post_process script

rem copy c file is there any
rem copy .\manual_wrapper\c\src\*.c  .\generated_wrapper\c\src -- example

rem copy Makefile script
copy Makefile-win.SH  .\generated_wrapper\c\src 

cd generated_wrapper/c/src/
finish_freezing -library

cd ..
cd .. 
cd ..
cd C/include/src/
finish_freezing -library

