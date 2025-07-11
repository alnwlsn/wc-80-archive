;nanomon - simple shared ram control program
org 0x3200

ld a,0 ;allow external ram
out (0x72),a
ld a,(exBankReg)
out (0x7c),a
ld hl,0x8000
ld (addressReg),hl

main:
	ld a,(controlReg)
	cp 0
	jr nz,main

comparse:
	;write dp ram externally here
	ld a,(controlReg)
	cp 1
	jr z, sWriteEx
	cp 255
	ret z
	jr comparse

sWriteEx:
	ld a,(exBankReg)
	out (0x7c),a
	ld hl,(addressReg)
	ld a,(dataReg)
	ld (hl),a
	inc hl
	ld (addressReg),hl
	ld de,0xa001
	or a ;cp hl,de
	sbc hl,de
	add hl,de
	jr z,nextExBank
	jr main
	nextExBank:
		ld hl,0x8000
		ld (addressReg),hl
		ld a,(exBankReg)
		inc a
		ld (exBankReg),a
		out (0x7c),a
		jr main


seek 0x80
org 0x3280
controlReg: db 0x00
dataReg: db 0x00
addressReg: db 0x00, 0x00
exBankReg: db 0x00