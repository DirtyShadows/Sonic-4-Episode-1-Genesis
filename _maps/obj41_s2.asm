; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_WIDqm:	
		dc.w SME_WIDqm_16-SME_WIDqm, SME_WIDqm_21-SME_WIDqm	
		dc.w SME_WIDqm_27-SME_WIDqm, SME_WIDqm_32-SME_WIDqm	
		dc.w SME_WIDqm_3D-SME_WIDqm, SME_WIDqm_43-SME_WIDqm	
		dc.w SME_WIDqm_4E-SME_WIDqm, SME_WIDqm_59-SME_WIDqm	
		dc.w SME_WIDqm_6E-SME_WIDqm, SME_WIDqm_7E-SME_WIDqm	
		dc.w SME_WIDqm_93-SME_WIDqm	
SME_WIDqm_16:	dc.b 2
		dc.b $F8, $C, 0, 0, $F0
		dc.b 0,	$C, 0, 4, $F0	
SME_WIDqm_21:	dc.b 1
		dc.b 0,	$C, 0, 0, $F0
SME_WIDqm_27:	dc.b 3
		dc.b $E8, $C, 0, 0, $F0
		dc.b $F0, 5, 0,	8, $F8
		dc.b 0,	$C, 0, $C, $F0
SME_WIDqm_32:	dc.b 1
		dc.b $F0, 7, 0,	0, $F8	
SME_WIDqm_3D:	dc.b 1
		dc.b $F0, 3, 0,	4, $F8	
SME_WIDqm_43:	dc.b 4
		dc.b $F0, 3, 0,	4, $10
		dc.b $F8, 9, 0,	8, $F8
		dc.b $F0, 0, 0,	0, $F8
		dc.b 8,	0, 0, 3, $F8
SME_WIDqm_4E:	dc.b 1	
		dc.b 0,	$C, 0, 0, $F0	
SME_WIDqm_59:	dc.b 3	
		dc.b $E8, $C, 0, 0, $F0
		dc.b $F0, 5, 0,	8, $F8
		dc.b 0,	$C, 0, $C, $F0	
SME_WIDqm_6E:	dc.b 3	
		dc.b $F6, $D, 0, 0, $EA	
		dc.b 6, 5, 0, 8, $FA	
		dc.b 0, 5, 0, $1C, $F0	
SME_WIDqm_7E:	dc.b 4	
		dc.b $E6, $D, 0, 0, $FB	
		dc.b $F6, 5, 0, 8, $B	
		dc.b $F3, $B, 0, $10, $F6	
		dc.b 0, 5, 0, $1C, $F0	
SME_WIDqm_93:	dc.b 4	
		dc.b 0, $D, $10, 0, $F0	
		dc.b $F0, 5, $10, 8, 0	
		dc.b $F5, 5, $10, $C, $F6	
		dc.b $F0, 5, $10, $1C, $F0	
		even