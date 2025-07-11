;this is the test program for Alnwlsn's Z80 computer: WC-80
;it will run (from ROM) at boot and test everything out.
org 0
ld sp,07000h ;stack in low [norm] ram
;copy the first 1K of rom to the ram (while in rom mode, writes will write to the ram)
ld de,0
ld hl,0
ld bc,1024
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
ld hl,0200h
crb4A:
ld a,0
ld (hl),a
inc hl
ld a,80h
cp h
jr nz,crb4A

ld a,144 ;allow other than just LOCAL
out (0x78), a

jp dskytest

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

dskytest:
ld c,0x6f
ld a,0x77
dskytestB:
inc a
call ioPrintHex
call delayA
;call ioPrintHex
;call inputKey16
jp dskytestB

inputKey8: ;use keys to enter a 2 character (8 bit) hex character
           ;takes   c is address to display 2 characters when entering (io address of LED)
		   ;        a existing value to be displayed
		   ;returns a (entered data)
		   ;        b (returned key, z set if X key pressed)
push de
push bc
ld d,a
inputKey8_b:
ld a,d
call ioPrintHex
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
adc a,b 
ld d,a
jr inputKey8_b
inputKey8_c: ;non number key
ld a,b
cp 0x88 ;the X key (enter)
inputKey8_X:
ld a,d
pop bc
pop de
ret

inputKey16:;use keys to enter a 4 character (16 bit) hex character
           ;takes   c is address to display characters when entering (io address of LED)
		   ;        hl existing value to be displayed
		   ;returns hl (entered data)
		   ;        b (returned key, z set if X key pressed)
push af
push de
push bc
inputKey16_b:
ld a,h
;call ioPrintHex
ld a,l
dec c
dec c
;call ioPrintHex
inc c
inc c
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
adc a,l
ld l,a
jr inputKey16_b
inputKey16_c: ;non number key
ld a,b
cp 0x88 ;the X key (enter)
inputKey16_X:
pop bc
pop de
pop af
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
ld a,0
adc a,1
ld e,0
ld d,1 ;will rotate to bit 0 in a moment
getDskyKey_Col: ;read col at address c and return a
ld a,0x60
adc a,d
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
ld a,5
adc a,e
ld e,a
jr getDskyKey_Col
getDskyKeyCols_Y: ;some key was pressed (get ready to return)
;b has col scan
ld a,b
adc a,e
dec a ;subtract 1 to get keys from 0-0x17
push hl
ld hl,dskyKeyLUT ;lookup table base address
ld b,0
dec a
ld c,a
adc hl,bc ;offset in LUT
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
DB 0x77 ;M
DB 0x0A ;A
DB 0x07 ;7
DB 0x04 ;4
DB 0x01 ;1
DB 0x00 ;0
DB 0x73 ;I
DB 0x0B ;B
DB 0x08 ;8
DB 0x05 ;5
DB 0x02 ;2
DB 0x40 ;LEFT
DB 0x74 ;J
DB 0x0C ;C
DB 0x09 ;9
DB 0x06 ;6
DB 0x03 ;3
DB 0x41 ;RIGHT
DB 0x75 ;K
DB 0x0D ;D
DB 0x0E ;E
DB 0x0F ;F
DB 0x86 ;V
DB 0x88 ;X

ioPrintHex: ;write (on ascii LEDs) the 2 character hex value of A, 
            ;starting with left most digit address of C
push af
push bc
call ioPrintHexNibble
dec c
and 0xf0
rrca
rrca
rrca
rrca
call ioPrintHexNibble
pop bc
pop af
ret

ioPrintHexNibble: ;prints lower nibble of a as hex to io c
push af
and 0x0f
cp 0x0a ;if carry, 0x0a>a
jr c,ioPrintHexNibble_letters
adc a,0x37
jr ioPrintHexNibble_X
ioPrintHexNibble_letters:
adc a,0x2f
ioPrintHexNibble_X:
out (c),a
pop af
ret