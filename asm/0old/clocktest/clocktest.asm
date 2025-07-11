;demo program for testing out the DS1513 Phantom Time Chip (Realtime clock)

org 0x3000
burnram equ 0x8000 ;will be written to by the clock read/write functions. Must be in address range of clock chip
monaddr equ 0x4000 ;monitor address, for a return from this program

txb:
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00

rxb:
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00
db 0x00

seq:
db 0xc5
db 0x3a
db 0xa3
db 0x5c
db 0xc5
db 0x3a
db 0xa3
db 0x5c

start:
call sendSeq
ld hl,rxb
call clockRead
jp monaddr

start2:
call sendSeq
ld hl,txb
call clockWrite
jp monaddr 

disp8: ;read the clock chip and display the read data in hex on the dsky display (from MS to LS left to right)
call sendSeq
ld hl,rxb
call clockRead
ld c,0x61
ld hl,rxb
disp8loop1:
ld a,(hl)
call ioPrintHex8
inc hl
inc c
inc c
ld a,0x71
cp c
jr nz,disp8loop1
;in a,(0x64) ;check to see if any key in dsky J row is pressed
;cp 0xff
;jr z,disp8
;jp monaddr
;********************************display on built in led displays on 0x74-0x77***********************
ld a,(rxb) ;check 10ths of seconds
and 0xf0
cp 0x90
jr z,disp8blank
ld a,(rxb+3) ;minutes
ld c,0x77
call ioPrintHex8
ld a,(rxb+2) ;seconds
ld c,0x75
call ioPrintHex8
jr disp8
disp8blank: ;"blink" off display to show seconds
ld a,0
out (0x77),a
out (0x76),a
out (0x75),a
out (0x74),a
jr disp8

sendSeq:   ;writes the magic sequence to the clock chip. Uses one byte of extra ram.
ld a,(burnram) ;inital read to reset sequence recognizer pointer inside clock chip
ld hl,seq
call clockWrite
ret

clockWrite: ;writes 8 bytes to the clock chip, starting with the first byte at HL
ld c, 8
loop2:
ld b, 8
ld a,(hl)
loop1:
ld (burnram),a
rra
djnz loop1
inc hl
dec c
ld a,c
cp 0
jr nz,loop2
ret

clockRead: ;reads 8 bytes from clock chip, places first byte at HL
ld c, 8
loop4:
ld b, 8
loop3:
and 0b11111110
ld d,a
ld a,(burnram)
and 1 ;keep only D0
add a,d
rrca
djnz loop3
ld (hl),a
inc hl
dec c
ld a,c
cp 0
jr nz,loop4
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
