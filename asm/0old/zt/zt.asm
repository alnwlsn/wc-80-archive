;this is the test program for Alnwlsn's Z80 computer: WC-80
;it will run (from ROM) at boot and test everything out.
qcpy equ 5000h ;ammount of ROM to copy over to RAM when booting
charRom0P equ 560h
charRom1P equ 1560h
charRom2P equ 2560h
bootscreenP equ 3560h
org 0
ld sp,7fffh ;stack in low [norm] ram
;copy the first 1K of rom to the ram (while in rom mode, writes will write to the ram)
ld de,0
ld hl,0
ld bc,qcpy
ldir

ld a,16      ;set mode to RAM  [normal banks] and LOCAL
out (0x78), a
ld a, 'W'     ;write "WC 0" to LED
out (0x77), a
ld a, 'C'
out (0x76), a
ld a, '0'
out (0x74), a

;the test: add 48+1+3+4 = 56 = ascii "8" --> write to LED
ld c,0

;test low ram [normal]
ld a,48
ld (4000h),a
ld a,0
ld a,(4000h)
add a,c
ld c,a
out (0x75), a ;write to led

;test high ram [normal and alt]
ld a,1
ld (0A000h),a

ld a,80 ;to ram [high alt]
out (0x78), a
ld a,3
ld (0A000h),a

ld a,16 ;to ram [high norm]
out (0x78), a
ld a,(0A000h)
add a,c
ld c,a
out (0x75), a ;write to led

ld a,80 ;to ram [high alt]
out (0x78), a
ld a,(0A000h)
add a,c
ld c,a
out (0x75), a ;write to led

;copy some code to high alt ram
push bc
ld de,0b000h
ld hl,block1
ld bc,1024
ldir
pop bc
jp 0b000h ;jump to block1 in highram

;test low ram [alt] (this code runs in high alt ram)
block1:
ld a,112 ;to ram [high alt, low alt] 
out (0x78), a
ld a,4
ld (04000h),a
ld a,0
ld a,(04000h)
add a,c
ld c,a
ld a,80 ;to ram [high alt, low norm] 
out (0x78), a
jp block2

block2:
ld a,16 ;back to ram [high low norm] 
out (0x78), a
ld a, c
out (0x75), a ;write (hopefully "8") to led

clearRAM: ;clear all ram in alts and main
ld a,16 ;back to ram [high low norm] 
out (0x78), a
;clear alt low first
ld de,8000h
ld hl,clearRamBlock1
ld bc,64
ldir
jp 8000h
clearRamBlock1:
ld a,48 ;ram [high norm low alt] 
out (0x78), a
ld hl,0
crb1A:
ld a,0
ld (hl),a
inc hl
ld a,80h
cp h
jr nz,crb1A
ld a,16 ;back to ram [high low norm] 
out (0x78), a
jp clearRamBlock2
clearRamBlock2:
ld hl,8000h
crb2A:
ld a,0
ld (hl),a
inc hl
ld a,0
cp h
jr nz,crb2A
ld a,80 ;to ram [high alt, low norm] 
out (0x78), a
clearRamBlock3:
ld hl,8000h
crb3A:
ld a,0
ld (hl),a
inc hl
ld a,0
cp h
jr nz,crb3A
ld a,16 ;back to ram [high low norm] 
out (0x78), a
clearRamBlock4:
ld hl,qcpy ;but don't clear before this
crb4A:
ld a,0
ld (hl),a
inc hl
ld a,80h
cp h
jr nz,crb4A

ld a,144 ;allow other than just LOCAL
out (0x78), a
;**************************************************************************************************************************************
;load video tests into video rams

ld a,0x81
out (0x73), a
ld de,0f000h
ld hl,charRom0P
ld bc,01000h
ldir
ld a,0x00
out (0x73), a
ld de,0f000h
ld hl,bootscreenP
ld bc,01000h
ldir

