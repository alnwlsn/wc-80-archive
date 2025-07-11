;WC-80 COMPUTER BOOTLOADER - alnwlsn 2021
;to be stored at address 0x0000 in rom bank 0 (loads on boot)
org 0x0000
bootStack equ 0x2000
ld a,0x80    ;rom 0 -> slot 0 THIS SHOULD BE THE FIRST THING YOU DO WHEN SYSTEM BOOTS
out (0x70),a 
ld a,0x20    ;ram 0 -> slot 1
out (0x71),a

ld bc,0x1000   ;copy to RAM 
ld de,0x4000
ld hl,0x0000
ldir

ld a,0x20 ;ram 0 -> slot 0
out (0x70),a
;running from ram now *************************************************
ld a,0x21 ;ram 1 -> slot 1
out (0x71),a
ld a,0x22 ;ram 2 -> slot 2
out (0x72),a
ld a,0x23 ;ram 3 -> slot 3
out (0x73),a
ld sp,bootStack ;just use the same stack as we will later
jr vidSetup

seek 0x66
org 0x66
nmiLabel:
ld a," "    ;debug display 
out (0x74),a
out (0x75),a
out (0x76),a
out (0x77),a
jp bootMenu

vidSetup:
	;screen init - setup video RAM
	ld a,3       ;select font rom --> bank 3 (c000)
	out (0x73),a
	ld a,0xf3    ;video char ram
	out (0x5f),a 
	ld a,0x5f
	out (0x5e),a ;use all of 0x5000-0x5fff for video ram
	ld bc,0x1000 ;copy trs-80 font to char ram
	ld de,0x5000
	ld hl,0xf000
	ldir
	ld a,0xe6 ;clock speed and #of dot columns
	out (0x5f),a
	ld a,0x38 ;VBANK select & mask (0x3c00 for last 1K of VRAM)
	out (0x5e),a
	ld a,0x00
	ld b,a ;b - crtc register offset
	ld hl,trs80VideoTiming
	loopVidSetup:
		ld a,b
		cp 0x10
		jp z,vidSetupEnd
		out (0x5c),a
		ld a,(hl)
		out (0x5d),a
		inc b
		inc hl
		jr loopVidSetup
	trs80VideoTiming:
	;64x16 6x12 - 0xE6 timing - TRS80 mode, using last 1k of VRAM, at 0x3c00 - 0x38 VBANK
	db 0x69,0x40,0x50,0x08,0x14,0x0a,0x10,0x13,0x00,0x0b,0x00,0x00,0x0c,0x00,0x00,0x00
	vidSetupEnd:

ltcFset: ;set the frequency of the LTC6903 for the YM262 sound chip
	ld a,0x9c ;base value (0x80 & clk bit)
	ld c,a
	ld hl,LT6903_1431
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
	out (0xbf),a ;done.

	ld a,0x3c    ;resets the sound chip, and clears the interrupt
	out (0xbf),a 
	call wait
	ld a,0xbc
	out (0xbf),a 

	ld a,0x02    ;cassete sound port to no output on the sound board
	out (0xff),a 

ld a,"*"    ;debug display 
out (0x74),a
ld a,"N"
out (0x75),a
ld a,"M"
out (0x76),a
ld a,"I"
out (0x77),a

;hardware init
ld a,0x00 ;keyboard latch
out (0x78),a
ld a,0x80 ;expint extra ram
out (0x7c),a
out (0x7d),a
out (0x7e),a
out (0x7f),a
;floppy options
ld a,0x00
out (0xf1),a
out (0xf3),a
out (0xf4),a
out (0xf8),a
ld a,0x01
out (0xf6),a
ld a,0x80
out (0xf2),a
ld a,0xf8
out (0xf0),a
;clear some interrupts
ld a,(0x33fe) ;dual port ram interrupt
in a,(0xf6) ;clock interrupt
in a,(0xf6)

;show boot screen on video output
ld bc,1024 
ld de,0x3c00
ld hl,bootScreenImage
ldir

