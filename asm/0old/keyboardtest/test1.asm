;testing the keyboard option select port
org 0x4000
loop:
ld a,b
inc a
ld b,a
out (0x78),a
out (0x77),a

delay: 
	ld de,0x1000
	delayLoop:
	nop
	dec de
	ld a,d
	or e
	jr nz,delayLoop

jp loop