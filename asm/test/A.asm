org 0x3200


setupSoundBoard:
	ld hl,LT6903_357
	ld a,0b10110100
	call ltcFset
	ld hl,LT6903_1431
	ld a,0b10011100
	call ltcFset
	ld hl,LT6903_767
	ld a,0b10101100
	call ltcFset
	
	ld a,0b00111100 ;resets the sound chip, and thus clears the interrupt exerted by ym262
	out (0xbf),a 
	call wait
	ld a,0b11111100
	out (0xbf),a 
	ret

ltcFset: ;set the frequency of the LTC6903. Call with base value in A, and pointer to bit sequence in HL
	;base value is chip select of interest clear, other chip selects set, and sdi and sck clear
	;sequence is bytes with value 0 or 1, 16 bytes long, to represent the bits sent over SPI. D15 is first.
	ld c,a
	ld b,16
	ltcFsetLoop1:
	ld a,(hl)
	or c
	out (0xbf),a ;clk low
	ld a,(hl)
	or c
	or 0x02
	out (0xbf),a ;clk high
	inc hl
	djnz ltcFsetLoop1
	ld a,c
	out (0xbf),a ;done
	ret

LT6903_357: ;sequence for setting the LT6903 clock to 3.57 MHz
db 1,0,1,1,1,1,0,0,1,1,1,1,1,0,0,0

LT6903_1431: ;sequence for setting the LT6903 clock to 14.31 MHz
db 1,1,0,1,1,1,0,0,1,1,1,1,1,1,0,0

LT6903_767: ;sequence for setting the LT6903 clock to 7.67 MHz
db 1,1,0,0,1,1,1,0,0,1,0,0,0,0,0,0

wait: 
	ld de,0x1000
	waitLoop:
	nop
	dec de
	ld a,d
	or e
	jr nz,waitLoop
	ret


; ioPrintHex8: ;write (on ascii LEDs) the 2 character hex value of A, 
             ; ;starting with left most digit address of C
	; ld b,a
	; and 0xf0
	; rrca
	; rrca
	; rrca
	; rrca
	; and 0x0f
	; add a,0x30
	; cp 0x3a ;if carry, 0x0a>a
	; jr c,ioPrintHex8_1
	; add a,0x07
	; ioPrintHex8_1:
	; out (c),a
	; dec c
	; ld a,b
	; and 0x0f
	; add a,0x30
	; cp 0x3a
	; jr c,ioPrintHex8_2
	; add a,0x07
	; ioPrintHex8_2:
	; out (c),a
	; ret

	