halt

;BOOT PROGRAM RUN *****************************************************
;in a,(0x61) ;check to see if any key in dsky M row is pressed
;cp 0xff
;jp nz,0x4000 ; if, then jump to 0x4000

;<when boot ram is done, please jump back to here>

;BOOT MENU ************************************************************
bootMenuText: DB "BOOT MENU",0
bootMenu:
	call clear
	ld hl,bootMenuText
	call ioStringPrintL
	bootMenuLoop:
	ld c,0x62
	ld a,0x00
	call inputKey8
	cp "M"
	jp z,dskyMonStartPoint
	cp "X"
	jr nz, bootMenuLoop
	ld a,b
	
bootBank: ;fill address space with RAM, clear it, copy a rom bank into ram at Slot 0, and jump to 0x0000
	;a contains rom bank to use
	push af
	
	;load in some ram banks (on board ram)
	ld a,0xA5; ram bank 5 -> slot 1
	out (0x71),a
	ld a,0xA6; ram bank 6 -> slot 2
	out (0x72),a
	ld a,0xA7; ram bank 7 -> slot 3
	out (0x73),a
	;and clear them
	ld hl,0x4000
	ld bc,0xC000
	call clearRam
	;do the same thing again to clear himem (if that board isn't installed, it will just clear board ram again)
	ld a,0
	out (0x7c),a
	ld a,1
	out (0x7d),a
	ld a,2
	out (0x7e),a
	ld a,3
	out (0x7f),a
	ld a,0x26; ram bank 6 -> slot 2
	out (0x72),a
	ld a,0x27; ram bank 7 -> slot 3
	out (0x73),a
	ld hl,0x8000
	ld bc,0x8000
	call clearRam
	
	pop af
	;load in ram and rom bank to copy
	or 0x80 ;no exram
	out (0x71),a ;rom bank -> slot 1
	ld a,0xa4
	out (0x72),a ;ram bank 4 -> slot 2, no exram
	ld bc,0x4000 ;copy 16k
	ld de,0x8000 ;copy to
	ld hl,0x4000 ;copy from
	ldir
	;slots 1 and 2 back to ram
	ld a,0x25; ram bank 5 -> slot 1
	out (0x71),a
	ld a,0x26; ram bank 6 -> slot 2
	out (0x72),a
	
	;copy jump code to slot 1
	ld bc,0x0006 ;copy 6
	ld de,0x4000 ;copy to
	ld hl,jump0code ;copy from
	ldir
	ld a,0x24 ;ram bank 4 ..> slot 0
	jp 0x4000 ;jump to jump code in slot 1
	jump0code: db 0xD3, 0x70, 0xC3, 0x00, 0x00
	

clearRam: ;zeros BC bytes starting at HL address
	ld a,b
	or c
	ret z
	ld a,0x00
	ld (hl),a
	dec bc
	inc hl
	jr clearRam
	ret


;WC-80 - Alnwlsn's Z80 computer ***********************************************
;DSKYMON - Display Keyboard Monitor
;for use with the external keypad/display
;on IO ports 60-6f
;also added functions to read and write to DS1513 Phantom Time Chip (RTC)

dskyMonStartPoint:
orgAddress equ dskyMonStartPoint ;origin address 
org orgAddress
ld sp,bootStack 

call dskyMon_saveregs
call clear
jp dskyMonMemMode ;jump to start of monitor program

;space for some variables for dskymon
;             :			DB "fedc ba98 7654 3210",0
dskyMonDatMAddr:  		DB 0x00,0x40
dskyMonDatIOAddr: 		DB 0
dskyMonMsgRegs3:        DB " A  F  B  C  D  E  H  L X0 X1 Y0 Y1 'A 'F 'B 'C 'D 'E 'H 'L  I "
dskyMonDatRegP: 		DB 0
dskyMonMsgMemA:			DB "MEM  A",0
dskyMonMsgMemD:			DB "MEM  D",0
dskyMonMsgIOA:			DB "IO   A",0
dskyMonMsgIOD:			DB "IO   D",0
dskyMonMsgJump:			DB "JUMP A",0
dskyMonMsgCall:			DB "CALL A",0
dskyMonMsgRegs:			DB "REGS",0
dskyMonMsgCopy:			DB "COPY",0
dskyMonMsgFill:			DB "FILL",0

dskyMonMemModeAddr: ;enter and edit address for mem data
	call clear
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
	call clear
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
	call clear
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
	call clear
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
	
dskyMon_saveregs: ;saves registers to ram
	;DB " A  F  B  C  D  E  H  L X0 X1 Y0 Y1 'A 'F 'B 'C 'D 'E 'H 'L  I "
	EXX
	ex af,af'        ;save from actual regs
	push hl ;19 20
	push de ;17 18
	push bc ;15 16
	push af ;13 14
	EXX
	ex af,af'
	push iy ;11 12
	push ix ;9 10
	push hl ;7 8
	push de ;5 6
	push bc ;3 4
	push af ;1 2
	call dskyMon_saveRegsC ;get HL with location for A
	pop bc ;af
	call dskyMon_saveregsB
	pop bc ;bc
	call dskyMon_saveregsB
	pop bc ;de
	call dskyMon_saveregsB
	pop bc ;hl
	call dskyMon_saveregsB
	pop bc ;ix
	call dskyMon_saveregsB
	pop bc ;iy
	call dskyMon_saveregsB
	pop bc ;af'
	call dskyMon_saveregsB
	pop bc ;bc'
	call dskyMon_saveregsB
	pop bc ;de'
	call dskyMon_saveregsB
	pop bc ;hl'
	call dskyMon_saveregsB
	ld a,i
	ld (hl),a ;save i
	ret
dskyMon_saveregsB:	;load bc into ram
	;pop af (example)
	ld a,b
	ld (hl),a ;save a
	ld a,c
	inc hl
	inc hl
	inc hl 
	ld (hl),a ;save f
	inc hl
	inc hl
	inc hl
	ret
dskyMon_saveRegsC: ;sets up HL with register RAM store address
	ld hl,dskyMonMsgRegs3 
	inc hl
	inc hl ;hl is now save location for reg A
	ret

dskyMon_loadregs: ;loads registers from ram
	;DB " A  F  B  C  D  E  H  L X0 X1 Y0 Y1 'A 'F 'B 'C 'D 'E 'H 'L  I "
	call dskyMon_saveRegsC ;get HL with location for A
	call dskyMon_loadregsB ;load bc with af values
	push bc ;af
	call dskyMon_loadregsB
	push bc ;bc
	call dskyMon_loadregsB
	push bc ;de
	call dskyMon_loadregsB
	push bc ;hl
	call dskyMon_loadregsB
	push bc ;ix
	call dskyMon_loadregsB
	push bc ;iy
	call dskyMon_loadregsB
	push bc ;af'
	call dskyMon_loadregsB
	push bc ;bc'
	call dskyMon_loadregsB
	push bc ;de'
	call dskyMon_loadregsB
	push bc ;hl'
	ld a,(hl)
	ld i,a ;load into actual regs
	EXX
	ex af,af'
	pop hl ;19 20
	pop de ;17 18
	pop bc ;15 16
	pop af ;13 14
	EXX
	ex af,af'
	pop iy ;11 12
	pop ix ;9 10
	pop hl ;7 8
	pop de ;5 6
	pop bc ;3 4
	pop af ;1 2
	ret
dskyMon_loadregsB: ;load bc with next 2 reg values
	;af (example)
	ld a,(hl) ;load a
	ld b,a
	inc hl
	inc hl
	inc hl 
	ld a,(hl) ;load f
	ld c,a
	inc hl
	inc hl
	inc hl
	;push bc (example)
	ret
	
dskyMonRegMode: ;display/edit registers before and after calls
	call clear
	ld hl,dskyMonMsgRegs
	call ioStringPrintL
	ld a,(dskyMonDatRegP)
	ld d,a
	ld hl,dskyMonMsgRegs3 
	ld c,a
	ld b,0
	add hl,bc 
	ld a,(hl) ;label of register (left char)
	out (0x65),a
	inc hl
	ld a,(hl) ;label of register (right char)
	out (0x64),a
	inc hl
	ld a,(hl) ;stored value for register
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
	cp "K"
	jp z,dskyMonCopyMode
	jr dskyMonRegMode
dskyMonRegMode_Write:
	ld a,b
	ld (hl),a
	ld a,"W"
	call dskyMonStatIndicator
	jr dskyMonRegMode
dskyMonRegMode_Dec:
	ld a,d
	dec a
	dec a
	dec a
	cp 0xfd ;aka -3
	jp nz, dskyMonRegMode_DecB
	ld a,0x3c ;last byte in regs array
	dskyMonRegMode_DecB:
	ld (dskyMonDatRegP),a
	jr dskyMonRegMode
dskyMonRegMode_Inc:
	ld a,d
	inc a
	inc a
	inc a
	cp 0x3f ;+3 over
	jp nz, dskyMonRegMode_IncB
	ld a,0
	dskyMonRegMode_IncB:
	ld (dskyMonDatRegP),a
	jr dskyMonRegMode

dskyMonCopyMode_Source: db 0x00,0x00
dskyMonCopyMode_Dest: db 0x00,0x00
dskyMonCopyMode_Length: db 0x00,0x00
dskyMonCopyMode: 
    call clear
	ld hl,dskyMonMsgCopy
	call ioStringPrintL
	dskyMonCopyMode1:
		ld hl,(dskyMonCopyMode_Source)
		ld c,0x6b
		call inputKey16
		cp "I"
		jp z,dskyMonIOModeAddr 
		cp "M"
		jp z,dskyMonMemModeAddr
		cp "J"
		jp z,dskyMonCallMode
		cp "K"
		jp z,dskyMonFillMode
		cp "X"
		jr nz,dskyMonCopyMode1
		ld (dskyMonCopyMode_Source),hl
	dskyMonCopyMode2:
		ld hl,(dskyMonCopyMode_Dest)
		ld c,0x67
		call inputKey16
		cp "I"
		jp z,dskyMonIOModeAddr 
		cp "M"
		jp z,dskyMonMemModeAddr
		cp "J"
		jp z,dskyMonCallMode
		cp "K"
		jp z,dskyMonFillMode
		cp "X"
		jr nz,dskyMonCopyMode2
		ld (dskyMonCopyMode_Dest),hl
	dskyMonCopyMode3:
		ld hl,(dskyMonCopyMode_Length)
		ld c,0x63
		call inputKey16
		cp "I"
		jp z,dskyMonIOModeAddr 
		cp "M"
		jp z,dskyMonMemModeAddr
		cp "J"
		jp z,dskyMonCallMode
		cp "K"
		jp z,dskyMonFillMode
		cp "X"
		jr nz,dskyMonCopyMode3
		ld (dskyMonCopyMode_Length),hl
	dskyMonCopyMode_Copy:
		ld bc,(dskyMonCopyMode_Length)
		ld de,(dskyMonCopyMode_Dest)
		ld hl,(dskyMonCopyMode_Source)
		ldir
		jp dskyMonMemModeAddr
		
;fill mode - for filling in areas of RAM with the same value		
dskyMonFillMode_Dest: db 0x00,0x00
dskyMonFillMode_Length: db 0x00,0x00
dskyMonFillMode_Value: db 0x00
dskyMonFillMode: 
    call clear
	ld hl,dskyMonMsgFill
	call ioStringPrintL
	dskyMonFillMode1:
		ld hl,(dskyMonFillMode_Dest)
		ld c,0x6b
		call inputKey16
		cp "I"
		jp z,dskyMonIOModeAddr 
		cp "M"
		jp z,dskyMonMemModeAddr
		cp "J"
		jp z,dskyMonCallMode
		cp "K"
		jp z,dskyMonRegMode
		cp "X"
		jr nz,dskyMonFillMode1
		ld (dskyMonFillMode_Dest),hl
	dskyMonFillMode2:
		ld hl,(dskyMonFillMode_Length)
		ld c,0x67
		call inputKey16
		cp "I"
		jp z,dskyMonIOModeAddr 
		cp "M"
		jp z,dskyMonMemModeAddr
		cp "J"
		jp z,dskyMonCallMode
		cp "K"
		jp z,dskyMonRegMode
		cp "X"
		jr nz,dskyMonFillMode2
		ld (dskyMonFillMode_Length),hl
	dskyMonFillMode3:
		ld a,(dskyMonFillMode_Value)
		ld c,0x62
		call inputKey8
		cp "I"
		jp z,dskyMonIOModeAddr 
		cp "M"
		jp z,dskyMonMemModeAddr
		cp "J"
		jp z,dskyMonCallMode
		cp "K"
		jp z,dskyMonRegMode
		cp "X"
		jr nz,dskyMonFillMode3
		ld a,b
		ld (dskyMonFillMode_Value),a
	dskyMonFillMode_Fill:
		ld a,(dskyMonFillMode_Value)
		ld b,a
		ld de,(dskyMonFillMode_Length)
		ld hl,(dskyMonFillMode_Dest)
		dskyMonFillMode_Fill_Loop:
			ld a,b
			ld (hl),a
			inc hl
			dec de
			ld a,d
			or e
			jp nz,dskyMonFillMode_Fill_Loop
		jp dskyMonMemModeAddr
	
dskyMonStatIndicator: ;displays ascii in A @69, waits for key release, clears 69
	out (0x69),a
	call getDskyKeyRelease
	ld a," "
	out (0x69),a
	ret
	
clear: ;clears the 16 character screen
	ld c,0x6f
	clearB:
	ld a,0x20 ;space char
	out (c),a
	dec c
	ld a,0x5f ;one less than 0x60
	cp c
	jr nz,clearB
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
	
;***************************************CLOCK CHIP DISPLAY DEMO**********************************
;demo program for testing out the DS1513 Phantom Time Chip (Realtime clock)

;  org 0x3000
burnram equ 0x8000 ;will be written to by the clock read/write functions. Must be in address range of clock chip
monaddr equ orgAddress ;monitor address, for a return from this program

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

clockdisp8: ;read the clock chip and display the read data in hex on the dsky display (from MS to LS left to right)
call sendSeq
ld hl,rxb
call clockRead
ld c,0x61
ld hl,rxb
clockdisp8loop1:
ld a,(hl)
call ioPrintHex8
inc hl
inc c
inc c
ld a,0x71
cp c
jr nz,clockdisp8loop1
in a,(0x61) ;check to see if any key in dsky M row is pressed
cp 0xff
jp nz,monaddr
;********************************display clock on built in led displays on 0x74-0x77***********************
ld a,(rxb) ;check 10ths of seconds
and 0xf0
cp 0x90
jr z,clockdisp8blank
ld a,(rxb+3) ;minutes
ld c,0x77
call ioPrintHex8
ld a,(rxb+2) ;seconds
ld c,0x75
call ioPrintHex8
jr clockdisp8
clockdisp8blank: ;"blink" off display to show seconds
ld a,0
out (0x77),a
out (0x76),a
out (0x75),a
out (0x74),a
jr clockdisp8

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

wait: 
	ld de,0x1000
	waitLoop:
	nop
	dec de
	ld a,d
	or e
	jr nz,waitLoop
	ret

LT6903_1431: ;sequence for setting the LT6903 clock to 14.31 MHz
db 1,1,0,1,1,1,0,0,1,1,1,1,1,1,0,0

bootScreenImage:
db 0xBF, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0x83, 0xBF, 0xBF, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x57, 0x49, 0x4C, 0x53, 0x4F, 0x4E, 0x20, 0x5A, 0x2D, 0x38, 0x30, 0x20, 0x43, 0x4F, 0x4D, 0x50, 0x55, 0x54, 0x45, 0x52, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0xBF, 0xBF, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x41, 0x6C, 0x61, 0x6E, 0x20, 0x57, 0x69, 0x6C, 0x73, 0x6F, 0x6E, 0x20, 0x32, 0x30, 0x32, 0x31, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0xBF, 0xBF, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0xBF, 0xBF, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x54, 0x52, 0x53, 0x2D, 0x38, 0x30, 0x20, 0x76, 0x69, 0x64, 0x65, 0x6F, 0x20, 0x6D, 0x6F, 0x64, 0x65, 0x20, 0x2D, 0x20, 0x31, 0x30, 0x32, 0x34, 0x20, 0x63, 0x68, 0x61, 0x72, 0x73, 0x20, 0x36, 0x34, 0x78, 0x31, 0x36, 0x20, 0x2D, 0x20, 0x36, 0x78, 0x31, 0x32, 0x20, 0x66, 0x6F, 0x6E, 0x74, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0xBF, 0xBF, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0xBF, 0xBF, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0xBF, 0xBF, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0x2E, 0x2F, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3A, 0x3B, 0x3C, 0x3D, 0x3E, 0x3F, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0xBF, 0xBF, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x5B, 0x5C, 0x5D, 0x5E, 0x5F, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0xBF, 0xBF, 0x20, 0x20, 0x20, 0x20, 0x20, 0x50, 0x72, 0x65, 0x73, 0x73, 0x20, 0x20, 0x20, 0x20, 0x20, 0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6A, 0x6B, 0x6C, 0x6D, 0x6E, 0x6F, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7A, 0x7B, 0x7C, 0x7D, 0x7E, 0x7F, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0xBF, 0xBF, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x4E, 0x4D, 0x49, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x80, 0x81, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8A, 0x8B, 0x8C, 0x8D, 0x8E, 0x8F, 0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0x99, 0x9A, 0x9B, 0x9C, 0x9D, 0x9E, 0x9F, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0xBF, 0xBF, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0xA0, 0xA1, 0xA2, 0xA3, 0xA4, 0xA5, 0xA6, 0xA7, 0xA8, 0xA9, 0xAA, 0xAB, 0xAC, 0xAD, 0xAE, 0xAF, 0xB0, 0xB1, 0xB2, 0xB3, 0xB4, 0xB5, 0xB6, 0xB7, 0xB8, 0xB9, 0xBA, 0xBB, 0xBC, 0xBD, 0xBE, 0xBF, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0xBF, 0xBF, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0xC0, 0xC1, 0xC2, 0xC3, 0xC4, 0xC5, 0xC6, 0xC7, 0xC8, 0xC9, 0xCA, 0xCB, 0xCC, 0xCD, 0xCE, 0xCF, 0xD0, 0xD1, 0xD2, 0xD3, 0xD4, 0xD5, 0xD6, 0xD7, 0xD8, 0xD9, 0xDA, 0xDB, 0xDC, 0xDD, 0xDE, 0xDF, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0xBF, 0xBF, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0xE0, 0xE1, 0xE2, 0xE3, 0xE4, 0xE5, 0xE6, 0xE7, 0xE8, 0xE9, 0xEA, 0xEB, 0xEC, 0xED, 0xEE, 0xEF, 0xF0, 0xF1, 0xF2, 0xF3, 0xF4, 0xF5, 0xF6, 0xF7, 0xF8, 0xF9, 0xFA, 0xFB, 0xFC, 0xFD, 0xFE, 0xFF, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0xBF, 0xBF, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0xBF, 0xBF, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xB0, 0xBF

;this fills in the rest of bank 0 ROM
seek 0x3fff
db 0xff