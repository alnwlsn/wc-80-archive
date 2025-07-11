org 0x4000
ld de,0x400
ld hl,0x3000
loop:
	ld a,0
	ld (hl),a
	inc hl
	dec de
	ld a,d
	or e
	jr nz,loop
ret