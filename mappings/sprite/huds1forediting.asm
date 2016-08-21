; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_GUkho:	
		dc.w SME_GUkho_8-SME_GUkho, SME_GUkho_3B-SME_GUkho	
		dc.w SME_GUkho_6E-SME_GUkho, SME_GUkho_A1-SME_GUkho	
SME_GUkho_8:	dc.b $A	
		dc.b $80, $D, $20, 0, 0	
		dc.b $80, $D, $20, $18, $20	
		dc.b $80, $D, $20, $20, $40	
		dc.b $90, $D, $20, $10, 0	
		dc.b $90, $D, $20, $28, $28	
		dc.b $90, 1, $80, $2A, $48	; :
		dc.b $90, 5, $80, $F2, $50	; centiseconds
		dc.b $A0, $D, $20, 8, 0	
		dc.b $A0, 1, $20, 0, $20	
		dc.b $A0, 9, $20, $30, $30	
		dc.b $40, 5, 1, $A, 0	
		dc.b $40, $D, $21, $E, $10	
SME_GUkho_3B:	dc.b $A	
		dc.b $80, $D, $20, 0, 0	
		dc.b $80, $D, $20, $18, $20	
		dc.b $80, $D, $20, $20, $40	
		dc.b $90, $D, $20, $10, 0	
		dc.b $90, $D, $20, $28, $28
		dc.b $90, 1, $80, $2A, $48	; :
		dc.b $90, 5, $80, $F2, $50	; centiseconds
		dc.b $A0, $D, 0, 8, 0	
		dc.b $A0, 1, 0, 0, $20	
		dc.b $A0, 9, $20, $30, $30	
		dc.b $40, 5, $81, $A, 0		; lives icon
		dc.b $40, $D, $81, $E, $10	; lives counter
		dc.b 0
SME_GUkho_6E:	dc.b $A	
		dc.b $80, $D, $20, 0, 0	
		dc.b $80, $D, $20, $18, $20	
		dc.b $80, $D, $20, $20, $40	
		dc.b $90, $D, 0, $10, 0	
		dc.b $90, $D, $20, $28, $28	
		dc.b $90, 1, $80, $2A, $48	; :
		dc.b $90, 5, $80, $F2, $50	; centiseconds
		dc.b $A0, $D, $20, 8, 0	
		dc.b $A0, 1, $20, 0, $20	
		dc.b $A0, 9, $20, $30, $30	
		dc.b $40, 5, $81, $A, 0		; lives icon
		dc.b $40, $D, $81, $E, $10	; lives counter
		dc.b 0
SME_GUkho_A1:	dc.b $A	
		dc.b $80, $D, $20, 0, 0	
		dc.b $80, $D, $20, $18, $20	
		dc.b $80, $D, $20, $20, $40	
		dc.b $90, $D, 0, $10, 0	
		dc.b $90, $D, $20, $28, $28
		dc.b $90, 1, $80, $2A, $48	; :
		dc.b $90, 5, $80, $F2, $50	; centiseconds
		dc.b $A0, $D, 0, 8, 0	
		dc.b $A0, 1, 0, 0, $20	
		dc.b $A0, 9, $20, $30, $30	
		dc.b $40, 5, $81, $A, 0		; lives icon
		dc.b $40, $D, $81, $E, $10	; lives counter
		dc.b 0
		even