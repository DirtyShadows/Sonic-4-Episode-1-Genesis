; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_beAal:	
		dc.w SME_beAal_6-SME_beAal, SME_beAal_1B-SME_beAal	
		dc.w SME_beAal_30-SME_beAal	
SME_beAal_6:	dc.b 4	
		dc.b $F0, $F, 0, 0, $E0	
		dc.b $F0, $F, 0, $10, 0	
		dc.b 8, 8, 0, $20, $C8	
		dc.b 8, 8, 8, $20, $20	
SME_beAal_1B:	dc.b 4	
		dc.b 0, $D, 0, $45, $E0	
		dc.b 0, $D, 0, $4D, 0	
		dc.b 8, 8, 0, $20, $C8	
		dc.b 8, 8, 8, $20, $20	
SME_beAal_30:	dc.b 3	
		dc.b $F0, $F, 0, $23, $E0	
		dc.b $F0, $F, 0, $33, 0	
		dc.b $10, 4, 0, $43, $F8	
		even