; ---------------------------------------------------------------------------
; Pallet pointers
; ---------------------------------------------------------------------------
	dc.l Pal_SegaBG		; pallet address
	dc.w $FB00		; RAM address
	dc.w $1F		; (pallet length / 2) - 1
	dc.l Pal_Title
	dc.w $FB00
	dc.w $1F
	dc.l Pal_LevelSel
	dc.w $FB00
	dc.w $1F
	dc.l Pal_Sonic
	dc.w $FB00
	dc.w 7
	dc.l Pal3_GHZ3
	dc.w $FB20
	dc.w $17
	dc.l Pal3_LZ3
	dc.w $FB20
	dc.w $17
	dc.l Pal3_MZ3
	dc.w $FB20
	dc.w $17
	dc.l Pal3_SLZ3
	dc.w $FB20
	dc.w $17
	dc.l Pal3_SYZ3
	dc.w $FB20
	dc.w $17
	dc.l Pal3_SBZ3
	dc.w $FB20
	dc.w $17
	dc.l Pal3_Special
	dc.w $FB00
	dc.w $1F
	dc.l Pal3_LZWater3
	dc.w $FB00
	dc.w $1F
	dc.l Pal3_SBZ3
	dc.w $FB20
	dc.w $17
	dc.l Pal3_SBZ3Water
	dc.w $FB00
	dc.w $1F
	dc.l Pal3_SBZ2
	dc.w $FB20
	dc.w $17
	dc.l Pal3_LZSonWater
	dc.w $FB00
	dc.w 7
	dc.l Pal3_SBZ3SonWat
	dc.w $FB00
	dc.w 7
	dc.l Pal3_SpeResult
	dc.w $FB00
	dc.w $1F
	dc.l Pal3_SpeContinue
	dc.w $FB00
	dc.w $F
	dc.l Pal3_Ending
	dc.w $FB00
	dc.w $1F
	dc.l Pal_ABZ3		; 14
	dc.w $FB20
	dc.w $17
	dc.l Menu_Palette; pallet address
	dc.w $FB00	; RAM address
	dc.w $1F	; (pallet length / 2) - 1
	dc.l Pal_Ray
	dc.w $FB00
	dc.w 7
	dc.l Pal_SonicHeat
	dc.w $FB00
	dc.w 7
	dc.l Pal_RayHeat
	dc.w $FB00
	dc.w 7