; ---------------------------------------------------------------------------
; Animation script - Tails
; ---------------------------------------------------------------------------
		dc.w TailsAni_Walk-TailsAniData		; 0
		dc.w TailsAni_Run-TailsAniData		; 1
		dc.w TailsAni_Roll-TailsAniData		; 2
		dc.w TailsAni_Roll2-TailsAniData	; 3
		dc.w TailsAni_Push-TailsAniData		; 4
		dc.w TailsAni_Wait-TailsAniData		; 5
		dc.w TailsAni_Balance-TailsAniData	; 6
		dc.w TailsAni_LookUp-TailsAniData	; 7
		dc.w TailsAni_Duck-TailsAniData		; 8
		dc.w TailsAni_Dummy1-TailsAniData	; 9
		dc.w TailsAni_Dummy2-TailsAniData	; 10 ; $A
		dc.w TailsAni_Dummy3-TailsAniData	; 11 ; $B
		dc.w TailsAni_HaulAss-TailsAniData	; 12 ; $C
		dc.w TailsAni_Stop-TailsAniData		; 13 ; $D
		dc.w TailsAni_Float-TailsAniData	; 14 ; $E
		dc.w TailsAni_Float2-TailsAniData	; 15 ; $F
		dc.w TailsAni_Spring-TailsAniData	; 16 ; $10
		dc.w TailsAni_Hang-TailsAniData		; 17 ; $11
		dc.w TailsAni_Blink-TailsAniData	; 18 ; $12
		dc.w TailsAni_Blink2-TailsAniData	; 19 ; $13
		dc.w TailsAni_Hang2-TailsAniData	; 20 ; $14
		dc.w TailsAni_Bubble-TailsAniData	; 21 ; $15
		dc.w TailsAni_Death3-TailsAniData	; 22 ; $16
		dc.w TailsAni_Drown-TailsAniData	; 23 ; $17
		dc.w TailsAni_Death-TailsAniData	; 24 ; $18
		dc.w TailsAni_Death2-TailsAniData	; 25 ; $19
		dc.w TailsAni_Hurt-TailsAniData		; 26 ; $1A
		dc.w TailsAni_Slide-TailsAniData	; 27 ; $1B
		dc.w TailsAni_Blank-TailsAniData	; 28 ; $1C
		dc.w TailsAni_Dummy4-TailsAniData	; 29 ; $1D
		dc.w TailsAni_Dummy5-TailsAniData	; 30 ; $1E
		dc.w TailsAni_Spindash-TailsAniData	; 31 ; $1F
		dc.w TailsAni_Fly-TailsAniData		; 32 ; $20
		dc.w TailsAni_FlyTired-TailsAniData	; 33 ; $21
		dc.w TailsAni_Swim-TailsAniData		; 34 ; $22
		dc.w TailsAni_SwimTired-TailsAniData; 35 ; $23
		dc.w TailsAni_CavBoom-TailsAniData	; 36 ; $24

TailsAni_Walk:	dc.b $FF,$10,$11,$12,$13,$14,$15, $E, $F,$FF
TailsAni_Run:	dc.b $FF,$2E,$2F,$30,$31,$FF,$FF,$FF,$FF,$FF
TailsAni_Roll:	dc.b   1,$48,$47,$46,$FF
TailsAni_Roll2:	dc.b   1,$48,$47,$46,$FF
TailsAni_Push:	dc.b $FD,$63,$64,$65,$66,$FF,$FF,$FF,$FF,$FF
TailsAni_Wait:	dc.b   7,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  3,  2,  1,  1,  1
				dc.b   1,  1,  1,  1,  1,  3,  2,  1,  1,  1,  1,  1,  1,  1,  1,  1
				dc.b   5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5
				dc.b   6,  7,  8,  7,  8,  7,  8,  7,  8,  7,  8,  6,$FE,$1C
TailsAni_Balance:	dc.b   9,$69,$69,$6A,$6A,$69,$69,$6A,$6A,$69,$69,$6A,$6A,$69,$69,$6A
					dc.b $6A,$69,$69,$6A,$6A,$69,$6A,$FF
TailsAni_LookUp:	dc.b $3F,  4,$FF
TailsAni_Duck:		dc.b $3F,$5B,$FF
TailsAni_Dummy1:	dc.b $3F,$82,$FF
TailsAni_Dummy2:	dc.b   7,  8,  8,  9,$FD,  5
TailsAni_Dummy3:	dc.b   7,  9,$FD,  5
TailsAni_Stop:		dc.b   7,$67,$68,$67,$68,$FD,  0
TailsAni_Float:		dc.b   9,$6E,$73,$FF
TailsAni_Float2:	dc.b   9,$6E,$6F,$70,$71,$72,$FF
TailsAni_Spring:	dc.b   3,$59,$5A,$59,$5A,$59,$5A,$59,$5A,$59,$5A,$59,$5A,$FD,  0
TailsAni_Hang:		dc.b   5,$6C,$6D,$FF
TailsAni_Blink:		dc.b  $F,  1,  2,  3,$FE,  1
TailsAni_Blink2:	dc.b  $F,  1,  2,$FE,  1
TailsAni_Hang2:		dc.b $13,$85,$86,$FF
TailsAni_Bubble:	dc.b  $B,$74,$74,$12,$13,$FD,  0
TailsAni_Death3:	dc.b $20,$5D,$FF
TailsAni_Drown:		dc.b $2F,$5D,$FF
TailsAni_Death:		dc.b   3,$5D,$FF
TailsAni_Death2:	dc.b   3,$5D,$FF
TailsAni_Hurt:		dc.b   3,$5C,$FF
TailsAni_Slide:		dc.b   9,$6B,$5C,$FF
TailsAni_Blank:		dc.b $77,  0,$FD,  0
TailsAni_Dummy4:	dc.b   3,  1,  2,  3,  4,  5,  6,  7,  8,$FF
TailsAni_Dummy5:	dc.b   3,  1,  2,  3,  4,  5,  6,  7,  8,$FF
TailsAni_HaulAss:	dc.b $FF,$32,$33,$FF
					dc.b $FF,$FF,$FF,$FF,$FF,$FF
TailsAni_Spindash:	dc.b   0,$60,$61,$62,$FF
TailsAni_Fly:		dc.b   1,$5E,$5F,$FF
TailsAni_FlyTired:	dc.b   $B, $8B,	$8C, $FF ; DATA	XREF: ROM:00015AB0o
TailsAni_Swim:	dc.b	7, $8D,	$8E, $8F, $90, $91, $FF	; DATA XREF: ROM:00015AB0o
TailsAni_SwimTired:	dc.b   $B, $92,	$93, $94, $FF ;	DATA XREF: ROM:00015AB0o
TailsAni_CavBoom:	dc.b $FF,$2E,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF

		even