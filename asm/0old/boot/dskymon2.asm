;WC-80 - Alnwlsn's Z80 computer
;DSKYMON - Display Keyboard Monitor
;for use with the external keypad/display
;on IO ports 60-6f

org 0000h
dmonStack equ 0x1000
ld sp,dmonStack 

ld hl,dskyMonDatRegBlank ;blank display
ld c,0x6f
call ioStringPrint
jr dskyMonMemMode ;jump to start of monitor program

;space for some variables for dskymon
;             :			DB "fedc ba98 7654 3210",0
dskyMonDatMAddr:  		DB 0,0x10
dskyMonDatIOAddr: 		DB 0
dskyMonDatCall:   		DB 0,0
dskyMonMsgRegsL:		DB "AFBCDEHL"
dskyMonDatRegs: 		DB 0,0,0,0,0,0,0,0
dskyMonDatRegP: 		DB 0
dskyMonDatRegBlank:		DB "                ",0
dskyMonMsgMemA:			DB "MEM  A",0
dskyMonMsgMemD:			DB "MEM  D",0
dskyMonMsgIOA:			DB "IO   A",0
dskyMonMsgIOD:			DB "IO   D",0
dskyMonMsgJump:			DB "JUMP A",0
dskyMonMsgCall:			DB "CALL A",0
dskyMonMsgRegs:			DB "REGS",0

dskyMonMemModeAddr: ;enter and edit address for mem data
	ld hl,dskyMonDatRegBlank
	call ioStringPrintL
	ld hl,dskyMonMsgMemA
	call ioStringPrintL
	ld hl,(dskyMonDatMAddr)
	ld c,0x67
	call inputKey16 
	ld (dskyMonDatMAddr),hl
	;any enter key moves to data mode
dskyMonMemMode: ;mem data edit mode
	ld hl,dskyMonMsgMemD
	call ioStringPrintL
	ld hl,(dskyMonDatMAddr)
	ld c,0x67
	call ioPrintHex16
	ld c,0x62
	ld a,(hl) ;read data and display
	call inputKey8
	cp "X"
	jr z,dskyMonMemMode_Write ;write memory 
	cp "("
	jr z,dskyMonMemMode_Dec ;dec RAM address
	cp ")"
	jr z,dskyMonMemMode_Inc ;inc RAM address
	cp "M"
	jr z,dskyMonMemModeAddr ;enter new ram address
	cp "I"
	jp z,dskyMonIOModeAddr  ;enter new io address
	cp "V"
	jr z,dskyMonMemMode_Read ;read value (ok, but make it obvious)
	cp "J"
	jp z,dskyMonCallMode
	cp "K"
	jp z,dskyMonRegMode
	jr dskyMonMemMode
dskyMonMemMode_Write:
	ld a,b
	ld (hl),a
	ld a,"W"
	call dskyMonStatIndicator
	jr dskyMonMemMode
dskyMonMemMode_Dec:
	dec hl
	ld (dskyMonDatMAddr),hl
	jr dskyMonMemMode
dskyMonMemMode_Inc:
	inc hl
	ld (dskyMonDatMAddr),hl
	jr dskyMonMemMode
dskyMonMemMode_Read:
	ld a,"R"
	call dskyMonStatIndicator
	jr dskyMonMemMode
	
dskyMonIOModeAddr: ;enter and edit address for io
    ld hl,dskyMonDatRegBlank
	call ioStringPrintL
	ld hl,dskyMonMsgIOA
	call ioStringPrintL
	ld a,(dskyMonDatIOAddr)
	ld c,0x66
	call inputKey8
	ld a,b
	ld (dskyMonDatIOAddr),a
dskyMonIOMode: ;any enter key moves to data mode
	ld hl,dskyMonMsgIOD
	call ioStringPrintL
	ld a,(dskyMonDatIOAddr)
	ld c,0x66
	call ioPrintHexAsc8
	ld c,a
	in a,(c) ;read data from io address and display
	ld c,0x62
	call inputKey8
	cp "X"
	jr z,dskyMonIOMode_Write ;write 
	cp "("
	jr z,dskyMonIOMode_Dec ;dec RAM address
	cp ")"
	jr z,dskyMonIOMode_Inc ;inc RAM address
	cp "I"
	jr z,dskyMonIOModeAddr ;enter new ram address
	cp "M"
	jp z,dskyMonMemModeAddr ;enter new io address
	cp "V"
	jr z,dskyMonIOMode_Read ;read value (ok, but make it obvious)
	cp "J"
	jp z,dskyMonCallMode
	cp "K"
	jp z,dskyMonRegMode
	jr dskyMonIOMode
