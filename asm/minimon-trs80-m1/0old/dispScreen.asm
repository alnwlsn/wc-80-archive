org 0x3000

mainLoop:
	call dispScreenOnLEDs
	jr mainLoop

dispScreenOnLEDs: ;16 characters on the last line of the screen, on the DSKY LEDs.
				  ;use the arrow keys on DSKY to move window around
	ld hl,(screenDispPointer)
	
	call getDskyKey ;look to see if a dsky key is pressed
	cp 255
	jr nz,dispScreenCont1
	ld (dispScreenKeyStore),a ;a==255
	
	dispScreenCont1:
		ld b,a
		ld a,(dispScreenKeyStore) ;skip key press stuff if a key was not last released
		cp 255
		jr nz, dispScreenDisp
		ld a,b
	
		ld (dispScreenKeyStore),a
		cp 2
		call z,dispScreenDown
		cp 4
		call z,dispScreenLeft
		cp 8
		call z,dispScreenUp
		cp 6
		call z,dispScreenRight
		cp 5
		call z,dispScreenRestore
		ld (screenDispPointer),hl
	
	;part that actally reads from screen memory
	dispScreenDisp:
		ld c,0x70
		ld b,16 ;loop 16 times
		dispScreenOnLEDsLoop:
		dec c
		ld a,(hl)
		cp 32
		jp nc,dispScreenOnLEDs1
		;set bit 6 so trs-80 characters 0-31 will show as ascii 64-95
		or 0x40
		dispScreenOnLEDs1:
		out (c),a
		inc hl
		dec b
		jp nz,dispScreenOnLEDsLoop
		ret
	
	dispScreenDown:
		xor a
		ld bc,0x0040
		adc hl,bc
		ret
	dispScreenUp:
		xor a
		ld bc,0x0040
		sbc hl,bc
		ret
	dispScreenLeft:
		xor a
		ld bc,0x0010
		sbc hl,bc
		ret
	dispScreenRight:
		xor a
		ld bc,0x0010
		adc hl,bc
		ret
	dispScreenRestore:
		ld hl,0x3c00
		ret
		
;borrowed from dskymon; compactify later	
getDskyKey: ;returns A with key scancode (or 255 and z if no key pressed)
	push bc
	push de
	ld e,0
	ld d,1 ;will rotate to bit 0 in a moment
	getDskyKey_Col: ;read col at address c and return a
	ld a,0x60
	add a,d
	rlc d      ;generates 1,2,4,8 (the columns)
	ld c,a
	in a,(c) ;read col address
	ld c,a
	ld b,6
	getDskyKey_loop1:
	ld a,1
	and c
	push af
	rrc c
	pop af
	jr z, getDskyKeyCols_B 
	djnz getDskyKey_loop1
	;nothing found
	ld a,255
	jr getDskyKeyCols_X
	getDskyKeyCols_B: ;something found
	ld a,b
	getDskyKeyCols_X: ;
	;a is col keyboard scan code here (or 255 if not pressed)
	cp 255 ;check if no key was pressed
	ld b,a
	jr nz,getDskyKeyCols_Y
	ld a,d
	cp 16
	jr z,getDskyKey_Z
	ld b,a
	ld a,6
	add a,e
	ld e,a
	jr getDskyKey_Col
	getDskyKeyCols_Y: ;some key was pressed (get ready to return)
	;b has col scan
	ld a,b
	add a,e
	push hl
	ld hl,dskyKeyLUT ;lookup table base address
	ld b,0
	dec a
	ld c,a
	add hl,bc ;offset in LUT
	ld a,(hl) ;content of LUT
	pop hl
	jr getDskyKey_Exit
	getDskyKey_Z:
	;no key pressed
	ld a,255
	getDskyKey_Exit:
	cp 255 ;if nokey
	pop de
	pop bc
	ret
	dskyKeyLUT:
	DB "M"  ;M
	DB 0x0A ;A
	DB 0x07 ;7
	DB 0x04 ;4
	DB 0x01 ;1
	DB 0x00 ;0
	DB "I"  ;I
	DB 0x0B ;B
	DB 0x08 ;8
	DB 0x05 ;5
	DB 0x02 ;2
	DB "(" ;LEFT
	DB "J"  ;J
	DB 0x0C ;C
	DB 0x09 ;9
	DB 0x06 ;6
	DB 0x03 ;3
	DB ")" ;RIGHT
	DB "K"  ;K
	DB 0x0D ;D
	DB 0x0E ;E
	DB 0x0F ;F
	DB "V"  ;V
	DB "X"  ;X

ioPrintHex16: ;write (on ascii LEDs) the 2 character hex value of HL, 
              ;starting with left most digit address of C
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

ioPrintAsc:     ;writes ascii value of A to hpdl-1414 on C
				;writes lowercase as uppercase and above 7f as blank
	push af
	cp 0x61 ;a greater than = 0x61?
	jr c,ioPrintAsc_a ;no
	cp 0x7B ;less than 0x7b?
	jr nc,ioPrintAsc_a ;no
	sub 0x20 ;subtract to align with CAPS letters
	jr ioPrintAsc_b
	ioPrintAsc_a:
	cp 0x80 ;a greater than = 0x80?
	jr c,ioPrintAsc_b ;no
	ld a,0x00
	ioPrintAsc_b:
	out (c),a
	pop af
	ret
	
ioPrintHexAsc8: ;write (on ascii LEDs) the ascii representation of A,
				;and the 2 character hex value of A,
                ;starting with left most digit address of C
	push af
	push bc
	call ioPrintAsc
	dec c
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
	
programEnd:

screenDispPointer:
db 0x00
db 0x3c
dispScreenKeyStore:
db 0x00 ;is not 255 when a dsky key is still held

;extras
db 0x00
db 0x00
db 0x00