ld a,0x00      ;load mc6845 params
out (0x70),a
ld a,0x7e
out (0x71),a
ld a,0x01
out (0x70),a
ld a,0x50
out (0x71),a
ld a,0x02
out (0x70),a
ld a,0x61
out (0x71),a
ld a,0x03
out (0x70),a
ld a,0x09
out (0x71),a
ld a,0x04
out (0x70),a
ld a,0x1e
out (0x71),a
ld a,0x05
out (0x70),a
ld a,0x07
out (0x71),a
ld a,0x06
out (0x70),a
ld a,0x19
out (0x71),a
ld a,0x07
out (0x70),a
ld a,0x1c
out (0x71),a
ld a,0x08
out (0x70),a
ld a,0x03
out (0x71),a
ld a,0x09
out (0x70),a
ld a,0x07
out (0x71),a
ld a,0x0c
out (0x70),a
ld a,0x00
out (0x71),a
ld a,0x0d
out (0x70),a
ld a,0x00
out (0x71),a

jp dskyMonStart

delayA:
push bc
push af
ld a,255
ld b,255
delayA_loop2:
nop
djnz delayA_loop2
dec a
jr nz, delayA_loop2
pop af
pop bc
ret

;space for some variables for dskymon
;             : DB "0123456789abcdef",0
dskyMonDatMAddr:  DB 0,0
dskyMonDatIOAddr: DB 0
dskyMonDatCall:   DB 0,0
dskyMonMsgRegs2:DB "AFBCDEHL"
dskyMonDatRegs: DB 0,0,0,0,0,0,0,0
dskyMonDatRegP: DB 0
dskyMonMsgMemA: DB "MEM   *A     D  ",0
dskyMonMsgMemD: DB "MEM    A    *D  ",0
dskyMonMsgIOA:  DB "IO    *A     D  ",0
dskyMonMsgIOD:  DB "IO     A    *D  ",0
dskyMonMsgJump: DB "JUMP   A        ",0
dskyMonMsgCall: DB "CALL   A        ",0
dskyMonMsgRegs: DB "REGS            ",0
dskyMonStart:
	ld hl,0x5000;
	ld (dskyMonDatMAddr),hl
jp dskyMonMemMode

dskyMonMemModeAddr: 
	ld hl,dskyMonMsgMemA
	ld c,0x6f
	call ioStringPrint
	ld hl,(dskyMonDatMAddr)
	ld c,0x67
	call inputKey16 
	ld (dskyMonDatMAddr),hl
	;any enter key moves to data mode
dskyMonMemMode:
	ld hl,dskyMonMsgMemD
	ld c,0x6f
	call ioStringPrint
	ld hl,(dskyMonDatMAddr)
	ld c,0x67
	call ioPrintHex16
	ld c,0x61
	ld a,(hl) ;read data and display
	call inputKey8
	cp "X"
	jp z,dskyMonMemMode_Write ;write memory 
	cp "("
	jp z,dskyMonMemMode_Dec ;dec RAM address
	cp ")"
	jp z,dskyMonMemMode_Inc ;inc RAM address
	cp "M"
	jp z,dskyMonMemModeAddr ;enter new ram address
	cp "I"
	jp z,dskyMonIOModeAddr ;enter new io address
	cp "V"
	jp z,dskyMonMemMode_Read ;read value (ok, but make it obvious)
	cp "J"
	jp z,dskyMonCallMode
	cp "K"
	jp z,dskyMonRegMode
	jp dskyMonMemMode

dskyMonMemMode_Write:
	ld a,b
	ld (hl),a
	ld a,"W"
	out (0x6a),a
	call dskyMonBlinkDelay
	ld a," "
	out (0x6a),a
	jp dskyMonMemMode
dskyMonMemMode_Dec:
	dec hl
	ld (dskyMonDatMAddr),hl
	jp dskyMonMemMode
dskyMonMemMode_Inc:
	inc hl
	ld (dskyMonDatMAddr),hl
	jp dskyMonMemMode
dskyMonMemMode_Read:
	ld a,"R"
	out (0x6b),a
	call dskyMonBlinkDelay
	ld a," "
	out (0x6b),a
	jp dskyMonMemMode
	
