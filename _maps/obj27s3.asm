; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_stcCy:	
		dc.w SME_stcCy_A-SME_stcCy, SME_stcCy_10-SME_stcCy	
		dc.w SME_stcCy_16-SME_stcCy, SME_stcCy_1C-SME_stcCy	
		dc.w SME_stcCy_22-SME_stcCy	
SME_stcCy_A:	dc.b 1	
		dc.b $F8, 5, 0, 0, $F8	
SME_stcCy_10:	dc.b 1	
		dc.b $F0, $F, $20, 4, $F0	
SME_stcCy_16:	dc.b 1	
		dc.b $F0, $F, $20, $14, $F0	
SME_stcCy_1C:	dc.b 1	
		dc.b $F0, $F, $20, $24, $F0	
SME_stcCy_22:	dc.b 1	
		dc.b $F0, $F, $20, $34, $F0	
		even