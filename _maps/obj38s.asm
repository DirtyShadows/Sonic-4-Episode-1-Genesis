; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_hedwk:	
		dc.w SME_hedwk_6-SME_hedwk, SME_hedwk_7-SME_hedwk	
		dc.w SME_hedwk_1C-SME_hedwk	
SME_hedwk_6:	dc.b 0	
SME_hedwk_7:	dc.b 4	
		dc.b $E8, $A, 0, 0, $E8	
		dc.b $E8, $A, 0, 9, 0	
		dc.b 0, $A, $10, 0, $E8	
		dc.b 0, $A, $10, 9, 0	
SME_hedwk_1C:	dc.b 4	
		dc.b $E8, $A, 8, 9, $E8	
		dc.b $E8, $A, 8, 0, 0	
		dc.b 0, $A, $18, 9, $E8	
		dc.b 0, $A, $18, 0, 0	
		even