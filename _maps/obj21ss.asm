; ---------------------------------------------------------------------------
; Sprite mappings - SCORE, TIME, RINGS
; ---------------------------------------------------------------------------
		dc.w byte_1C5BC_SS-Map_obj21SS, byte_1C5F0_SS-Map_obj21SS
		dc.w byte_1C624_SS-Map_obj21SS, byte_1C658_SS-Map_obj21SS
		
		; Y-Pos, layout, VDP (2bytes - plane, pallet line (2bits), flip, mirror, first tile (11bits) - ), X-Pos
byte_1C5BC_SS:	dc.b 5
;		dc.b $80, $D, $A0, 0, 0		; SCOR
;		dc.b $80, $D, $A0, $18,	$20	; E + score left numbers
;		dc.b $80, $D, $A0, $20,	$40	; score right numbers
		dc.b $80, $D, $A0, $E,	0	; TIME
		dc.b $80, $D, $A0, $28,	$28	; minutes : seconds
;		dc.b $90, 1, $A0, $16, $49	; "
;		dc.b $90, 5, $A0, $E4, $50	; centiseconds
		dc.b $90, $D, $A0, 8-2, 0		; RING
		dc.b $90, 1, $A0, 0, $20	; S
		dc.b $90, 9, $A0, $30, $30	; number of rings
;		dc.b $40, 5, $81, $A, 0		; lives icon
;		dc.b $40, $D, $A1, $E, $10	; lives counter
		dc.b 0
byte_1C5F0_SS:	dc.b 5
;		dc.b $80, $D, $A0, 0, 0		; SCOR
;		dc.b $80, $D, $A0, $18,	$20	; E + score left numbers
;		dc.b $80, $D, $A0, $20,	$40	; score right numbers
		dc.b $80, $D, $A0, $E,	0	; TIME
		dc.b $80, $D, $A0, $28,	$28	; minutes : seconds
;		dc.b $90, 1, $A0, $16, $49	; "
;		dc.b $90, 5, $A0, $E4, $50	; centiseconds
		dc.b $90, $D, $A0, 8, 0		; RING
		dc.b $90, 1, $A0, 0, $1E	; S
		dc.b $90, 9, $A0, $30, $30	; number of rings
;		dc.b $40, 5, $81, $A, 0		; lives icon
;		dc.b $40, $D, $A1, $E, $10	; lives counter
		dc.b 0
byte_1C624_SS:	dc.b 5
;		dc.b $80, $D, $A0, 0, 0		; SCOR
;		dc.b $80, $D, $A0, $18,	$20	; E + score left numbers
;		dc.b $80, $D, $A0, $20,	$40	; score right numbers
		dc.b $80, $D, $A0, $10,	0	; TIME
		dc.b $80, $D, $A0, $28,	$28	; minutes : seconds
;		dc.b $90, 1, $A0, $16, $49	; "
;		dc.b $90, 5, $A0, $E4, $50	; centiseconds
		dc.b $90, $D, $A0, 8-2, 0		; RING
		dc.b $90, 1, $A0, 0, $20	; S
		dc.b $90, 9, $A0, $30, $30	; number of rings
;		dc.b $40, 5, $81, $A, 0		; lives icon
;		dc.b $40, $D, $A1, $E, $10	; lives counter
		dc.b 0
byte_1C658_SS:	dc.b 5
;		dc.b $80, $D, $A0, 0, 0		; SCOR
;		dc.b $80, $D, $A0, $18,	$20	; E + score left numbers
;		dc.b $80, $D, $A0, $20,	$40	; score right numbers
		dc.b $80, $D, $A0, $10,	0	; TIME
		dc.b $80, $D, $A0, $28,	$28	; minutes : seconds
;		dc.b $90, 1, $A0, $16, $49	; "
;		dc.b $90, 5, $A0, $E4, $50	; centiseconds
		dc.b $90, $D, $A0, 8, -2		; RING
		dc.b $90, 1, $A0, 0, $1E	; S
		dc.b $90, 9, $A0, $30, $30	; number of rings
;		dc.b $40, 5, $81, $A, 0		; lives icon
;		dc.b $40, $D, $A1, $E, $10	; lives counter
		even