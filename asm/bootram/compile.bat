yaza conway.asm
yaza boot0.asm
yaza boot0.asm --lst
yaza whalt.asm
del flash.bin
type nul >> flash.bin

type boot0.bin >> flash.bin

type level2rs-16k.bin >> flash.bin
type level2rs-jmp-16k.bin >> flash.bin
type fontsA.bin >> flash.bin
type fontsB.bin >> flash.bin
type model3.BIN >> flash.bin
type wc-hpl.BIN >> flash.bin

pause