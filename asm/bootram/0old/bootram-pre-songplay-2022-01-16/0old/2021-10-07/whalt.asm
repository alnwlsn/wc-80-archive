ld a,"1"
out (0x74),a
ld a,"M"
out (0x75),a
ld a,"O"
out (0x76),a
ld a,"R"
out (0x77),a
halt


;this fills in the rest of the rom area
seek 0x3fff
db 0xff