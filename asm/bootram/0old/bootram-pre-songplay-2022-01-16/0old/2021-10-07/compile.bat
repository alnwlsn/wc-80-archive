yaza boot0.asm
yaza boot0.asm --lst
yaza whalt.asm
del flash.bin
type nul >> flash.bin
type boot0.bin >> flash.bin
type whalt.bin >> flash.bin
type level2rs-16k.bin >> flash.bin
pause