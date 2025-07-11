;prints the contents of the MC6845 Light Pen register

org 0x4560

screenAddr equ 0xeffa ;start of screen address minus the light pen offset


main:
	ld a,0x10
	out (0x70),a
	in a,(0x71)
	ld h,a
	ld a,0x11
	out (0x70),a
	in a,(0x71)
	ld l,a
	ld c,0x63
	call ioPrintHex16
	ld bc,screenAddr
	add hl,bc
	ld a,r
	ld (hl),a
	jp main

ioPrintHex16:
	push af
	push bc
	ld a, h
	call ioPrintHex8
	dec c
	dec c
	ld a, l
	call ioPrintHex8
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
