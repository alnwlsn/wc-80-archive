@echo off
yaza extloader.asm
yaza extloader.asm --lst
loaderloader.py
echo call 3200 and then
pause
z80ard.py eww 0 dol.bin