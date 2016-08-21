; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_aMlLv:	
		dc.w SME_aMlLv_C-SME_aMlLv, SME_aMlLv_21-SME_aMlLv	
		dc.w SME_aMlLv_36-SME_aMlLv, SME_aMlLv_4B-SME_aMlLv	
		dc.w SME_aMlLv_60-SME_aMlLv, SME_aMlLv_75-SME_aMlLv	
SME_aMlLv_C:	dc.b 4	
		dc.b $F0, 5, 0, 0, $F0	
		dc.b $F0, 5, 8, 0, 0	
		dc.b 0, 5, $10, 0, $F0	
		dc.b 0, 5, $18, 0, 0	
SME_aMlLv_21:	dc.b 4	
		dc.b $F0, 5, 0, 4, $F0	
		dc.b $F0, 5, 8, 4, 0	
		dc.b 0, 5, $10, 4, $F0	
		dc.b 0, 5, $18, 4, 0	
SME_aMlLv_36:	dc.b 4	
		dc.b $F0, 5, 0, 8, $F0	
		dc.b $F0, 5, 8, 8, 0	
		dc.b 0, 5, $10, 8, $F0	
		dc.b 0, 5, $18, 8, 0	
SME_aMlLv_4B:	dc.b 4	
		dc.b $F0, 5, 0, $C, $F0	
		dc.b $F0, 5, 8, $C, 0	
		dc.b 0, 5, $10, $C, $F0	
		dc.b 0, 5, $18, $C, 0	
SME_aMlLv_60:	dc.b 4	
		dc.b $F0, 5, 0, $10, $F0	
		dc.b $F0, 5, 8, $10, 0	
		dc.b 0, 5, $10, $10, $F0	
		dc.b 0, 5, $18, $10, 0	
SME_aMlLv_75:	dc.b 4	
		dc.b $E0, $B, 0, $14, $E8	
		dc.b $E0, $B, 8, $14, 0	
		dc.b 0, $B, $10, $14, $E8	
		dc.b 0, $B, $18, $14, 0	
		even