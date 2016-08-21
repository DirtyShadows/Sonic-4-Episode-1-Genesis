; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_ifQsP:	
		dc.w SME_ifQsP_C-SME_ifQsP, SME_ifQsP_1C-SME_ifQsP	
		dc.w SME_ifQsP_27-SME_ifQsP, SME_ifQsP_37-SME_ifQsP	
		dc.w SME_ifQsP_47-SME_ifQsP, SME_ifQsP_5C-SME_ifQsP	
SME_ifQsP_C:	dc.b 3	
		dc.b $F7, $B, 0, $C, $E7	
		dc.b $FE, 1, 0, $18, $FF	
		dc.b 1, 5, 0, $1A, 7	
SME_ifQsP_1C:	dc.b 2	
		dc.b $F8, $D, 0, 0, $E8	
		dc.b $F8, 5, 0, 8, 8	
SME_ifQsP_27:	dc.b 3	
		dc.b $E9, $B, $10, $C, $E7	
		dc.b $F2, 1, $10, $18, $FF	
		dc.b $EF, 5, $10, $1A, 7	
SME_ifQsP_37:	dc.b 3	
		dc.b $E7, 9, 0, $24, $F1	
		dc.b $F7, 9, 0, $2A, $EF	
		dc.b 7, 5, 0, $30, $EF	
SME_ifQsP_47:	dc.b 4	
		dc.b $E8, 3, 0, $1E, $F8	
		dc.b $E8, 3, 8, $1E, 0	
		dc.b 8, 1, 0, $22, $F8	
		dc.b 8, 1, 8, $22, 0	
SME_ifQsP_5C:	dc.b 3	
		dc.b $E7, 9, 8, $24, $F7	
		dc.b $F7, 9, 8, $2A, $F9	
		dc.b 7, 5, 8, $30, 1	
		even