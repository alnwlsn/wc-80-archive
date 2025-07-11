
        ORG     0000h

L0000:  DI
        XOR     A
        JP      L0674

L0005:  JP      L3FFF+1         ; reference not aligned to instruction

L0008:  JP      L3FFF+1         ; reference not aligned to instruction

L000B:  POP     HL
        JP      (HL)

L000D:  JP      L069F

L0010:  JP      L3FFF+4         ; reference not aligned to instruction

        ; --- START PROC L0013 ---
L0013:  PUSH    BC
        LD      B,01h
        JR      L0046

L0018:  JP      4006h

        ; --- START PROC L001B ---
L001B:  PUSH    BC
        LD      B,02h
        JR      L0046

L0020:  JP      4009h

L0023:  PUSH    BC
        LD      B,04h
        JR      L0046

L0028:  JP      400Ch

        ; --- START PROC L002B ---
L002B:  LD      DE,4015h
        JR      L0013

L0030:  JP      400Fh

        ; --- START PROC L0033 ---
L0033:  LD      DE,401Dh
        JR      L001B

L0038:  JP      4012h

        ; --- START PROC L003B ---
L003B:  LD      DE,4025h
        JR      L001B

L0040:  JP      L05D9

L0043:  RET

L0044:  NOP
        NOP
        ; --- START PROC L0046 ---
L0046:  JP      L03C2

        ; --- START PROC L0049 ---
L0049:  CALL    L002B
        OR      A
        RET     NZ
        JR      L0049

L0050:  DEC     C
        DEC     C
        RRA
        RRA
        LD      BC,5B01h
        DEC     DE
        LD      A,(BC)
        NOP
        EX      AF,AF'
        JR      L0066

L005D:  ADD     HL,DE
        JR      NZ,L0080
        ; --- START PROC L0060 ---
L0060:  DEC     BC
        LD      A,B
        OR      C
        JR      NZ,L0060
        RET

L0066:  LD      SP,0600h
        LD      A,(L37EC)
        INC     A
        CP      02h
        JP      NC,L0000
        JP      L06CC

        ; --- START PROC L0075 ---
L0075:  LD      DE,4080h
        LD      HL,18F7h
        LD      BC,0027h
        LDIR
L0080:  LD      HL,41E5h
        LD      (HL),3Ah        ; ':'
        INC     HL
        LD      (HL),B
        INC     HL
        LD      (HL),2Ch        ; ','
        INC     HL
        LD      (40A7h),HL
        LD      DE,012Dh
        LD      B,1Ch
        LD      HL,4152h
L0096:  LD      (HL),0C3h
        INC     HL
        LD      (HL),E
        INC     HL
        LD      (HL),D
        INC     HL
        DJNZ    L0096
        LD      B,15h
L00A1:  LD      (HL),0C9h
        INC     HL
        INC     HL
        INC     HL
        DJNZ    L00A1
        LD      HL,42E8h
        LD      (HL),B
        LD      SP,41F8h
        CALL    L1B8F
        CALL    L01C9
L00B5:  LD      HL,0105h
        CALL    L28A7
        CALL    L1BB3
        JR      C,L00B5
        RST     0x10
        OR      A
        JR      NZ,L00D6
        LD      HL,434Ch
L00C7:  INC     HL
        LD      A,H
        OR      L
        JR      Z,L00E7
        LD      A,(HL)
        LD      B,A
        CPL
        LD      (HL),A
        CP      (HL)
        LD      (HL),B
        JR      Z,L00C7
        JR      L00E7

L00D6:  CALL    L1E5A
        OR      A
        JP      NZ,L1997
        EX      DE,HL
        DEC     HL
        LD      A,8Fh
        LD      B,(HL)
        LD      (HL),A
        CP      (HL)
        LD      (HL),B
        JR      NZ,L00B5
        ; --- START PROC L00E7 ---
L00E7:  DEC     HL
        ; --- START PROC L00E8 ---
L00E8:  LD      DE,4414h
        RST     0x18
        JP      C,L197A
        LD      DE,0FFCEh
        LD      (40B1h),HL
        ADD     HL,DE
        LD      (40A0h),HL
        CALL    L1B4D
        LD      HL,010Eh
        CALL    L28A7
        JP      L1A19

L0105:  LD      C,L
        LD      B,L
        LD      C,L
        JR      NZ,L015D
        LD      C,C
        ; --- START PROC L010B ---
L010B:  LD      E,D
        LD      B,L
        NOP
        LD      D,D
        CPL
        LD      D,E
        JR      NZ,L015F
        LD      (4220h),A
        LD      B,C
        LD      D,E
        LD      C,C
        LD      B,E
        DEC     C
        NOP
L011C:  PUSH    BC
        LD      BC,0500h
        CALL    L0060
        POP     BC
        LD      A,(BC)
        AND     E
        RET     Z
        LD      A,D
        RLCA
        RLCA
        JP      L03FE

L012D:  LD      E,2Ch           ; ','
        JP      L19A2

        ; --- START PROC L0132 ---
L0132:  RST     0x10
        XOR     A
        LD      BC,803Eh
        LD      BC,013Eh
        PUSH    AF
        RST     0x08
        JR      Z,L010B
        INC     E
        DEC     HL
        CP      80h
        JP      NC,L1E4A
        PUSH    AF
        RST     0x08
        INC     L
        CALL    L2B1C
        CP      30h             ; '0'
        JP      NC,L1E4A
        LD      D,0FFh
L0152:  INC     D
        SUB     03h
        JR      NC,L0152
        ADD     A,03h
        LD      C,A
        POP     AF
        ADD     A,A
        LD      E,A
L015D:  LD      B,02h
        ; --- START PROC L015F ---
L015F:  LD      A,D
        RRA
        LD      D,A
        LD      A,E
        RRA
        LD      E,A
        DJNZ    L015F
        LD      A,C
        ADC     A,A
        INC     A
        LD      B,A
        XOR     A
        SCF
L016D:  ADC     A,A
        DJNZ    L016D
        LD      C,A
        LD      A,D
        OR      3Ch             ; '<'
        LD      D,A
        LD      A,(DE)
        OR      A
        JP      M,L017C
        LD      A,80h
L017C:  LD      B,A
        POP     AF
        OR      A
        LD      A,B
        JR      Z,L0192
        LD      (DE),A
        JP      M,L018F
        LD      A,C
        CPL
        LD      C,A
        LD      A,(DE)
        AND     C
L018B:  LD      (DE),A
L018C:  RST     0x08
        ADD     HL,HL
        RET

L018F:  OR      C
        JR      L018B

L0192:  AND     C
        ADD     A,0FFh
        SBC     A,A
        PUSH    HL
        CALL    L098D
        POP     HL
        JR      L018C

        ; --- START PROC L019D ---
L019D:  RST     0x10
        PUSH    HL
        LD      A,(4099h)
        OR      A
        JR      NZ,L01AB
        CALL    L0358
        OR      A
        JR      Z,L01BC
L01AB:  PUSH    AF
        XOR     A
        LD      (4099h),A
        INC     A
        CALL    L2857
        POP     AF
        LD      HL,(40D4h)
        LD      (HL),A
        JP      L2884

L01BC:  LD      HL,1928h
        LD      (4121h),HL
        LD      A,03h
        LD      (40AFh),A
        POP     HL
        RET

        ; --- START PROC L01C9 ---
L01C9:  LD      A,1Ch
        CALL    L033A
        LD      A,1Fh
        JP      L033A

L01D3:  LD      A,R
        LD      (40ABh),A
        RET

        ; --- START PROC L01D9 ---
L01D9:  LD      HL,0FC01h
        CALL    L0221
        LD      B,0Bh
L01E1:  DJNZ    L01E1
        LD      HL,0FC02h
        CALL    L0221
        LD      B,0Bh
L01EB:  DJNZ    L01EB
        LD      HL,0FC00h
        CALL    L0221
        LD      B,5Ch           ; '\'
L01F5:  DJNZ    L01F5
        RET

        ; --- START PROC L01F8 ---
L01F8:  PUSH    HL
        LD      HL,0FB00h
        JR      L0219

        ; --- START PROC L01FE ---
L01FE:  LD      A,(HL)
        SUB     23h             ; '#'
        LD      A,00h
        JR      NZ,L0212
        CALL    L2B01
        RST     0x08
        INC     L
        LD      A,E
        AND     D
        ADD     A,02h
        JP      NC,L1E4A
        DEC     A
L0212:  LD      (L37E4),A
        PUSH    HL
        LD      HL,0FF04h
        ; --- START PROC L0219 ---
L0219:  CALL    L0221
        POP     HL
        RET

        ; --- START PROC L021E ---
L021E:  LD      HL,0FF00h
        ; --- START PROC L0221 ---
L0221:  LD      A,(403Dh)
        AND     H
        OR      L
        OUT     (0FFh),A
        LD      (403Dh),A
        RET

        ; --- START PROC L022C ---
L022C:  LD      A,(L3C3F)
        XOR     0Ah
        LD      (L3C3F),A
        RET

        ; --- START PROC L0235 ---
L0235:  PUSH    BC
        PUSH    HL
        LD      B,08h
L0239:  CALL    L0241
        DJNZ    L0239
        POP     HL
        POP     BC
        RET

        ; --- START PROC L0241 ---
L0241:  PUSH    BC
        PUSH    AF
L0243:  IN      A,(0FFh)
        RLA
        JR      NC,L0243
        LD      B,60h           ; '`'
L024A:  DJNZ    L024A
        CALL    L021E
        LD      B,85h
L0251:  DJNZ    L0251
        IN      A,(0FFh)
        LD      B,A
        POP     AF
        RL      B
        RLA
        PUSH    AF
        CALL    L021E
        POP     AF
        POP     BC
        RET

        ; --- START PROC L0261 ---
L0261:  CALL    L0264
        ; --- START PROC L0264 ---
L0264:  PUSH    HL
        PUSH    BC
        PUSH    DE
        PUSH    AF
        LD      C,08h
        LD      D,A
L026B:  CALL    L01D9
        LD      A,D
        RLCA
        LD      D,A
        JR      NC,L027E
        CALL    L01D9
L0276:  DEC     C
        JR      NZ,L026B
        POP     AF
        POP     DE
        POP     BC
        POP     HL
        RET

L027E:  LD      B,87h
L0280:  DJNZ    L0280
        JR      L0276

        ; --- START PROC L0284 ---
L0284:  CALL    L01FE
        LD      B,0FFh
        XOR     A
L028A:  CALL    L0264
        DJNZ    L028A
        LD      A,0A5h
        JR      L0264

        ; --- START PROC L0293 ---
L0293:  CALL    L01FE
        ; --- START PROC L0296 ---
L0296:  PUSH    HL
        XOR     A
L0298:  CALL    L0241
        CP      0A5h
        JR      NZ,L0298
        LD      A,2Ah           ; '*'
        LD      (L3C3E),A
        LD      (L3C3F),A
        POP     HL
        RET

L02A9:  CALL    L0314
        LD      (40DFh),HL
        CALL    L01F8
L02B2:  CALL    41E2h
        LD      SP,4288h
        CALL    L20FE
        LD      A,2Ah           ; '*'
        CALL    L032A
        CALL    L1BB3
        JP      C,L06CC
        RST     0x10
        JP      Z,L1997
        CP      2Fh             ; '/'
        JR      Z,L031D
        CALL    L0293
L02D1:  CALL    L0235
        CP      55h             ; 'U'
        JR      NZ,L02D1
        LD      B,06h
L02DA:  LD      A,(HL)
        OR      A
        JR      Z,L02E7
        CALL    L0235
        CP      (HL)
        JR      NZ,L02D1
        INC     HL
        DJNZ    L02DA
L02E7:  CALL    L022C
L02EA:  CALL    L0235
        CP      78h             ; 'x'
        JR      Z,L02A9
        CP      3Ch             ; '<'
        JR      NZ,L02EA
        CALL    L0235
        LD      B,A
        CALL    L0314
        ADD     A,L
        LD      C,A
L02FE:  CALL    L0235
        LD      (HL),A
        INC     HL
        ADD     A,C
        LD      C,A
        DJNZ    L02FE
        CALL    L0235
        CP      C
        JR      Z,L02E7
        LD      A,43h           ; 'C'
        LD      (L3C3E),A
        JR      L02EA

        ; --- START PROC L0314 ---
L0314:  CALL    L0235
        LD      L,A
        CALL    L0235
        LD      H,A
        RET

L031D:  EX      DE,HL
        LD      HL,(40DFh)
        EX      DE,HL
        RST     0x10
        CALL    NZ,L1E5A
        JR      NZ,L02B2
        EX      DE,HL
        JP      (HL)

        ; --- START PROC L032A ---
L032A:  PUSH    BC
        LD      C,A
        CALL    41C1h
        LD      A,(409Ch)
        OR      A
        LD      A,C
        POP     BC
        JP      M,L0264
        JR      NZ,L039C
        ; --- START PROC L033A ---
L033A:  PUSH    DE
        CALL    L0033
        PUSH    AF
        CALL    L0348
        LD      (40A6h),A
        POP     AF
        POP     DE
        RET

        ; --- START PROC L0348 ---
L0348:  LD      A,(403Dh)
        AND     08h
        LD      A,(4020h)
        JR      Z,L0355
        RRCA
        AND     1Fh
L0355:  AND     3Fh             ; '?'
        RET

        ; --- START PROC L0358 ---
L0358:  CALL    41C4h
        PUSH    DE
        CALL    L002B
        POP     DE
        RET

        ; --- START PROC L0361 ---
L0361:  XOR     A
        LD      (4099h),A
        LD      (40A6h),A
        CALL    41AFh
        PUSH    BC
        LD      HL,(40A7h)
        LD      B,0F0h
        CALL    L05D9
        PUSH    AF
        LD      C,B
        LD      B,00h
        ADD     HL,BC
        LD      (HL),00h
        LD      HL,(40A7h)
        POP     AF
        POP     BC
        DEC     HL
        RET     C
        XOR     A
        RET

        ; --- START PROC L0384 ---
L0384:  CALL    L0358
        OR      A
        RET     NZ
        JR      L0384

        ; --- START PROC L038B ---
L038B:  XOR     A
        LD      (409Ch),A
        LD      A,(409Bh)
        OR      A
        RET     Z
        LD      A,0Dh
        PUSH    DE
        CALL    L039C
        POP     DE
        RET

        ; --- START PROC L039C ---
L039C:  PUSH    AF
        PUSH    DE
        PUSH    BC
        LD      C,A
        LD      E,00h
        CP      0Ch
        JR      Z,L03B6
        CP      0Ah
        JR      NZ,L03AD
        LD      A,0Dh
        LD      C,A
L03AD:  CP      0Dh
        JR      Z,L03B6
        LD      A,(409Bh)
        INC     A
        LD      E,A
L03B6:  LD      A,E
        LD      (409Bh),A
        LD      A,C
        CALL    L003B
        POP     BC
        POP     DE
        POP     AF
        RET

        ; --- START PROC L03C2 ---
L03C2:  PUSH    HL
        PUSH    IX
        PUSH    DE
        POP     IX
        PUSH    DE
        LD      HL,03DDh
        PUSH    HL
        LD      C,A
        LD      A,(DE)
        AND     B
        CP      B
        JP      NZ,4033h
        CP      02h
        LD      L,(IX+01h)
        LD      H,(IX+02h)
        JP      (HL)

L03DD:  POP     DE
        POP     IX
        POP     HL
        POP     BC
        RET

L03E3:  LD      HL,4036h
        LD      BC,3801h
        LD      D,00h
L03EB:  LD      A,(BC)
        LD      E,A
        XOR     (HL)
        LD      (HL),E
        AND     E
        JR      NZ,L03FA
        INC     D
        INC     L
        RLC     C
        JP      P,L03EB
        RET

L03FA:  LD      E,A
        JP      L011C

        ; --- START PROC L03FE ---
L03FE:  RLCA
        LD      D,A
        LD      C,01h
L0402:  LD      A,C
        AND     E
        JR      NZ,L040B
        INC     D
        RLC     C
        JR      L0402

L040B:  LD      A,(L3880)
        LD      B,A
        LD      A,D
        ADD     A,40h           ; '@'
        ; --- START PROC L0412 ---
L0412:  CP      60h             ; '`'
        JR      NC,L0429
        RRC     B
        JR      NC,L044B
        ADD     A,20h           ; ' '
        LD      D,A
        LD      A,(L3840)
        AND     10h
        JR      Z,L044C
        LD      A,D
        SUB     60h             ; '`'
        JR      L044B

L0429:  SUB     70h             ; 'p'
        JR      NC,L043D
        ADD     A,40h           ; '@'
        CP      3Ch             ; '<'
        JR      C,L0435
        XOR     10h
L0435:  RRC     B
        JR      NC,L044B
        XOR     10h
        JR      L044B

L043D:  RLCA
        RRC     B
        JR      NC,L0443
        INC     A
L0443:  LD      HL,0050h
        LD      C,A
        LD      B,00h
        ADD     HL,BC
        LD      A,(HL)
L044B:  LD      D,A
L044C:  LD      BC,0DACh
        CALL    L0060
        LD      A,D
        CP      01h
        RET     NZ
        RST     0x28
        RET

L0458:  LD      L,(IX+03h)
        LD      H,(IX+04h)
        JR      C,L049A
        LD      A,(IX+05h)
        OR      A
        JR      Z,L0467
        LD      (HL),A
L0467:  LD      A,C
        CP      20h             ; ' '
        JP      C,L0506
        CP      80h
        JR      NC,L04A6
        CP      40h             ; '@'
        JR      C,L047D
        SUB     40h             ; '@'
        CP      20h             ; ' '
        JR      C,L047D
        SUB     20h             ; ' '
L047D:  CALL    L0541
L0480:  LD      A,H
        AND     03h
        OR      3Ch             ; '<'
        LD      H,A
        LD      D,(HL)
        LD      A,(IX+05h)
        OR      A
        JR      Z,L0492
        LD      (IX+05h),D
        LD      (HL),5Fh        ; '_'
L0492:  LD      (IX+03h),L
        LD      (IX+04h),H
        LD      A,C
        RET

L049A:  LD      A,(IX+05h)
        OR      A
        RET     NZ
        LD      A,(HL)
        RET

L04A1:  LD      A,L
        AND     0C0h
        LD      L,A
        RET

L04A6:  CP      0C0h
        JR      C,L047D
        SUB     0C0h
        JR      Z,L0480
        LD      B,A
L04AF:  LD      A,20h           ; ' '
        CALL    L0541
        DJNZ    L04AF
        JR      L0480

L04B8:  LD      A,(HL)
L04B9:  LD      (IX+05h),A
        RET

L04BD:  XOR     A
        JR      L04B9

L04C0:  LD      HL,3C00h
        LD      A,(403Dh)
        AND     0F7h
        LD      (403Dh),A
        OUT     (0FFh),A
        RET

L04CE:  DEC     HL
        LD      A,(403Dh)
        AND     08h
        JR      Z,L04D7
        DEC     HL
L04D7:  LD      (HL),20h        ; ' '
        RET

L04DA:  LD      A,(403Dh)
        AND     08h
        CALL    NZ,L04E2
        ; --- START PROC L04E2 ---
L04E2:  LD      A,L
        AND     3Fh             ; '?'
        DEC     HL
        RET     NZ
L04E7:  LD      DE,0040h
        ADD     HL,DE
        RET

L04EC:  INC     HL
        LD      A,L
        AND     3Fh             ; '?'
        RET     NZ
L04F1:  LD      DE,0FFC0h
        ADD     HL,DE
        RET

L04F6:  LD      A,(403Dh)
        OR      08h
        LD      (403Dh),A
        OUT     (0FFh),A
        INC     HL
        LD      A,L
        AND     0FEh
        LD      L,A
        RET

L0506:  LD      DE,0480h
        PUSH    DE
        CP      08h
        JR      Z,L04CE
        CP      0Ah
        RET     C
        CP      0Eh
        JR      C,L0564
        JR      Z,L04B8
        CP      0Fh
        JR      Z,L04BD
        CP      17h
        JR      Z,L04F6
        CP      18h
        JR      Z,L04DA
        CP      19h
        JR      Z,L04EC
        CP      1Ah
        JR      Z,L04E7
        CP      1Bh
        JR      Z,L04F1
        CP      1Ch
        JR      Z,L04C0
        CP      1Dh
        JP      Z,L04A1
        CP      1Eh
        JR      Z,L0573
        CP      1Fh
        JR      Z,L057C
        RET

        ; --- START PROC L0541 ---
L0541:  LD      (HL),A
        INC     HL
        LD      A,(403Dh)
        AND     08h
        JR      Z,L054B
        INC     HL
L054B:  LD      A,H
        CP      40h             ; '@'
        RET     NZ
        LD      DE,0FFC0h
        ADD     HL,DE
        PUSH    HL
L0554:  LD      DE,3C00h
        LD      HL,3C40h
        PUSH    BC
        LD      BC,03C0h
        LDIR
        POP     BC
        EX      DE,HL
        JR      L057D

L0564:  LD      A,L
        AND     0C0h
        LD      L,A
        PUSH    HL
        LD      DE,0040h
        ADD     HL,DE
        LD      A,H
        CP      40h             ; '@'
        JR      Z,L0554
        POP     DE
L0573:  PUSH    HL
        LD      D,H
        LD      A,L
        OR      3Fh             ; '?'
        LD      E,A
        INC     DE
        JR      L0580

L057C:  PUSH    HL
L057D:  LD      DE,4000h
L0580:  LD      (HL),20h        ; ' '
        INC     HL
        LD      A,H
        CP      D
        JR      NZ,L0580
        LD      A,L
        CP      E
        JR      NZ,L0580
        POP     HL
        RET

L058D:  LD      A,C
        OR      A
        JR      Z,L05D1
        CP      0Bh
        JR      Z,L059F
        CP      0Ch
        JR      NZ,L05B4
        XOR     A
        OR      (IX+03h)
        JR      Z,L05B4
L059F:  LD      A,(IX+03h)
        SUB     (IX+04h)
        LD      B,A
L05A6:  CALL    L05D1
        JR      NZ,L05A6
        LD      A,0Ah
        LD      (L37E8),A
        DJNZ    L05A6
        JR      L05CC

L05B4:  PUSH    AF
L05B5:  CALL    L05D1
        JR      NZ,L05B5
        POP     AF
        LD      (L37E8),A
        CP      0Dh
        RET     NZ
        INC     (IX+04h)
        LD      A,(IX+04h)
        CP      (IX+03h)
        LD      A,C
        RET     NZ
L05CC:  LD      (IX+04h),00h
        RET

        ; --- START PROC L05D1 ---
L05D1:  LD      A,(L37E8)
        AND     0F0h
        CP      30h             ; '0'
        RET

        ; --- START PROC L05D9 ---
L05D9:  PUSH    HL
        LD      A,0Eh
        CALL    L0033
        LD      C,B
L05E0:  CALL    L0049
        CP      20h             ; ' '
        JR      NC,L060C
        CP      0Dh
        JP      Z,L0662
        CP      1Fh
        JR      Z,L0619
        CP      01h
        JR      Z,L0661
        LD      DE,05E0h
        PUSH    DE
        CP      08h
        JR      Z,L0630
        CP      18h
        JR      Z,L062B
        CP      09h
        JR      Z,L0646
        CP      19h
        JR      Z,L0641
        CP      0Ah
        RET     NZ
        POP     DE
L060C:  LD      (HL),A
        LD      A,B
        OR      A
        JR      Z,L05E0
        LD      A,(HL)
        INC     HL
        CALL    L0033
        DEC     B
        JR      L05E0

L0619:  CALL    L01C9
        LD      B,C
        POP     HL
        PUSH    HL
        JP      L05E0

L0622:  CALL    L0630
        DEC     HL
        LD      A,(HL)
        INC     HL
        CP      0Ah
        RET     Z
L062B:  LD      A,B
        CP      C
        JR      NZ,L0622
        RET

        ; --- START PROC L0630 ---
L0630:  LD      A,B
        CP      C
        RET     Z
        DEC     HL
        LD      A,(HL)
        CP      0Ah
        INC     HL
        RET     Z
        DEC     HL
        LD      A,08h
        CALL    L0033
        INC     B
        RET

        ; --- START PROC L0641 ---
L0641:  LD      A,17h
        JP      L0033

        ; --- START PROC L0646 ---
L0646:  CALL    L0348
        AND     07h
        CPL
        INC     A
        ADD     A,08h
        LD      E,A
