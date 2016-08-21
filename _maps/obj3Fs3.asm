; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_georC:	
		dc.w SME_georC_C-SME_georC, SME_georC_12-SME_georC	
		dc.w SME_georC_18-SME_georC, SME_georC_1E-SME_georC	
		dc.w SME_georC_24-SME_georC, SME_georC_2A-SME_georC	
SME_georC_C:	dc.b 1	
		dc.b $F8, 5, 0, 0, $F8	
SME_georC_12:	dc.b 1	
		dc.b $F4, $A, 0, 4, $F4	
SME_georC_18:	dc.b 1	
		dc.b $F4, $A, 0, $D, $F4	
SME_georC_1E:	dc.b 1	
		dc.b $F4, $A, 0, $16, $F4	
SME_georC_24:	dc.b 1	
		dc.b $F3, $A, 0, $1F, $F4	
SME_georC_2A:	dc.b 1	
		dc.b $F6, 9, 0, $28, $F4	
		even