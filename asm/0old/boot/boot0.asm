;WC-80 COMPUTER BOOTLOADER - alnwlsn 2021
;to be stored at address 0x0000 in rom bank 0 (loads on boot)
;sets up slots 0-3 with ram, loads program into ram at 0x0000, and jumps to it.
org 0x00
ld a,0x00    ;rom 0 -> slot 0
out (0x70),a 
ld a,0x00    ;rom 0 -> slot 1
out (0x71),a

jp 0x400B ;jump to next line in rom 0 at slot 1

ld a,0x20    ;ram 0 -> slot 0
out (0x70),a

ld a,0x2f    ;debug display "////"
out (0x74),a
out (0x75),a
out (0x76),a
out (0x77),a

ld bc,0x1000   ;copy [4K of] RAM PROGRAM START to 0x0000 
ld de,0x0000
ld hl,0x4041
ldir

ld a,0x22   ;ram 2 -> slot 2
out (0x72),a
ld a,0x23   ;ram 3 -> slot 3
out (0x73),a

ld bc ,0x08   ;copy jump code to slot 3 ram 
ld de ,0xfff0
ld hl ,0x403A
ldir

jp 0xfff0 ;jump to jump code in slot 3

;jump code
ld a,0x21   ;ram 1 -> slot 1
out (0x71),a
jp 0x0000

ld a,b,c,d,e,f


;RAM PROGRAM START this line now at address 0x0000 (ram bank 0 in slot 0)
incbin "dskymon.bin"