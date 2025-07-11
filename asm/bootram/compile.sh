#!/bin/bash
yaza conway.asm
yaza boot0.asm
yaza boot0.asm --lst
yaza whalt.asm
rm flash.bin

cat boot0.bin >> flash.bin

cat level2rs-16k.bin >> flash.bin
cat level2rs-jmp-16k.bin >> flash.bin
cat fontsA.bin >> flash.bin
cat fontsB.bin >> flash.bin
cat model3.bin >> flash.bin
cat wc-hpl.bin >> flash.bin
cat level2rs-16k-screen.bin >> flash.bin