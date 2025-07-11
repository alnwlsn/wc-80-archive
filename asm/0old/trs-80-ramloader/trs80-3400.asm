;ram loader in unused TRS-80 ram location
org 0x3400

bnk1: db 0x85 ;bank to load into bank 1
bnk2: db 0x85 ;bank to load into bank 2
bnk3: db 0x85 ;bank to load into bank 3
ajmp: db 0x19,0x1a; place to jump when loading is done

db 0,0,0,0,0,0,0,0,0,0,0

ld a,(bnk1)
out (0x71),a ;bnk1 -> slot 1
ld a,0xA5 ;ram bank 5 -> slot 2
out (0x72),a
ld bc,0x4000 ;copy 16k
ld de,0x8000 ;copy to
ld hl,0x4000 ;copy from
ldir

ld a,(bnk2)
out (0x71),a ;bnk2 -> slot 1
ld a,0xA6 ;ram bank 6 -> slot 2
out (0x72),a
ld bc,0x4000 ;copy 16k
ld de,0x8000 ;copy to
ld hl,0x4000 ;copy from
ldir

ld a,(bnk3)
out (0x71),a ;bnk3 -> slot 1
ld a,0xA7 ;ram bank 7 -> slot 2
out (0x72),a
ld bc,0x4000 ;copy 16k
ld de,0x8000 ;copy to
ld hl,0x4000 ;copy from
ldir

ld a,0xA5; ram bank 5 -> slot 1
out (0x71),a
ld a,0xA6; ram bank 6 -> slot 2
out (0x72),a
ld a,0xA7; ram bank 7 -> slot 3
out (0x73),a

ld hl,(ajmp)
jp (hl)
