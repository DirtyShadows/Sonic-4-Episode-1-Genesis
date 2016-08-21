; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_E8HhO:	
		dc.w SME_E8HhO_C-SME_E8HhO, SME_E8HhO_1C-SME_E8HhO	
		dc.w SME_E8HhO_31-SME_E8HhO, SME_E8HhO_41-SME_E8HhO	
		dc.w SME_E8HhO_4C-SME_E8HhO, SME_E8HhO_57-SME_E8HhO	
SME_E8HhO_C:	dc.b 3	
		dc.b $F0, $B, 0, $22, $E8	
		dc.b $F0, $B, 0, $2E, 0	
		dc.b $10, 1, 0, $20, $FC	
SME_E8HhO_1C:	dc.b 4	
		dc.b $F0, 3, 0, $3A, $E8	
		dc.b $F0, $F, 0, $3E, $F0	
		dc.b $F0, 3, 8, $3A, $10	
		dc.b $10, 1, 0, $20, $FC	
SME_E8HhO_31:	dc.b 3	
		dc.b $F0, $B, 0, 0, $E8	
		dc.b $F0, $B, 8, 0, 0	
		dc.b $10, 1, 0, $20, $FC	
SME_E8HhO_41:	dc.b 2	
		dc.b $F0, $F, 0, $C, $F0	
		dc.b $10, 1, 0, $20, $FC	
SME_E8HhO_4C:	dc.b 2	
		dc.b $F0, 3, 0, $1C, $FC	
		dc.b $10, 1, 0, $20, $FC	
SME_E8HhO_57:	dc.b 2	
		dc.b $F0, $F, 8, $C, $F0	
		dc.b $10, 1, 0, $20, $FC	
		even