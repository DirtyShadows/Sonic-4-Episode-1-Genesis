; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_AVB8T:	
		dc.w SME_AVB8T_10-SME_AVB8T, SME_AVB8T_1B-SME_AVB8T	
		dc.w SME_AVB8T_30-SME_AVB8T, SME_AVB8T_4F-SME_AVB8T	
		dc.w SME_AVB8T_78-SME_AVB8T, SME_AVB8T_83-SME_AVB8T	
		dc.w SME_AVB8T_98-SME_AVB8T, SME_AVB8T_B7-SME_AVB8T	
SME_AVB8T_10:	dc.b 2	
		dc.b $F0, 7, 0, 0, $F0	
		dc.b $F0, 7, 0, 0, 0	
SME_AVB8T_1B:	dc.b 4	
		dc.b $F0, 7, 0, 0, $E0	
		dc.b $F0, 7, 0, 0, $F0	
		dc.b $F0, 7, 0, 0, 0	
		dc.b $F0, 7, 0, 0, $10	
SME_AVB8T_30:	dc.b 6	
		dc.b $F0, 7, 0, 0, $D0	
		dc.b $F0, 7, 0, 0, $E0	
		dc.b $F0, 7, 0, 0, $F0	
		dc.b $F0, 7, 0, 0, 0	
		dc.b $F0, 7, 0, 0, $10	
		dc.b $F0, 7, 0, 0, $20	
SME_AVB8T_4F:	dc.b 8	
		dc.b $F0, 7, 0, 0, $C0	
		dc.b $F0, 7, 0, 0, $D0	
		dc.b $F0, 7, 0, 0, $E0	
		dc.b $F0, 7, 0, 0, $F0	
		dc.b $F0, 7, 0, 0, 0	
		dc.b $F0, 7, 0, 0, $10	
		dc.b $F0, 7, 0, 0, $20	
		dc.b $F0, 7, 0, 0, $30	
SME_AVB8T_78:	dc.b 2	
		dc.b $F0, $D, 0, 0, $F0	
		dc.b 0, $D, 0, 0, $F0	
SME_AVB8T_83:	dc.b 4	
		dc.b $E0, $D, 0, 0, $F0	
		dc.b $F0, $D, 0, 0, $F0	
		dc.b 0, $D, 0, 0, $F0	
		dc.b $10, $D, 0, 0, $F0	
SME_AVB8T_98:	dc.b 6	
		dc.b $D0, $D, 0, 0, $F0	
		dc.b $E0, $D, 0, 0, $F0	
		dc.b $F0, $D, 0, 0, $F0	
		dc.b 0, $D, 0, 0, $F0	
		dc.b $10, $D, 0, 0, $F0	
		dc.b $20, $D, 0, 0, $F0	
SME_AVB8T_B7:	dc.b 8	
		dc.b $C0, $D, 0, 0, $F0	
		dc.b $D0, $D, 0, 0, $F0	
		dc.b $E0, $D, 0, 0, $F0	
		dc.b $F0, $D, 0, 0, $F0	
		dc.b 0, $D, 0, 0, $F0	
		dc.b $10, $D, 0, 0, $F0	
		dc.b $20, $D, 0, 0, $F0	
		dc.b $30, $D, 0, 0, $F0	
		even