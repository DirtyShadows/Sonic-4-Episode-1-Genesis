; ---------------------------------------------------------------------------
; Animation script - Sonic
; ---------------------------------------------------------------------------
		dc.w SuperSonAni_Walk-SuperSonicAniData
		dc.w SuperSonAni_Run-SuperSonicAniData
		dc.w SuperSonAni_Roll-SuperSonicAniData
		dc.w SuperSonAni_Roll2-SuperSonicAniData
		dc.w SuperSonAni_Push-SuperSonicAniData
		dc.w SuperSonAni_Wait-SuperSonicAniData
		dc.w SuperSonAni_Balance-SuperSonicAniData
		dc.w SuperSonAni_LookUp-SuperSonicAniData
		dc.w SuperSonAni_Duck-SuperSonicAniData
		dc.w SuperSonAni_Warp1-SuperSonicAniData
		dc.w SuperSonAni_Warp2-SuperSonicAniData
		dc.w SuperSonAni_Warp3-SuperSonicAniData
		dc.w SuperSonAni_Warp4-SuperSonicAniData
		dc.w SuperSonAni_Stop-SuperSonicAniData
		dc.w SuperSonAni_Float1-SuperSonicAniData
		dc.w SuperSonAni_Float2-SuperSonicAniData
		dc.w SuperSonAni_Spring-SuperSonicAniData
		dc.w SuperSonAni_LZHang-SuperSonicAniData
		dc.w SuperSonAni_Leap1-SuperSonicAniData
		dc.w SuperSonAni_Leap2-SuperSonicAniData
		dc.w SuperSonAni_Surf-SuperSonicAniData
		dc.w SuperSonAni_Bubble-SuperSonicAniData
		dc.w SuperSonAni_Death1-SuperSonicAniData
		dc.w SuperSonAni_Drown-SuperSonicAniData
		dc.w SuperSonAni_Death2-SuperSonicAniData
		dc.w SuperSonAni_Shrink-SuperSonicAniData
		dc.w SuperSonAni_Hurt-SuperSonicAniData
		dc.w SuperSonAni_LZSlide-SuperSonicAniData
		dc.w SuperSonAni_Blank-SuperSonicAniData
		dc.w SuperSonAni_Float3-SuperSonicAniData
		dc.w SuperSonAni_Float4-SuperSonicAniData
		dc.w SuperSonAni_Spindash-SuperSonicAniData	;1F
	    dc.w SuperSonAni_Transform-SuperSonicAniData    ; 31
SuperSonAni_Walk:		dc.b $FF, 8, 9,	$A, $B,	6, 7, $FF
SuperSonAni_Run:		dc.b $FF, $1E, $1F, $20, $21, $FF, $FF,	$FF
SuperSonAni_Roll:	dc.b $FE, $2E, $2F, $30, $31, $32, $FF,	$FF
SuperSonAni_Roll2:	dc.b $FE, $2E, $2F, $32, $30, $31, $32,	$FF
SuperSonAni_Push:		dc.b $FD,$BD,$BE,$BF,$C0,$FF,$FF,$FF,$FF,$FF
SuperSonAni_Wait:	dc.b $17, 1, 1,	1, 1, 1, 1, 1, 1, 1, 1,	1, 1, 3, 2, 2, 2, 3, 4, $FE, 2, 0
SuperSonAni_Balance:	dc.b $1F, $3A, $3B, $FF
SuperSonAni_LookUp:	dc.b $3F, 5, $FF, 0
SuperSonAni_Duck:		dc.b   5,$C1,$FF
SuperSonAni_Warp1:	dc.b $3F, $33, $FF, 0
SuperSonAni_Warp2:	dc.b $3F, $34, $FF, 0
SuperSonAni_Warp3:	dc.b $3F, $35, $FF, 0
SuperSonAni_Warp4:	dc.b $3F, $36, $FF, 0
SuperSonAni_Stop:	dc.b 7,	$37, $38, $FF
SuperSonAni_Float1:	dc.b 7,	$3C, $3F, $FF
SuperSonAni_Float2:	dc.b 7,	$3C, $3D, $53, $3E, $54, $FF, 0
SuperSonAni_Spring:	dc.b $2F, $40, $FD, 0
SuperSonAni_LZHang:	dc.b 4,	$41, $42, $FF
SuperSonAni_Leap1:	dc.b $F, $43, $43, $43,	$FE, 1
SuperSonAni_Leap2:	dc.b $F, $43, $44, $FE,	1, 0
SuperSonAni_Surf:	dc.b $3F, $49, $FF, 0
SuperSonAni_Bubble:	dc.b $B, $56, $56, $A, $B, $FD,	0, 0
SuperSonAni_Death1:	dc.b $20, $4B, $FF, 0
SuperSonAni_Drown:	dc.b $2F, $4C, $FF, 0
SuperSonAni_Death2:	dc.b 3,	$4D, $FF, 0
SuperSonAni_Shrink:	dc.b 3,	$4E, $4F, $50, $51, $52, 0, $FE, 1, 0
SuperSonAni_Hurt:	dc.b 3,	$55, $FF, 0
SuperSonAni_LZSlide:	dc.b 7, $55, $57, $FF
SuperSonAni_Blank:	dc.b $77, 0, $FD, 0
SuperSonAni_Float3:	dc.b 3,	$3C, $3D, $53, $3E, $54, $FF, 0
SuperSonAni_Float4:	dc.b 3,	$3C, $FD, 0
SuperSonAni_Spindash: dc.b 0, $58, $59, $58, $5A, $58, $5B, $58, $5C, $58, $5D, $FF
SuperSonAni_Transform:	dc.b   2,$6D,$6D,$6E,$6E,$6F,$70,$71,$70,$71,$70,$71,$70,$71,$FD,  0
	even