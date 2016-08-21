; ---------------------------------------------------------------------------
; Pal4let pointers
; ---------------------------------------------------------------------------
	dc.l Pal_SegaBG		; Pal4let address
	dc.w $FB00		; RAM address
	dc.w $1F		; (Pal4let length / 2) - 1
	dc.l Pal_Title
	dc.w $FB00
	dc.w $1F
	dc.l Pal_LevelSel
	dc.w $FB00
	dc.w $1F
	dc.l Pal_Sonic
	dc.w $FB00
	dc.w 7
	dc.l Pal4_GHZ
	dc.w $FB20
	dc.w $17
	dc.l Pal4_LZ
	dc.w $FB20
	dc.w $17
	dc.l Pal4_MZ
	dc.w $FB20
	dc.w $17
	dc.l Pal4_SLZ
	dc.w $FB20
	dc.w $17
	dc.l Pal4_SYZ
	dc.w $FB20
	dc.w $17
	dc.l Pal4_SBZ1
	dc.w $FB20
	dc.w $17
	dc.l Pal4_Special
	dc.w $FB00
	dc.w $1F
	dc.l Pal4_LZWater
	dc.w $FB00
	dc.w $1F
	dc.l Pal4_SBZ3
	dc.w $FB20
	dc.w $17
	dc.l Pal4_SBZ3Water
	dc.w $FB00
	dc.w $1F
	dc.l Pal4_SBZ2
	dc.w $FB20
	dc.w $17
	dc.l Pal4_LZSonWater
	dc.w $FB00
	dc.w 7
	dc.l Pal4_SBZ3SonWat
	dc.w $FB00
	dc.w 7
	dc.l Pal4_SpeResult
	dc.w $FB00
	dc.w $1F
	dc.l Pal4_SpeContinue
	dc.w $FB00
	dc.w $F
	dc.l Pal4_Ending
	dc.w $FB00
	dc.w $1F
	dc.l Pal_Menu; Pal4let address
	dc.w $FB00	; RAM address
	dc.w $1F	; (Pal4let length / 2) - 1
	dc.l Pal_Ray
	dc.w $FB00
	dc.w 7
	dc.l Pal_SonicHeat
	dc.w $FB00
	dc.w 7
	dc.l Pal_RayHeat
	dc.w $FB00
	dc.w 7
	dc.l Pal4_ABZ		; 14
	dc.w $FB20
	dc.w $17