dskyMonIOMode_Write:
	ld a,(dskyMonDatIOAddr)
	ld c,a
	ld a,b
	out (c),a
	ld a,"W"
	call dskyMonStatIndicator
	jr dskyMonIOMode
dskyMonIOMode_Dec:
	ld a,(dskyMonDatIOAddr)
	dec a
	ld (dskyMonDatIOAddr),a
	jr dskyMonIOMode
dskyMonIOMode_Inc:
	ld a,(dskyMonDatIOAddr)
	inc a
	ld (dskyMonDatIOAddr),a
	jr dskyMonIOMode
dskyMonIOMode_Read:
	ld a,"R"
	call dskyMonStatIndicator
	jr dskyMonIOMode
	
dskyMonCallMode: ;menu for CALL
	ld hl,dskyMonDatRegBlank
	call ioStringPrintL
	ld hl,dskyMonMsgCall
	call ioStringPrintL
	ld hl,(dskyMonDatMAddr)
	ld c,0x67
	call inputKey16 
	ld (dskyMonDatMAddr),hl
	cp "X"
	jr z,dskyMonCall ;do the call
	cp "M"
	jp z,dskyMonMemModeAddr ;enter new ram address
	cp "I"
	jp z,dskyMonIOModeAddr  ;enter new io address
	cp "J"
	jp z,dskyMonJumpMode
	cp "K"
	jp z,dskyMonRegMode
	jr dskyMonCallMode
dskyMonCall:
    ld de,$+9 ;return address (returns to line BANANNA)
	push de 
	push hl ;jump address
	call dskyMon_loadregs
	ret ;jump to HL^^^
	;BANANNA
	call dskyMon_saveregs
	jp dskyMonRegMode ;go to register mode to view register results
	
dskyMonJumpMode: ;menu for JUMP
	ld hl,dskyMonDatRegBlank
	call ioStringPrintL
	ld hl,dskyMonMsgJump
	call ioStringPrintL
	ld hl,(dskyMonDatMAddr)
	ld c,0x67
	call inputKey16 
	ld (dskyMonDatMAddr),hl
	cp "X"
	jr z,dskyMonJump ;do the jump
	cp "M"
	jp z,dskyMonMemModeAddr ;enter new ram address
	cp "I"
	jp z,dskyMonIOModeAddr  ;enter new io address
	cp "J"
	jp z,dskyMonCallMode
	cp "K"
	jp z,dskyMonRegMode
	jr dskyMonJumpMode
dskyMonJump:
	push hl ;jump address
	call dskyMon_loadregs
	ret ;jump to HL
	
dskyMon_loadregs: ;loads registers to ram
	ld hl,dskyMonDatRegs
	ld a,(hl) ;a
	ld b,a
	inc hl
	ld a,(hl) ;f
	ld c,a
	push bc   ;af -> bc [0]
	inc hl
	ld a,(hl) ;b
	ld b,a
	inc hl
	ld a,(hl) ;c
	ld c,a
	push bc   ;bc -> bc [1]
	inc hl
	ld a,(hl) ;d
	ld b,a
	inc hl
	ld a,(hl) ;e
	ld c,a
	push bc   ;de -> bc [2]
	inc hl
	ld a,(hl) ;h
	ld b,a
	inc hl
	ld a,(hl) ;l
	ld c,a
	push bc   ;hl -> bc [3]
	pop hl ;[3]
	pop de ;[2]
	pop bc ;[1]
	pop af ;[0]
	;registers loaded from storage in ram
	ret

