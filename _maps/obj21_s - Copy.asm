; ---------------------------------------------------------------------------
; Sprite mappings - SCORE, TIME, RINGS
; ---------------------------------------------------------------------------
		dc.w byte_1C5BC-Map_obj21, byte_1C5F0-Map_obj21
		dc.w byte_1C624-Map_obj21, byte_1C658-Map_obj21
		
		; Y-Pos, layout, VDP (2bytes - plane, pallet line (2bits), flip, mirror, first tile (11bits) - ), X-Pos
byte_1C5BC:	dc.b $C
		dc.b $80, $D, $80, 0, 0		; SCOR
		dc.b $80, $D, $80, $18,	$20	; E + score left numbers
		dc.b $80, $D, $80, $20,	$40	; score right numbers
		dc.b $90, $D, $80, $10,	0	; TIME
		dc.b $90, $D, $80, $28,	$28	; minutes : seconds
		dc.b $90, 1, $80, $2A, $48	; :
		dc.b $90, 5, $80, $E4, $50	; centiseconds
		dc.b $A0, $D, $80, 8, -2		; RING
		dc.b $A0, 1, $80, 0, $1E	; S
		dc.b $A0, 9, $80, $30, $30	; number of rings
		dc.b $40, 5, $81, $A, 0		; lives icon
		dc.b $40, $D, $81, $E, $10	; lives counter
		dc.b 0
byte_1C5F0:	dc.b $C
		dc.b $80, $D, $80, 0, 0		; SCOR
		dc.b $80, $D, $80, $18,	$20	; E + score left numbers
		dc.b $80, $D, $80, $20,	$40	; score right numbers
		dc.b $90, $D, $80, $10,	0	; TIME
		dc.b $90, $D, $80, $28,	$28	; minutes : seconds
		dc.b $90, 1, $80, $2A, $48	; :
		dc.b $90, 5, $80, $E4, $50	; centiseconds
		dc.b $A0, $D, $A0, 8, -2		; RING
		dc.b $A0, 1, $A0, 0, $1E	; S
		dc.b $A0, 9, $80, $30, $30	; number of rings
		dc.b $40, 5, $81, $A, 0		; lives icon
		dc.b $40, $D, $81, $E, $10	; lives counter
		dc.b 0
byte_1C624:	dc.b $C
		dc.b $80, $D, $80, 0, 0		; SCOR
		dc.b $80, $D, $80, $18,	$20	; E + score left numbers
		dc.b $80, $D, $80, $20,	$40	; score right numbers
		dc.b $90, $D, $A0, $10,	0	; TIME
		dc.b $90, $D, $80, $28,	$28	; minutes : seconds
		dc.b $90, 1, $80, $2A, $48	; :
		dc.b $90, 5, $80, $E4, $50	; centiseconds
		dc.b $A0, $D, $80, 8, -2		; RING
		dc.b $A0, 1, $80, 0, $1E	; S
		dc.b $A0, 9, $80, $30, $30	; number of rings
		dc.b $40, 5, $81, $A, 0		; lives icon
		dc.b $40, $D, $81, $E, $10	; lives counter
		dc.b 0
byte_1C658:	dc.b $C
		dc.b $80, $D, $80, 0, 0		; SCOR
		dc.b $80, $D, $80, $18,	$20	; E + score left numbers
		dc.b $80, $D, $80, $20,	$40	; score right numbers
		dc.b $90, $D, $A0, $10,	0	; TIME
		dc.b $90, $D, $80, $28,	$28	; minutes : seconds
		dc.b $90, 1, $80, $2A, $48	; :
		dc.b $90, 5, $80, $E4, $50	; centiseconds
		dc.b $A0, $D, $A0, 8, -2		; RING
		dc.b $A0, 1, $A0, 0, $1E	; S
		dc.b $A0, 9, $80, $30, $30	; number of rings
		dc.b $40, 5, $81, $A, 0		; lives icon
		dc.b $40, $D, $81, $E, $10	; lives counter
		even