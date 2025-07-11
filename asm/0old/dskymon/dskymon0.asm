;WC-80 - Alnwlsn's Z80 computer
;DSKYMON - Display Keyboard Monitor
;for use with the external keypad/display
;on IO ports 60-6f

org 5000h
dmonStack equ 55ffh ;ammount of ROM to copy over to RAM when booting
dmonMem   equ 5600h

ld sp,dmonStack 

loop001:
call getDskyKey
ld c,6fh
call ioPrintHex8
jp loop001




ioStringPrint: ;print null-terminated strings on hpdl1414 leds
               ;takes c - starting address (left most; highest) digit of leds
			   ;     hl - starting address (lowest) of string
	push af
	push hl
	ioStringPrint_G:
	ld a,(hl)
	cp 0
	jr z,ioStringPrint_X
	out (c),a
	inc hl
	dec c
	jr ioStringPrint_G
	ioStringPrint_X:
	pop hl
	pop af
	ret

inputKey8: ;use keys to enter a 2 character (8 bit) hex character
           ;takes   c is address to display 2 characters when entering (io address of LED)
		   ;        a existing value to be displayed
		   ;returns b (entered data)
		   ;        a (returned key, z set if X key pressed)
	push de
	push bc
	ld d,a
	inputKey8_b:
	ld a,d
	call ioPrintHex8
	call getDskyKeyWait
	ld b,a
	and 0xf0
	;if z, key is 0-f buttons, otherwise, it isn't
	jr nz, inputKey8_c
	ld a,d   ;shift and add the key
	and 0x0f
	rlca
	rlca
	rlca
	rlca
	add a,b 
	ld d,a
	jr inputKey8_b
	inputKey8_c: ;non number key
	ld a,b
	cp "X" ;the X key (enter)
	inputKey8_X:
	ld e,d
	ld d,b
	pop bc
	ld a,d
	ld b,e
	pop de
	ret

inputKey16:;use keys to enter a 4 character (16 bit) hex character
           ;takes   c is address to display characters when entering (io address of LED)
		   ;        hl existing value to be displayed
		   ;returns hl (entered data)
		   ;        b,a (returned key, z set if X key pressed)
	push af
	push de
	push bc
	inputKey16_b:
	call ioPrintHex16
	call getDskyKeyWait
	ld b,a
	and 0xf0
	;if z, key is 0-f buttons, otherwise, it isn't
	jr nz, inputKey16_c
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld a,b
	add a,l
	ld l,a
	jr inputKey16_b
	inputKey16_c: ;non number key
	ld a,b
	cp "X" ;the X key (enter)
	inputKey16_X:
	pop bc
	ld b,a
	pop de
	pop af
	ld a,b
	ret

getDskyKeyWait: ;waits for all keys to be released, then waits for a key
	call getDskyKey
	jp nz,getDskyKeyWait
	getDskyKeyWaitB:
	call getDskyKey
	jp z,getDskyKeyWaitB
	ret

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