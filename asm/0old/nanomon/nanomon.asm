;nanomon - simple shared ram control program
org 0x3200

main:
ld a,(command)
ld b,a
ld a,(status)
cp 0
jr nz,main
ld a,b
cp 0
jr z,resetStatus
cp 1
jr z,readIO
cp 2
jr z,writeIO
cp 3
jr z,readRam
cp 4
jr z,writeRam
jr main

resetStatus: 
	ld a,0
	ld (status),a
	jr main

readIO:
	ld a,(ioaddress)
	ld c,a
	in a,(c)
	ld (data),a
	ld a,1
	ld (status),a
	jr main
	
writeIO:
	ld a,(ioaddress)
	ld c,a
	ld a,(data)
	out (c),a
	ld a,2
	ld (status),a
	jr main

readRam:
	ld hl,(ramAddress)
	ld a,(hl)
	ld (data),a
	ld a,3
	ld (status),a
	jr main
	
writeRam:
	ld hl,(ramAddress)
	ld a,(data)
	ld (hl),a
	ld a,4
	ld (status),a
	jr main


ioAddress: db 0x00
ramAddress: db 0x00, 0x00
data: db 0x00
command: db 0x00
status: db 0x00