dskyMon_saveregs: ;saves registers to ram
	push hl ;[0]
	push de ;[1]
	push bc ;[2]
	push af ;[3]
	ld hl,dskyMonDatRegs
	pop bc ;af
	ld a,b
	ld (hl),a
	ld a,c
	inc hl
	ld (hl),a
	pop bc ;bc
	ld a,b
	inc hl
	ld (hl),a
	ld a,c
	inc hl
	ld (hl),a
	pop bc ;de
	ld a,b
	inc hl
	ld (hl),a
	ld a,c
	inc hl
	ld (hl),a
	pop bc ;hl
	ld a,b
	inc hl
	ld (hl),a
	ld a,c
	inc hl
	ld (hl),a
	ret
	
dskyMonRegMode: ;display/edit registers before and after calls
	ld hl,dskyMonDatRegBlank
	call ioStringPrintL
	ld hl,dskyMonMsgRegs
	call ioStringPrintL
	ld a,(dskyMonDatRegP)
	ld c,0x69
	call ioPrintHexAsc8
	ld a,(dskyMonDatRegP)
	ld hl,dskyMonMsgRegsL
	ld c,a
	ld b,0
	add hl,bc
	ld a,(hl) ;label of register
	out (0x64),a 
	ld c,8 ;offset from start of labels to start of register values
	add hl,bc
	ld a,(hl) ;value of "register"
	ld c,0x62
	call inputKey8
	cp "X"
	jr z,dskyMonRegMode_Write ;write 
	cp "("
	jr z,dskyMonRegMode_Dec ;prev register
	cp ")"
	jr z,dskyMonRegMode_Inc ;next register
	cp "I"
	jp z,dskyMonIOModeAddr ;enter new ram address
	cp "M"
	jp z,dskyMonMemModeAddr ;enter new io address
	cp "J"
	jp z,dskyMonCallMode
	jr dskyMonRegMode
dskyMonRegMode_Write:
	ld a,b
	ld (hl),a
	ld a,"W"
	call dskyMonStatIndicator
	jr dskyMonRegMode
dskyMonRegMode_Dec:
	ld a,(dskyMonDatRegP)
	dec a
	cp 255
	jp nz, dskyMonRegMode_DecB
	ld a,7
	dskyMonRegMode_DecB:
	ld (dskyMonDatRegP),a
	jr dskyMonRegMode
dskyMonRegMode_Inc:
	ld a,(dskyMonDatRegP)
	inc a
	cp 8
	jp nz, dskyMonRegMode_IncB
	ld a,0
	dskyMonRegMode_IncB:
	ld (dskyMonDatRegP),a
	jr dskyMonRegMode
	


dskyMonStatIndicator: ;displays ascii in A @69, waits for key release, clears 69
	out (0x69),a
	call getDskyKeyRelease
	ld a," "
	out (0x69),a
	ret
	
ioStringPrintL: ;same as ioStringPrint, but always starts at 0x6f (left of leds)    
	ld c,0x6f
	call ioStringPrint
	ret

ioStringPrint: ;print null-terminated strings on hpdl1414 leds
               ;takes c - starting address (left most, highest) digit of leds
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
           ;takes   c is address to display 3 characters when entering (io address of LED)
		   ;        a existing value to be displayed
		   ;returns b (entered data)
		   ;        a (returned key, z set if X key pressed)
	push de
	push bc
	ld d,a
	inputKey8_b:
	ld a,d
	call ioPrintHexAsc8
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
	
getDskyKeyRelease: ;waits for all keys to be released
	call getDskyKey
	jr nz,getDskyKeyRelease
	ret

getDskyKeyWait: ;waits for all keys to be released, then waits for a key
	call getDskyKeyRelease
	getDskyKeyWaitB:
	call getDskyKey
	jr z,getDskyKeyWaitB
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
	
db "test1"
testcall1:
	out (0x74),a
	ld (0x4000),a
	ld a,b
	out (0x75),a
	ld (0x4001),a
	ld a,c
	out (0x76),a
	ld (0x4002),a
	ld a,d
	out (0x77),a
	ld (0x4003),a
	jp 0x0000

db "test2"
testcall2:
	out (0x74),a
	ld (0x4000),a
	ld a,b
	out (0x75),a
	ld (0x4001),a
	ld a,c
	out (0x76),a
	ld (0x4002),a
	ld a,d
	out (0x77),a
	ld (0x4003),a
	ld a,0x25
	ret