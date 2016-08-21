; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_vHL8M:	
		dc.w SME_vHL8M_18-SME_vHL8M, SME_vHL8M_1E-SME_vHL8M	
		dc.w SME_vHL8M_29-SME_vHL8M, SME_vHL8M_34-SME_vHL8M	
		dc.w SME_vHL8M_3F-SME_vHL8M, SME_vHL8M_4A-SME_vHL8M	
		dc.w SME_vHL8M_55-SME_vHL8M, SME_vHL8M_60-SME_vHL8M	
		dc.w SME_vHL8M_6B-SME_vHL8M, SME_vHL8M_76-SME_vHL8M	
		dc.w SME_vHL8M_81-SME_vHL8M, SME_vHL8M_8C-SME_vHL8M	
SME_vHL8M_18:	dc.b 1	
		dc.b $F0, $F, 0, 0, $F0	
SME_vHL8M_1E:	dc.b 2	
		dc.b $F5, 5, 0, $10, $F8	
		dc.b $F0, $F, 0, 0, $F0	
SME_vHL8M_29:	dc.b 2	
		dc.b $F5, 5, 0, $14, $F8	
		dc.b $F0, $F, 0, 0, $F0	
SME_vHL8M_34:	dc.b 2	
		dc.b $F5, 5, 0, $18, $F8	
		dc.b $F0, $F, 0, 0, $F0	
SME_vHL8M_3F:	dc.b 2	
		dc.b $F5, 5, 0, $1C, $F8	
		dc.b $F0, $F, 0, 0, $F0	
SME_vHL8M_4A:	dc.b 2	
		dc.b $F5, 5, 0, $24, $F8	
		dc.b $F0, $F, 0, 0, $F0	
SME_vHL8M_55:	dc.b 2	
		dc.b $F5, 5, 0, $28, $F8	
		dc.b $F0, $F, 0, 0, $F0	
SME_vHL8M_60:	dc.b 2	
		dc.b $F5, 5, 0, $2C, $F8	
		dc.b $F0, $F, 0, 0, $F0
	if MonitorArtOptimise=1	;Mercury Monitor Art Optimise
SME_vHL8M_6B:	dc.b 2	
		dc.b $F5, 5, $20,	$20, $F8
		dc.b $F0, $F, 0, 0, $F0
SME_vHL8M_76:	dc.b 2	
		dc.b $F5, 5, 0,	$3C, $F8
		dc.b $F0, $F, 0, 0, $F0
SME_vHL8M_81:	dc.b 2	
		dc.b $F5, 5, 0,	$38, $F8
		dc.b $F0, $F, 0, 0, $F0
SME_vHL8M_8C:	dc.b 1	
		dc.b $FF, $D, 0, $30, $F0
		else		
SME_vHL8M_6B:	dc.b 2	
		dc.b $F5, 5, $20, $30, $F8	
		dc.b $F0, $F, 0, 0, $F0	
SME_vHL8M_76:	dc.b 2	
		dc.b $F5, 5, 0,	$34, $F8
		dc.b $F0, $F, 0, 0, $F0
SME_vHL8M_81:	dc.b 2	
		dc.b $F5, 5, 0,	$20, $F8
		dc.b $F0, $F, 0, 0, $F0
SME_vHL8M_8C:	dc.b 1	
		dc.b $FF, $D, 0, $38, $F0
	endc	;end Monitor Art Optimise
		even