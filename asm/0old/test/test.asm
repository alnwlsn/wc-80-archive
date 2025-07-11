org 1000
dec a
ld b,a
inc a
exx 
ld b,a
ld c,a
exx
push af
ex af,af'
pop af
inc a
ex af,af'
ret

;when done:
; starting a = s
;b' = s
;c' = s
;a' = s + 1
; b = s -1