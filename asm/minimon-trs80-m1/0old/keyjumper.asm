org 0x3000

    ld de,4015h
	call 0013h
	ld (store),a
	xor a
	ld a,(store)
	ret
	
store: db 0x00