L0650:  LD      A,B
        OR      A
        RET     Z
        LD      A,20h           ; ' '
        LD      (HL),A
        INC     HL
        PUSH    DE
        CALL    L0033
        POP     DE
        DEC     B
        DEC     E
        RET     Z
        JR      L0650

        ; --- START PROC L0661 ---
L0661:  SCF
        ; --- START PROC L0662 ---
L0662:  PUSH    AF
        LD      A,0Dh
        LD      (HL),A
        CALL    L0033
        LD      A,0Fh
        CALL    L0033
        LD      A,C
        SUB     B
        LD      B,A
        POP     AF
        POP     HL
        RET

        ; --- START PROC L0674 ---
L0674:  OUT     (0FFh),A
L0676:  LD      HL,06D2h
        LD      DE,4000h
        LD      BC,0036h
        LDIR
        DEC     A
        DEC     A
        JR      NZ,L0676
        LD      B,27h           ; '''
L0687:  LD      (DE),A
        INC     DE
        DJNZ    L0687
        LD      A,(L3840)
        AND     04h
        JP      NZ,L0075
        LD      SP,407Dh
        LD      A,(L37EC)
        INC     A
        CP      02h
        JP      C,L0075
L069F:  LD      A,01h
        LD      (L37E1),A
        LD      HL,37ECh
        LD      DE,37EFh
        LD      (HL),03h
        LD      BC,0000h
        CALL    L0060
L06B2:  BIT     0,(HL)
        JR      NZ,L06B2
        XOR     A
        LD      (L37EE),A
        LD      BC,4200h
        LD      A,8Ch
        LD      (HL),A
L06C0:  BIT     1,(HL)
        JR      Z,L06C0
        LD      A,(DE)
        LD      (BC),A
        INC     C
        JR      NZ,L06C0
        JP      4200h

L06CC:  LD      BC,1A18h
        JP      L19AE

L06D2:  JP      L1C96

L06D5:  JP      L1D78

L06D8:  JP      L1C90

L06DB:  JP      L25D9

L06DE:  RET

L06DF:  NOP
        NOP
        RET

L06E2:  NOP
        NOP
        EI
        RET

L06E6:  NOP
        LD      BC,03E3h
        NOP
        NOP
        NOP
        LD      C,E
        LD      C,C
        RLCA
        LD      E,B
        INC     B
        NOP
        INC     A
        NOP
        LD      B,H
        LD      C,A
        LD      B,8Dh
        DEC     B
        LD      B,E
        NOP
        NOP
        LD      D,B
        LD      D,D
        JP      5000h

L0702:  RST     0x00
        NOP
        NOP
        LD      A,00h
        RET

        ; --- START PROC L0708 ---
L0708:  LD      HL,1380h
        ; --- START PROC L070B ---
L070B:  CALL    L09C2
        JR      L0716

        ; --- START PROC L0710 ---
L0710:  CALL    L09C2
        ; --- START PROC L0713 ---
L0713:  CALL    L0982
        ; --- START PROC L0716 ---
L0716:  LD      A,B
        OR      A
        RET     Z
        LD      A,(4124h)
        OR      A
        JP      Z,L09B4
        SUB     B
        JR      NC,L072F
        CPL
        INC     A
        EX      DE,HL
        CALL    L09A4
        EX      DE,HL
        CALL    L09B4
        POP     BC
        POP     DE
L072F:  CP      19h
        RET     NC
        PUSH    AF
        CALL    L09DF
        LD      H,A
        POP     AF
        CALL    L07D7
        OR      H
        LD      HL,4121h
        JP      P,L0754
        CALL    L07B7
        JP      NC,L0796
        INC     HL
        INC     (HL)
        JP      Z,L07B2
        LD      L,01h
        CALL    L07EB
        JR      L0796

L0754:  XOR     A
        SUB     B
        LD      B,A
        LD      A,(HL)
        SBC     A,E
        LD      E,A
        INC     HL
        LD      A,(HL)
        SBC     A,D
        LD      D,A
        INC     HL
        LD      A,(HL)
        SBC     A,C
        LD      C,A
        ; --- START PROC L0762 ---
L0762:  CALL    C,L07C3
        ; --- START PROC L0765 ---
L0765:  LD      L,B
        LD      H,E
        XOR     A
L0768:  LD      B,A
        LD      A,C
        OR      A
        JR      NZ,L0785
        LD      C,D
        LD      D,H
        LD      H,L
        LD      L,A
        LD      A,B
        SUB     08h
        CP      0E0h
        JR      NZ,L0768
        ; --- START PROC L0778 ---
L0778:  XOR     A
L0779:  LD      (4124h),A
        RET

        ; --- START PROC L077D ---
L077D:  DEC     B
        ADD     HL,HL
        LD      A,D
        RLA
        LD      D,A
        LD      A,C
        ADC     A,A
        LD      C,A
        ; --- START PROC L0785 ---
L0785:  JP      P,L077D
        LD      A,B
        LD      E,H
        LD      B,L
L078B:  OR      A
        JR      Z,L0796
        LD      HL,4124h
        ADD     A,(HL)
        LD      (HL),A
        JR      NC,L0778
        RET     Z
        ; --- START PROC L0796 ---
L0796:  LD      A,B
        ; --- START PROC L0797 ---
L0797:  LD      HL,4124h
        OR      A
        CALL    M,L07A8
        LD      B,(HL)
        INC     HL
        LD      A,(HL)
        AND     80h
        XOR     C
        LD      C,A
        JP      L09B4

        ; --- START PROC L07A8 ---
L07A8:  INC     E
        RET     NZ
        INC     D
        RET     NZ
        INC     C
        RET     NZ
        LD      C,80h
        INC     (HL)
        RET     NZ
        ; --- START PROC L07B2 ---
L07B2:  LD      E,0Ah
        JP      L19A2

        ; --- START PROC L07B7 ---
L07B7:  LD      A,(HL)
        ADD     A,E
        LD      E,A
        INC     HL
        LD      A,(HL)
        ADC     A,D
        LD      D,A
        INC     HL
        LD      A,(HL)
        ADC     A,C
        LD      C,A
        RET

        ; --- START PROC L07C3 ---
L07C3:  LD      HL,4125h
        LD      A,(HL)
        CPL
        LD      (HL),A
        XOR     A
        LD      L,A
        SUB     B
        LD      B,A
        LD      A,L
        SBC     A,E
        LD      E,A
        LD      A,L
        SBC     A,D
        LD      D,A
        LD      A,L
        SBC     A,C
        LD      C,A
        RET

        ; --- START PROC L07D7 ---
L07D7:  LD      B,00h
L07D9:  SUB     08h
        JR      C,L07E4
        LD      B,E
        LD      E,D
        LD      D,C
        LD      C,00h
        JR      L07D9

L07E4:  ADD     A,09h
        LD      L,A
        ; --- START PROC L07E7 ---
L07E7:  XOR     A
        DEC     L
        RET     Z
        LD      A,C
        ; --- START PROC L07EB ---
L07EB:  RRA
        LD      C,A
        LD      A,D
        RRA
        LD      D,A
        LD      A,E
        RRA
        LD      E,A
        LD      A,B
        RRA
        LD      B,A
        JR      L07E7

L07F8:  NOP
        NOP
        NOP
        ADD     A,C
        INC     BC
        XOR     D
        LD      D,(HL)
        ADD     HL,DE
        ADD     A,B
        POP     AF
        LD      (8076h),HL
        LD      B,L
        XOR     D
        JR      C,L078B
        ; --- START PROC L0809 ---
L0809:  CALL    L0955
        OR      A
        JP      PE,L1E4A
        LD      HL,4124h
        LD      A,(HL)
        LD      BC,8035h
        LD      DE,04F3h
        SUB     B
        PUSH    AF
        LD      (HL),B
        PUSH    DE
        PUSH    BC
        CALL    L0716
        POP     BC
        POP     DE
        INC     B
        CALL    L08A2
        LD      HL,07F8h
        CALL    L0710
        LD      HL,07FCh
        CALL    L149A
        LD      BC,8080h
        LD      DE,0000h
        CALL    L0716
        POP     AF
        CALL    L0F89
        ; --- START PROC L0841 ---
L0841:  LD      BC,8031h
        LD      DE,7218h
        ; --- START PROC L0847 ---
L0847:  CALL    L0955
        RET     Z
        LD      L,00h
        CALL    L0914
        LD      A,C
        LD      (414Fh),A
        EX      DE,HL
        LD      (4150h),HL
        LD      BC,0000h
        LD      D,B
        LD      E,B
        LD      HL,0765h
        PUSH    HL
        LD      HL,0869h
        PUSH    HL
        PUSH    HL
        LD      HL,4121h
        LD      A,(HL)
        INC     HL
        OR      A
        JR      Z,L0892
        PUSH    HL
        LD      L,08h
L0871:  RRA
        LD      H,A
        LD      A,C
        JR      NC,L0881
        PUSH    HL
        LD      HL,(4150h)
        ADD     HL,DE
        EX      DE,HL
        POP     HL
        LD      A,(414Fh)
        ADC     A,C
L0881:  RRA
        LD      C,A
        LD      A,D
        RRA
        LD      D,A
        LD      A,E
        RRA
        LD      E,A
        LD      A,B
        RRA
        LD      B,A
        DEC     L
        LD      A,H
        JR      NZ,L0871
        ; --- START PROC L0890 ---
L0890:  POP     HL
        RET

        ; --- START PROC L0892 ---
L0892:  LD      B,E
        LD      E,D
        LD      D,C
        LD      C,A
        RET

        ; --- START PROC L0897 ---
L0897:  CALL    L09A4
        LD      HL,0DD8h
        CALL    L09B1
L08A0:  POP     BC
        POP     DE
        ; --- START PROC L08A2 ---
L08A2:  CALL    L0955
        JP      Z,L1999+1       ; reference not aligned to instruction
        LD      L,0FFh
        CALL    L0914
        INC     (HL)
        INC     (HL)
        DEC     HL
        LD      A,(HL)
        LD      (4089h),A
        DEC     HL
        LD      A,(HL)
        LD      (4085h),A
        DEC     HL
        LD      A,(HL)
        LD      (4081h),A
        LD      B,C
        EX      DE,HL
        XOR     A
        LD      C,A
        LD      D,A
        LD      E,A
        LD      (408Ch),A
L08C7:  PUSH    HL
        PUSH    BC
        LD      A,L
        CALL    4080h
        SBC     A,00h
        CCF
        JR      NC,L08D8+1      ; reference not aligned to instruction
        LD      (408Ch),A
        POP     AF
        POP     AF
        SCF
L08D8:  JP      NC,0E1C1h
        LD      A,C
        INC     A
        DEC     A
        RRA
        JP      M,L0797
        RLA
        LD      A,E
        RLA
        LD      E,A
        LD      A,D
        RLA
        LD      D,A
        LD      A,C
        RLA
        LD      C,A
        ADD     HL,HL
        LD      A,B
        RLA
        LD      B,A
        LD      A,(408Ch)
        RLA
        LD      (408Ch),A
        LD      A,C
        OR      D
        OR      E
        JR      NZ,L08C7
        PUSH    HL
        LD      HL,4124h
        DEC     (HL)
        POP     HL
        JR      NZ,L08C7
        JP      L07B2

        ; --- START PROC L0907 ---
L0907:  LD      A,0FFh
L0909:  LD      L,0AFh
        LD      HL,412Dh
        LD      C,(HL)
        INC     HL
        XOR     (HL)
        LD      B,A
        LD      L,00h
        ; --- START PROC L0914 ---
L0914:  LD      A,B
        OR      A
        JR      Z,L0937
        LD      A,L
        LD      HL,4124h
        XOR     (HL)
        ADD     A,B
        LD      B,A
        RRA
        XOR     B
        LD      A,B
        JP      P,L0936
        ADD     A,80h
        LD      (HL),A
        JP      Z,L0890
        CALL    L09DF
        LD      (HL),A
        ; --- START PROC L092F ---
L092F:  DEC     HL
        RET

L0931:  CALL    L0955
        CPL
        POP     HL
        ; --- START PROC L0936 ---
L0936:  OR      A
        ; --- START PROC L0937 ---
L0937:  POP     HL
        JP      P,L0778
        JP      L07B2

        ; --- START PROC L093E ---
L093E:  CALL    L09BF
        LD      A,B
        OR      A
        RET     Z
        ADD     A,02h
        JP      C,L07B2
        LD      B,A
        CALL    L0716
        LD      HL,4124h
        INC     (HL)
        RET     NZ
        JP      L07B2

        ; --- START PROC L0955 ---
L0955:  LD      A,(4124h)
        OR      A
        RET     Z
        LD      A,(4123h)
L095D:  CP      2Fh             ; '/'
        ; --- START PROC L095F ---
L095F:  RLA
        ; --- START PROC L0960 ---
L0960:  SBC     A,A
        RET     NZ
        INC     A
        RET

        ; --- START PROC L0964 ---
L0964:  LD      B,88h
        LD      DE,0000h
        ; --- START PROC L0969 ---
L0969:  LD      HL,4124h
        LD      C,A
        LD      (HL),B
        LD      B,00h
        INC     HL
        LD      (HL),80h
        RLA
        JP      L0762

L0977:  CALL    L0994
        RET     P
        ; --- START PROC L097B ---
L097B:  RST     0x20
        JP      M,L0C5B
        JP      Z,L0AF6
        ; --- START PROC L0982 ---
L0982:  LD      HL,4123h
        LD      A,(HL)
        XOR     80h
        LD      (HL),A
        RET

L098A:  CALL    L0994
        ; --- START PROC L098D ---
L098D:  LD      L,A
        RLA
        SBC     A,A
        LD      H,A
        JP      L0A9A

        ; --- START PROC L0994 ---
L0994:  RST     0x20
        JP      Z,L0AF6
        JP      P,L0955
        LD      HL,(4121h)
        ; --- START PROC L099E ---
L099E:  LD      A,H
        OR      L
        RET     Z
        LD      A,H
        JR      L095F

        ; --- START PROC L09A4 ---
L09A4:  EX      DE,HL
        LD      HL,(4121h)
        EX      (SP),HL
        PUSH    HL
        LD      HL,(4123h)
        EX      (SP),HL
        PUSH    HL
        EX      DE,HL
        RET

        ; --- START PROC L09B1 ---
L09B1:  CALL    L09C2
        ; --- START PROC L09B4 ---
L09B4:  EX      DE,HL
        LD      (4121h),HL
        LD      H,B
        LD      L,C
        LD      (4123h),HL
        EX      DE,HL
        RET

        ; --- START PROC L09BF ---
L09BF:  LD      HL,4121h
        ; --- START PROC L09C2 ---
L09C2:  LD      E,(HL)
        INC     HL
        ; --- START PROC L09C4 ---
L09C4:  LD      D,(HL)
        INC     HL
        LD      C,(HL)
        INC     HL
        LD      B,(HL)
        ; --- START PROC L09C9 ---
L09C9:  INC     HL
        RET

        ; --- START PROC L09CB ---
L09CB:  LD      DE,4121h
        LD      B,04h
        JR      L09D7

L09D2:  EX      DE,HL
        ; --- START PROC L09D3 ---
L09D3:  LD      A,(40AFh)
        LD      B,A
        ; --- START PROC L09D7 ---
L09D7:  LD      A,(DE)
        LD      (HL),A
        INC     DE
        INC     HL
        DEC     B
        JR      NZ,L09D7
        RET

        ; --- START PROC L09DF ---
L09DF:  LD      HL,4123h
        LD      A,(HL)
        RLCA
        SCF
        RRA
        LD      (HL),A
        CCF
        RRA
        INC     HL
        INC     HL
        LD      (HL),A
        LD      A,C
        RLCA
        SCF
        RRA
        LD      C,A
        RRA
        XOR     (HL)
        RET

        ; --- START PROC L09F4 ---
L09F4:  LD      HL,4127h
        ; --- START PROC L09F7 ---
L09F7:  LD      DE,09D2h
        JR      L0A02

        ; --- START PROC L09FC ---
L09FC:  LD      HL,4127h
        LD      DE,09D3h
        ; --- START PROC L0A02 ---
L0A02:  PUSH    DE
        ; --- START PROC L0A03 ---
L0A03:  LD      DE,4121h
        RST     0x20
        RET     C
        LD      DE,411Dh
        RET

        ; --- START PROC L0A0C ---
L0A0C:  LD      A,B
        OR      A
        JP      Z,L0955
        LD      HL,095Eh
        PUSH    HL
        CALL    L0955
        LD      A,C
        RET     Z
        LD      HL,4123h
        XOR     (HL)
        LD      A,C
        RET     M
        CALL    L0A26
        ; --- START PROC L0A23 ---
L0A23:  RRA
        XOR     C
        RET

        ; --- START PROC L0A26 ---
L0A26:  INC     HL
        LD      A,B
        CP      (HL)
        RET     NZ
        DEC     HL
        LD      A,C
        CP      (HL)
        RET     NZ
        DEC     HL
        LD      A,D
        CP      (HL)
        RET     NZ
        DEC     HL
        LD      A,E
        SUB     (HL)
        RET     NZ
        POP     HL
        POP     HL
        RET

        ; --- START PROC L0A39 ---
L0A39:  LD      A,D
        XOR     H
        LD      A,H
        JP      M,L095F
        CP      D
        JP      NZ,L0960
        LD      A,L
        SUB     E
        JP      NZ,L0960
        RET

        ; --- START PROC L0A49 ---
L0A49:  LD      HL,4127h
        CALL    L09D3
        ; --- START PROC L0A4F ---
L0A4F:  LD      DE,412Eh
        LD      A,(DE)
        OR      A
        JP      Z,L0955
        LD      HL,095Eh
        PUSH    HL
        CALL    L0955
        DEC     DE
        LD      A,(DE)
        LD      C,A
        RET     Z
        LD      HL,4123h
        XOR     (HL)
        LD      A,C
        RET     M
        INC     DE
        INC     HL
        LD      B,08h
L0A6C:  LD      A,(DE)
        SUB     (HL)
        JP      NZ,L0A23
        DEC     DE
        DEC     HL
        DEC     B
        JR      NZ,L0A6C
        POP     BC
        RET

L0A78:  CALL    L0A4F
        JP      NZ,L095D+1      ; reference not aligned to instruction
        RET

        ; --- START PROC L0A7F ---
L0A7F:  RST     0x20
        LD      HL,(4121h)
        RET     M
        JP      Z,L0AF6
        CALL    NC,L0AB9
        LD      HL,07B2h
        PUSH    HL
        ; --- START PROC L0A8E ---
L0A8E:  LD      A,(4124h)
        CP      90h
        JR      NC,L0AA3
        CALL    L0AFB
        EX      DE,HL
        ; --- START PROC L0A99 ---
L0A99:  POP     DE
        ; --- START PROC L0A9A ---
L0A9A:  LD      (4121h),HL
        LD      A,02h
        ; --- START PROC L0A9F ---
L0A9F:  LD      (40AFh),A
        RET

        ; --- START PROC L0AA3 ---
L0AA3:  LD      BC,9080h
        LD      DE,0000h
        CALL    L0A0C
        RET     NZ
        LD      H,C
        LD      L,D
        JR      L0A99

        ; --- START PROC L0AB1 ---
L0AB1:  RST     0x20
        RET     PO
        JP      M,L0ACC
        JP      Z,L0AF6
        ; --- START PROC L0AB9 ---
L0AB9:  CALL    L09BF
        CALL    L0AEE+1         ; reference not aligned to instruction
        LD      A,B
        OR      A
        RET     Z
        CALL    L09DF
        LD      HL,4120h
        LD      B,(HL)
        JP      L0796

        ; --- START PROC L0ACC ---
L0ACC:  LD      HL,(4121h)
        ; --- START PROC L0ACF ---
L0ACF:  CALL    L0AEE+1         ; reference not aligned to instruction
        LD      A,H
        LD      D,L
        LD      E,00h
        LD      B,90h
        JP      L0969

        ; --- START PROC L0ADB ---
L0ADB:  RST     0x20
        RET     NC
        JP      Z,L0AF6
        CALL    M,L0ACC
        ; --- START PROC L0AE3 ---
L0AE3:  LD      HL,0000h
        LD      (411Dh),HL
        LD      (411Fh),HL
        ; --- START PROC L0AEC ---
L0AEC:  LD      A,08h
L0AEE:  LD      BC,043Eh
        JP      L0A9F

        ; --- START PROC L0AF4 ---
L0AF4:  RST     0x20
        RET     Z
        ; --- START PROC L0AF6 ---
L0AF6:  LD      E,18h
        JP      L19A2

        ; --- START PROC L0AFB ---
L0AFB:  LD      B,A
        LD      C,A
        LD      D,A
        LD      E,A
        OR      A
        RET     Z
        PUSH    HL
        CALL    L09BF
        CALL    L09DF
        XOR     (HL)
        LD      H,A
        CALL    M,L0B1F
        LD      A,98h
        SUB     B
        CALL    L07D7
        LD      A,H
        RLA
        CALL    C,L07A8
        LD      B,00h
        CALL    C,L07C3
        POP     HL
        RET

        ; --- START PROC L0B1F ---
L0B1F:  DEC     DE
        LD      A,D
        AND     E
        INC     A
        RET     NZ
        ; --- START PROC L0B24 ---
L0B24:  DEC     BC
        RET

L0B26:  RST     0x20
        RET     M
        CALL    L0955
        JP      P,L0B37
        CALL    L0982
        CALL    L0B37
        JP      L097B

        ; --- START PROC L0B37 ---
L0B37:  RST     0x20
        RET     M
        JR      NC,L0B59
        JR      Z,L0AF6
        CALL    L0A8E
        ; --- START PROC L0B40 ---
L0B40:  LD      HL,4124h
        LD      A,(HL)
        CP      98h
        LD      A,(4121h)
        RET     NC
        LD      A,(HL)
        CALL    L0AFB
        LD      (HL),98h
        LD      A,E
        PUSH    AF
        LD      A,C
        RLA
        CALL    L0762
        POP     AF
        RET

        ; --- START PROC L0B59 ---
L0B59:  LD      HL,4124h
        LD      A,(HL)
        CP      90h
        JP      C,L0A7F
        JR      NZ,L0B78
        LD      C,A
        DEC     HL
        LD      A,(HL)
        XOR     80h
        LD      B,06h
L0B6B:  DEC     HL
        OR      (HL)
        DEC     B
        JR      NZ,L0B6B
        OR      A
        LD      HL,8000h
        JP      Z,L0A9A
        LD      A,C
L0B78:  CP      0B8h
        RET     NC
        ; --- START PROC L0B7B ---
L0B7B:  PUSH    AF
        CALL    L09BF
        CALL    L09DF
        XOR     (HL)
        DEC     HL
        LD      (HL),0B8h
        PUSH    AF
        CALL    M,L0BA0
        LD      HL,4123h
        LD      A,0B8h
        SUB     B
        CALL    L0D69
        POP     AF
        CALL    M,L0D20
        XOR     A
        LD      (411Ch),A
        POP     AF
        RET     NC
        JP      L0CD8

        ; --- START PROC L0BA0 ---
L0BA0:  LD      HL,411Dh
L0BA3:  LD      A,(HL)
        DEC     (HL)
        OR      A
        INC     HL
        JR      Z,L0BA3
        RET

        ; --- START PROC L0BAA ---
L0BAA:  PUSH    HL
        LD      HL,0000h
        LD      A,B
        OR      C
        JR      Z,L0BC4
        LD      A,10h
L0BB4:  ADD     HL,HL
        JP      C,L273D
        EX      DE,HL
        ADD     HL,HL
        EX      DE,HL
        JR      NC,L0BC1
        ADD     HL,BC
        JP      C,L273D
L0BC1:  DEC     A
        JR      NZ,L0BB4
L0BC4:  EX      DE,HL
        POP     HL
        RET

L0BC7:  LD      A,H
        RLA
        SBC     A,A
        LD      B,A
        CALL    L0C51
        LD      A,C
        SBC     A,B
        JR      L0BD5

        ; --- START PROC L0BD2 ---
L0BD2:  LD      A,H
        RLA
        SBC     A,A
L0BD5:  LD      B,A
        PUSH    HL
        LD      A,D
        RLA
        SBC     A,A
        ADD     HL,DE
        ADC     A,B
        RRCA
        XOR     H
        JP      P,L0A99
        PUSH    BC
        EX      DE,HL
        CALL    L0ACF
        POP     AF
        POP     HL
        CALL    L09A4
        EX      DE,HL
        CALL    L0C6B
        JP      L0F8F

L0BF2:  LD      A,H
        OR      L
        JP      Z,L0A9A
        PUSH    HL
        PUSH    DE
        CALL    L0C45
        PUSH    BC
        LD      B,H
        LD      C,L
        LD      HL,0000h
        LD      A,10h
L0C04:  ADD     HL,HL
        JR      C,L0C25+1       ; reference not aligned to instruction
        EX      DE,HL
        ADD     HL,HL
        EX      DE,HL
        JR      NC,L0C10
        ADD     HL,BC
        JP      C,L0C25+1       ; reference not aligned to instruction
L0C10:  DEC     A
        JR      NZ,L0C04
        POP     BC
        POP     DE
        LD      A,H
        OR      A
        JP      M,L0C1F
        POP     DE
        LD      A,B
        JP      L0C4D

L0C1F:  XOR     80h
        OR      L
        JR      Z,L0C37
        EX      DE,HL
L0C25:  LD      BC,0E1C1h
        CALL    L0ACF
        POP     HL
        CALL    L09A4
        CALL    L0ACF
        POP     BC
        POP     DE
        JP      L0847

L0C37:  LD      A,B
        OR      A
        POP     BC
        JP      M,L0A9A
        PUSH    DE
        CALL    L0ACF
        POP     DE
        JP      L0982

        ; --- START PROC L0C45 ---
L0C45:  LD      A,H
        XOR     D
        LD      B,A
        CALL    L0C4C
        EX      DE,HL
        ; --- START PROC L0C4C ---
L0C4C:  LD      A,H
L0C4D:  OR      A
        JP      P,L0A9A
        ; --- START PROC L0C51 ---
L0C51:  XOR     A
        LD      C,A
        SUB     L
        LD      L,A
        LD      A,C
        SBC     A,H
        LD      H,A
        JP      L0A9A

        ; --- START PROC L0C5B ---
L0C5B:  LD      HL,(4121h)
        CALL    L0C51
        LD      A,H
        XOR     80h
        OR      L
        RET     NZ
        ; --- START PROC L0C66 ---
L0C66:  EX      DE,HL
        CALL    L0AEE+1         ; reference not aligned to instruction
        XOR     A
        ; --- START PROC L0C6B ---
L0C6B:  LD      B,98h
        JP      L0969

L0C70:  LD      HL,412Dh
        LD      A,(HL)
        XOR     80h
        LD      (HL),A
        ; --- START PROC L0C77 ---
L0C77:  LD      HL,412Eh
        LD      A,(HL)
        OR      A
        RET     Z
        LD      B,A
        DEC     HL
        LD      C,(HL)
        LD      DE,4124h
        LD      A,(DE)
        OR      A
        JP      Z,L09F4
        SUB     B
        JR      NC,L0CA1
        CPL
        INC     A
        PUSH    AF
        LD      C,08h
        INC     HL
        PUSH    HL
L0C92:  LD      A,(DE)
        LD      B,(HL)
        LD      (HL),A
        LD      A,B
        LD      (DE),A
        DEC     DE
        DEC     HL
        DEC     C
        JR      NZ,L0C92
        POP     HL
        LD      B,(HL)
        DEC     HL
        LD      C,(HL)
        POP     AF
L0CA1:  CP      39h             ; '9'
        RET     NC
        PUSH    AF
        CALL    L09DF
        INC     HL
        LD      (HL),00h
        LD      B,A
        POP     AF
        LD      HL,412Dh
        CALL    L0D69
        LD      A,(4126h)
        LD      (411Ch),A
        LD      A,B
        OR      A
        JP      P,L0CCF
        CALL    L0D33
        JP      NC,L0D0E
        EX      DE,HL
        INC     (HL)
        JP      Z,L07B2
        CALL    L0D90
        JP      L0D0E

L0CCF:  CALL    L0D45
        LD      HL,4125h
        CALL    C,L0D57
        ; --- START PROC L0CD8 ---
L0CD8:  XOR     A
L0CD9:  LD      B,A
        LD      A,(4123h)
        OR      A
        JR      NZ,L0CFE
        LD      HL,411Ch
        LD      C,08h
L0CE5:  LD      D,(HL)
        LD      (HL),A
        LD      A,D
        INC     HL
        DEC     C
        JR      NZ,L0CE5
        LD      A,B
        SUB     08h
        CP      0C0h
        JR      NZ,L0CD9
        JP      L0778

L0CF6:  DEC     B
        LD      HL,411Ch
        CALL    L0D97
        OR      A
L0CFE:  JP      P,L0CF6
        LD      A,B
        OR      A
        JR      Z,L0D0E
        LD      HL,4124h
        ADD     A,(HL)
        LD      (HL),A
        JP      NC,L0778
        RET     Z
        ; --- START PROC L0D0E ---
L0D0E:  LD      A,(411Ch)
        ; --- START PROC L0D11 ---
L0D11:  OR      A
        CALL    M,L0D20
        LD      HL,4125h
        LD      A,(HL)
        AND     80h
        DEC     HL
        DEC     HL
        XOR     (HL)
        LD      (HL),A
        RET

        ; --- START PROC L0D20 ---
L0D20:  LD      HL,411Dh
        LD      B,07h
L0D25:  INC     (HL)
        RET     NZ
        INC     HL
        DEC     B
        JR      NZ,L0D25
        INC     (HL)
        JP      Z,L07B2
        DEC     HL
        LD      (HL),80h
        RET

        ; --- START PROC L0D33 ---
L0D33:  LD      HL,4127h
        ; --- START PROC L0D36 ---
L0D36:  LD      DE,411Dh
        ; --- START PROC L0D39 ---
L0D39:  LD      C,07h
        XOR     A
L0D3C:  LD      A,(DE)
        ADC     A,(HL)
        LD      (DE),A
        INC     DE
        INC     HL
        DEC     C
        JR      NZ,L0D3C
        RET

        ; --- START PROC L0D45 ---
L0D45:  LD      HL,4127h
        ; --- START PROC L0D48 ---
L0D48:  LD      DE,411Dh
        ; --- START PROC L0D4B ---
L0D4B:  LD      C,07h
        XOR     A
L0D4E:  LD      A,(DE)
        SBC     A,(HL)
        LD      (DE),A
        INC     DE
        INC     HL
        DEC     C
        JR      NZ,L0D4E
        RET

        ; --- START PROC L0D57 ---
L0D57:  LD      A,(HL)
        CPL
        LD      (HL),A
        LD      HL,411Ch
        LD      B,08h
        XOR     A
L0D60:  LD      C,A
L0D61:  LD      A,C
        SBC     A,(HL)
        LD      (HL),A
        INC     HL
        DEC     B
        JR      NZ,L0D61
        RET

        ; --- START PROC L0D69 ---
L0D69:  LD      (HL),C
        PUSH    HL
        ; --- START PROC L0D6B ---
L0D6B:  SUB     08h
        JR      C,L0D7D
        POP     HL
        ; --- START PROC L0D70 ---
L0D70:  PUSH    HL
        LD      DE,0800h
L0D74:  LD      C,(HL)
        LD      (HL),E
        LD      E,C
        DEC     HL
        DEC     D
        JR      NZ,L0D74
        JR      L0D6B

        ; --- START PROC L0D7D ---
L0D7D:  ADD     A,09h
        LD      D,A
        ; --- START PROC L0D80 ---
L0D80:  XOR     A
        POP     HL
        DEC     D
        RET     Z
        ; --- START PROC L0D84 ---
L0D84:  PUSH    HL
        LD      E,08h
L0D87:  LD      A,(HL)
        RRA
        LD      (HL),A
        DEC     HL
        DEC     E
        JR      NZ,L0D87
        JR      L0D80

        ; --- START PROC L0D90 ---
L0D90:  LD      HL,4123h
        LD      D,01h
        JR      L0D84

        ; --- START PROC L0D97 ---
L0D97:  LD      C,08h
        ; --- START PROC L0D99 ---
L0D99:  LD      A,(HL)
        RLA
        LD      (HL),A
        INC     HL
        DEC     C
        JR      NZ,L0D99
        RET

        ; --- START PROC L0DA1 ---
L0DA1:  CALL    L0955
        RET     Z
        CALL    L0909+1         ; reference not aligned to instruction
        CALL    L0E39
        LD      (HL),C
        INC     DE
        LD      B,07h
L0DAF:  LD      A,(DE)
        INC     DE
        OR      A
        PUSH    DE
        JR      Z,L0DCC
        LD      C,08h
L0DB7:  PUSH    BC
        RRA
        LD      B,A
        CALL    C,L0D33
        CALL    L0D90
        LD      A,B
        POP     BC
        DEC     C
        JR      NZ,L0DB7
L0DC5:  POP     DE
        DEC     B
        JR      NZ,L0DAF
        JP      L0CD8

L0DCC:  LD      HL,4123h
        CALL    L0D70
        JR      L0DC5

L0DD4:  NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        JR      NZ,L0D60
        ; --- START PROC L0DDC ---
L0DDC:  LD      DE,0DD4h
        LD      HL,4127h
        CALL    L09D3
        LD      A,(412Eh)
        OR      A
        JP      Z,L1999+1       ; reference not aligned to instruction
        CALL    L0907
        INC     (HL)
        INC     (HL)
        CALL    L0E39
        LD      HL,4151h
        LD      (HL),C
        LD      B,C
L0DF9:  LD      DE,414Ah
        LD      HL,4127h
        CALL    L0D4B
        LD      A,(DE)
        SBC     A,C
        CCF
        JR      C,L0E11+1       ; reference not aligned to instruction
        LD      DE,414Ah
        LD      HL,4127h
        CALL    L0D39
        XOR     A
L0E11:  JP      C,L0412
        LD      A,(4123h)
        INC     A
        DEC     A
        RRA
        JP      M,L0D11
        RLA
        LD      HL,411Dh
        LD      C,07h
        CALL    L0D99
        LD      HL,414Ah
        CALL    L0D97
        LD      A,B
        OR      A
        JR      NZ,L0DF9
        LD      HL,4124h
        DEC     (HL)
        JR      NZ,L0DF9
        JP      L07B2

        ; --- START PROC L0E39 ---
L0E39:  LD      A,C
        LD      (412Dh),A
        DEC     HL
        LD      DE,4150h
        LD      BC,0700h
L0E44:  LD      A,(HL)
        LD      (DE),A
        LD      (HL),C
        DEC     DE
        DEC     HL
        DEC     B
        JR      NZ,L0E44
        RET

        ; --- START PROC L0E4D ---
L0E4D:  CALL    L09FC
        EX      DE,HL
        DEC     HL
        LD      A,(HL)
        OR      A
        RET     Z
        ADD     A,02h
        JP      C,L07B2
        LD      (HL),A
        PUSH    HL
        CALL    L0C77
        POP     HL
        INC     (HL)
        RET     NZ
        JP      L07B2

        ; --- START PROC L0E65 ---
L0E65:  CALL    L0778
        CALL    L0AEC
L0E6B:  OR      0AFh
        EX      DE,HL
        LD      BC,00FFh
        LD      H,B
        LD      L,B
        CALL    Z,L0A9A
        EX      DE,HL
        LD      A,(HL)
        CP      2Dh             ; '-'
        PUSH    AF
        JP      Z,L0E83
        CP      2Bh             ; '+'
        JR      Z,L0E83
        DEC     HL
        ; --- START PROC L0E83 ---
L0E83:  RST     0x10
        JP      C,L0F29
        CP      2Eh             ; '.'
        JP      Z,L0EE4
        CP      45h             ; 'E'
        JR      Z,L0EA4
        CP      25h             ; '%'
        JP      Z,L0EEE
        CP      23h             ; '#'
        JP      Z,L0EF5
        CP      21h             ; '!'
        JP      Z,L0EF6
        CP      44h             ; 'D'
        JR      NZ,L0EC7
        OR      A
L0EA4:  CALL    L0EFB
        PUSH    HL
        LD      HL,0EBDh
        EX      (SP),HL
        RST     0x10
        DEC     D
        CP      0CEh
        RET     Z
        CP      2Dh             ; '-'
        RET     Z
        INC     D
        CP      0CDh
        RET     Z
        CP      2Bh             ; '+'
        RET     Z
        DEC     HL
        POP     AF
        ; --- START PROC L0EBD ---
L0EBD:  RST     0x10
        JP      C,L0F94
        INC     D
        JR      NZ,L0EC7
        XOR     A
        SUB     E
        LD      E,A
        ; --- START PROC L0EC7 ---
L0EC7:  PUSH    HL
        LD      A,E
        SUB     B
L0ECA:  CALL    P,L0F0A
        CALL    M,L0F18
        JR      NZ,L0ECA
        POP     HL
        POP     AF
        PUSH    HL
        CALL    Z,L097B
        POP     HL
        RST     0x20
        RET     PE
        PUSH    HL
        LD      HL,0890h
        PUSH    HL
        CALL    L0AA3
        RET

        ; --- START PROC L0EE4 ---
L0EE4:  RST     0x20
        INC     C
        JR      NZ,L0EC7
        CALL    C,L0EFB
        JP      L0E83

        ; --- START PROC L0EEE ---
L0EEE:  RST     0x20
        JP      P,L1997
        ; --- START PROC L0EF2 ---
L0EF2:  INC     HL
        JR      L0EC7

        ; --- START PROC L0EF5 ---
L0EF5:  OR      A
        ; --- START PROC L0EF6 ---
L0EF6:  CALL    L0EFB
        JR      L0EF2

        ; --- START PROC L0EFB ---
L0EFB:  PUSH    HL
        PUSH    DE
        PUSH    BC
        PUSH    AF
        CALL    Z,L0AB1
        POP     AF
        CALL    NZ,L0ADB
        POP     BC
        POP     DE
        POP     HL
        RET

        ; --- START PROC L0F0A ---
L0F0A:  RET     Z
        ; --- START PROC L0F0B ---
L0F0B:  PUSH    AF
        RST     0x20
        PUSH    AF
        CALL    PO,L093E
        POP     AF
        CALL    PE,L0E4D
        POP     AF
        ; --- START PROC L0F16 ---
L0F16:  DEC     A
        RET

        ; --- START PROC L0F18 ---
L0F18:  PUSH    DE
        PUSH    HL
        PUSH    AF
        RST     0x20
        PUSH    AF
        CALL    PO,L0897
        POP     AF
        CALL    PE,L0DDC
        POP     AF
        POP     HL
        POP     DE
        INC     A
        RET

        ; --- START PROC L0F29 ---
L0F29:  PUSH    DE
        LD      A,B
        ADC     A,C
        LD      B,A
        PUSH    BC
        PUSH    HL
        LD      A,(HL)
        SUB     30h             ; '0'
        PUSH    AF
        RST     0x20
        JP      P,L0F5D
        LD      HL,(4121h)
        LD      DE,0CCDh
        RST     0x18
        JR      NC,L0F59
        LD      D,H
        LD      E,L
        ADD     HL,HL
        ADD     HL,HL
        ADD     HL,DE
        ADD     HL,HL
        POP     AF
        LD      C,A
        ADD     HL,BC
        LD      A,H
        OR      A
        JP      M,L0F57
        LD      (4121h),HL
L0F51:  POP     HL
        POP     BC
        POP     DE
        JP      L0E83

L0F57:  LD      A,C
        PUSH    AF
L0F59:  CALL    L0ACC
        SCF
L0F5D:  JR      NC,L0F77
        LD      BC,9474h
        LD      DE,2400h
        CALL    L0A0C
        JP      P,L0F74
        CALL    L093E
        POP     AF
        CALL    L0F89
        JR      L0F51

L0F74:  CALL    L0AE3
L0F77:  CALL    L0E4D
        CALL    L09FC
        POP     AF
        CALL    L0964
        CALL    L0AE3
        CALL    L0C77
        JR      L0F51

        ; --- START PROC L0F89 ---
L0F89:  CALL    L09A4
        CALL    L0964
        ; --- START PROC L0F8F ---
L0F8F:  POP     BC
        POP     DE
        JP      L0716

        ; --- START PROC L0F94 ---
L0F94:  LD      A,E
        CP      0Ah
        JR      NC,L0FA1+1      ; reference not aligned to instruction
        RLCA
        RLCA
        ADD     A,E
        RLCA
        ADD     A,(HL)
        SUB     30h             ; '0'
        LD      E,A
L0FA1:  JP      M,L321E
        JP      L0EBD

        ; --- START PROC L0FA7 ---
L0FA7:  PUSH    HL
        LD      HL,1924h
        CALL    L28A7
        POP     HL
        ; --- START PROC L0FAF ---
L0FAF:  CALL    L0A9A
        XOR     A
        CALL    L1034
        OR      (HL)
        CALL    L0FD9
        JP      L28A6

        ; --- START PROC L0FBD ---
L0FBD:  XOR     A
        ; --- START PROC L0FBE ---
L0FBE:  CALL    L1034
        AND     08h
        JR      Z,L0FC7
        LD      (HL),2Bh        ; '+'
L0FC7:  EX      DE,HL
        CALL    L0994
        EX      DE,HL
        JP      P,L0FD9
        LD      (HL),2Dh        ; '-'
        PUSH    BC
        PUSH    HL
        CALL    L097B
        POP     HL
        POP     BC
        OR      H
        ; --- START PROC L0FD9 ---
L0FD9:  INC     HL
        LD      (HL),30h        ; '0'
        LD      A,(40D8h)
        LD      D,A
        RLA
        LD      A,(40AFh)
        JP      C,L109A
        JP      Z,L1092
        CP      04h
        JP      NC,L103D
        LD      BC,0000h
        CALL    L132F
        ; --- START PROC L0FF5 ---
L0FF5:  LD      HL,4130h
        LD      B,(HL)
        LD      C,20h           ; ' '
        LD      A,(40D8h)
        LD      E,A
        AND     20h             ; ' '
        JR      Z,L100A
        LD      A,B
        CP      C
        LD      C,2Ah           ; '*'
        JR      NZ,L100A
        LD      B,C
L100A:  LD      (HL),C
        RST     0x10
        JR      Z,L1022
        CP      45h             ; 'E'
        JR      Z,L1022
        CP      44h             ; 'D'
        JR      Z,L1022
        CP      30h             ; '0'
        JR      Z,L100A
        CP      2Ch             ; ','
        JR      Z,L100A
        CP      2Eh             ; '.'
        JR      NZ,L1025
L1022:  DEC     HL
        LD      (HL),30h        ; '0'
L1025:  LD      A,E
        AND     10h
        JR      Z,L102D
        DEC     HL
        LD      (HL),24h        ; '$'
L102D:  LD      A,E
        AND     04h
        RET     NZ
        DEC     HL
        LD      (HL),B
        RET

        ; --- START PROC L1034 ---
L1034:  LD      (40D8h),A
        LD      HL,4130h
        LD      (HL),20h        ; ' '
        RET

        ; --- START PROC L103D ---
L103D:  CP      05h
        PUSH    HL
        SBC     A,00h
        RLA
        LD      D,A
        INC     D
        CALL    L1201
        LD      BC,0300h
        ADD     A,D
        JP      M,L1057
        INC     D
        CP      D
        JR      NC,L1057
        INC     A
        LD      B,A
        LD      A,02h
L1057:  SUB     02h
        POP     HL
        PUSH    AF
        CALL    L1291
        LD      (HL),30h        ; '0'
        CALL    Z,L09C9
        CALL    L12A4
L1066:  DEC     HL
        LD      A,(HL)
        CP      30h             ; '0'
        JR      Z,L1066
        CP      2Eh             ; '.'
        CALL    NZ,L09C9
        POP     AF
        JR      Z,L1093
        ; --- START PROC L1074 ---
L1074:  PUSH    AF
        RST     0x20
        LD      A,22h           ; '"'
        ADC     A,A
        LD      (HL),A
        INC     HL
        POP     AF
        LD      (HL),2Bh        ; '+'
        JP      P,L1085
        LD      (HL),2Dh        ; '-'
        CPL
        INC     A
L1085:  LD      B,2Fh           ; '/'
L1087:  INC     B
        SUB     0Ah
        JR      NC,L1087
        ADD     A,3Ah           ; ':'
        INC     HL
        LD      (HL),B
        INC     HL
        LD      (HL),A
        ; --- START PROC L1092 ---
L1092:  INC     HL
        ; --- START PROC L1093 ---
L1093:  LD      (HL),00h
        EX      DE,HL
        LD      HL,4130h
        RET

        ; --- START PROC L109A ---
L109A:  INC     HL
        PUSH    BC
        CP      04h
        LD      A,D
        JP      NC,L1109
        RRA
        JP      C,L11A3
        LD      BC,0603h
        CALL    L1289
        POP     DE
        LD      A,D
        SUB     05h
        CALL    P,L1269
        CALL    L132F
L10B6:  LD      A,E
        OR      A
        CALL    Z,L092F
        DEC     A
        CALL    P,L1269
L10BF:  PUSH    HL
        CALL    L0FF5
        POP     HL
        JR      Z,L10C8
        LD      (HL),B
        INC     HL
L10C8:  LD      (HL),00h
        LD      HL,412Fh
L10CD:  INC     HL
L10CE:  LD      A,(40F3h)
        SUB     L
        SUB     D
        RET     Z
        LD      A,(HL)
        CP      20h             ; ' '
        JR      Z,L10CD
        CP      2Ah             ; '*'
        JR      Z,L10CD
        DEC     HL
        PUSH    HL
        PUSH    AF
        LD      BC,10DFh
        PUSH    BC
        RST     0x10
        CP      2Dh             ; '-'
        RET     Z
        CP      2Bh             ; '+'
        RET     Z
        CP      24h             ; '$'
        RET     Z
        POP     BC
        CP      30h             ; '0'
        JR      NZ,L1102
        INC     HL
        RST     0x10
        JR      NC,L1102
        DEC     HL
L10F8:  LD      BC,772Bh
        POP     AF
        JR      Z,L10F8+1       ; reference not aligned to instruction
        POP     BC
        JP      L10CE

L1102:  POP     AF
        JR      Z,L1102
        POP     HL
        LD      (HL),25h        ; '%'
        RET

L1109:  PUSH    HL
        RRA
        JP      C,L11AA
        JR      Z,L1124
        LD      DE,1384h
        CALL    L0A49
        LD      D,10h
        JP      M,L1132
L111B:  POP     HL
        POP     BC
        CALL    L0FBD
        DEC     HL
        LD      (HL),25h        ; '%'
        RET

L1124:  LD      BC,0B60Eh
        LD      DE,1BCAh
        CALL    L0A0C
        JP      P,L111B
        LD      D,06h
L1132:  CALL    L0955
        CALL    NZ,L1201
        POP     HL
        POP     BC
        JP      M,L1157
        PUSH    BC
        LD      E,A
        LD      A,B
        SUB     D
        SUB     E
        CALL    P,L1269
        CALL    L127D
        CALL    L12A4
        OR      E
        CALL    NZ,L1277
        OR      E
        CALL    NZ,L1291
        POP     DE
        JP      L10B6

L1157:  LD      E,A
        LD      A,C
        OR      A
        CALL    NZ,L0F16
        ADD     A,E
        JP      M,L1162
        XOR     A
L1162:  PUSH    BC
        PUSH    AF
L1164:  CALL    M,L0F18
        JP      M,L1164
        POP     BC
        LD      A,E
        SUB     B
        POP     BC
        LD      E,A
        ADD     A,D
        LD      A,B
        JP      M,L117F
        SUB     D
        SUB     E
        CALL    P,L1269
        PUSH    BC
        CALL    L127D
        JR      L1190

L117F:  CALL    L1269
        LD      A,C
        CALL    L1294
        LD      C,A
        XOR     A
        SUB     D
        SUB     E
        CALL    L1269
        PUSH    BC
        LD      B,A
        LD      C,A
L1190:  CALL    L12A4
        POP     BC
        OR      C
        JR      NZ,L119A
        LD      HL,(40F3h)
L119A:  ADD     A,E
        DEC     A
        CALL    P,L1269
        LD      D,B
        JP      L10BF

L11A3:  PUSH    HL
        PUSH    DE
        CALL    L0ACC
        POP     DE
        XOR     A
L11AA:  JP      Z,L11AF+1       ; reference not aligned to instruction
        LD      E,10h
L11AF:  LD      BC,061Eh
        CALL    L0955
        SCF
        CALL    NZ,L1201
        POP     HL
        POP     BC
        PUSH    AF
        LD      A,C
        OR      A
        PUSH    AF
        CALL    NZ,L0F16
        ADD     A,B
        LD      C,A
        LD      A,D
        AND     04h
        CP      01h
        SBC     A,A
        LD      D,A
        ADD     A,C
        LD      C,A
        SUB     E
        PUSH    AF
        PUSH    BC
L11D0:  CALL    M,L0F18
        JP      M,L11D0
        POP     BC
        POP     AF
        PUSH    BC
        PUSH    AF
        JP      M,L11DE
        XOR     A
L11DE:  CPL
        INC     A
        ADD     A,B
        INC     A
        ADD     A,D
        LD      B,A
        LD      C,00h
        CALL    L12A4
        POP     AF
        CALL    P,L1271
        POP     BC
        POP     AF
        CALL    Z,L092F
        POP     AF
        JR      C,L11F8
        ADD     A,E
        SUB     B
        SUB     D
L11F8:  PUSH    BC
        CALL    L1074
        EX      DE,HL
        POP     DE
        JP      L10BF

        ; --- START PROC L1201 ---
L1201:  PUSH    DE
        XOR     A
        PUSH    AF
        RST     0x20
        JP      PO,L1222
L1208:  LD      A,(4124h)
        CP      91h
        JP      NC,L1222
        LD      DE,1364h
        LD      HL,4127h
        CALL    L09D3
        CALL    L0DA1
        POP     AF
        SUB     0Ah
        PUSH    AF
        JR      L1208

L1222:  CALL    L124F
L1225:  RST     0x20
        JR      NC,L1233
        LD      BC,9143h
        LD      DE,4FF9h
        CALL    L0A0C
        JR      L1239

L1233:  LD      DE,136Ch
        CALL    L0A49
L1239:  JP      P,L124B
        POP     AF
        CALL    L0F0B
        PUSH    AF
        JR      L1225

        ; --- START PROC L1243 ---
L1243:  POP     AF
        CALL    L0F18
        PUSH    AF
        CALL    L124F
L124B:  POP     AF
        POP     DE
        OR      A
        RET

        ; --- START PROC L124F ---
L124F:  RST     0x20
        JP      PE,L125E
        LD      BC,9474h
        LD      DE,23F8h
        CALL    L0A0C
        JR      L1264

L125E:  LD      DE,1374h
        CALL    L0A49
L1264:  POP     HL
        JP      P,L1243
        JP      (HL)

        ; --- START PROC L1269 ---
L1269:  OR      A
L126A:  RET     Z
        DEC     A
        LD      (HL),30h        ; '0'
        INC     HL
        JR      L126A

        ; --- START PROC L1271 ---
L1271:  JR      NZ,L1277
        ; --- START PROC L1273 ---
L1273:  RET     Z
        CALL    L1291
        ; --- START PROC L1277 ---
L1277:  LD      (HL),30h        ; '0'
        INC     HL
        DEC     A
        JR      L1273

        ; --- START PROC L127D ---
L127D:  LD      A,E
        ADD     A,D
        INC     A
        LD      B,A
        INC     A
L1282:  SUB     03h
        JR      NC,L1282
        ADD     A,05h
        LD      C,A
        ; --- START PROC L1289 ---
L1289:  LD      A,(40D8h)
        AND     40h             ; '@'
        RET     NZ
        LD      C,A
        RET

        ; --- START PROC L1291 ---
L1291:  DEC     B
        JR      NZ,L129C
        ; --- START PROC L1294 ---
L1294:  LD      (HL),2Eh        ; '.'
        LD      (40F3h),HL
        INC     HL
        LD      C,B
        RET

        ; --- START PROC L129C ---
L129C:  DEC     C
        RET     NZ
        LD      (HL),2Ch        ; ','
        INC     HL
        LD      C,03h
        RET

        ; --- START PROC L12A4 ---
L12A4:  PUSH    DE
        RST     0x20
        JP      PO,L12EA
        PUSH    BC
        PUSH    HL
        CALL    L09FC
        LD      HL,137Ch
        CALL    L09F7
        CALL    L0C77
        XOR     A
        CALL    L0B7B
        POP     HL
        POP     BC
        LD      DE,138Ch
        LD      A,0Ah
L12C2:  CALL    L1291
        PUSH    BC
        PUSH    AF
        PUSH    HL
        PUSH    DE
        LD      B,2Fh           ; '/'
L12CB:  INC     B
        POP     HL
        PUSH    HL
        CALL    L0D48
        JR      NC,L12CB
        POP     HL
        CALL    L0D36
        EX      DE,HL
        POP     HL
        LD      (HL),B
        INC     HL
        POP     AF
        POP     BC
        DEC     A
        JR      NZ,L12C2
        PUSH    BC
        PUSH    HL
        LD      HL,411Dh
        CALL    L09B1
        JR      L12F6

L12EA:  PUSH    BC
        PUSH    HL
        CALL    L0708
        INC     A
        CALL    L0AFB
        CALL    L09B4
L12F6:  POP     HL
        POP     BC
        XOR     A
        LD      DE,13D2h
L12FC:  CCF
        CALL    L1291
        PUSH    BC
        PUSH    AF
        PUSH    HL
        PUSH    DE
        CALL    L09BF
        POP     HL
        LD      B,2Fh           ; '/'
L130A:  INC     B
        LD      A,E
        SUB     (HL)
        LD      E,A
        INC     HL
        LD      A,D
        SBC     A,(HL)
        LD      D,A
        INC     HL
        LD      A,C
        SBC     A,(HL)
        LD      C,A
        DEC     HL
        DEC     HL
        JR      NC,L130A
        CALL    L07B7
        INC     HL
        CALL    L09B4
        EX      DE,HL
        POP     HL
        LD      (HL),B
        INC     HL
        POP     AF
        POP     BC
        JR      C,L12FC
        INC     DE
        INC     DE
        LD      A,04h
        JR      L1335

        ; --- START PROC L132F ---
L132F:  PUSH    DE
        LD      DE,13D8h
        LD      A,05h
        ; --- START PROC L1335 ---
L1335:  CALL    L1291
        PUSH    BC
        PUSH    AF
        PUSH    HL
        EX      DE,HL
        LD      C,(HL)
        INC     HL
        LD      B,(HL)
        PUSH    BC
        INC     HL
        EX      (SP),HL
        EX      DE,HL
        LD      HL,(4121h)
        LD      B,2Fh           ; '/'
L1348:  INC     B
L1349:  LD      A,L
        SUB     E
        LD      L,A
        LD      A,H
        SBC     A,D
        LD      H,A
        JR      NC,L1348
        ADD     HL,DE
        LD      (4121h),HL
        POP     DE
        POP     HL
        LD      (HL),B
        INC     HL
        POP     AF
        POP     BC
        DEC     A
        JR      NZ,L1335
        CALL    L1291
        LD      (HL),A
        POP     DE
        RET

L1364:  NOP
        NOP
        NOP
        NOP
        LD      SP,HL
        LD      (BC),A
        DEC     D
        AND     D
        RST     0x38
        SBC     A,A
        LD      SP,5FA9h
        LD      H,E
        OR      D
        CP      0FFh
        INC     BC
        CP      A
        RET

L1379:  DEC     DE
        LD      C,0B6h
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        ADD     A,B
        NOP
        NOP
        INC     B
        CP      A
        RET

L1389:  DEC     DE
L138A:  LD      C,0B6h
        NOP
        ADD     A,B
        ADD     A,0A4h
        LD      A,(HL)
        ADC     A,L
        INC     BC
        NOP
        LD      B,B
        LD      A,D
        DJNZ    L138A+1         ; reference not aligned to instruction
        LD      E,D
        NOP
        NOP
        AND     B
        LD      (HL),D
        LD      C,(HL)
        JR      L13A9

L13A0:  NOP
        NOP
        DJNZ    L1349
        CALL    NC,L00E8
        NOP
        NOP
L13A9:  RET     PE
        HALT
        LD      C,B
        RLA
        NOP
        NOP
        NOP
        CALL    PO,540Bh
        LD      (BC),A
        NOP
        NOP
        NOP
        JP      Z,L3B9A
        NOP
        NOP
        NOP
        NOP
        POP     HL
        PUSH    AF
        DEC     B
        NOP
        NOP
        NOP
        ADD     A,B
        SUB     (HL)
        SBC     A,B
        NOP
        NOP
        NOP
        NOP
        LD      B,B
        LD      B,D
        RRCA
        NOP
        NOP
        NOP
        NOP
        AND     B
        ADD     A,(HL)
        LD      BC,2710h
        NOP
        DJNZ    L1401
        RET     PE
        INC     BC
        LD      H,H
        NOP
        LD      A,(BC)
        NOP
L13E0:  LD      BC,2100h
        ADD     A,D
        ADD     HL,BC
        EX      (SP),HL
        JP      (HL)

L13E7:  CALL    L09A4
        LD      HL,1380h
        CALL    L09B1
        JR      L13F5

L13F2:  CALL    L0AB1
L13F5:  POP     BC
        POP     DE
        CALL    L0955
        LD      A,B
        JR      Z,L1439
        JP      P,L1404
        OR      A
L1401:  JP      Z,L1999+1       ; reference not aligned to instruction
L1404:  OR      A
        JP      Z,L0779
        PUSH    DE
        PUSH    BC
        LD      A,C
        OR      7Fh             ; ''
        CALL    L09BF
        JP      P,L1421
        PUSH    DE
        PUSH    BC
        CALL    L0B40
        POP     BC
        POP     DE
        PUSH    AF
        CALL    L0A0C
        POP     HL
        LD      A,H
        RRA
L1421:  POP     HL
        LD      (4123h),HL
        POP     HL
        LD      (4121h),HL
        CALL    C,L13E0+2       ; reference not aligned to instruction
        CALL    Z,L0982
        PUSH    DE
        PUSH    BC
        CALL    L0809
        POP     BC
        POP     DE
        CALL    L0847
L1439:  CALL    L09A4
        LD      BC,8138h
        LD      DE,0AA3Bh
        CALL    L0847
        LD      A,(4124h)
        CP      88h
        JP      NC,L0931
        CALL    L0B40
        ADD     A,80h
        ADD     A,02h
        JP      C,L0931
        PUSH    AF
        LD      HL,07F8h
        CALL    L070B
        CALL    L0841
        POP     AF
        POP     BC
        POP     DE
        PUSH    AF
        CALL    L0713
        CALL    L0982
        LD      HL,1479h
        CALL    L14A9
        LD      DE,0000h
        POP     BC
        LD      C,D
        JP      L0847

L1479:  EX      AF,AF'
        LD      B,B
        LD      L,94h
        LD      (HL),H
        LD      (HL),B
        LD      C,A
        LD      L,77h           ; 'w'
        LD      L,(HL)
        LD      (BC),A
        ADC     A,B
        LD      A,D
        AND     0A0h
        LD      HL,(507Ch)
        XOR     D
        XOR     D
        LD      A,(HL)
        RST     0x38
        RST     0x38
        LD      A,A
        LD      A,A
        NOP
        NOP
        ADD     A,B
        ADD     A,C
        NOP
        NOP
        NOP
        ADD     A,C
        ; --- START PROC L149A ---
L149A:  CALL    L09A4
        LD      DE,0C32h
        PUSH    DE
        PUSH    HL
        CALL    L09BF
        CALL    L0847
        POP     HL
        ; --- START PROC L14A9 ---
L14A9:  CALL    L09A4
        LD      A,(HL)
        INC     HL
        CALL    L09B1
L14B1:  LD      B,0F1h
        POP     BC
        POP     DE
        DEC     A
        RET     Z
        PUSH    DE
        PUSH    BC
        PUSH    AF
        PUSH    HL
        CALL    L0847
        POP     HL
        CALL    L09C2
        PUSH    HL
        CALL    L0716
        POP     HL
        JR      L14B1+1         ; reference not aligned to instruction

L14C9:  CALL    L0A7F
        LD      A,H
        OR      A
        JP      M,L1E4A
        OR      L
        JP      Z,L14F0
        PUSH    HL
        CALL    L14F0
        CALL    L09BF
        EX      DE,HL
        EX      (SP),HL
        PUSH    BC
        CALL    L0ACF
        POP     BC
        POP     DE
        CALL    L0847
        LD      HL,07F8h
        CALL    L070B
        JP      L0B40

        ; --- START PROC L14F0 ---
L14F0:  LD      HL,4090h
        PUSH    HL
        LD      DE,0000h
        LD      C,E
        LD      H,03h
L14FA:  LD      L,08h
L14FC:  EX      DE,HL
        ADD     HL,HL
        EX      DE,HL
        LD      A,C
        RLA
        LD      C,A
        EX      (SP),HL
        LD      A,(HL)
        RLCA
        LD      (HL),A
        EX      (SP),HL
        JP      NC,L1516
        PUSH    HL
        LD      HL,(40AAh)
        ADD     HL,DE
        EX      DE,HL
        LD      A,(40ACh)
        ADC     A,C
        LD      C,A
        POP     HL
L1516:  DEC     L
        JP      NZ,L14FC
        EX      (SP),HL
        INC     HL
        EX      (SP),HL
        DEC     H
        JP      NZ,L14FA
        POP     HL
        LD      HL,0B065h
        ADD     HL,DE
        LD      (40AAh),HL
        CALL    L0AEE+1         ; reference not aligned to instruction
        LD      A,05h
        ADC     A,C
        LD      (40ACh),A
        EX      DE,HL
        LD      B,80h
        LD      HL,4125h
        LD      (HL),B
        DEC     HL
        LD      (HL),B
        LD      C,A
        LD      B,00h
        JP      L0765

        ; --- START PROC L1541 ---
L1541:  LD      HL,158Bh
        CALL    L070B
        ; --- START PROC L1547 ---
L1547:  CALL    L09A4
        LD      BC,8349h
        LD      DE,0FDBh
        CALL    L09B4
        POP     BC
        POP     DE
        CALL    L08A2
        CALL    L09A4
        CALL    L0B40
        POP     BC
        POP     DE
        CALL    L0713
        LD      HL,158Fh
        CALL    L0710
        CALL    L0955
        SCF
        JP      P,L1577
        CALL    L0708
        CALL    L0955
        OR      A
L1577:  PUSH    AF
        CALL    P,L0982
        LD      HL,158Fh
        CALL    L070B
        POP     AF
        CALL    NC,L0982
        LD      HL,1593h
        JP      L149A

L158B:  IN      A,(0Fh)
        LD      C,C
        ADD     A,C
        NOP
        NOP
        NOP
        LD      A,A
        DEC     B
        CP      D
        RST     0x10
        LD      E,86h
        LD      H,H
        LD      H,99h
        ADD     A,A
        LD      E,B
        INC     (HL)
        INC     HL
        ADD     A,A
        RET     PO
        LD      E,L
        AND     L
        ADD     A,(HL)
        JP      C,490Fh
        ADD     A,E
        CALL    L09A4
        CALL    L1547
        POP     BC
        POP     HL
        CALL    L09A4
        EX      DE,HL
        CALL    L09B4
        CALL    L1541
        JP      L08A0

L15BD:  CALL    L0955
        CALL    M,L13E0+2       ; reference not aligned to instruction
        CALL    M,L0982
        LD      A,(4124h)
        CP      81h
        JR      C,L15D9
        LD      BC,8100h
        LD      D,C
        LD      E,C
        CALL    L08A2
        LD      HL,0710h
        PUSH    HL
L15D9:  LD      HL,15E3h
        CALL    L149A
        LD      HL,158Bh
        RET

L15E3:  ADD     HL,BC
        LD      C,D
        RST     0x10
        DEC     SP
        LD      A,B
        LD      (BC),A
        LD      L,(HL)
        ADD     A,H
        LD      A,E
        CP      0C1h
        CPL
        LD      A,H
        LD      (HL),H
        LD      SP,7D9Ah
        ADD     A,H
        DEC     A
        LD      E,D
        LD      A,L
        RET     Z
        LD      A,A
        SUB     C
        LD      A,(HL)
        CALL    PO,4CBBh
        LD      A,(HL)
        LD      L,H
        XOR     D
        XOR     D
        LD      A,A
        NOP
        NOP
        NOP
        ADD     A,C
        ADC     A,D
        ADD     HL,BC
        SCF
        DEC     BC
        LD      (HL),A
        ADD     HL,BC
        CALL    NC,0EF27h
        LD      HL,(L27F5)
        RST     0x20
        INC     DE
        RET

L1617:  INC     D
        ADD     HL,BC
        EX      AF,AF'
        ADD     HL,SP
        INC     D
        LD      B,C
        DEC     D
        LD      B,A
        DEC     D
        XOR     B
        DEC     D
        CP      L
        DEC     D
        XOR     D
        INC     L
        LD      D,D
        LD      B,C
        LD      E,B
        LD      B,C
        LD      E,(HL)
        LD      B,C
        LD      H,C
        LD      B,C
        LD      H,H
        LD      B,C
        LD      H,A
        LD      B,C
        LD      L,D
        LD      B,C
        LD      L,L
        LD      B,C
        LD      (HL),B
        LD      B,C
        LD      A,A
        LD      A,(BC)
        OR      C
        LD      A,(BC)
        IN      A,(0Ah)
        LD      H,0Bh
        INC     BC
        LD      HL,(L2836)
        PUSH    BC
        LD      HL,(L2A0F)
        RRA
        LD      HL,(L2A61)
        SUB     C
        LD      HL,(L2A9A)
        PUSH    BC
        LD      C,(HL)
        LD      B,H
        ADD     A,4Fh           ; 'O'
        LD      D,D
        JP      NC,5345h
        LD      B,L
        LD      D,H
        OUT     (45h),A         ; 'E'
        LD      D,H
        JP      534Ch

L1661:  JP      444Dh

L1664:  JP      NC,4E41h
        LD      B,H
        LD      C,A
        LD      C,L
        ADC     A,45h           ; 'E'
        LD      E,B
        LD      D,H
        CALL    NZ,5441h
        LD      B,C
        RET

L1673:  LD      C,(HL)
        LD      D,B
        LD      D,L
        LD      D,H
        CALL    NZ,4D49h
        JP      NC,4145h
        LD      B,H
        CALL    Z,5445h
        RST     0x00
        LD      C,A
        LD      D,H
        LD      C,A
        JP      NC,4E55h
        RET

L1689:  LD      B,(HL)
        JP      NC,5345h
        LD      D,H
        LD      C,A
        LD      D,D
        LD      B,L
        RST     0x00
        LD      C,A
        LD      D,E
        LD      D,L
        LD      B,D
        JP      NC,5445h
        LD      D,L
        LD      D,D
        LD      C,(HL)
        JP      NC,4D45h
        OUT     (54h),A         ; 'T'
        LD      C,A
        LD      D,B
        PUSH    BC
        LD      C,H
        LD      D,E
        LD      B,L
        CALL    NC,4F52h
        LD      C,(HL)
        CALL    NC,4F52h
        LD      B,(HL)
        LD      B,(HL)
        CALL    NZ,4645h
        LD      D,E
        LD      D,H
        LD      D,D
        CALL    NZ,4645h
        LD      C,C
        LD      C,(HL)
        LD      D,H
        CALL    NZ,4645h
        LD      D,E
        LD      C,(HL)
        LD      B,A
        CALL    NZ,4645h
        LD      B,H
        LD      B,D
        LD      C,H
        CALL    Z,4E49h
        LD      B,L
        PUSH    BC
        LD      B,H
        LD      C,C
        LD      D,H
        PUSH    BC
        LD      D,D
        LD      D,D
        LD      C,A
        LD      D,D
        JP      NC,5345h
        LD      D,L
        LD      C,L
        LD      B,L
        RST     0x08
        LD      D,L
        LD      D,H
        RST     0x08
        LD      C,(HL)
        RST     0x08
        LD      D,B
        LD      B,L
        LD      C,(HL)
        ADD     A,49h           ; 'I'
        LD      B,L
        LD      C,H
        LD      B,H
        RST     0x00
        LD      B,L
        LD      D,H
        RET     NC
        LD      D,L
        LD      D,H
        JP      4F4Ch

L16F2:  LD      D,E
        LD      B,L
        CALL    Z,414Fh
        LD      B,H
        CALL    5245h
        LD      B,A
        LD      B,L
        ADC     A,41h           ; 'A'
        LD      C,L
        LD      B,L
        BIT     1,C
        LD      C,H
        LD      C,H
        CALL    Z,4553h
        LD      D,H
        JP      NC,4553h
        LD      D,H
        OUT     (41h),A         ; 'A'
        LD      D,(HL)
        LD      B,L
        OUT     (59h),A         ; 'Y'
        LD      D,E
        LD      D,H
        LD      B,L
        LD      C,L
        CALL    Z,5250h
        LD      C,C
        LD      C,(HL)
        LD      D,H
        CALL    NZ,4645h
        RET     NC
        LD      C,A
        LD      C,E
        LD      B,L
        RET     NC
        LD      D,D
        LD      C,C
        LD      C,(HL)
        LD      D,H
L1729:  JP      4E4Fh

L172C:  LD      D,H
        CALL    Z,5349h
        LD      D,H
        CALL    Z,494Ch
        LD      D,E
        LD      D,H
        CALL    NZ,4C45h
        LD      B,L
        LD      D,H
        LD      B,L
        POP     BC
        LD      D,L
        LD      D,H
        LD      C,A
        JP      454Ch

L1743:  LD      B,C
        LD      D,D
        JP      4F4Ch

L1748:  LD      B,C
        LD      B,H
        JP      4153h

L174D:  LD      D,(HL)
        LD      B,L
        ADC     A,45h           ; 'E'
        LD      D,A
        CALL    NC,4241h
        JR      Z,L1729+2       ; reference not aligned to instruction
        LD      C,A
        ADD     A,4Eh           ; 'N'
        PUSH    DE
        LD      D,E
        LD      C,C
        LD      C,(HL)
        LD      B,A
        SUB     41h             ; 'A'
        LD      D,D
        LD      D,B
        LD      D,H
        LD      D,D
        PUSH    DE
        LD      D,E
        LD      D,D
        PUSH    BC
        LD      D,D
        LD      C,H
        PUSH    BC
        LD      D,D
        LD      D,D
        OUT     (54h),A         ; 'T'
        LD      D,D
        LD      C,C
        LD      C,(HL)
        LD      B,A
        INC     H
        RET

L1776:  LD      C,(HL)
        LD      D,E
        LD      D,H
        LD      D,D
        RET     NC
        LD      C,A
        LD      C,C
        LD      C,(HL)
        LD      D,H
        CALL    NC,4D49h
        LD      B,L
        INC     H
        CALL    4D45h
        RET

L1788:  LD      C,(HL)
        LD      C,E
        LD      B,L
        LD      E,C
        INC     H
        CALL    NC,4548h
        LD      C,(HL)
        ADC     A,4Fh           ; 'O'
        LD      D,H
        OUT     (54h),A         ; 'T'
        LD      B,L
        LD      D,B
        XOR     E
        XOR     L
        XOR     D
        XOR     A
        IN      A,(0C1h)
        LD      C,(HL)
        LD      B,H
        RST     0x08
        LD      D,D
        CP      (HL)
        CP      L
        CP      H
        OUT     (47h),A         ; 'G'
        LD      C,(HL)
        RET

L17A9:  LD      C,(HL)
        LD      D,H
        POP     BC
        LD      B,D
        LD      D,E
        ADD     A,52h           ; 'R'
        LD      B,L
        RET

L17B2:  LD      C,(HL)
        LD      D,B
        RET     NC
        LD      C,A
        LD      D,E
        OUT     (51h),A         ; 'Q'
        LD      D,D
        JP      NC,444Eh
        CALL    Z,474Fh
        PUSH    BC
        LD      E,B
        LD      D,B
        JP      534Fh

L17C6:  OUT     (49h),A         ; 'I'
        LD      C,(HL)
        CALL    NC,4E41h
        POP     BC
        LD      D,H
        LD      C,(HL)
        RET     NC
        LD      B,L
        LD      B,L
        LD      C,E
L17D3:  JP      4956h

L17D6:  JP      5356h

L17D9:  JP      4456h

L17DC:  PUSH    BC
        LD      C,A
        LD      B,(HL)
        CALL    Z,434Fh
        CALL    Z,464Fh
        CALL    494Bh
        INC     H
        CALL    534Bh
        INC     H
        CALL    444Bh
        INC     H
        JP      4E49h

L17F4:  LD      D,H
        JP      4E53h

L17F8:  LD      B,A
        JP      4244h

L17FC:  LD      C,H
        ADD     A,49h           ; 'I'
        LD      E,B
        CALL    Z,4E45h
        OUT     (54h),A         ; 'T'
        LD      D,D
        INC     H
        SUB     41h             ; 'A'
        LD      C,H
        POP     BC
        LD      D,E
        LD      B,E
        JP      5248h

L1810:  INC     H
        CALL    Z,4645h
        LD      D,H
        INC     H
        JP      NC,4749h
        LD      C,B
        LD      D,H
        INC     H
        CALL    4449h
        INC     H
        AND     A
        ADD     A,B
        XOR     (HL)
        DEC     E
        AND     C
        INC     E
        JR      C,L1829
        DEC     (HL)
L1829:  LD      BC,01C9h
        LD      (HL),E
        LD      B,C
        OUT     (01h),A
        OR      (HL)
        LD      (L1F05),HL
        SBC     A,D
        LD      HL,2608h
        RST     0x28
        LD      HL,1F21h
        JP      NZ,0A31Eh
        LD      E,39h           ; '9'
        JR      NZ,L17D3+1      ; reference not aligned to instruction
        DEC     E
        OR      C
        LD      E,0DEh
        LD      E,07h
        RRA
        XOR     C
        DEC     E
        RLCA
        RRA
        RST     0x30
        DEC     E
        RET     M
        DEC     E
        NOP
        LD      E,03h
        LD      E,06h
        LD      E,09h
        LD      E,0A3h
        LD      B,C
        LD      H,B
        LD      L,0F4h
        RRA
        XOR     A
        RRA
        EI
        LD      HL,(L1F6C)
        LD      A,C
        LD      B,C
        LD      A,H
        LD      B,C
        LD      A,A
        LD      B,C
        ADD     A,D
L186D:  LD      B,C
        ADD     A,L
        LD      B,C
        ADC     A,B
        LD      B,C
        ADC     A,E
        LD      B,C
        ADC     A,(HL)
        LD      B,C
        SUB     C
        LD      B,C
        SUB     A
        LD      B,C
        SBC     A,D
        LD      B,C
        AND     B
        LD      B,C
        OR      D
        LD      (BC),A
        LD      H,A
        JR      NZ,L18DE
        LD      B,C
        OR      C
        INC     L
        LD      L,A
        JR      NZ,L186D
        DEC     E
        LD      L,2Bh           ; '+'
        ADD     HL,HL
        DEC     HL
        ADD     A,2Bh           ; '+'
        EX      AF,AF'
        JR      NZ,L190D
        LD      E,1Fh
        INC     L
        PUSH    AF
        DEC     HL
        LD      C,C
        DEC     DE
        LD      A,C
        LD      A,C
        LD      A,H
        LD      A,H
        LD      A,A
        LD      D,B
        LD      B,(HL)
        IN      A,(0Ah)
        NOP
        NOP
        LD      A,A
        LD      A,(BC)
        CALL    P,0B10Ah
        LD      A,(BC)
        LD      (HL),A
        INC     C
        LD      (HL),B
        INC     C
        AND     C
        DEC     C
        PUSH    HL
        DEC     C
        LD      A,B
        LD      A,(BC)
        LD      D,07h
        INC     DE
        RLCA
        LD      B,A
        EX      AF,AF'
        AND     D
        EX      AF,AF'
        INC     C
        LD      A,(BC)
        JP      NC,0C70Bh
        DEC     BC
        JP      P,900Bh
        INC     H
        ADD     HL,SP
        LD      A,(BC)
        LD      C,(HL)
        LD      B,(HL)
        LD      D,E
        LD      C,(HL)
        LD      D,D
        LD      B,A
        LD      C,A
        LD      B,H
        LD      B,(HL)
        LD      B,E
        LD      C,A
        LD      D,(HL)
        LD      C,A
        LD      C,L
        LD      D,L
        LD      C,H
        LD      B,D
        LD      D,E
        LD      B,H
        LD      B,H
        CPL
L18DE:  JR      NC,L1929
        LD      B,H
        LD      D,H
        LD      C,L
        LD      C,A
        LD      D,E
        LD      C,H
        LD      D,E
        LD      D,E
        LD      D,H
        LD      B,E
        LD      C,(HL)
        LD      C,(HL)
        LD      D,D
        LD      D,D
        LD      D,A
        LD      D,L
        LD      B,L
        LD      C,L
        LD      C,A
        LD      B,(HL)
        LD      B,H
        LD      C,H
        INC     SP
        SUB     00h
        LD      L,A
        LD      A,H
        SBC     A,00h
        LD      H,A
        LD      A,B
        SBC     A,00h
        LD      B,A
        LD      A,00h
        RET

L1905:  LD      C,D
        LD      E,40h           ; '@'
        AND     4Dh             ; 'M'
        IN      A,(00h)
        RET

L190D:  OUT     (00h),A
        RET

L1910:  NOP
        NOP
        NOP
        NOP
        LD      B,B
        JR      NC,L1917
L1917:  LD      C,H
        LD      B,E
        CP      0FFh
        JP      (HL)

L191C:  LD      B,D
        JR      NZ,L1964
        LD      (HL),D
        LD      (HL),D
        LD      L,A
        LD      (HL),D
        NOP
        JR      NZ,L198E+1      ; reference not aligned to instruction
        LD      L,(HL)
        JR      NZ,L1929
L1929:  LD      D,D
        LD      B,L
        LD      B,C
        LD      B,H
        LD      E,C
        DEC     C
        NOP
        LD      B,D
        LD      (HL),D
        LD      H,L
        LD      H,C
        LD      L,E
        NOP
        ; --- START PROC L1936 ---
L1936:  LD      HL,0004h
        ADD     HL,SP
L193A:  LD      A,(HL)
        INC     HL
        CP      81h
        RET     NZ
        LD      C,(HL)
        INC     HL
        LD      B,(HL)
        INC     HL
        PUSH    HL
        LD      L,C
        LD      H,B
        LD      A,D
        OR      E
        EX      DE,HL
        JR      Z,L194D
        EX      DE,HL
        RST     0x18
L194D:  LD      BC,000Eh
        POP     HL
        RET     Z
        ADD     HL,BC
        JR      L193A

        ; --- START PROC L1955 ---
L1955:  CALL    L196B+1         ; reference not aligned to instruction
        ; --- START PROC L1958 ---
L1958:  PUSH    BC
        EX      (SP),HL
        POP     BC
L195B:  RST     0x18
        LD      A,(HL)
        LD      (BC),A
        RET     Z
        DEC     BC
        DEC     HL
        JR      L195B

        ; --- START PROC L1963 ---
L1963:  PUSH    HL
L1964:  LD      HL,(40FDh)
        LD      B,00h
        ADD     HL,BC
        ADD     HL,BC
L196B:  LD      A,0E5h
        LD      A,0C6h
        SUB     L
        LD      L,A
        LD      A,0FFh
        SBC     A,H
        JR      C,L197A
        LD      H,A
        ADD     HL,SP
        POP     HL
        RET     C
        ; --- START PROC L197A ---
L197A:  LD      E,0Ch
        JR      L19A2

        ; --- START PROC L197E ---
L197E:  LD      HL,(40A2h)
        LD      A,H
        AND     L
        INC     A
        JR      Z,L198E
        LD      A,(40F2h)
        OR      A
        LD      E,22h           ; '"'
        JR      NZ,L19A2
        ; --- START PROC L198E ---
L198E:  JP      L1DC1

L1991:  LD      HL,(40DAh)
        LD      (40A2h),HL
        ; --- START PROC L1997 ---
L1997:  LD      E,02h
L1999:  LD      BC,141Eh
L199C:  LD      BC,001Eh
L199F:  LD      BC,241Eh
        ; --- START PROC L19A2 ---
L19A2:  LD      HL,(40A2h)
        LD      (40EAh),HL
        LD      (40ECh),HL
L19AB:  LD      BC,19B4h
L19AE:  LD      HL,(40E8h)
        JP      L1B9A

L19B4:  POP     BC
        LD      A,E
        LD      C,E
        LD      (409Ah),A
        LD      HL,(40E6h)
        LD      (40EEh),HL
        EX      DE,HL
        LD      HL,(40EAh)
        LD      A,H
        AND     L
        INC     A
        JR      Z,L19D0
        LD      (40F5h),HL
        EX      DE,HL
        LD      (40F7h),HL
L19D0:  LD      HL,(40F0h)
        LD      A,H
        OR      L
        EX      DE,HL
        LD      HL,40F2h
        JR      Z,L19E3
        AND     (HL)
        JR      NZ,L19E3
        DEC     (HL)
        EX      DE,HL
        JP      L1D36

L19E3:  XOR     A
        LD      (HL),A
        LD      E,C
        CALL    L20F9
        LD      HL,18C9h
        CALL    41A6h
        LD      D,A
        LD      A,3Fh           ; '?'
        CALL    L032A
        ADD     HL,DE
        LD      A,(HL)
        CALL    L032A
        RST     0x10
        CALL    L032A
        LD      HL,191Dh
        PUSH    HL
        LD      HL,(40EAh)
        EX      (SP),HL
        ; --- START PROC L1A06 ---
L1A06:  CALL    L28A7
        POP     HL
        LD      DE,0FFFEh
        RST     0x18
        JP      Z,L0674
        LD      A,H
        AND     L
        INC     A
        CALL    NZ,L0FA7
L1A17:  LD      A,0C1h
        ; --- START PROC L1A19 ---
L1A19:  CALL    L038B
        CALL    41ACh
        CALL    L01F8
        CALL    L20F9
        LD      HL,1929h
        CALL    L28A7
        LD      A,(409Ah)
        SUB     02h
        CALL    Z,L2E53
        ; --- START PROC L1A33 ---
L1A33:  LD      HL,0FFFFh
        LD      (40A2h),HL
        LD      A,(40E1h)
        OR      A
        JR      Z,L1A76
        LD      HL,(40E2h)
        PUSH    HL
        CALL    L0FAF
        POP     DE
        PUSH    DE
        CALL    L1B2C
        LD      A,2Ah           ; '*'
        JR      C,L1A51
        LD      A,20h           ; ' '
L1A51:  CALL    L032A
        CALL    L0361
        POP     DE
        JR      NC,L1A60
L1A5A:  XOR     A
        LD      (40E1h),A
        JR      L1A19

L1A60:  LD      HL,(40E4h)
        ADD     HL,DE
        JR      C,L1A5A
        PUSH    DE
        LD      DE,0FFF9h
        RST     0x18
        POP     DE
        JR      NC,L1A5A
        LD      (40E2h),HL
        OR      0FFh
        JP      L2FEB

L1A76:  LD      A,3Eh           ; '>'
        CALL    L032A
        CALL    L0361
        JP      C,L1A33
        RST     0x10
        INC     A
        DEC     A
        JP      Z,L1A33
        PUSH    AF
        CALL    L1E5A
L1A8B:  DEC     HL
        LD      A,(HL)
        CP      20h             ; ' '
        JR      Z,L1A8B
        INC     HL
        LD      A,(HL)
        CP      20h             ; ' '
        CALL    Z,L09C9
        ; --- START PROC L1A98 ---
L1A98:  PUSH    DE
        CALL    L1BC0
        POP     DE
        POP     AF
        LD      (40E6h),HL
        CALL    41B2h
        JP      NC,L1D5A
        PUSH    DE
        PUSH    BC
        XOR     A
        LD      (40DDh),A
        RST     0x10
        OR      A
        PUSH    AF
        EX      DE,HL
        LD      (40ECh),HL
        EX      DE,HL
        CALL    L1B2C
        PUSH    BC
        CALL    C,L2BE4
        POP     DE
        POP     AF
        PUSH    DE
        JR      Z,L1AE8
        POP     DE
        LD      HL,(40F9h)
        EX      (SP),HL
        POP     BC
        ADD     HL,BC
        PUSH    HL
        CALL    L1955
        POP     HL
        LD      (40F9h),HL
        EX      DE,HL
        LD      (HL),H
        POP     DE
        PUSH    HL
        INC     HL
        INC     HL
        LD      (HL),E
        INC     HL
        LD      (HL),D
        INC     HL
        EX      DE,HL
        LD      HL,(40A7h)
        EX      DE,HL
        DEC     DE
        DEC     DE
L1AE1:  LD      A,(DE)
        LD      (HL),A
        INC     HL
        INC     DE
        OR      A
        JR      NZ,L1AE1
L1AE8:  POP     DE
        CALL    L1AFC
        CALL    41B5h
        CALL    L1B5D
        CALL    41B8h
        JP      L1A33

L1AF8:  LD      HL,(40A4h)
        EX      DE,HL
        ; --- START PROC L1AFC ---
L1AFC:  LD      H,D
        LD      L,E
        LD      A,(HL)
        INC     HL
        OR      (HL)
        RET     Z
        INC     HL
        INC     HL
        INC     HL
        XOR     A
L1B06:  CP      (HL)
        INC     HL
        JR      NZ,L1B06
        EX      DE,HL
        LD      (HL),E
        INC     HL
        LD      (HL),D
        JR      L1AFC

        ; --- START PROC L1B10 ---
L1B10:  LD      DE,0000h
        PUSH    DE
        JR      Z,L1B1E+1       ; reference not aligned to instruction
        POP     DE
        CALL    L1E4F
        PUSH    DE
        JR      Z,L1B28
        RST     0x08
L1B1E:  ADC     A,11h
        JP      M,0C4FFh
        LD      C,A
        LD      E,0C2h
        SUB     A
        ADD     HL,DE
L1B28:  EX      DE,HL
        POP     DE
        ; --- START PROC L1B2A ---
L1B2A:  EX      (SP),HL
        PUSH    HL
        ; --- START PROC L1B2C ---
L1B2C:  LD      HL,(40A4h)
        ; --- START PROC L1B2F ---
L1B2F:  LD      B,H
        LD      C,L
        LD      A,(HL)
        INC     HL
        OR      (HL)
        DEC     HL
        RET     Z
        INC     HL
        INC     HL
        LD      A,(HL)
        INC     HL
        LD      H,(HL)
        LD      L,A
        RST     0x18
        LD      H,B
        LD      L,C
        LD      A,(HL)
        INC     HL
        LD      H,(HL)
        LD      L,A
        CCF
        RET     Z
        CCF
        RET     NC
        JR      L1B2F

L1B49:  RET     NZ
        CALL    L01C9
        ; --- START PROC L1B4D ---
L1B4D:  LD      HL,(40A4h)
        CALL    L1DF7+1         ; reference not aligned to instruction
        LD      (40E1h),A
        LD      (HL),A
        INC     HL
        LD      (HL),A
        INC     HL
        LD      (40F9h),HL
        ; --- START PROC L1B5D ---
L1B5D:  LD      HL,(40A4h)
        DEC     HL
        ; --- START PROC L1B61 ---
L1B61:  LD      (40DFh),HL
        LD      B,1Ah
        LD      HL,4101h
L1B69:  LD      (HL),04h
        INC     HL
        DJNZ    L1B69
        XOR     A
        LD      (40F2h),A
        LD      L,A
        LD      H,A
        LD      (40F0h),HL
        LD      (40F7h),HL
        LD      HL,(40B1h)
        LD      (40D6h),HL
        CALL    L1D91
        LD      HL,(40F9h)
        LD      (40FBh),HL
        LD      (40FDh),HL
        CALL    41BBh
        ; --- START PROC L1B8F ---
L1B8F:  POP     BC
        LD      HL,(40A0h)
        DEC     HL
        DEC     HL
        LD      (40E8h),HL
        INC     HL
        INC     HL
        ; --- START PROC L1B9A ---
L1B9A:  LD      SP,HL
        LD      HL,40B5h
        LD      (40B3h),HL
        CALL    L038B
        CALL    L2169
        XOR     A
        LD      H,A
        LD      L,A
        LD      (40DCh),A
        PUSH    HL
        PUSH    BC
        LD      HL,(40DFh)
        RET

        ; --- START PROC L1BB3 ---
L1BB3:  LD      A,3Fh           ; '?'
        CALL    L032A
        LD      A,20h           ; ' '
        CALL    L032A
        JP      L0361

        ; --- START PROC L1BC0 ---
L1BC0:  XOR     A
        LD      (40B0h),A
        LD      C,A
        EX      DE,HL
        LD      HL,(40A7h)
        DEC     HL
        DEC     HL
        EX      DE,HL
L1BCC:  LD      A,(HL)
        CP      20h             ; ' '
        JP      Z,L1C5B
        LD      B,A
        CP      22h             ; '"'
        JP      Z,L1C77
        OR      A
        JP      Z,L1C7D
        LD      A,(40B0h)
        OR      A
        LD      A,(HL)
        JP      NZ,L1C5B
        CP      3Fh             ; '?'
        LD      A,0B2h
        JP      Z,L1C5B
        LD      A,(HL)
        CP      30h             ; '0'
        JR      C,L1BF5
        CP      3Ch             ; '<'
        JP      C,L1C5B
L1BF5:  PUSH    DE
        LD      DE,164Fh
        PUSH    BC
        LD      BC,1C3Dh
        PUSH    BC
        LD      B,7Fh           ; ''
        LD      A,(HL)
        CP      61h             ; 'a'
        JR      C,L1C0C
        CP      7Bh             ; '{'
        JR      NC,L1C0C
        AND     5Fh             ; '_'
        LD      (HL),A
L1C0C:  LD      C,(HL)
        EX      DE,HL
L1C0E:  INC     HL
        OR      (HL)
        JP      P,L1C0E
        INC     B
        LD      A,(HL)
        AND     7Fh             ; ''
        RET     Z
        CP      C
        JR      NZ,L1C0E
        EX      DE,HL
        PUSH    HL
L1C1D:  INC     DE
        LD      A,(DE)
        OR      A
        JP      M,L1C39
        LD      C,A
        LD      A,B
        CP      8Dh
        JR      NZ,L1C2B
        RST     0x10
        DEC     HL
L1C2B:  INC     HL
        LD      A,(HL)
        CP      61h             ; 'a'
        JR      C,L1C33
        AND     5Fh             ; '_'
L1C33:  CP      C
        JR      Z,L1C1D
        POP     HL
        JR      L1C0C

L1C39:  LD      C,B
        POP     AF
        EX      DE,HL
        RET

L1C3D:  EX      DE,HL
        LD      A,C
        POP     BC
        POP     DE
        EX      DE,HL
        CP      95h
        LD      (HL),3Ah        ; ':'
        JR      NZ,L1C4A
        INC     C
        INC     HL
L1C4A:  CP      0FBh
        JR      NZ,L1C5A
        LD      (HL),3Ah        ; ':'
        INC     HL
        LD      B,93h
        LD      (HL),B
        INC     HL
        EX      DE,HL
        INC     C
        INC     C
        JR      L1C77

L1C5A:  EX      DE,HL
L1C5B:  INC     HL
        LD      (DE),A
        INC     DE
        INC     C
        SUB     3Ah             ; ':'
        JR      Z,L1C67
        CP      4Eh             ; 'N'
        JR      NZ,L1C6A
L1C67:  LD      (40B0h),A
L1C6A:  SUB     59h             ; 'Y'
        JP      NZ,L1BCC
        LD      B,A
L1C70:  LD      A,(HL)
        OR      A
        JR      Z,L1C7D
        CP      B
        JR      Z,L1C5B
L1C77:  INC     HL
        LD      (DE),A
        INC     C
        INC     DE
        JR      L1C70

L1C7D:  LD      HL,0005h
        LD      B,H
        ADD     HL,BC
        LD      B,H
        LD      C,L
        LD      HL,(40A7h)
        DEC     HL
        DEC     HL
        DEC     HL
        LD      (DE),A
        INC     DE
        LD      (DE),A
        INC     DE
        LD      (DE),A
        RET

L1C90:  LD      A,H
        SUB     D
        RET     NZ
        LD      A,L
        SUB     E
        RET

L1C96:  LD      A,(HL)
        EX      (SP),HL
        CP      (HL)
        INC     HL
        EX      (SP),HL
        JP      Z,L1D78
        JP      L1997

L1CA1:  LD      A,64h           ; 'd'
        LD      (40DCh),A
        CALL    L1F21
        EX      (SP),HL
        CALL    L1936
        POP     DE
        JR      NZ,L1CB5
        ADD     HL,BC
        LD      SP,HL
        LD      (40E8h),HL
L1CB5:  EX      DE,HL
        LD      C,08h
        CALL    L1963
        PUSH    HL
        CALL    L1F05
        EX      (SP),HL
        PUSH    HL
        LD      HL,(40A2h)
        EX      (SP),HL
        RST     0x08
        CP      L
        RST     0x20
        JP      Z,L0AF6
        JP      NC,L0AF6
        PUSH    AF
        CALL    L2336+1         ; reference not aligned to instruction
        POP     AF
        PUSH    HL
        JP      P,L1CEC
        CALL    L0A7F
        EX      (SP),HL
        LD      DE,0001h
        LD      A,(HL)
        CP      0CCh
        CALL    Z,L2B01
        PUSH    DE
        PUSH    HL
        EX      DE,HL
        CALL    L099E
        JR      L1D0E

L1CEC:  CALL    L0AB1
        CALL    L09BF
        POP     HL
        PUSH    BC
        PUSH    DE
        LD      BC,8100h
        LD      D,C
        LD      E,D
        LD      A,(HL)
        CP      0CCh
        LD      A,01h
        JR      NZ,L1D0F
        CALL    L2338
        PUSH    HL
        CALL    L0AB1
        CALL    L09BF
        CALL    L0955
L1D0E:  POP     HL
L1D0F:  PUSH    BC
        PUSH    DE
        LD      C,A
        RST     0x20
        LD      B,A
        PUSH    BC
        PUSH    HL
        LD      HL,(40DFh)
        EX      (SP),HL
        ; --- START PROC L1D1A ---
L1D1A:  LD      B,81h
        PUSH    BC
        INC     SP
        ; --- START PROC L1D1E ---
L1D1E:  CALL    L0358
        OR      A
        CALL    NZ,L1DA0
        LD      (40E6h),HL
        LD      (40E8h),SP
        LD      A,(HL)
        CP      3Ah             ; ':'
        JR      Z,L1D5A
        OR      A
        JP      NZ,L1997
        INC     HL
L1D36:  LD      A,(HL)
        INC     HL
        OR      (HL)
        JP      Z,L197E
        INC     HL
        LD      E,(HL)
        INC     HL
        LD      D,(HL)
        EX      DE,HL
        LD      (40A2h),HL
        LD      A,(411Bh)
        OR      A
        JR      Z,L1D59
        PUSH    DE
        LD      A,3Ch           ; '<'
        CALL    L032A
        CALL    L0FAF
        LD      A,3Eh           ; '>'
        CALL    L032A
        POP     DE
        ; --- START PROC L1D59 ---
L1D59:  EX      DE,HL
        ; --- START PROC L1D5A ---
L1D5A:  RST     0x10
        LD      DE,1D1Eh
        PUSH    DE
L1D5F:  RET     Z
L1D60:  SUB     80h
        JP      C,L1F21
        CP      3Ch             ; '<'
        JP      NC,L2AE7
        RLCA
        LD      C,A
        LD      B,00h
        EX      DE,HL
        LD      HL,1822h
        ADD     HL,BC
        LD      C,(HL)
        INC     HL
        LD      B,(HL)
        PUSH    BC
        EX      DE,HL
        ; --- START PROC L1D78 ---
L1D78:  INC     HL
        LD      A,(HL)
        CP      3Ah             ; ':'
        RET     NC
        CP      20h             ; ' '
        JP      Z,L1D78
        CP      0Bh
        JR      NC,L1D8B
        CP      09h
        JP      NC,L1D78
L1D8B:  CP      30h             ; '0'
        CCF
        INC     A
        DEC     A
        RET

        ; --- START PROC L1D91 ---
L1D91:  EX      DE,HL
        LD      HL,(40A4h)
        DEC     HL
L1D96:  LD      (40FFh),HL
        EX      DE,HL
        RET

        ; --- START PROC L1D9B ---
L1D9B:  CALL    L0358
        OR      A
        RET     Z
        ; --- START PROC L1DA0 ---
L1DA0:  CP      60h             ; '`'
        CALL    Z,L0384
        LD      (4099h),A
        DEC     A
        RET     NZ
        INC     A
        JP      L1DB4

L1DAE:  RET     NZ
        PUSH    AF
        CALL    Z,41BBh
        POP     AF
L1DB4:  LD      (40E6h),HL
        LD      HL,40B5h
        LD      (40B3h),HL
L1DBD:  LD      HL,0FFF6h
        POP     BC
        ; --- START PROC L1DC1 ---
L1DC1:  LD      HL,(40A2h)
        PUSH    HL
        PUSH    AF
        LD      A,L
        AND     H
        INC     A
        JR      Z,L1DD4
        LD      (40F5h),HL
        LD      HL,(40E6h)
        LD      (40F7h),HL
L1DD4:  CALL    L038B
        CALL    L20F9
        POP     AF
        LD      HL,1930h
        JP      NZ,L1A06
        JP      L1A17+1         ; reference not aligned to instruction

L1DE4:  LD      HL,(40F7h)
        LD      A,H
        OR      L
        LD      E,20h           ; ' '
        JP      Z,L19A2
        EX      DE,HL
        LD      HL,(40F5h)
        LD      (40A2h),HL
        EX      DE,HL
        RET

L1DF7:  LD      A,0AFh
        LD      (411Bh),A
        RET

L1DFD:  POP     AF
        POP     HL
        RET

L1E00:  LD      E,03h
        LD      BC,021Eh
        LD      BC,041Eh
        LD      BC,081Eh
L1E0B:  CALL    L1E3D
        LD      BC,1997h
        PUSH    BC
        RET     C
        SUB     41h             ; 'A'
        LD      C,A
        LD      B,A
        RST     0x10
        CP      0CEh
        JR      NZ,L1E25
        RST     0x10
        CALL    L1E3D
        RET     C
        SUB     41h             ; 'A'
        LD      B,A
        RST     0x10
L1E25:  LD      A,B
        SUB     C
        RET     C
        INC     A
        EX      (SP),HL
        LD      HL,4101h
        LD      B,00h
        ADD     HL,BC
L1E30:  LD      (HL),E
        INC     HL
        DEC     A
        JR      NZ,L1E30
        POP     HL
        LD      A,(HL)
        CP      2Ch             ; ','
        RET     NZ
        RST     0x10
        JR      L1E0B

        ; --- START PROC L1E3D ---
L1E3D:  LD      A,(HL)
        CP      41h             ; 'A'
        RET     C
        CP      5Bh             ; '['
        CCF
        RET

        ; --- START PROC L1E45 ---
L1E45:  RST     0x10
        ; --- START PROC L1E46 ---
L1E46:  CALL    L2B02
        RET     P
        ; --- START PROC L1E4A ---
L1E4A:  LD      E,08h
        JP      L19A2

        ; --- START PROC L1E4F ---
L1E4F:  LD      A,(HL)
        CP      2Eh             ; '.'
        EX      DE,HL
        LD      HL,(40ECh)
        EX      DE,HL
        JP      Z,L1D78
        ; --- START PROC L1E5A ---
L1E5A:  DEC     HL
        ; --- START PROC L1E5B ---
L1E5B:  LD      DE,0000h
L1E5E:  RST     0x10
        RET     NC
        PUSH    HL
        PUSH    AF
        LD      HL,1998h
        RST     0x18
        JP      C,L1997
        LD      H,D
        LD      L,E
        ADD     HL,DE
        ADD     HL,HL
        ADD     HL,DE
        ADD     HL,HL
        POP     AF
        SUB     30h             ; '0'
        LD      E,A
        LD      D,00h
        ADD     HL,DE
        EX      DE,HL
        POP     HL
        JR      L1E5E

L1E7A:  JP      Z,L1B61
        CALL    L1E46
        DEC     HL
        RST     0x10
        RET     NZ
        PUSH    HL
        LD      HL,(40B1h)
        LD      A,L
        SUB     E
        LD      E,A
        LD      A,H
        SBC     A,D
        LD      D,A
        JP      C,L197A
        LD      HL,(40F9h)
        LD      BC,0028h
        ADD     HL,BC
        RST     0x18
        JP      NC,L197A
        EX      DE,HL
        LD      (40A0h),HL
        POP     HL
        JP      L1B61

L1EA3:  JP      Z,L1B5D
        CALL    41C7h
        CALL    L1B61
        LD      BC,1D1Eh
        JR      L1EC1

L1EB1:  LD      C,03h
        CALL    L1963
        POP     BC
        PUSH    HL
        PUSH    HL
        LD      HL,(40A2h)
        EX      (SP),HL
        LD      A,91h
        PUSH    AF
        INC     SP
L1EC1:  PUSH    BC
L1EC2:  CALL    L1E5A
L1EC5:  CALL    L1F05+2         ; reference not aligned to instruction
        PUSH    HL
        LD      HL,(40A2h)
        RST     0x18
        POP     HL
        INC     HL
        CALL    C,L1B2F
        CALL    NC,L1B2C
        LD      H,B
        LD      L,C
        DEC     HL
        RET     C
        ; --- START PROC L1ED9 ---
L1ED9:  LD      E,0Eh
        JP      L19A2

L1EDE:  RET     NZ
        LD      D,0FFh
        CALL    L1936
        LD      SP,HL
        LD      (40E8h),HL
        CP      91h
        LD      E,04h
        JP      NZ,L19A2
        POP     HL
        LD      (40A2h),HL
        INC     HL
        LD      A,H
        OR      L
        JR      NZ,L1EFF
        LD      A,(40DDh)
        OR      A
        JP      NZ,L1A17+1      ; reference not aligned to instruction
L1EFF:  LD      HL,1D1Eh
        EX      (SP),HL
L1F03:  LD      A,0E1h
        ; --- START PROC L1F05 ---
L1F05:  LD      BC,0E3Ah
        NOP
        LD      B,00h
L1F0B:  LD      A,C
        LD      C,B
        LD      B,A
L1F0E:  LD      A,(HL)
        OR      A
        RET     Z
        CP      B
        RET     Z
        INC     HL
        CP      22h             ; '"'
        JR      Z,L1F0B
        SUB     8Fh
        JR      NZ,L1F0E
        CP      B
        ADC     A,D
        LD      D,A
        JR      L1F0E

        ; --- START PROC L1F21 ---
L1F21:  CALL    L260C+1         ; reference not aligned to instruction
        RST     0x08
        PUSH    DE
        EX      DE,HL
        LD      (40DFh),HL
        EX      DE,HL
        PUSH    DE
        RST     0x20
        PUSH    AF
        CALL    L2336+1         ; reference not aligned to instruction
        POP     AF
        EX      (SP),HL
L1F33:  ADD     A,03h
        CALL    L2819
        CALL    L0A03
        PUSH    HL
        JR      NZ,L1F66
        LD      HL,(4121h)
        PUSH    HL
        INC     HL
        LD      E,(HL)
        INC     HL
        LD      D,(HL)
        LD      HL,(40A4h)
        RST     0x18
        JR      NC,L1F59+1      ; reference not aligned to instruction
        LD      HL,(40A0h)
        RST     0x18
        POP     DE
        JR      NC,L1F62
        LD      HL,(40F9h)
        RST     0x18
        JR      NC,L1F62
L1F59:  LD      A,0D1h
        CALL    L29F5
        EX      DE,HL
        CALL    L2843
L1F62:  CALL    L29F5
        EX      (SP),HL
L1F66:  CALL    L09D3
        POP     DE
        POP     HL
        RET

L1F6C:  CP      9Eh
        JR      NZ,L1F95
        RST     0x10
        RST     0x08
        ADC     A,L
        CALL    L1E5A
        LD      A,D
        OR      E
        JR      Z,L1F83
        CALL    L1B2A
        LD      D,B
        LD      E,C
        POP     HL
        JP      NC,L1ED9
L1F83:  EX      DE,HL
        LD      (40F0h),HL
        EX      DE,HL
        RET     C
        LD      A,(40F2h)
        OR      A
        RET     Z
        LD      A,(409Ah)
        LD      E,A
        JP      L19AB

L1F95:  CALL    L2B1C
        LD      A,(HL)
        LD      B,A
        CP      91h
        JR      Z,L1FA1
        RST     0x08
        ADC     A,L
        DEC     HL
L1FA1:  LD      C,E
L1FA2:  DEC     C
        LD      A,B
        JP      Z,L1D60
        CALL    L1E5B
        CP      2Ch             ; ','
        RET     NZ
        JR      L1FA2

L1FAF:  LD      DE,40F2h
        LD      A,(DE)
        OR      A
        JP      Z,L199F+1       ; reference not aligned to instruction
        INC     A
        LD      (409Ah),A
        LD      (DE),A
        LD      A,(HL)
        CP      87h
        JR      Z,L1FCD
        CALL    L1E5A
        RET     NZ
        LD      A,D
        OR      E
        JP      NZ,L1EC5
        INC     A
        JR      L1FCF

L1FCD:  RST     0x10
        RET     NZ
L1FCF:  LD      HL,(40EEh)
        EX      DE,HL
        LD      HL,(40EAh)
        LD      (40A2h),HL
        EX      DE,HL
        RET     NZ
        LD      A,(HL)
        OR      A
        JR      NZ,L1FE3
        INC     HL
        INC     HL
        INC     HL
        INC     HL
L1FE3:  INC     HL
        LD      A,D
        AND     E
        INC     A
        JP      NZ,L1F05
        LD      A,(40DDh)
        DEC     A
        JP      Z,L1DBD+1       ; reference not aligned to instruction
        JP      L1F05

L1FF4:  CALL    L2B1C
        RET     NZ
        OR      A
        JP      Z,L1E4A
        DEC     A
        ADD     A,A
        LD      E,A
        CP      2Dh             ; '-'
        JR      C,L2005
        LD      E,26h           ; '&'
L2005:  JP      L19A2

L2008:  LD      DE,000Ah
        PUSH    DE
        JR      Z,L2025
        CALL    L1E4F
        EX      DE,HL
        EX      (SP),HL
        JR      Z,L2026
        EX      DE,HL
        RST     0x08
        INC     L
        EX      DE,HL
        LD      HL,(40E4h)
        EX      DE,HL
        JR      Z,L2025
        CALL    L1E5A
        JP      NZ,L1997
L2025:  EX      DE,HL
L2026:  LD      A,H
        OR      L
        JP      Z,L1E4A
        LD      (40E4h),HL
        LD      (40E1h),A
        POP     HL
        LD      (40E2h),HL
        POP     BC
        JP      L1A33

L2039:  CALL    L2336+1         ; reference not aligned to instruction
        LD      A,(HL)
        CP      2Ch             ; ','
        CALL    Z,L1D78
        CP      0CAh
        CALL    Z,L1D78
        DEC     HL
        PUSH    HL
        CALL    L0994
        POP     HL
        JR      Z,L2056
L204F:  RST     0x10
        JP      C,L1EC2
        JP      L1D5F

L2056:  LD      D,01h
L2058:  CALL    L1F05
        OR      A
        RET     Z
        RST     0x10
        CP      95h
        JR      NZ,L2058
        DEC     D
        JR      NZ,L2058
        JR      L204F

L2067:  LD      A,01h
        LD      (409Ch),A
L206C:  JP      L207C

L206F:  CALL    41CAh
        CP      23h             ; '#'
        JR      NZ,L207C
        CALL    L0284
        LD      (409Ch),A
L207C:  DEC     HL
        RST     0x10
        CALL    Z,L20FE
L2081:  JP      Z,L2169
        OR      20h             ; ' '
        CP      60h             ; '`'
        JR      NZ,L20A5
        CALL    L2B01
        CP      04h
        JP      NC,L1E4A
        PUSH    HL
        LD      HL,3C00h
        ADD     HL,DE
        LD      (4020h),HL
        LD      A,E
        AND     3Fh             ; '?'
        LD      (40A6h),A
        POP     HL
        RST     0x08
        INC     L
        JR      L206C

L20A5:  LD      A,(HL)
        CP      0BFh
        JP      Z,L2CBD
        CP      0BCh
        JP      Z,L2137
        PUSH    HL
        CP      2Ch             ; ','
        JR      Z,L2108
        CP      3Bh             ; ';'
        JR      Z,L2117
        CALL    L2336+1         ; reference not aligned to instruction
        EX      (SP),HL
        RST     0x20
        JR      Z,L20F2
        CALL    L0FBD
        CALL    L2865
        CALL    41CDh
        LD      HL,(4121h)
        LD      A,(409Ch)
        OR      A
        JP      M,L20E9
        JR      Z,L20DD
        LD      A,(409Bh)
        ADD     A,(HL)
        CP      84h
        JR      L20E6

L20DD:  LD      A,(409Dh)
        LD      B,A
        LD      A,(40A6h)
        ADD     A,(HL)
        CP      B
L20E6:  CALL    NC,L20FE
L20E9:  CALL    L28AA
        LD      A,20h           ; ' '
        CALL    L032A
        OR      A
L20F2:  CALL    Z,L28AA
        POP     HL
        JP      L207C

        ; --- START PROC L20F9 ---
L20F9:  LD      A,(40A6h)
        OR      A
        RET     Z
        ; --- START PROC L20FE ---
L20FE:  LD      A,0Dh
        CALL    L032A
        ; --- START PROC L2103 ---
L2103:  CALL    41D0h
        XOR     A
        RET

L2108:  CALL    41D3h
        LD      A,(409Ch)
        OR      A
        JP      P,L2119
        LD      A,2Ch           ; ','
        CALL    L032A
L2117:  JR      L2164

L2119:  JR      Z,L2123
        LD      A,(409Bh)
        CP      70h             ; 'p'
        JP      L212B

L2123:  LD      A,(409Eh)
        LD      B,A
        LD      A,(40A6h)
        CP      B
L212B:  CALL    NC,L20FE
        JR      NC,L2164
L2130:  SUB     10h
        JR      NC,L2130
        CPL
        JR      L215A

L2137:  CALL    L2B1B
        AND     7Fh             ; ''
        LD      E,A
        RST     0x08
        ADD     HL,HL
        DEC     HL
        PUSH    HL
        CALL    41D3h
        LD      A,(409Ch)
        OR      A
        JP      M,L1E4A
        JP      Z,L2153
        LD      A,(409Bh)
        JR      L2156

L2153:  LD      A,(40A6h)
L2156:  CPL
        ADD     A,E
        JR      NC,L2164
L215A:  INC     A
        LD      B,A
        LD      A,20h           ; ' '
L215E:  CALL    L032A
        DEC     B
        JR      NZ,L215E
L2164:  POP     HL
        RST     0x10
        JP      L2081

        ; --- START PROC L2169 ---
L2169:  LD      A,(409Ch)
        OR      A
        CALL    M,L01F8
        XOR     A
        LD      (409Ch),A
        CALL    41BEh
        RET

L2178:  CCF
        LD      D,D
        LD      B,L
        LD      B,H
        LD      C,A
        DEC     C
        NOP
L217F:  LD      A,(40DEh)
        OR      A
        JP      NZ,L1991
        LD      A,(40A9h)
        OR      A
        LD      E,2Ah           ; '*'
        JP      Z,L19A2
        POP     BC
        LD      HL,2178h
        CALL    L28A7
        LD      HL,(40E6h)
        RET

L219A:  CALL    L2828
        LD      A,(HL)
        CALL    41D6h
        SUB     23h             ; '#'
        LD      (40A9h),A
        LD      A,(HL)
        JR      NZ,L21C9
        CALL    L0293
        PUSH    HL
        LD      B,0FAh
        LD      HL,(40A7h)
L21B2:  CALL    L0235
        LD      (HL),A
        INC     HL
        CP      0Dh
        JR      Z,L21BD
        DJNZ    L21B2
L21BD:  DEC     HL
        LD      (HL),00h
        CALL    L01F8
        LD      HL,(40A7h)
        DEC     HL
        JR      L21EB

L21C9:  LD      BC,21DBh
        PUSH    BC
        CP      22h             ; '"'
        RET     NZ
        CALL    L2866
        RST     0x08
        DEC     SP
        PUSH    HL
        CALL    L28AA
        POP     HL
        RET

L21DB:  PUSH    HL
        CALL    L1BB3
        POP     BC
        JP      C,L1DBD+1       ; reference not aligned to instruction
        INC     HL
        LD      A,(HL)
        OR      A
        DEC     HL
        PUSH    BC
        JP      Z,L1F03+1       ; reference not aligned to instruction
L21EB:  LD      (HL),2Ch        ; ','
        JR      L21F3+1         ; reference not aligned to instruction

L21EF:  PUSH    HL
        LD      HL,(40FFh)
L21F3:  OR      0AFh
        LD      (40DEh),A
        EX      (SP),HL
        JR      L21FD

L21FB:  RST     0x08
        INC     L
L21FD:  CALL    L260C+1         ; reference not aligned to instruction
        EX      (SP),HL
        PUSH    DE
        LD      A,(HL)
        CP      2Ch             ; ','
        JR      Z,L222D
        LD      A,(40DEh)
        OR      A
        JP      NZ,L2296
        LD      A,(40A9h)
        OR      A
        LD      E,06h
        JP      Z,L19A2
        LD      A,3Fh           ; '?'
        CALL    L032A
        CALL    L1BB3
        POP     DE
        POP     BC
        JP      C,L1DBD+1       ; reference not aligned to instruction
        INC     HL
        LD      A,(HL)
        OR      A
        DEC     HL
        PUSH    BC
        JP      Z,L1F03+1       ; reference not aligned to instruction
        PUSH    DE
L222D:  CALL    41DCh
        RST     0x20
        PUSH    AF
        JR      NZ,L224D
        RST     0x10
        LD      D,A
        LD      B,A
        CP      22h             ; '"'
        JR      Z,L2240
        LD      D,3Ah           ; ':'
        LD      B,2Ch           ; ','
        DEC     HL
L2240:  CALL    L2869
        POP     AF
        EX      DE,HL
        LD      HL,225Ah
        EX      (SP),HL
        PUSH    DE
        JP      L1F33

L224D:  RST     0x10
        POP     AF
        PUSH    AF
        LD      BC,2243h
        PUSH    BC
        JP      C,L0E6B+1       ; reference not aligned to instruction
        JP      NC,L0E65
        DEC     HL
        RST     0x10
        JR      Z,L2263
        CP      2Ch             ; ','
        JP      NZ,L217F
L2263:  EX      (SP),HL
        DEC     HL
        RST     0x10
        JP      NZ,L21FB
        POP     DE
        NOP
        NOP
        NOP
        NOP
        NOP
        LD      A,(40DEh)
        OR      A
        EX      DE,HL
        JP      NZ,L1D96
        PUSH    DE
        CALL    41DFh
        OR      (HL)
        LD      HL,2286h
        CALL    NZ,L28A7
        POP     HL
        JP      L2169

L2286:  CCF
        LD      B,L
        LD      A,B
        LD      (HL),H
        LD      (HL),D
        LD      H,C
        JR      NZ,L22F7
        LD      H,A
        LD      L,(HL)
        LD      L,A
        LD      (HL),D
        LD      H,L
        LD      H,H
        DEC     C
        NOP
L2296:  CALL    L1F05
        OR      A
        JR      NZ,L22AE
        INC     HL
        LD      A,(HL)
        INC     HL
        OR      (HL)
        LD      E,06h
        JP      Z,L19A2
        INC     HL
        LD      E,(HL)
        INC     HL
        LD      D,(HL)
        EX      DE,HL
        LD      (40DAh),HL
        EX      DE,HL
L22AE:  RST     0x10
        CP      88h
        JR      NZ,L2296
        JP      L222D

L22B6:  LD      DE,0000h
        ; --- START PROC L22B9 ---
L22B9:  CALL    NZ,L260C+1      ; reference not aligned to instruction
        LD      (40DFh),HL
        CALL    L1936
        JP      NZ,L199C+1      ; reference not aligned to instruction
        LD      SP,HL
        LD      (40E8h),HL
        PUSH    DE
        LD      A,(HL)
        INC     HL
        PUSH    AF
        PUSH    DE
        LD      A,(HL)
        INC     HL
        OR      A
        JP      M,L22EA
        CALL    L09B1
        EX      (SP),HL
        PUSH    HL
        CALL    L070B
        POP     HL
        CALL    L09CB
        POP     HL
        CALL    L09C2
        PUSH    HL
        CALL    L0A0C
        JR      L2313

L22EA:  INC     HL
        INC     HL
        INC     HL
        INC     HL
        LD      C,(HL)
        INC     HL
        LD      B,(HL)
        INC     HL
        EX      (SP),HL
        LD      E,(HL)
        INC     HL
        LD      D,(HL)
        PUSH    HL
L22F7:  LD      L,C
        LD      H,B
        CALL    L0BD2
        LD      A,(40AFh)
        CP      04h
        JP      Z,L07B2
        EX      DE,HL
        POP     HL
        LD      (HL),D
        DEC     HL
        LD      (HL),E
        POP     HL
        PUSH    DE
        LD      E,(HL)
        INC     HL
        LD      D,(HL)
        INC     HL
        EX      (SP),HL
        CALL    L0A39
L2313:  POP     HL
        POP     BC
        SUB     B
        CALL    L09C2
        JR      Z,L2324
        EX      DE,HL
        LD      (40A2h),HL
        LD      L,C
        LD      H,B
        JP      L1D1A

L2324:  LD      SP,HL
        LD      (40E8h),HL
        LD      HL,(40DFh)
        LD      A,(HL)
        CP      2Ch             ; ','
        JP      NZ,L1D1E
        RST     0x10
        CALL    L22B9
        ; --- START PROC L2335 ---
L2335:  RST     0x08
L2336:  JR      Z,L2362+1       ; reference not aligned to instruction
        ; --- START PROC L2338 ---
L2338:  LD      D,00h
        ; --- START PROC L233A ---
L233A:  PUSH    DE
        LD      C,01h
        CALL    L1963
        CALL    L249F
        LD      (40F3h),HL
        ; --- START PROC L2346 ---
L2346:  LD      HL,(40F3h)
        POP     BC
        LD      A,(HL)
        LD      D,00h
L234D:  SUB     0D4h
        JR      C,L2364
        CP      03h
        JR      NC,L2364
        CP      01h
        RLA
        XOR     D
        CP      D
        LD      D,A
        JP      C,L1997
        LD      (40D8h),HL
        RST     0x10
L2362:  JR      L234D

L2364:  LD      A,D
        OR      A
        JP      NZ,L23EC
        LD      A,(HL)
        LD      (40D8h),HL
        SUB     0CDh
        RET     C
        CP      07h
        RET     NC
        LD      E,A
        LD      A,(40AFh)
        SUB     03h
        OR      E
        JP      Z,L298F
        LD      HL,189Ah
        ADD     HL,DE
        LD      A,B
        LD      D,(HL)
        CP      D
        RET     NC
        PUSH    BC
        LD      BC,2346h
        PUSH    BC
        LD      A,D
        CP      7Fh             ; ''
        JP      Z,L23D4
        CP      51h             ; 'Q'
        JP      C,L23E1
L2395:  LD      HL,4121h
        OR      A
        LD      A,(40AFh)
        DEC     A
        DEC     A
        DEC     A
        JP      Z,L0AF6
        LD      C,(HL)
        INC     HL
        LD      B,(HL)
        PUSH    BC
        JP      M,L23C5
        INC     HL
        LD      C,(HL)
        INC     HL
        LD      B,(HL)
        PUSH    BC
        PUSH    AF
        OR      A
        JP      PO,L23C3+1      ; reference not aligned to instruction
        POP     AF
        INC     HL
        JR      C,L23BA
        LD      HL,411Dh
L23BA:  LD      C,(HL)
        INC     HL
        LD      B,(HL)
        INC     HL
        PUSH    BC
        LD      C,(HL)
        INC     HL
        LD      B,(HL)
        PUSH    BC
L23C3:  LD      B,0F1h
L23C5:  ADD     A,03h
        LD      C,E
        LD      B,A
        PUSH    BC
        LD      BC,2406h
L23CD:  PUSH    BC
        LD      HL,(40D8h)
        JP      L233A

L23D4:  CALL    L0AB1
        CALL    L09A4
        LD      BC,13F2h
        LD      D,7Fh           ; ''
        JR      L23CD

L23E1:  PUSH    DE
        CALL    L0A7F
        POP     DE
        PUSH    HL
        LD      BC,25E9h
        JR      L23CD

L23EC:  LD      A,B
        CP      64h             ; 'd'
        RET     NC
        PUSH    BC
        PUSH    DE
        LD      DE,6404h
        LD      HL,25B8h
        PUSH    HL
        RST     0x20
        JP      NZ,L2395
        LD      HL,(4121h)
        PUSH    HL
        LD      BC,258Ch
        JR      L23CD

L2406:  POP     BC
        LD      A,C
        LD      (40B0h),A
        LD      A,B
        CP      08h
        JR      Z,L2438
        LD      A,(40AFh)
        CP      08h
        JP      Z,L2460
        LD      D,A
        LD      A,B
        CP      04h
        JP      Z,L2472
        LD      A,D
        CP      03h
        JP      Z,L0AF6
        JP      NC,L247C
        LD      HL,18BFh
        LD      B,00h
        ADD     HL,BC
        ADD     HL,BC
        LD      C,(HL)
        INC     HL
        LD      B,(HL)
        POP     DE
        LD      HL,(4121h)
        PUSH    BC
        RET

L2438:  CALL    L0ADB
        CALL    L09FC
        POP     HL
        LD      (411Fh),HL
        POP     HL
        LD      (411Dh),HL
L2446:  POP     BC
        POP     DE
        CALL    L09B4
L244B:  CALL    L0ADB
        LD      HL,18ABh
L2451:  LD      A,(40B0h)
        RLCA
        PUSH    BC
        LD      C,A
        LD      B,00h
        ADD     HL,BC
        POP     BC
        LD      A,(HL)
        INC     HL
        LD      H,(HL)
        LD      L,A
        JP      (HL)

L2460:  PUSH    BC
        CALL    L09FC
        POP     AF
        LD      (40AFh),A
        CP      04h
        JR      Z,L2446
        POP     HL
        LD      (4121h),HL
        JR      L244B

L2472:  CALL    L0AB1
        POP     BC
        POP     DE
L2477:  LD      HL,18B5h
        JR      L2451

L247C:  POP     HL
        CALL    L09A4
        CALL    L0ACF
        CALL    L09BF
        POP     HL
        LD      (4123h),HL
        POP     HL
        LD      (4121h),HL
        JR      L2477

L2490:  PUSH    HL
        EX      DE,HL
        CALL    L0ACF
        POP     HL
        CALL    L09A4
        CALL    L0ACF
        JP      L08A0

        ; --- START PROC L249F ---
L249F:  RST     0x10
        LD      E,28h           ; '('
        JP      Z,L19A2
        JP      C,L0E6B+1       ; reference not aligned to instruction
        CALL    L1E3D
        JP      NC,L2540
        CP      0CDh
        JR      Z,L249F
        CP      2Eh             ; '.'
        JP      Z,L0E6B+1       ; reference not aligned to instruction
        CP      0CEh
        JP      Z,L2532
L24BC:  CP      22h             ; '"'
        JP      Z,L2866
        CP      0CBh
        JP      Z,L25C4
        CP      26h             ; '&'
        JP      Z,4194h
        CP      0C3h
        JR      NZ,L24D9
        RST     0x10
        LD      A,(409Ah)
        PUSH    HL
        CALL    L27F8
        POP     HL
        RET

L24D9:  CP      0C2h
        JR      NZ,L24E7
        RST     0x10
        PUSH    HL
        LD      HL,(40EAh)
        CALL    L0C66
        POP     HL
        RET

L24E7:  CP      0C0h
        JR      NZ,L24FF
        RST     0x10
        RST     0x08
        JR      Z,L24BC
        DEC     C
        LD      H,0CFh
        ADD     HL,HL
        PUSH    HL
        EX      DE,HL
        LD      A,H
        OR      L
        JP      Z,L1E4A
        CALL    L0A9A
        POP     HL
        RET

L24FF:  CP      0C1h
        JP      Z,L27FE
        CP      0C5h
        JP      Z,419Dh
        CP      0C8h
        JP      Z,L27C9
        CP      0C7h
        JP      Z,4176h
        CP      0C6h
        JP      Z,L0132
        CP      0C9h
        JP      Z,L019D
        CP      0C4h
        JP      Z,L2A2F
        CP      0BEh
        JP      Z,4155h
        SUB     0D7h
        JP      NC,L254E
        ; --- START PROC L252C ---
L252C:  CALL    L2335
        RST     0x08
        ADD     HL,HL
        RET

        ; --- START PROC L2532 ---
L2532:  LD      D,7Dh           ; '}'
        CALL    L233A
        LD      HL,(40F3h)
        PUSH    HL
        CALL    L097B
        POP     HL
        RET

        ; --- START PROC L2540 ---
L2540:  CALL    L260C+1         ; reference not aligned to instruction
        PUSH    HL
        EX      DE,HL
        LD      (4121h),HL
        RST     0x20
        CALL    NZ,L09F7
        POP     HL
        RET

        ; --- START PROC L254E ---
L254E:  LD      B,00h
        RLCA
        LD      C,A
        PUSH    BC
        RST     0x10
        LD      A,C
        CP      41h             ; 'A'
        JR      C,L256F
        CALL    L2335
        RST     0x08
        INC     L
        CALL    L0AF4
        EX      DE,HL
        LD      HL,(4121h)
        EX      (SP),HL
        PUSH    HL
        EX      DE,HL
        CALL    L2B1C
        EX      DE,HL
        EX      (SP),HL
        JR      L2583

L256F:  CALL    L252C
        EX      (SP),HL
        LD      A,L
        CP      0Ch
        JR      C,L257F
        CP      1Bh
        PUSH    HL
        CALL    C,L0AB1
        POP     HL
L257F:  LD      DE,253Eh
        PUSH    DE
        ; --- START PROC L2583 ---
L2583:  LD      BC,1608h
        ; --- START PROC L2586 ---
L2586:  ADD     HL,BC
        LD      C,(HL)
        INC     HL
        LD      H,(HL)
        LD      L,C
        JP      (HL)

L258C:  CALL    L29D7
        LD      A,(HL)
        INC     HL
        LD      C,(HL)
        INC     HL
        LD      B,(HL)
        POP     DE
        PUSH    BC
        PUSH    AF
        CALL    L29DE
        POP     DE
        LD      E,(HL)
        INC     HL
        LD      C,(HL)
        INC     HL
        LD      B,(HL)
        POP     HL
L25A1:  LD      A,E
        OR      D
        RET     Z
        LD      A,D
        SUB     01h
        RET     C
        XOR     A
        CP      E
        INC     A
        RET     NC
        DEC     D
        DEC     E
        LD      A,(BC)
        CP      (HL)
        INC     HL
        INC     BC
        JR      Z,L25A1
        CCF
        JP      L0960

L25B8:  INC     A
        ADC     A,A
        POP     BC
        AND     B
        ADD     A,0FFh
        SBC     A,A
        CALL    L098D
        JR      L25D6

        ; --- START PROC L25C4 ---
L25C4:  LD      D,5Ah           ; 'Z'
        CALL    L233A
        CALL    L0A7F
        LD      A,L
        CPL
        LD      L,A
        LD      A,H
        CPL
        LD      H,A
        LD      (4121h),HL
        POP     BC
L25D6:  JP      L2346

L25D9:  LD      A,(40AFh)
        CP      08h
        JR      NC,L25E5
        SUB     03h
        OR      A
        SCF
        RET

L25E5:  SUB     03h
        OR      A
        RET

L25E9:  PUSH    BC
        CALL    L0A7F
        POP     AF
        POP     DE
        LD      BC,27FAh
        PUSH    BC
        CP      46h             ; 'F'
        JR      NZ,L25FD
        LD      A,E
        OR      L
        LD      L,A
        LD      A,H
        OR      D
        RET

L25FD:  LD      A,E
        AND     L
        LD      L,A
        LD      A,H
        AND     D
        RET

L2603:  DEC     HL
        RST     0x10
        RET     Z
        RST     0x08
        INC     L
        LD      BC,2603h
        PUSH    BC
L260C:  OR      0AFh
        LD      (40AEh),A
        LD      B,(HL)
        CALL    L1E3D
        JP      C,L1997
        XOR     A
        LD      C,A
        RST     0x10
        JR      C,L2622
        CALL    L1E3D
        JR      C,L262B
L2622:  LD      C,A
L2623:  RST     0x10
        JR      C,L2623
        CALL    L1E3D
        JR      NC,L2623
L262B:  LD      DE,2652h
        PUSH    DE
        LD      D,02h
        CP      25h             ; '%'
        RET     Z
        INC     D
        CP      24h             ; '$'
        RET     Z
        INC     D
        CP      21h             ; '!'
        RET     Z
        LD      D,08h
        CP      23h             ; '#'
        RET     Z
        LD      A,B
        SUB     41h             ; 'A'
        AND     7Fh             ; ''
        LD      E,A
        LD      D,00h
        PUSH    HL
        LD      HL,4101h
        ADD     HL,DE
        LD      D,(HL)
        POP     HL
        DEC     HL
        RET

L2652:  LD      A,D
        LD      (40AFh),A
        RST     0x10
        LD      A,(40DCh)
        OR      A
        JP      NZ,L2664
        LD      A,(HL)
        SUB     28h             ; '('
        JP      Z,L26E9
L2664:  XOR     A
        LD      (40DCh),A
        PUSH    HL
        PUSH    DE
        LD      HL,(40F9h)
L266D:  EX      DE,HL
        LD      HL,(40FBh)
        RST     0x18
        POP     HL
        JR      Z,L268E
        LD      A,(DE)
        LD      L,A
        CP      H
        INC     DE
        JR      NZ,L2685+1      ; reference not aligned to instruction
        LD      A,(DE)
        CP      C
        JR      NZ,L2685+1      ; reference not aligned to instruction
        INC     DE
        LD      A,(DE)
        CP      B
        JP      Z,L26CC
L2685:  LD      A,13h
        INC     DE
        PUSH    HL
        LD      H,00h
        ADD     HL,DE
        JR      L266D

L268E:  LD      A,H
        POP     HL
        EX      (SP),HL
        PUSH    AF
        PUSH    DE
        LD      DE,24F1h
        RST     0x18
        JR      Z,L26CF
        LD      DE,2543h
        RST     0x18
        POP     DE
        JR      Z,L26D5
        POP     AF
        EX      (SP),HL
        PUSH    HL
        PUSH    BC
        LD      C,A
        LD      B,00h
        PUSH    BC
        INC     BC
        INC     BC
        INC     BC
        LD      HL,(40FDh)
        PUSH    HL
        ADD     HL,BC
        POP     BC
        PUSH    HL
        CALL    L1955
        POP     HL
        LD      (40FDh),HL
        LD      H,B
        LD      L,C
        LD      (40FBh),HL
L26BE:  DEC     HL
        LD      (HL),00h
        RST     0x18
        JR      NZ,L26BE
        POP     DE
        LD      (HL),E
        INC     HL
        POP     DE
        LD      (HL),E
        INC     HL
        LD      (HL),D
        EX      DE,HL
L26CC:  INC     DE
        POP     HL
        RET

L26CF:  LD      D,A
        LD      E,A
        POP     AF
        POP     AF
        EX      (SP),HL
        RET

L26D5:  LD      (4124h),A
        POP     BC
        LD      H,A
        LD      L,A
        LD      (4121h),HL
        RST     0x20
        JR      NZ,L26E7
        LD      HL,1928h
        LD      (4121h),HL
L26E7:  POP     HL
        RET

L26E9:  PUSH    HL
        LD      HL,(40AEh)
        EX      (SP),HL
        LD      D,A
L26EF:  PUSH    DE
        PUSH    BC
        CALL    L1E45
        POP     BC
        POP     AF
        EX      DE,HL
        EX      (SP),HL
        PUSH    HL
        EX      DE,HL
        INC     A
        LD      D,A
        LD      A,(HL)
        CP      2Ch             ; ','
        JR      Z,L26EF
        RST     0x08
        ADD     HL,HL
        LD      (40F3h),HL
        POP     HL
        LD      (40AEh),HL
        PUSH    DE
        LD      HL,(40FBh)
L270E:  LD      A,19h
        EX      DE,HL
        LD      HL,(40FDh)
        EX      DE,HL
        RST     0x18
        LD      A,(40AFh)
        JR      Z,L2742
        CP      (HL)
        INC     HL
        JR      NZ,L2726+1      ; reference not aligned to instruction
        LD      A,(HL)
        CP      C
        INC     HL
        JR      NZ,L2728
        LD      A,(HL)
        CP      B
L2726:  LD      A,23h           ; '#'
L2728:  INC     HL
        LD      E,(HL)
        INC     HL
        LD      D,(HL)
        INC     HL
        JR      NZ,L270E+1      ; reference not aligned to instruction
        LD      A,(40AEh)
        OR      A
        LD      E,12h
        JP      NZ,L19A2
        POP     AF
        SUB     (HL)
        JP      Z,L2795
        ; --- START PROC L273D ---
L273D:  LD      E,10h
        JP      L19A2

L2742:  LD      (HL),A
        INC     HL
        LD      E,A
        LD      D,00h
        POP     AF
        LD      (HL),C
        INC     HL
        LD      (HL),B
        INC     HL
        LD      C,A
        CALL    L1963
        INC     HL
        INC     HL
        LD      (40D8h),HL
        LD      (HL),C
        INC     HL
        LD      A,(40AEh)
        RLA
        LD      A,C
L275C:  LD      BC,000Bh
        JR      NC,L2763
        POP     BC
        INC     BC
L2763:  LD      (HL),C
        INC     HL
        LD      (HL),B
        INC     HL
        PUSH    AF
        CALL    L0BAA
        POP     AF
        DEC     A
        JR      NZ,L275C
        PUSH    AF
        LD      B,D
        LD      C,E
        EX      DE,HL
        ADD     HL,DE
        JR      C,L273D
        CALL    L196B+1         ; reference not aligned to instruction
        LD      (40FDh),HL
L277C:  DEC     HL
        LD      (HL),00h
        RST     0x18
        JR      NZ,L277C
        INC     BC
        LD      D,A
        LD      HL,(40D8h)
        LD      E,(HL)
        EX      DE,HL
        ADD     HL,HL
        ADD     HL,BC
        EX      DE,HL
        DEC     HL
        DEC     HL
        LD      (HL),E
        INC     HL
        LD      (HL),D
        INC     HL
        POP     AF
        JR      C,L27C5
L2795:  LD      B,A
        LD      C,A
        LD      A,(HL)
        INC     HL
L2799:  LD      D,0E1h
        LD      E,(HL)
        INC     HL
        LD      D,(HL)
        INC     HL
        EX      (SP),HL
        PUSH    AF
        RST     0x18
        JP      NC,L273D
        CALL    L0BAA
        ADD     HL,DE
        POP     AF
        DEC     A
        LD      B,H
        LD      C,L
        JR      NZ,L2799+1      ; reference not aligned to instruction
        LD      A,(40AFh)
        LD      B,H
        LD      C,L
        ADD     HL,HL
        SUB     04h
        JR      C,L27BD
        ADD     HL,HL
        JR      Z,L27C2
        ADD     HL,HL
L27BD:  OR      A
        JP      PO,L27C2
        ADD     HL,BC
L27C2:  POP     BC
        ADD     HL,BC
        EX      DE,HL
L27C5:  LD      HL,(40F3h)
        RET

        ; --- START PROC L27C9 ---
L27C9:  XOR     A
        PUSH    HL
        LD      (40AFh),A
        CALL    L27D4
        POP     HL
        RST     0x10
        RET

        ; --- START PROC L27D4 ---
L27D4:  LD      HL,(40FDh)
        EX      DE,HL
        LD      HL,0000h
        ADD     HL,SP
        RST     0x20
        JR      NZ,L27EC
        CALL    L29DA
        CALL    L28E6
        LD      HL,(40A0h)
        EX      DE,HL
        LD      HL,(40D6h)
L27EC:  LD      A,L
        SUB     E
        LD      L,A
        LD      A,H
        SBC     A,D
        LD      H,A
        JP      L0C66

L27F5:  LD      A,(40A6h)
        ; --- START PROC L27F8 ---
L27F8:  LD      L,A
        XOR     A
        LD      H,A
        JP      L0A9A

        ; --- START PROC L27FE ---
L27FE:  CALL    41A9h
        RST     0x10
        CALL    L252C
        PUSH    HL
        LD      HL,0890h
        PUSH    HL
        LD      A,(40AFh)
        PUSH    AF
        CP      03h
        CALL    Z,L29DA
        POP     AF
        EX      DE,HL
        LD      HL,(408Eh)
        JP      (HL)

        ; --- START PROC L2819 ---
L2819:  PUSH    HL
        AND     07h
        LD      HL,18A1h
        LD      C,A
        LD      B,00h
        ADD     HL,BC
        CALL    L2586
        POP     HL
        RET

        ; --- START PROC L2828 ---
L2828:  PUSH    HL
        LD      HL,(40A2h)
        INC     HL
        LD      A,H
        OR      L
        POP     HL
        RET     NZ
        LD      E,16h
        JP      L19A2

L2836:  CALL    L0FBD
        CALL    L2865
        CALL    L29DA
        LD      BC,2A2Bh
        PUSH    BC
        ; --- START PROC L2843 ---
L2843:  LD      A,(HL)
        INC     HL
        PUSH    HL
        CALL    L28BF
        POP     HL
        LD      C,(HL)
        INC     HL
        LD      B,(HL)
        CALL    L285A
        PUSH    HL
        LD      L,A
        CALL    L29CE
        POP     DE
        RET

        ; --- START PROC L2857 ---
L2857:  CALL    L28BF
        ; --- START PROC L285A ---
L285A:  LD      HL,40D3h
        PUSH    HL
        LD      (HL),A
        INC     HL
        LD      (HL),E
        INC     HL
        LD      (HL),D
        POP     HL
        RET

        ; --- START PROC L2865 ---
L2865:  DEC     HL
        ; --- START PROC L2866 ---
L2866:  LD      B,22h           ; '"'
        LD      D,B
        ; --- START PROC L2869 ---
L2869:  PUSH    HL
        LD      C,0FFh
L286C:  INC     HL
        LD      A,(HL)
        INC     C
        OR      A
        JR      Z,L2878
        CP      D
        JR      Z,L2878
        CP      B
        JR      NZ,L286C
L2878:  CP      22h             ; '"'
        CALL    Z,L1D78
        EX      (SP),HL
        INC     HL
        EX      DE,HL
        LD      A,C
        CALL    L285A
        ; --- START PROC L2884 ---
L2884:  LD      DE,40D3h
        LD      A,0D5h
        LD      HL,(40B3h)
        LD      (4121h),HL
        LD      A,03h
        LD      (40AFh),A
        CALL    L09D3
        LD      DE,40D6h
        RST     0x18
        LD      (40B3h),HL
        POP     HL
        LD      A,(HL)
        RET     NZ
        LD      E,1Eh
        JP      L19A2

        ; --- START PROC L28A6 ---
L28A6:  INC     HL
        ; --- START PROC L28A7 ---
L28A7:  CALL    L2865
        ; --- START PROC L28AA ---
L28AA:  CALL    L29DA
        CALL    L09C4
        INC     D
L28B1:  DEC     D
        RET     Z
        LD      A,(BC)
        CALL    L032A
        CP      0Dh
        CALL    Z,L2103
        INC     BC
        JR      L28B1

        ; --- START PROC L28BF ---
L28BF:  OR      A
        LD      C,0F1h
        PUSH    AF
        LD      HL,(40A0h)
        EX      DE,HL
        LD      HL,(40D6h)
        CPL
        LD      C,A
        LD      B,0FFh
        ADD     HL,BC
        INC     HL
        RST     0x18
        JR      C,L28DA
        LD      (40D6h),HL
        INC     HL
        EX      DE,HL
        ; --- START PROC L28D8 ---
L28D8:  POP     AF
        RET

L28DA:  POP     AF
        LD      E,1Ah
        JP      Z,L19A2
        CP      A
        PUSH    AF
        LD      BC,28C1h
        PUSH    BC
        ; --- START PROC L28E6 ---
L28E6:  LD      HL,(40B1h)
        ; --- START PROC L28E9 ---
L28E9:  LD      (40D6h),HL
        LD      HL,0000h
        PUSH    HL
        LD      HL,(40A0h)
        PUSH    HL
        LD      HL,40B5h
        EX      DE,HL
        LD      HL,(40B3h)
        EX      DE,HL
        RST     0x18
        LD      BC,28F7h
        JP      NZ,L294A
        LD      HL,(40F9h)
L2906:  EX      DE,HL
        LD      HL,(40FBh)
        EX      DE,HL
        RST     0x18
        JR      Z,L2921
        LD      A,(HL)
        INC     HL
        INC     HL
        INC     HL
        CP      03h
        JR      NZ,L291A
        CALL    L294B
        XOR     A
L291A:  LD      E,A
        LD      D,00h
        ADD     HL,DE
        JR      L2906

L2920:  POP     BC
L2921:  EX      DE,HL
        LD      HL,(40FDh)
        EX      DE,HL
        RST     0x18
        JP      Z,L296B
        LD      A,(HL)
        INC     HL
        CALL    L09C2
        PUSH    HL
        ADD     HL,BC
        CP      03h
        JR      NZ,L2920
        LD      (40D8h),HL
        POP     HL
        LD      C,(HL)
        LD      B,00h
        ADD     HL,BC
        ADD     HL,BC
        INC     HL
        EX      DE,HL
        LD      HL,(40D8h)
        EX      DE,HL
        RST     0x18
        JR      Z,L2921
        LD      BC,293Fh
        ; --- START PROC L294A ---
L294A:  PUSH    BC
        ; --- START PROC L294B ---
L294B:  XOR     A
        OR      (HL)
        INC     HL
        LD      E,(HL)
        INC     HL
        LD      D,(HL)
        INC     HL
        RET     Z
        LD      B,H
        LD      C,L
        LD      HL,(40D6h)
        RST     0x18
        LD      H,B
        LD      L,C
        RET     C
        POP     HL
        EX      (SP),HL
        RST     0x18
        EX      (SP),HL
        PUSH    HL
        LD      H,B
        LD      L,C
        RET     NC
        POP     BC
        POP     AF
        POP     AF
        PUSH    HL
        PUSH    DE
        PUSH    BC
        RET

        ; --- START PROC L296B ---
L296B:  POP     DE
        POP     HL
        LD      A,L
        OR      H
        RET     Z
        DEC     HL
        LD      B,(HL)
        DEC     HL
        LD      C,(HL)
        PUSH    HL
        DEC     HL
        LD      L,(HL)
        LD      H,00h
        ADD     HL,BC
        LD      D,B
        LD      E,C
        DEC     HL
        LD      B,H
        LD      C,L
        LD      HL,(40D6h)
        CALL    L1958
        POP     HL
        LD      (HL),C
        INC     HL
        LD      (HL),B
        LD      L,C
        LD      H,B
        DEC     HL
        JP      L28E9

        ; --- START PROC L298F ---
L298F:  PUSH    BC
        PUSH    HL
        LD      HL,(4121h)
        EX      (SP),HL
        CALL    L249F
        EX      (SP),HL
        CALL    L0AF4
        LD      A,(HL)
        PUSH    HL
        LD      HL,(4121h)
        PUSH    HL
        ADD     A,(HL)
        LD      E,1Ch
        JP      C,L19A2
        CALL    L2857
        POP     DE
        CALL    L29DE
        EX      (SP),HL
        CALL    L29DD
        PUSH    HL
        LD      HL,(40D4h)
        EX      DE,HL
        CALL    L29C6
        CALL    L29C6
        LD      HL,2349h
        EX      (SP),HL
        PUSH    HL
        JP      L2884

        ; --- START PROC L29C6 ---
L29C6:  POP     HL
        EX      (SP),HL
        LD      A,(HL)
        INC     HL
        LD      C,(HL)
        INC     HL
        LD      B,(HL)
        LD      L,A
        ; --- START PROC L29CE ---
L29CE:  INC     L
L29CF:  DEC     L
        RET     Z
        LD      A,(BC)
        LD      (DE),A
        INC     BC
        INC     DE
        JR      L29CF

        ; --- START PROC L29D7 ---
L29D7:  CALL    L0AF4
        ; --- START PROC L29DA ---
L29DA:  LD      HL,(4121h)
        ; --- START PROC L29DD ---
L29DD:  EX      DE,HL
        ; --- START PROC L29DE ---
L29DE:  CALL    L29F5
        EX      DE,HL
        RET     NZ
        PUSH    DE
        LD      D,B
        LD      E,C
        DEC     DE
        LD      C,(HL)
        LD      HL,(40D6h)
        RST     0x18
        JR      NZ,L29F3
        LD      B,A
        ADD     HL,BC
        LD      (40D6h),HL
L29F3:  POP     HL
        RET

        ; --- START PROC L29F5 ---
L29F5:  LD      HL,(40B3h)
        DEC     HL
        LD      B,(HL)
        DEC     HL
        LD      C,(HL)
        DEC     HL
        RST     0x18
        RET     NZ
L29FF:  LD      (40B3h),HL
        RET

L2A03:  LD      BC,27F8h
        PUSH    BC
        ; --- START PROC L2A07 ---
L2A07:  CALL    L29D7
        XOR     A
        LD      D,A
        LD      A,(HL)
        OR      A
        RET

L2A0F:  LD      BC,27F8h
        PUSH    BC
        ; --- START PROC L2A13 ---
L2A13:  CALL    L2A07
        JP      Z,L1E4A
        INC     HL
        LD      E,(HL)
        INC     HL
        LD      D,(HL)
        LD      A,(DE)
        RET

L2A1F:  LD      A,01h
        CALL    L2857
        CALL    L2B1F
        LD      HL,(40D4h)
        LD      (HL),E
        ; --- START PROC L2A2B ---
L2A2B:  POP     BC
        JP      L2884

        ; --- START PROC L2A2F ---
L2A2F:  RST     0x10
        RST     0x08
        JR      Z,L29FF+1       ; reference not aligned to instruction
        INC     E
        DEC     HL
        PUSH    DE
        RST     0x08
        INC     L
        CALL    L2336+1         ; reference not aligned to instruction
        RST     0x08
        ADD     HL,HL
        EX      (SP),HL
        PUSH    HL
        RST     0x20
        JR      Z,L2A47
        CALL    L2B1F
        JR      L2A4A

L2A47:  CALL    L2A13
L2A4A:  POP     DE
        PUSH    AF
        PUSH    AF
        LD      A,E
        CALL    L2857
        LD      E,A
        POP     AF
        INC     E
        DEC     E
        JR      Z,L2A2B
        LD      HL,(40D4h)
L2A5A:  LD      (HL),A
        INC     HL
        DEC     E
        JR      NZ,L2A5A
        JR      L2A2B

L2A61:  CALL    L2ADF
        XOR     A
L2A65:  EX      (SP),HL
        LD      C,A
L2A67:  LD      A,0E5h
        PUSH    HL
        LD      A,(HL)
        CP      B
        JR      C,L2A6F+1       ; reference not aligned to instruction
        LD      A,B
L2A6F:  LD      DE,000Eh
        PUSH    BC
        CALL    L28BF
        POP     BC
        POP     HL
        PUSH    HL
        INC     HL
        LD      B,(HL)
        INC     HL
        LD      H,(HL)
        LD      L,B
        LD      B,00h
        ADD     HL,BC
        LD      B,H
        LD      C,L
        CALL    L285A
        LD      L,A
        CALL    L29CE
        POP     DE
        CALL    L29DE
        JP      L2884

L2A91:  CALL    L2ADF
        POP     DE
        PUSH    DE
        LD      A,(DE)
        SUB     B
        JR      L2A65

L2A9A:  EX      DE,HL
        LD      A,(HL)
        CALL    L2AE2
        INC     B
        DEC     B
        JP      Z,L1E4A
        PUSH    BC
        LD      E,0FFh
        CP      29h             ; ')'
        JR      Z,L2AB0
        RST     0x08
        INC     L
        CALL    L2B1C
L2AB0:  RST     0x08
        ADD     HL,HL
        POP     AF
        EX      (SP),HL
        LD      BC,2A69h
        PUSH    BC
        DEC     A
        CP      (HL)
        LD      B,00h
        RET     NC
        LD      C,A
        LD      A,(HL)
        SUB     C
        CP      E
        LD      B,A
        RET     C
        LD      B,E
        RET

L2AC5:  CALL    L2A07
        JP      Z,L27F8
        LD      E,A
        INC     HL
        LD      A,(HL)
        INC     HL
        LD      H,(HL)
        LD      L,A
        PUSH    HL
        ADD     HL,DE
        LD      B,(HL)
        LD      (HL),D
        EX      (SP),HL
        PUSH    BC
        LD      A,(HL)
        CALL    L0E65
        POP     BC
        POP     HL
        LD      (HL),B
        RET

        ; --- START PROC L2ADF ---
L2ADF:  EX      DE,HL
        RST     0x08
        ADD     HL,HL
        ; --- START PROC L2AE2 ---
L2AE2:  POP     BC
        POP     DE
        PUSH    BC
        LD      B,E
        RET

        ; --- START PROC L2AE7 ---
L2AE7:  CP      7Ah             ; 'z'
        JP      NZ,L1997
        JP      41D9h

L2AEF:  CALL    L2B1F
        LD      (4094h),A
        CALL    4093h
        JP      L27F8

L2AFB:  CALL    L2B0E
        JP      4096h

        ; --- START PROC L2B01 ---
L2B01:  RST     0x10
        ; --- START PROC L2B02 ---
L2B02:  CALL    L2336+1         ; reference not aligned to instruction
        ; --- START PROC L2B05 ---
L2B05:  PUSH    HL
        CALL    L0A7F
        EX      DE,HL
        POP     HL
        LD      A,D
        OR      A
        RET

        ; --- START PROC L2B0E ---
L2B0E:  CALL    L2B1C
        LD      (4094h),A
        LD      (4097h),A
        RST     0x08
        INC     L
        JR      L2B1C

        ; --- START PROC L2B1B ---
L2B1B:  RST     0x10
        ; --- START PROC L2B1C ---
L2B1C:  CALL    L2336+1         ; reference not aligned to instruction
        ; --- START PROC L2B1F ---
L2B1F:  CALL    L2B05
        JP      NZ,L1E4A
        DEC     HL
        RST     0x10
        LD      A,E
        RET

L2B29:  LD      A,01h
        LD      (409Ch),A
        POP     BC
        CALL    L1B10
        PUSH    BC
L2B33:  LD      HL,0FFFFh
        LD      (40A2h),HL
        POP     HL
        POP     DE
        LD      C,(HL)
        INC     HL
        LD      B,(HL)
        INC     HL
        LD      A,B
        OR      C
        JP      Z,L1A19
        CALL    41DFh
        CALL    L1D9B
        PUSH    BC
        LD      C,(HL)
        INC     HL
        LD      B,(HL)
        INC     HL
        PUSH    BC
        EX      (SP),HL
        EX      DE,HL
        RST     0x18
        POP     BC
        JP      C,L1A17+1       ; reference not aligned to instruction
        EX      (SP),HL
        PUSH    HL
        PUSH    BC
        EX      DE,HL
        LD      (40ECh),HL
        CALL    L0FAF
        LD      A,20h           ; ' '
        POP     HL
        CALL    L032A
        CALL    L2B7E
        LD      HL,(40A7h)
        CALL    L2B75
        CALL    L20FE
        JR      L2B33

        ; --- START PROC L2B75 ---
L2B75:  LD      A,(HL)
        OR      A
        RET     Z
        CALL    L032A
        INC     HL
        JR      L2B75

        ; --- START PROC L2B7E ---
L2B7E:  PUSH    HL
        LD      HL,(40A7h)
        LD      B,H
        LD      C,L
        POP     HL
        LD      D,0FFh
        JR      L2B8C

L2B89:  INC     BC
        DEC     D
        RET     Z
L2B8C:  LD      A,(HL)
        OR      A
        INC     HL
        LD      (BC),A
        RET     Z
        JP      P,L2B89
        CP      0FBh
        JR      NZ,L2BA0
        DEC     BC
        DEC     BC
        DEC     BC
        DEC     BC
        INC     D
        INC     D
        INC     D
        INC     D
L2BA0:  CP      95h
        CALL    Z,L0B24
        SUB     7Fh             ; ''
        PUSH    HL
        LD      E,A
        LD      HL,1650h
L2BAC:  LD      A,(HL)
        OR      A
        INC     HL
        JP      P,L2BAC
        DEC     E
        JR      NZ,L2BAC
        AND     7Fh             ; ''
L2BB7:  LD      (BC),A
        INC     BC
        DEC     D
        JP      Z,L28D8
        LD      A,(HL)
        INC     HL
        OR      A
        JP      P,L2BB7
        POP     HL
        JR      L2B8C

L2BC6:  CALL    L1B10
        POP     DE
        PUSH    BC
        PUSH    BC
        CALL    L1B2C
        JR      NC,L2BD6
        LD      D,H
        LD      E,L
        EX      (SP),HL
        PUSH    HL
        RST     0x18
L2BD6:  JP      NC,L1E4A
        LD      HL,1929h
        CALL    L28A7
        POP     BC
        LD      HL,1AE8h
        EX      (SP),HL
        ; --- START PROC L2BE4 ---
L2BE4:  EX      DE,HL
        LD      HL,(40F9h)
L2BE8:  LD      A,(DE)
        LD      (BC),A
        INC     BC
        INC     DE
        RST     0x18
        JR      NZ,L2BE8
        LD      H,B
        LD      L,C
        LD      (40F9h),HL
        RET

L2BF5:  CALL    L0284
        CALL    L2336+1         ; reference not aligned to instruction
        PUSH    HL
        CALL    L2A13
        LD      A,0D3h
        CALL    L0264
        CALL    L0261
        LD      A,(DE)
        CALL    L0264
        LD      HL,(40A4h)
        EX      DE,HL
        LD      HL,(40F9h)
L2C12:  LD      A,(DE)
        INC     DE
        CALL    L0264
        RST     0x18
        JR      NZ,L2C12
        CALL    L01F8
        POP     HL
        RET

L2C1F:  SUB     0B2h
        JR      Z,L2C24+1       ; reference not aligned to instruction
        XOR     A
L2C24:  LD      BC,232Fh
        PUSH    AF
        LD      A,(HL)
        OR      A
        JR      Z,L2C33
        CALL    L2336+1         ; reference not aligned to instruction
        CALL    L2A13
        LD      A,(DE)
L2C33:  LD      L,A
        POP     AF
        OR      A
        LD      H,A
        LD      (4121h),HL
        CALL    Z,L1B4D
        LD      HL,0000h
        CALL    L0293
        LD      HL,(4121h)
        EX      DE,HL
L2C47:  LD      B,03h
L2C49:  CALL    L0235
        SUB     0D3h
        JR      NZ,L2C47
        DJNZ    L2C49
        CALL    L0235
        INC     E
        DEC     E
        JR      Z,L2C5C
        CP      E
        JR      NZ,L2C93
L2C5C:  LD      HL,(40A4h)
L2C5F:  LD      B,03h
L2C61:  CALL    L0235
        LD      E,A
        SUB     (HL)
        AND     D
        JR      NZ,L2C8A
        LD      (HL),E
        CALL    L196B+1         ; reference not aligned to instruction
        LD      A,(HL)
        OR      A
        INC     HL
        JR      NZ,L2C5F
        CALL    L022C
        DJNZ    L2C61
        LD      (40F9h),HL
        LD      HL,1929h
        CALL    L28A7
        CALL    L01F8
        LD      HL,(40A4h)
        PUSH    HL
        JP      L1AE8

L2C8A:  LD      HL,2CA5h
        CALL    L28A7
        JP      L1A17+1         ; reference not aligned to instruction

L2C93:  LD      (L3C3E),A
L2C96:  LD      B,03h
L2C98:  CALL    L0235
        OR      A
        JR      NZ,L2C96
        DJNZ    L2C98
        CALL    L0296
        JR      L2C47

L2CA5:  LD      B,D
        LD      B,C
        LD      B,H
        DEC     C
        NOP
        CALL    L0A7F
        LD      A,(HL)
        JP      L27F8

L2CB1:  CALL    L2B02
        PUSH    DE
        RST     0x08
        INC     L
        CALL    L2B1C
        POP     DE
        LD      (DE),A
        RET

L2CBD:  CALL    L2338
        CALL    L0AF4
        RST     0x08
        DEC     SP
        EX      DE,HL
        LD      HL,(4121h)
        JR      L2CD3

L2CCB:  LD      A,(40DEh)
        OR      A
        JR      Z,L2CDD
        POP     DE
        EX      DE,HL
L2CD3:  PUSH    HL
        XOR     A
        LD      (40DEh),A
        CP      D
        PUSH    AF
        PUSH    DE
        LD      B,(HL)
        OR      B
L2CDD:  JP      Z,L1E4A
        INC     HL
        LD      C,(HL)
        INC     HL
        LD      H,(HL)
        LD      L,C
        JR      L2D03

L2CE7:  LD      E,B
        PUSH    HL
        LD      C,02h
L2CEB:  LD      A,(HL)
        INC     HL
        CP      25h             ; '%'
        JP      Z,L2E16+1       ; reference not aligned to instruction
        CP      20h             ; ' '
        JR      NZ,L2CF9
        INC     C
        DJNZ    L2CEB
L2CF9:  POP     HL
        LD      B,E
        LD      A,25h           ; '%'
L2CFD:  CALL    L2E49
        CALL    L032A
L2D03:  XOR     A
        LD      E,A
        LD      D,A
L2D06:  CALL    L2E49
        LD      D,A
        LD      A,(HL)
        INC     HL
        CP      21h             ; '!'
        JP      Z,L2E14
        CP      23h             ; '#'
        JR      Z,L2D4C
        DEC     B
        JP      Z,L2DFE
        CP      2Bh             ; '+'
        LD      A,08h
        JR      Z,L2D06
        DEC     HL
        LD      A,(HL)
        INC     HL
        CP      2Eh             ; '.'
        JR      Z,L2D66
        CP      25h             ; '%'
        JR      Z,L2CE7
        CP      (HL)
        JR      NZ,L2CFD
        CP      24h             ; '$'
        JR      Z,L2D44+1       ; reference not aligned to instruction
        CP      2Ah             ; '*'
        JR      NZ,L2CFD
        LD      A,B
        CP      02h
        INC     HL
        JR      C,L2D3E
        LD      A,(HL)
        CP      24h             ; '$'
L2D3E:  LD      A,20h           ; ' '
        JR      NZ,L2D49
        DEC     B
        INC     E
L2D44:  CP      0AFh
        ADD     A,10h
        INC     HL
L2D49:  INC     E
        ADD     A,D
        LD      D,A
L2D4C:  INC     E
        LD      C,00h
        DEC     B
        JR      Z,L2D99
        LD      A,(HL)
        INC     HL
        CP      2Eh             ; '.'
        JR      Z,L2D70
        CP      23h             ; '#'
        JR      Z,L2D4C
        CP      2Ch             ; ','
        JR      NZ,L2D7A
        LD      A,D
        OR      40h             ; '@'
        LD      D,A
        JR      L2D4C

L2D66:  LD      A,(HL)
        CP      23h             ; '#'
        LD      A,2Eh           ; '.'
        JR      NZ,L2CFD
        LD      C,01h
        INC     HL
L2D70:  INC     C
        DEC     B
        JR      Z,L2D99
        LD      A,(HL)
        INC     HL
        CP      23h             ; '#'
        JR      Z,L2D70
L2D7A:  PUSH    DE
        LD      DE,2D97h
        PUSH    DE
        LD      D,H
        LD      E,L
        CP      5Bh             ; '['
        RET     NZ
        CP      (HL)
        RET     NZ
        INC     HL
        CP      (HL)
        RET     NZ
        INC     HL
        CP      (HL)
        RET     NZ
        INC     HL
        LD      A,B
        SUB     04h
        RET     C
        POP     DE
        POP     DE
        LD      B,A
        INC     D
        INC     HL
        JP      Z,0D1EBh
L2D99:  LD      A,D
        DEC     HL
        INC     E
        AND     08h
        JR      NZ,L2DB5
        DEC     E
        LD      A,B
        OR      A
        JR      Z,L2DB5
        LD      A,(HL)
        SUB     2Dh             ; '-'
        JR      Z,L2DB0
        CP      0FEh
        JR      NZ,L2DB5
        LD      A,08h
L2DB0:  ADD     A,04h
        ADD     A,D
        LD      D,A
        DEC     B
L2DB5:  POP     HL
        POP     AF
        JR      Z,L2E09
        PUSH    BC
        PUSH    DE
        CALL    L2336+1         ; reference not aligned to instruction
        POP     DE
        POP     BC
        PUSH    BC
        PUSH    HL
        LD      B,E
        LD      A,B
        ADD     A,C
        CP      19h
        JP      NC,L1E4A
        LD      A,D
        OR      80h
        CALL    L0FBE
        CALL    L28A7
L2DD3:  POP     HL
        DEC     HL
        RST     0x10
        SCF
        JR      Z,L2DE6
        LD      (40DEh),A
        CP      3Bh             ; ';'
        JR      Z,L2DE5
        CP      2Ch             ; ','
        JP      NZ,L1997
L2DE5:  RST     0x10
L2DE6:  POP     BC
        EX      DE,HL
        POP     HL
        PUSH    HL
        PUSH    AF
        PUSH    DE
        LD      A,(HL)
        SUB     B
        INC     HL
        LD      C,(HL)
        INC     HL
        LD      H,(HL)
        LD      L,C
        LD      D,00h
        LD      E,A
        ADD     HL,DE
        LD      A,B
        OR      A
        JP      NZ,L2D03
        JR      L2E04

L2DFE:  CALL    L2E49
        CALL    L032A
L2E04:  POP     HL
        POP     AF
        JP      NZ,L2CCB
L2E09:  CALL    C,L20FE
        EX      (SP),HL
        CALL    L29DD
        POP     HL
        JP      L2169

L2E14:  LD      C,01h
L2E16:  LD      A,0F1h
        DEC     B
        CALL    L2E49
        POP     HL
        POP     AF
        JR      Z,L2E09
        PUSH    BC
        CALL    L2336+1         ; reference not aligned to instruction
        CALL    L0AF4
        POP     BC
        PUSH    BC
        PUSH    HL
        LD      HL,(4121h)
        LD      B,C
        LD      C,00h
        PUSH    BC
        CALL    L2A67+1         ; reference not aligned to instruction
        CALL    L28AA
        LD      HL,(4121h)
        POP     AF
        SUB     (HL)
        LD      B,A
        LD      A,20h           ; ' '
        INC     B
L2E40:  DEC     B
        JP      Z,L2DD3
        CALL    L032A
        JR      L2E40

        ; --- START PROC L2E49 ---
L2E49:  PUSH    AF
        LD      A,D
        OR      A
        LD      A,2Bh           ; '+'
        CALL    NZ,L032A
        POP     AF
        RET

        ; --- START PROC L2E53 ---
L2E53:  LD      (409Ah),A
        LD      HL,(40EAh)
        OR      H
        AND     L
        INC     A
        EX      DE,HL
        RET     Z
        JR      L2E64

L2E60:  CALL    L1E4F
        RET     NZ
L2E64:  POP     HL
        ; --- START PROC L2E65 ---
L2E65:  EX      DE,HL
        LD      (40ECh),HL
        EX      DE,HL
        CALL    L1B2C
        JP      NC,L1ED9
        LD      H,B
        LD      L,C
        INC     HL
        INC     HL
        LD      C,(HL)
        INC     HL
        LD      B,(HL)
        INC     HL
        PUSH    BC
        CALL    L2B7E
        ; --- START PROC L2E7C ---
L2E7C:  POP     HL
        PUSH    HL
        CALL    L0FAF
        LD      A,20h           ; ' '
        CALL    L032A
        LD      HL,(40A7h)
        LD      A,0Eh
        CALL    L032A
        PUSH    HL
        LD      C,0FFh
L2E91:  INC     C
        LD      A,(HL)
        OR      A
        INC     HL
        JR      NZ,L2E91
        POP     HL
        LD      B,A
        LD      D,00h
L2E9B:  CALL    L0384
        SUB     30h             ; '0'
        JR      C,L2EB0
        CP      0Ah
        JR      NC,L2EB0
        LD      E,A
        LD      A,D
        RLCA
        RLCA
        ADD     A,D
        RLCA
        ADD     A,E
        LD      D,A
        JR      L2E9B

L2EB0:  PUSH    HL
        LD      HL,2E99h
        EX      (SP),HL
        DEC     D
        INC     D
        JP      NZ,L2EBB
        INC     D
L2EBB:  CP      0D8h
        JP      Z,L2FD2
        CP      0DDh
        JP      Z,L2FE0
        CP      0F0h
        JR      Z,L2F0A
        CP      31h             ; '1'
        JR      C,L2ECF
        SUB     20h             ; ' '
L2ECF:  CP      21h             ; '!'
        JP      Z,L2FF6
        CP      1Ch
        JP      Z,L2F40
        CP      23h             ; '#'
        JR      Z,L2F1C
        CP      19h
        JP      Z,L2F7D
        CP      14h
        JP      Z,L2F4A
        CP      13h
        JP      Z,L2F65
        CP      15h
        JP      Z,L2FE3
        CP      28h             ; '('
        JP      Z,L2F78
        CP      1Bh
        JR      Z,L2F16
        CP      18h
        JP      Z,L2F75
        CP      11h
        RET     NZ
        POP     BC
        POP     DE
        CALL    L20FE
        JP      L2E65

        ; --- START PROC L2F0A ---
L2F0A:  LD      A,(HL)
        OR      A
        RET     Z
        INC     B
        CALL    L032A
        INC     HL
        DEC     D
        JR      NZ,L2F0A
        RET

        ; --- START PROC L2F16 ---
L2F16:  PUSH    HL
        LD      HL,2F5Fh
        EX      (SP),HL
        SCF
        ; --- START PROC L2F1C ---
L2F1C:  PUSH    AF
        CALL    L0384
        LD      E,A
        POP     AF
        PUSH    AF
        CALL    C,L2F5F
L2F26:  LD      A,(HL)
        OR      A
        JP      Z,L2F3E
        CALL    L032A
        POP     AF
        PUSH    AF
        CALL    C,L2FA1
        JR      C,L2F37
        INC     HL
        INC     B
L2F37:  LD      A,(HL)
        CP      E
        JR      NZ,L2F26
        DEC     D
        JR      NZ,L2F26
L2F3E:  POP     AF
        RET

        ; --- START PROC L2F40 ---
L2F40:  CALL    L2B75
        CALL    L20FE
        POP     BC
        JP      L2E7C

        ; --- START PROC L2F4A ---
L2F4A:  LD      A,(HL)
        OR      A
        RET     Z
        LD      A,21h           ; '!'
        CALL    L032A
L2F52:  LD      A,(HL)
        OR      A
        JR      Z,L2F5F
        CALL    L032A
        CALL    L2FA1
        DEC     D
        JR      NZ,L2F52
        ; --- START PROC L2F5F ---
L2F5F:  LD      A,21h           ; '!'
        CALL    L032A
        RET

        ; --- START PROC L2F65 ---
L2F65:  LD      A,(HL)
        OR      A
        RET     Z
        CALL    L0384
        LD      (HL),A
        CALL    L032A
        INC     HL
        INC     B
        DEC     D
        JR      NZ,L2F65
        RET

        ; --- START PROC L2F75 ---
L2F75:  LD      (HL),00h
        LD      C,B
        ; --- START PROC L2F78 ---
L2F78:  LD      D,0FFh
        CALL    L2F0A
        ; --- START PROC L2F7D ---
L2F7D:  CALL    L0384
        OR      A
        JP      Z,L2F7D
        CP      08h
        JR      Z,L2F92
        CP      0Dh
        JP      Z,L2FE0
        CP      1Bh
        RET     Z
        JR      NZ,L2FB0
L2F92:  LD      A,08h
        DEC     B
        INC     B
        JR      Z,L2FB7
        CALL    L032A
        DEC     HL
        DEC     B
        LD      DE,2F7Dh
        PUSH    DE
        ; --- START PROC L2FA1 ---
L2FA1:  PUSH    HL
        DEC     C
L2FA3:  LD      A,(HL)
        OR      A
        SCF
        JP      Z,L0890
        INC     HL
        LD      A,(HL)
        DEC     HL
        LD      (HL),A
        INC     HL
        JR      L2FA3

        ; --- START PROC L2FB0 ---
L2FB0:  PUSH    AF
        LD      A,C
        CP      0FFh
        JR      C,L2FB9
        POP     AF
        ; --- START PROC L2FB7 ---
L2FB7:  JR      L2F7D

        ; --- START PROC L2FB9 ---
L2FB9:  SUB     B
        INC     C
        INC     B
        PUSH    BC
        EX      DE,HL
        LD      L,A
        LD      H,00h
        ADD     HL,DE
        LD      B,H
        LD      C,L
        INC     HL
        CALL    L1958
        POP     BC
        POP     AF
        LD      (HL),A
        CALL    L032A
        INC     HL
        JP      L2F7D

        ; --- START PROC L2FD2 ---
L2FD2:  LD      A,B
        OR      A
        RET     Z
        DEC     B
        DEC     HL
        LD      A,08h
        CALL    L032A
        DEC     D
        JR      NZ,L2FD2
        RET

        ; --- START PROC L2FE0 ---
L2FE0:  CALL    L2B75
        ; --- START PROC L2FE3 ---
L2FE3:  CALL    L20FE
        POP     BC
        POP     DE
        LD      A,D
        AND     E
        INC     A
        ; --- START PROC L2FEB ---
L2FEB:  LD      HL,(40A7h)
        DEC     HL
        RET     Z
        SCF
        INC     HL
        PUSH    AF
        JP      L1A98

        ; --- START PROC L2FF6 ---
L2FF6:  POP     BC
        POP     DE
        JP      L1A19

L2FFB:  SBC     A,0C3h
        JP      0B244h

L3000:  NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        ; --- START PROC L321E ---
L321E:  NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
L37E1:  NOP
        NOP
        NOP
L37E4:  NOP
        NOP
        NOP
        NOP
L37E8:  NOP
        NOP
        NOP
        NOP
L37EC:  NOP
        NOP
L37EE:  NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
L3840:  NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
L3880:  NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
L3B9A:  NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
L3C3E:  NOP
L3C3F:  NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
L3FFF:  NOP
