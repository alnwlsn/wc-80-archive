;video chip setup
org 0x6000

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
	ld hl,0xe000
	ldir
	ld a,0xf2
	out (0x5f),a
	ld a,0x5f ;VBANK select & mask (0x5000 for 4K of VRAM)
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
	;db 0x69,0x40,0x50,0x08,0x14,0x0a,0x10,0x13,0x00,0x0b,0x00,0x00,0x0c,0x00,0x00,0x00
	;80x26 8x16 - 0xF2 timing - TRS80 mode, 2k+40 bytes of VRAM, at 0x5000 - 0x5f VBANK
	;    0    1    2    3    4    5    6    7    8    9    10   11   12   13   14   15
	db 0x76,0x50,0x5c,0x09,0x0f,0x06,0x0d,0x0e,0x03,0x0f,0x00,0x00,0x00,0x00,0x00,0x00
	vidSetupEnd:

	;show boot screen on video output
	ld bc,2080 
	ld de,0x5000
	ld hl,bootScreenImage
	ldir

jp 0x07FD ; back to dpio

bootScreenImage:
incbin "80x26.bin"