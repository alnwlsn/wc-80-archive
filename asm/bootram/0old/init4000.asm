;this sits at 0x4000 in dskymon mode, so it can be edited easily in the battery backed ram.
;runs at boot, unless you hold down the "0" keypad key. 
;when you're done, be sure to jump back

org 0x4000
jr pre

cols8025:
;    0    1    2    3    4    5    6    7    8    9    10   11   12   13   14   15
;db 0x76,0x50,0x5e,0x09,0x1c,0x02,0x18,0x1a,0x00,0x08,0x00,0x00,0x00,0x00,0x00,0x00 ;80x24 8x8 - 0xF2 timing
db 0x69,0x40,0x50,0x08,0x14,0x0a,0x10,0x13,0x00,0x0b,0x00,0x00,0x0c,0x00,0x00,0x00 ;64x16 6x12 - 0xE6 timing - TRS80 mode, using last 1k of VRAM, at 0x3c00 - 0x38 VBANK
;db  76 50 5E 09 1C 02 18 1A 00 08 00 00 00 00 00 00

seq1431: ;sequence for setting the LT6903 clock to 14.31 MHz
db 1,1,0,1,1,1,0,0,1,1,1,1,1,1,0,0

pre:
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

start:
ld a,0xe6 ;clock speed and #of dot columns
out (0x5f),a
ld a,0x38 ;VBANK select & mask (0x3c00 for last 1K of VRAM)
out (0x5e),a
ld a,0x00
ld b,a ;b - crtc register offset
ld hl,cols8025
loop:
;call wait
ld a,b
cp 0x10
jp z,zend1
out (0x5c),a
;call wait
ld a,(hl)
out (0x5d),a

inc b
inc hl
jr loop

zend1:
ltcFset: ;set the frequency of the LTC6903
ld a,0x9c ;base value (0x80 & clk bit)
ld c,a
ld hl,seq1431
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

ld a,0x3c    ;reset
out (0xbf),a 
call wait
ld a,0xbc
out (0xbf),a 

ld a,0x02    ;cassete
out (0xff),a 


zend2:
jp 0x0069 ;nice

wait: 
	ld de,0x1000
	waitLoop:
	nop
	dec de
	ld a,d
	or e
	jr nz,waitLoop
	ret