dskyMonBlinkDelay:
	push af
	push bc
	ld b,255
	ld a,16
	dskyMonBlinkDelay_loop1:
	nop
	djnz dskyMonBlinkDelay_loop1
	dec a
	cp 0
	jr nz, dskyMonBlinkDelay_loop1
	pop bc
	pop af
	ret
	
dskyMonIOModeAddr:
	ld hl,dskyMonMsgIOA
	ld c,0x6f
	call ioStringPrint
	ld a,(dskyMonDatIOAddr)
	ld c,0x67
	call inputKey8
	ld a,b
	ld (dskyMonDatIOAddr),a
	;any enter key moves to data mode
dskyMonIOMode:
	ld hl,dskyMonMsgIOD
	ld c,0x6f
	call ioStringPrint
	ld a,(dskyMonDatIOAddr)
	ld c,0x67
	call ioPrintHex8
	ld c,a
	in a,(c) ;read data from io address and display
	ld c,0x61
	call inputKey8
	cp "X"
	jp z,dskyMonIOMode_Write ;write 
	cp "("
	jp z,dskyMonIOMode_Dec ;dec RAM address
	cp ")"
	jp z,dskyMonIOMode_Inc ;inc RAM address
	cp "I"
	jp z,dskyMonIOModeAddr ;enter new ram address
	cp "M"
	jp z,dskyMonMemModeAddr ;enter new io address
	cp "V"
	jp z,dskyMonIOMode_Read ;read value (ok, but make it obvious)
	cp "J"
	jp z,dskyMonCallMode
	cp "K"
	jp z,dskyMonRegMode
	jp dskyMonIOMode

dskyMonIOMode_Write:
	ld a,(dskyMonDatIOAddr)
	ld c,a
	ld a,b
	out (c),a
	ld a,"W"
	out (0x6a),a
	call dskyMonBlinkDelay
	ld a," "
	out (0x6a),a
	jp dskyMonIOMode
dskyMonIOMode_Dec:
	ld a,(dskyMonDatIOAddr)
	dec a
	ld (dskyMonDatIOAddr),a
	jp dskyMonIOMode
dskyMonIOMode_Inc:
	ld a,(dskyMonDatIOAddr)
	inc a
	ld (dskyMonDatIOAddr),a
	jp dskyMonIOMode
dskyMonIOMode_Read:
	ld a,"R"
	out (0x6b),a
	call dskyMonBlinkDelay
	ld a," "
	out (0x6b),a
	jp dskyMonIOMode

dskyMonCallMode:
	ld hl,dskyMonMsgCall
	ld c,0x6f
	call ioStringPrint
	ld hl,(dskyMonDatCall)
	ld c,0x67
	call inputKey16 
	ld (dskyMonDatCall),hl
	cp "X"
	jp z,dskyMonCallMode_Call
	cp "M"
	jp z,dskyMonMemModeAddr ;enter new ram address
	cp "I"
	jp z,dskyMonIOModeAddr ;enter new io address
	cp "J"
	jp z,dskyMonJumpMode
	cp "K"
	jp z,dskyMonRegMode
	dskyMonCallMode_ret:
	jp dskyMonMemMode
	
dskyMonJumpMode:
	ld hl,dskyMonMsgJump
	ld c,0x6f
	call ioStringPrint
	ld hl,(dskyMonDatCall)
	ld c,0x67
	call inputKey16 
	ld (dskyMonDatCall),hl
	cp "X"
	jp z,dskyMonJumpMode_Jump
	cp "M"
	jp z,dskyMonMemModeAddr ;enter new ram address
	cp "I"
	jp z,dskyMonIOModeAddr ;enter new io address
	cp "J"
	jp z,dskyMonCallMode
	cp "K"
	jp z,dskyMonRegMode
	dskyMonJumpMode_ret:
	jp dskyMonMemMode
	
dskyMonJumpMode_Jump:
	push hl
	pop iy
	call dskyMon_loadregs
	jp (iy)
	
