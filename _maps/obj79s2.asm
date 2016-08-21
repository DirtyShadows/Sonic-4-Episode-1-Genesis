; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_Y2pSa:	
		dc.w SME_Y2pSa_A-SME_Y2pSa, SME_Y2pSa_1F-SME_Y2pSa	
		dc.w SME_Y2pSa_2F-SME_Y2pSa, SME_Y2pSa_35-SME_Y2pSa	
		dc.w SME_Y2pSa_3B-SME_Y2pSa	
SME_Y2pSa_A:	dc.b 4	
		dc.b $E8, 1, $20, 4, $FC	
		dc.b $F8, 3, $20, 6, $F8	
		dc.b $F8, 3, $28, 6, 0	
		dc.b $D8, 5, 0, 0, $F8	
SME_Y2pSa_1F:	dc.b 3	
		dc.b $E8, 1, $20, 4, $FC	
		dc.b $F8, 3, $20, 6, $F8	
		dc.b $F8, 3, $28, 6, 0	
SME_Y2pSa_2F:	dc.b 1	
		dc.b $F8, 5, 0, 0, $F8	
SME_Y2pSa_35:	dc.b 1	
		dc.b $F8, 5, $20, 0, $F8	
SME_Y2pSa_3B:	dc.b 4	
		dc.b $E8, 1, $20, 4, $FC	
		dc.b $F8, 3, $20, 6, $F8	
		dc.b $F8, 3, $28, 6, 0	
		dc.b $D8, 5, $20, 0, $F8	
		even