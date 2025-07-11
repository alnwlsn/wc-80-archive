;DPIO - for reading and writing to whereever in z80 space using a few bytes in the dual port ram as registers
;keep it simple - reads / writes just 1 byte at a time
;this is pretty much driven by whatever is on the other side of the dual port RAM
orgAdrDPIO equ 0x3000
stackDPIO equ 0x33fe

commandDPIO equ 0x3300
statusDPIO equ commandDPIO+1
addlDPIO equ commandDPIO+2 ;low address - also address for io 
addhDPIO equ commandDPIO+3 ;high address
dataDPIO equ commandDPIO+4 ;data

;commands:
;0 - reset status to 0 / ready for next command
;1 - write [data] to [address]
;2 - read [data] at [address]
;3 - write IO port with [data]
;4 - read IO port to [data]
;5 - jump to [address]

;status
;0 - idle - waiting for next command
;1 - done - reset command 0 can be issued

org orgAdrDPIO
ld sp,stackDPIO
ld a,7			;go to fast clock
out (0x74),a 

ld c,0x6f
cleardispDPIO:
	ld a,0
	out (c),a
	dec c
	ld a,0x60
	cp c
	jp nz, cleardispDPIO

mainDPIO: 
	ld a,(commandDPIO) 
	cp 0
	jp nz, mainDPIO ;wait for command == 0
	
	ld hl,statusDPIO
	ld a,0
	call posWriteDPIO ;write 0 -> status
	
	waitCommandDPIO: ;wait for command != 0
		ld a,(commandDPIO)
		cp 0
		jp z, waitCommandDPIO
	
	cp 1
	jp z, writeDPIO
	cp 2
	jp z, readDPIO
	cp 3
	jp z, ioutDPIO
	cp 4 
	jp z, iinDPIO
	cp 5
	jp z, jjumpDPIO
	
	mainRetDPIO:
	call cdispDPIO
	ld hl,statusDPIO
	ld a,1
	call posWriteDPIO ;write 1 -> status
	
	jr mainDPIO

writeDPIO:
	ld a,(addlDPIO)
	ld l,a
	ld a,(addhDPIO)
	ld h,a
	ld a,(dataDPIO)
	ld (hl),a
	jr mainRetDPIO

readDPIO:
	ld a,(addlDPIO)
	ld l,a
	ld a,(addhDPIO)
	ld h,a
	ld a,(hl)
	ld (dataDPIO),a
	jr mainRetDPIO
	
ioutDPIO:
	ld a,(addlDPIO)
	ld c,a
	ld a,(dataDPIO)
	out (c),a
	jr mainRetDPIO

iinDPIO:
	ld a,(addlDPIO)
	ld c,a
	in a,(c)
	ld (dataDPIO),a
	jr mainRetDPIO

jjumpDPIO:
	ld a,(addlDPIO)
	ld l,a
	ld a,(addhDPIO)
	ld h,a
	jp (hl)

posWriteDPIO: ;only returns when value at (hl) matches a
	ld (hl),a
	ld b,a
	ld a,(hl)
	cp b
	ret z
	ld a,b
	jr posWriteDPIO
	
cdispDPIO:
	ld c,0x67
	ld a,(addhDPIO)
	call ioPrintHex8
	ld c,0x65
	ld a,(addlDPIO)
	call ioPrintHex8
	ld c,0x61
	ld a,(dataDPIO)
	call ioPrintHex8
	ret

;borrowed from the dskymon

ioPrintHex8: ;write (on ascii LEDs) the 2 character hex value of A, 
             ;starting with left most digit address of C
	push af
	push bc
	ld b,a
	and 0xf0
	rrca
	rrca
	rrca
	rrca
	call ioPrintHexNibble
	dec c
	ld a,b
	call ioPrintHexNibble
	pop bc
	pop af
	ret
	
ioPrintHexNibble: ;prints lower nibble of a as hex to io c
	push af
	and 0x0f
	cp 0x0a ;if carry, 0x0a>a
	jr c,ioPrintHexNibble_letters
	add a,0x37
	jr ioPrintHexNibble_X
	ioPrintHexNibble_letters:
	add a,0x30
	ioPrintHexNibble_X:
	out (c),a
	pop af
	ret