dskyMonCallMode_Call:
	ld de,dskyMonCallMode_Call2
	push de
	push hl
	call dskyMon_loadregs
	ret ;jumps to hl
	dskyMonCallMode_Call2: ;returns here
	call dskyMon_saveregs
	jp dskyMonRegMode
	
	
dskyMon_loadregs:
	ld hl,dskyMonDatRegs
	ld a,(hl)
	ld b,a
	inc hl
	ld a,(hl)
	ld c,a
	push bc
	inc hl
	ld a,(hl)
	ld b,a
	inc hl
	ld a,(hl)
	ld c,a
	push bc
	inc hl
	ld a,(hl)
	ld b,a
	inc hl
	ld a,(hl)
	ld c,a
	push bc
	inc hl
	ld a,(hl)
	ld b,a
	inc hl
	ld a,(hl)
	ld c,a
	push bc
	pop hl
	pop de
	pop bc
	pop af
	ret

dskyMon_saveregs:
	push hl
	push de
	push bc
	push af
	ld hl,dskyMonDatRegs
	pop bc
	ld a,b
	ld (hl),a
	ld a,c
	inc hl
	ld (hl),a
	pop bc
	ld a,b
	inc hl
	ld (hl),a
	ld a,c
	inc hl
	ld (hl),a
	pop bc
	ld a,b
	inc hl
	ld (hl),a
	ld a,c
	inc hl
	ld (hl),a
	pop bc
	ld a,b
	inc hl
	ld (hl),a
	ld a,c
	inc hl
	ld (hl),a
	ret
	
dskyMonRegMode:
	ld hl,dskyMonMsgRegs
	ld c,0x6f
	call ioStringPrint
	ld hl,dskyMonMsgRegs2
	ld a,(dskyMonDatRegP)
	ld b,0
	ld c,a
	add hl,bc
	ld a,(hl) ;contains register with name (ex "A")
	out (0x63),a
	ld hl,dskyMonDatRegs
	add hl,bc
	ld a,(hl) ;contains "register" contents
	ld c,0x61
	call inputKey8
	cp "X"
	jp z,dskyMonRegMode_Write ;write 
	cp "("
	jp z,dskyMonRegMode_Dec ;dec RAM address
	cp ")"
	jp z,dskyMonRegMode_Inc ;inc RAM address
	cp "I"
	jp z,dskyMonIOModeAddr ;enter new ram address
	cp "M"
	jp z,dskyMonMemModeAddr ;enter new io address
	cp "V"
	jp z,dskyMonRegMode_Read ;read value (ok, but make it obvious)
	cp "J"
	jp z,dskyMonCallMode

	jp dskyMonRegMode
	
dskyMonRegMode_Write:
	ld a,b
	ld (hl),a
	ld a,"W"
	out (0x6a),a
	call dskyMonBlinkDelay
	ld a," "
	out (0x6a),a
	jp dskyMonRegMode
dskyMonRegMode_Dec:
	ld a,(dskyMonDatRegP)
	dec a
	cp 255
	jp nz, dskyMonRegMode_Dec2
	ld a,7
	dskyMonRegMode_Dec2:
	ld (dskyMonDatRegP),a
	jp dskyMonRegMode
dskyMonRegMode_Inc:
	ld a,(dskyMonDatRegP)
	inc a
	cp 8
	jp nz, dskyMonRegMode_Inc2
	ld a,0
	dskyMonRegMode_Inc2:
	ld (dskyMonDatRegP),a
	jp dskyMonRegMode
dskyMonRegMode_Read:
	ld a,"R"
	out (0x6b),a
	call dskyMonBlinkDelay
	ld a," "
	out (0x6b),a
	jp dskyMonRegMode


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
	
seek charRom0P
incbin "font-8x8-c64U.bin"

seek charRom1P
incbin "font-8x8-c64L.bin"

seek charRom2P
incbin "font-cp-437.bin"

seek bootscreenP
incbin "bootscreen.bin"