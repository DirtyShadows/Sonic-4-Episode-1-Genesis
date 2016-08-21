; --------------------------------------------------------------------------------
; Sprite mappings - SCORE, TIME, RINGS
; --------------------------------------------------------------------------------

SME_rpg4r:	
		dc.w SME_rpg4r_8-SME_rpg4r, SME_rpg4r_45-SME_rpg4r	
		dc.w SME_rpg4r_82-SME_rpg4r, SME_rpg4r_BF-SME_rpg4r	
SME_rpg4r_8:	dc.b $C	
		dc.b $80, $D, $20, 0, 0	; SCOR
		dc.b $80, $D, $20, $18, $20	; E + score left numbers
		dc.b $80, $D, $20, $20, $40	; score right numbers
		dc.b $90, $D, $20, $10, 0	; TIME
		dc.b $90, $D, $20, $28, $28	; minutes : seconds
		dc.b $90, $D, $20, $2A, $48	; :
		dc.b $90, $D, $20, $F2, $50	; centiseconds
		dc.b $A0, $D, $20, 8, $FE	; RING
		dc.b $A0, 1, $20, 0, $1E	; S
		dc.b $A0, 9, $20, $30, $30	; number of rings
		dc.b $40, 5, 1, $A, 0	; lives icon
		dc.b $40, $D, $21, $E, $10	; lives counter
SME_rpg4r_45:	dc.b $C	
		dc.b $80, $D, $20, 0, 0	; SCOR
		dc.b $80, $D, $20, $18, $20	; E + score left numbers
		dc.b $80, $D, $20, $20, $40	; score right numbers
		dc.b $90, $D, $20, $10, 0	; TIME
		dc.b $90, $D, $20, $28, $28	; minutes : seconds
		dc.b $90, $D, $20, $2A, $48	; :
		dc.b $90, $D, $20, $F2, $50	; centiseconds
		dc.b $A0, $D, 0, 8, $FE	; RING
		dc.b $A0, 1, 0, 0, $1E	; S
		dc.b $A0, 9, $20, $30, $30	; number of rings
		dc.b $40, 5, 1, $A, 0	; lives icon
		dc.b $40, $D, $21, $E, $10	; lives counter
SME_rpg4r_82:	dc.b $C	
		dc.b $80, $D, $20, 0, 0	; SCOR
		dc.b $80, $D, $20, $18, $20	; E + score left numbers
		dc.b $80, $D, $20, $20, $40	; score right numbers
		dc.b $90, $D, 0, $10, 0	; TIME
		dc.b $90, $D, $20, $28, $28	; minutes : seconds
		dc.b $90, $D, $20, $2A, $48	; :
		dc.b $90, $D, $20, $F2, $50	; centiseconds
		dc.b $A0, $D, $20, 8, $FE	; RING
		dc.b $A0, 1, $20, 0, $1E	; S
		dc.b $A0, 9, $20, $30, $30	; number of rings
		dc.b $40, 5, 1, $A, 0	; lives icon
		dc.b $40, $D, $21, $E, $10	; lives counter
SME_rpg4r_BF:	dc.b $C	
		dc.b $80, $D, $20, 0, 0	; SCOR
		dc.b $80, $D, $20, $18, $20	; E + score left numbers
		dc.b $80, $D, $20, $20, $40	; score right numbers
		dc.b $90, $D, 0, $10, 0	; TIME
		dc.b $90, $D, $20, $28, $28	; minutes : seconds
		dc.b $90, $D, $20, $2A, $48	; :
		dc.b $90, $D, $20, $F2, $50	; centiseconds
		dc.b $A0, $D, 0, 8, $FE		; RING
		dc.b $A0, 1, 0, 0, $1E	; S
		dc.b $A0, 9, $20, $30, $30	; number of rings
		dc.b $40, 5, 1, $A, 0	; lives icon
		dc.b $40, $D, $21, $E, $10	; lives counter
		even