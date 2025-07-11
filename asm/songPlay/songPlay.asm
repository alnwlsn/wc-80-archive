;hack player
;format:
;	<chip data 8> <chip address reg 8> <time+chip le 16>
;                                  (be) <chip 3> <time 13>

org 0x6000

songPlay:
	ld a,0
	out (0x73),a
	ld hl,0 ;ld hl,sp
	adc hl,sp 
	ld (songPlay_sp_p),hl
	ld a,0x00
	ld (songPlay_bank),a
	ld a,(songPlay_bank)
	out (0x7e),a
	ld sp,0xc000
	jp songPlay_main
	
songPlay_bank: db 0x00
songPlay_sp_p: db 0x00, 0x00
	
songPlay_main:
	ld hl,0 ;ld hl,sp
	adc hl,sp  
	;cp hl with de
	ld de,0xe000
	or a
	sbc hl,de
	add hl,de
	jp z,songPlay_nextbank
	
	pop de
	pop hl
	
	ld a,h ;see if time/chip is 0xff - if it is, then stop
	and l
	cp 0xff
	jp z, songPlay ;song end (or go back to the beginning)
	
	ld a,h ;get chip id
	rlca
	rlca
	rlca
	and 0b00000111
	;a contains chip id
	cp 0
	jp z,songChip_reg
	cp 1
	jp z,songChip_2413
	cp 2
	jp z,songChip_2612_0
	cp 3
	jp z,songChip_2612_1
	cp 4
	jp z,songChip_262_0
	cp 5
	jp z,songChip_262_1
	
	
	songPlay_timing_ret:
	
	ld a,h
	and 0b00011111
	ld h,a
	;hl contains timing in millis
	
	songPlay_delayloop:
		ld a,l ;check to see if hl is zero. if it is, go back to the start of the loop
		or h
		cp 0
		jp z,songPlay_main 
		dec hl
		in a,(0x61)
		or 0b11000000
		cp 0xff
		jp nz,songChip_exit
		ld b,0xd3
		songPlay_delayloop2: ;each instanxe of this loop should be like 1 ms
			nop
			djnz songPlay_delayloop2
		jp songPlay_delayloop

songPlay_nextbank:
	ld a,(songPlay_bank)
	inc a
	out (0x7e),a
	ld (songPlay_bank),a
	ld c,0x77
	;ioHexPrint8
	ld b,a
	and 0xf0
	rrca
	rrca
	rrca
	rrca
	and 0x0f
	add a,0x30
	cp 0x3a ;if carry, 0x0a>a
	jr c,ioPrintHex8_1
	add a,0x07
	ioPrintHex8_1:
	out (c),a
	dec c
	ld a,b
	and 0x0f
	add a,0x30
	cp 0x3a
	jr c,ioPrintHex8_2
	add a,0x07
	ioPrintHex8_2:
	out (c),a
	
	ld sp,0xc000
	jp songPlay_main	


songChip_262_0: ;write address 1 or 0 for the 262 chip
	ld a,0xa8
	ld c,a
	out (c),d
	ld a,0xa9
	ld c,a
	out (c),e
	jp songPlay_timing_ret

songChip_262_1:
	ld a,0xaa
	ld c,a
	out (c),d
	ld a,0xa9
	ld c,a
	out (c),e
	jp songPlay_timing_ret

songChip_2413:
	ld a,0xa2
	ld c,a
	out (c),d
	ld a,0xa3
	ld c,a
	out (c),e
	jp songPlay_timing_ret

songChip_reg:
	ld c,d
	out (c),e
	jp songPlay_timing_ret
	
songChip_2612_0: 
	ld a,0xa4
	ld c,a
	out (c),d
	ld a,0xa5
	ld c,a
	out (c),e
	jp songPlay_timing_ret

songChip_2612_1:
	ld a,0xa6
	ld c,a
	out (c),d
	ld a,0xa7
	ld c,a
	out (c),e
	jp songPlay_timing_ret

songChip_exit:
	ld hl,(songPlay_sp_p)
	ld sp,hl
    ld a,0x80 ;expint extra ram
    out (0x7c),a
    out (0x7d),a
    out (0x7e),a
    out (0x7f),a
    ret
 