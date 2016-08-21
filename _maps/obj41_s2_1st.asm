; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_oYuJs:	
		dc.w SME_oYuJs_16-SME_oYuJs, SME_oYuJs_21-SME_oYuJs	
		dc.w SME_oYuJs_27-SME_oYuJs, SME_oYuJs_32-SME_oYuJs	
		dc.w SME_oYuJs_3D-SME_oYuJs, SME_oYuJs_43-SME_oYuJs	
		dc.w SME_oYuJs_4E-SME_oYuJs, SME_oYuJs_59-SME_oYuJs	
		dc.w SME_oYuJs_6E-SME_oYuJs, SME_oYuJs_7E-SME_oYuJs	
		dc.w SME_oYuJs_93-SME_oYuJs	
SME_oYuJs_16:	dc.b 2
		dc.b $F8, $C, 0, 0, $F0
		dc.b 0,	$C, 0, 4, $F0	
SME_oYuJs_21:	dc.b 1
		dc.b 0,	$C, 0, 0, $F0	
SME_oYuJs_27:	dc.b 3
		dc.b $E8, $C, 0, 0, $F0
		dc.b $F0, 5, 0,	8, $F8
		dc.b 0,	$C, 0, $C, $F0	
SME_oYuJs_32:	dc.b 1
		dc.b $F0, 7, 0,	0, $F8	
SME_oYuJs_3D:	dc.b 1	
		dc.b $F0, 3, 0,	4, $F8
SME_oYuJs_43:	dc.b 4
		dc.b $F0, 3, 0,	4, $10
		dc.b $F8, 9, 0,	8, $F8
		dc.b $F0, 0, 0,	0, $F8
		dc.b 8,	0, 0, 3, $F8	
SME_oYuJs_4E:	dc.b 2	
		dc.b 0, $C, $10, 0, $F0	
		dc.b $F8,	$C, $10, 4, $F0
SME_oYuJs_59:	dc.b 4	
		dc.b $F0, $C, 0, 0, $F0	
		dc.b 0, 5, 0, 8, 0	
		dc.b $FB, 5, 0, $C, $F6	
		dc.b 0, 5, $20, $1C, $F0	
SME_oYuJs_6E:	dc.b 3	
		dc.b $F6, $D, 0, 0, $EA	
		dc.b 6, 5, 0, 8, $FA	
		dc.b 0, 5, $20, $1C, $F0	
SME_oYuJs_7E:	dc.b 4	
		dc.b $E6, $D, 0, 0, $FB	
		dc.b $F6, 5, 0, 8, $B	
		dc.b $F3, $B, 0, $10, $F6	
		dc.b 0, 5, $20, $1C, $F0	
SME_oYuJs_93:	dc.b 4	
		dc.b 0, $D, $10, 0, $F0	
		dc.b $F0, 5, $10, 8, 0	
		dc.b $F5, 5, $10, $C, $F6	
		dc.b $F0, 5, $30, $1C, $F0	
		even