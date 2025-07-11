;exmload - program for loading into external ram in 128 byte chunks. For use in srmem area 
orgAdr equ 0x3000
org orgAdr

ld sp,0x33fe
ld a,0x00
out (0x73),a

main:
	commandStop: ;wait for command = 0
	call commandRead
	cp 0
	jr nz, commandStop	
	restat: ;set status = 0
		ld a,0
		ld (status),a
		ld a,(status)
		cp 0
		jr nz, restat
	mainInner: 
		call commandRead ;wait status != 0
		cp 0
		jr z, mainInner
		cp 1
		jp z, writeVerify128
		cp 2
		jp z, read128
		cp 255
		jp z,0x0000
		jr main

commandRead: ;read command byte 2x, and return when they match, with value in a (hacky fix)
	ld a,(command)
	ld b,a
	ld a,(command)
	cp b
	jr nz,commandRead
	ret

writeVerify128:
	call showAdr
	ld a,(adrH)
	push af
	ld a,(adrM)
	push af
	ld a,(adrL)
	push af 
	call write128
	pop af
	ld (adrL),a
	pop af
	ld (adrM),a
	pop af
	ld (adrH),a
	call verify128
	ld a,3
	ld (status),a
	jr z, main
	ld a,2
	ld (status),a
	jp main

write128:
	ld hl,buffer
	ld b,128
	write128Loop:
		push bc
		ld a,(hl)
		inc hl
		push hl
		push af
		call readyAdr24
		pop af
		ld (hl),a
		call incAdr24
		pop hl
		pop bc
		djnz write128Loop
	ret

read128:
    call showAdr
	ld hl,buffer
	ld b,128
	read128Loop:
		push bc
		push hl
		call readyAdr24
		ld a,(hl)
		pop hl
		ld (hl),a
		inc hl
		push hl
		call incAdr24
		pop hl
		pop bc
		djnz read128Loop
	ld a,1
	ld (status),a
	jp main

verify128: ;returns with zero flag set if match
	ld hl,buffer
	ld b,128
	ld a,0
	ld (verify128MismatchV),a
	verify128Loop:
		push bc
		push hl
		call readyAdr24
		ld a,(hl)
		pop hl
		ld c,a
		ld a,(hl)
		cp a,c
		jr nz,verify128Mismatch
		verify128MismatchRet:
		inc hl
		push hl
		call incAdr24
		pop hl
		pop bc
		djnz verify128Loop
	ld a,(verify128MismatchV)
	cp 0
	ret
	verify128Mismatch:
		ld a,1
		ld (verify128MismatchV),a
		jr verify128MismatchRet
	verify128MismatchV: db 0x00

incAdr24:  ;increase the 24 bit address in the 3 adr bytes
	ld hl,adrH
	ld c,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld e,(hl)
	inc de
	ld a,e
	or d
	jr z,inc2
	inc2ret:
	ld (hl),e
	dec hl
	ld (hl),d
	dec hl
	ld (hl),c
	ret
	inc2:
		inc c
		jr inc2ret
		
readyAdr24: ;with 3 byte adr byte address, sets up slot2 in exmem (0xc000) and return with hl pointing to the correct thing
	ld hl,adrH
	ld c,(hl)
	inc hl
	ld a,0b00011111
	and (hl)
	ld d,a
	ld a,(hl)
	inc hl
	ld e,(hl)
	rlca
	rlca
	rlca
	and 7
	ld b,a
	ld a,c
	rlca
	rlca
	rlca
	and 0b00111000
	or b
	;a now contains bank number; set it
	out (0x7e),a
	nop
	ld hl,0xc000
	add hl,de
	;hl now contains address within exmem slot2
	ret

; ;borrowed debug code
showAdr:
	ld a,(adrH)
	ld c,0x65
	call ioPrintHex8
	ld a,(adrM)
	ld c,0x63
	call ioPrintHex8
	ld a,(adrL)
	ld c,0x61
	call ioPrintHex8
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

seek 0x3300-orgAdr
org 0x3300

command: db 0x00
status: db 0x00	

adrH: db 0x00
adrM: db 0x00
adrL: db 0x00

buffer: ;128 byte area
seek buffer-orgAdr+127
db 0xff


seek 0x33fd-orgAdr
db 0xff