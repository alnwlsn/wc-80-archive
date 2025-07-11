;WC-80 COMPUTER BOOTLOADER - alnwlsn 2021
;to be stored at address 0x0000 in rom bank 0 (loads on boot)
org 0x00
ld a,0x00    ;rom 0 -> slot 0 THIS SHOULD BE THE FIRST THING YOU DO WHEN SYSTEM BOOTS
out (0x70),a 

ld a,0x20    ;ram 0 -> slot 1
out (0x71),a

ld a,0x2f    ;debug display "////"
out (0x74),a
out (0x75),a
out (0x76),a
out (0x77),a

ld bc,0x1000   ;copy [4K of] RAM PROGRAM to 0x4000 
ld de,0x4000
ld hl,0x0027
ldir

;select either clock display or Monitor
in a,(0x68)
cp 0xfe
jp nz,0x441F ;jump to Clock Display Demo
jp 0x4000 ;jump to Monitor

;RAM PROGRAM START this line now at address 0x0000 (ram bank 0 in slot 0)
incbin "dskymon.bin"