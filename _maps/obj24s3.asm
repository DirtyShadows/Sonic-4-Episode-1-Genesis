; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_nzr3c:	
		dc.w SME_nzr3c_A-SME_nzr3c, SME_nzr3c_10-SME_nzr3c	
		dc.w SME_nzr3c_16-SME_nzr3c, SME_nzr3c_1C-SME_nzr3c	
		dc.w SME_nzr3c_22-SME_nzr3c	
SME_nzr3c_A:	dc.b 1	
		dc.b $F8, 5, 0, 0, $F8	
SME_nzr3c_10:	dc.b 1	
		dc.b $F0, $F, $20, 4, $F0	
SME_nzr3c_16:	dc.b 1	
		dc.b $F0, $F, $20, $14, $F0	
SME_nzr3c_1C:	dc.b 1	
		dc.b $F0, $F, $20, $24, $F0	
SME_nzr3c_22:	dc.b 1	
		dc.b $F0, $F, $20, $34, $F0	
		even