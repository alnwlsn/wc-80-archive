;conway's game of life - another demo
fieldAdr equ 6200h
screenAdr equ 5000h
rows equ 48
cols equ 64

org 6000h
ld sp,06fffh

ld a,7
out (0x74),a

ld a,r ;seed the rng
ld h,a
ld a,r
ld l,a
ld (61feh),hl
ld a,r
ld h,a
ld a,r
ld l,a
ld (61fch),hl

call clearField

ld a,1
ld (26636), a
ld (26640), a
ld (26641), a
ld (26642), a
ld (26702), a
ld (26703), a
ld (26704), a
ld (26707), a
ld (26769), a

call wscreen

ld a,0
ex af,af'

mloop:
ld de, 350
gLoop:
ex af,af'
out (0bdh), a
inc a
ex af,af'
push de

call generation
call wscreen

pop de
dec de
ld a,d
or e
jp nz,gLoop
call clearField
call randField
jp mLoop



wscreen: ;draws screen
ld hl, fieldAdr+cols+3 ;start address for field (where the data is)
ld bc, screenAdr ;start address of screen
ld e, rows
nextRow:
ld d, cols
push hl
wsNextCol:
push hl
push de
ld a,128 ;start with blank graphics character
bit 0,(hl)
jp z,skpws1
add a,3
skpws1:
ld de,cols+2
add hl,de
bit 0,(hl)
jp z,skpws2
add a,12
skpws2:
add hl,de
bit 0,(hl)
jp z,skpws3
add a,48
skpws3:
ld (bc),a
inc bc
pop de
pop hl
inc hl
dec d
ld a,0
or d
jp nz,wsNextCol
pop hl
push de
ld de,0+(cols+2)*3
add hl,de
push hl
push bc
pop hl
ld de,64-cols
add hl,de
push hl
pop bc
pop hl
pop de
dec e
dec e
dec e
ld a,0
or e
jp nz,nextRow
ret

clearField:
ld de, 0+(rows+2)*(cols+2) ;counter for field cells
ld hl, fieldAdr ;start address for field
frLoop:
ld a,0
ld (hl),a
inc hl
dec de
ld a,d
or e
jp nz,frLoop
ret

generation:
past: ;shifts left all bytes by 1 to make previous generation
ld e, rows    ;counter for rows
ld hl, fieldAdr+cols+2 ;start address for field
pastLoopB:
ld d, cols    ;counter for cols
inc hl
pastLoopC:
ld a,(hl)
rla
ld (hl),a
inc hl
dec d
ld a,0
or d
jp nz,pastLoopC
inc hl
dec e
ld a,0
or e
jp nz,pastLoopB
calculate: ;determines if a cell should be alive or dead for the whole field
ld e, rows ;counter for rows
ld hl, fieldAdr+cols+2 ;start address for field
calcLoopB:
ld d, cols ;counter for cols
inc hl
calcLoopC:
push de
push hl
ld b,0 ;measure the local population
bit 1,(hl) ;check population of self
jp z,skipac0 
set 4,b
skipac0:
ld de, cols+3 ;subtract #cols in row + 3 from cell pointer 
sbc hl,de
bit 1,(hl);check previous state of neighbors
jp z,skpac1
inc b
skpac1:
inc hl
bit 1,(hl);
jp z,skpac2
inc b
skpac2:
inc hl
bit 1,(hl);
jp z,skpac3
inc b
skpac3:
ld de, cols ;add #cols in row to cell pointer 
add hl,de
bit 1,(hl);
jp z,skpac4
inc b
skpac4:
inc hl
inc hl
bit 1,(hl);
jp z,skpac5
inc b
skpac5:
ld de, cols ;add #cols in row to cell pointer 
add hl,de
bit 1,(hl)
jp z,skpac6
inc b
skpac6:
inc hl
bit 1,(hl);
jp z,skpac7
inc b
skpac7:
inc hl
bit 1,(hl);
jp z,skpac8
inc b
skpac8:
pop hl
push hl
ld a,b
sub 3 ;dead cell with 3 neighbors
jp nz,skpcwr1
set 0,(hl)
skpcwr1:
ld a,b
sub 18; live cell with 2 neighbors
jp nz,skpcwr2
set 0,(hl)
skpcwr2:
sub 1; live cell with 3 neighbors
jp nz,skpcwr3
set 0,(hl)
skpcwr3:
pop hl
pop de 
inc hl
dec d
ld a,0
or d
jp nz,calcLoopC
inc hl
dec e
ld a,0
or e
jp nz,calcLoopB
ret

randField:
ld de, 0+(rows+2)*(cols+2) ;counter for field cells
ld hl, fieldAdr ;start address for field
frLoop2:
ld a,0
ld (hl),a
inc hl
dec de
ld a,d
or e
jp nz,frLoop2
ld e, rows ;counter for rows
ld hl, fieldAdr+cols+2 ;start address for field
frLoopB2:
ld d, cols ;counter for cols
inc hl
frLoopC2:

push bc
push hl
call prng16

ld a,l

pop hl
pop bc
ld (hl),a

inc hl
dec d
ld a,0
or d
jp nz,frLoopC2
inc hl
dec e
ld a,0
or e
jp nz,frLoopB2
ret

prng16:
;Inputs:
;   (seed1) contains a 16-bit seed value
;   (seed2) contains a NON-ZERO 16-bit seed value
;Outputs:
;   HL is the result
;   BC is the result of the LCG, so not that great of quality
;   DE is preserved
;Destroys:
;   AF
;cycle: 4,294,901,760 (almost 4.3 billion)
;160cc
;26 bytes
	ld hl,(61feh)
	ld b,h
	ld c,l
	add hl,hl
	add hl,hl
	inc l
	add hl,bc
	ld (61feh),hl
	ld hl,(61fch)
	add hl,hl
	sbc a,a
	and 00101101b
	xor l
	ld l,a
	ld (61fch),hl
	add hl,bc
	ret
