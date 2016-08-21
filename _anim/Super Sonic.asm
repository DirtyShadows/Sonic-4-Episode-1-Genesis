; ---------------------------------------------------------------------------
; Animation script - Super Sonic
; ---------------------------------------------------------------------------
		dc.w SupSonAni_Walk-SuperSonicAniData
		dc.w SupSonAni_Run-SuperSonicAniData
		dc.w SonAni_Roll-SuperSonicAniData
		dc.w SonAni_Roll2-SuperSonicAniData
		dc.w SupSonAni_Push-SuperSonicAniData
		dc.w SupSonAni_Wait-SuperSonicAniData
		dc.w SupSonAni_Balance-SuperSonicAniData
		dc.w SonAni_LookUp-SuperSonicAniData
		dc.w SupSonAni_Duck-SuperSonicAniData
		dc.w SonAni_Warp1-SuperSonicAniData
		dc.w SonAni_Warp2-SuperSonicAniData
		dc.w SonAni_Warp3-SuperSonicAniData
		dc.w SonAni_Warp4-SuperSonicAniData
		dc.w SonAni_Stop-SuperSonicAniData
		dc.w SonAni_Float1-SuperSonicAniData
		dc.w SonAni_Float2-SuperSonicAniData
		dc.w SonAni_Spring-SuperSonicAniData
		dc.w SonAni_LZHang-SuperSonicAniData
		dc.w SonAni_Leap1-SuperSonicAniData
		dc.w SonAni_Leap2-SuperSonicAniData
		dc.w SonAni_Surf-SuperSonicAniData
		dc.w SonAni_Bubble-SuperSonicAniData
		dc.w SonAni_Death1-SuperSonicAniData
		dc.w SonAni_Drown-SuperSonicAniData
		dc.w SonAni_Death2-SuperSonicAniData
		dc.w SonAni_Shrink-SuperSonicAniData
		dc.w SonAni_Hurt-SuperSonicAniData
		dc.w SonAni_LZSlide-SuperSonicAniData
		dc.w SonAni_Blank-SuperSonicAniData
		dc.w SonAni_Float3-SuperSonicAniData
		dc.w SonAni_Float4-SuperSonicAniData
		dc.w SonAni_Warp1-SuperSonicAniData	;1F
		dc.w SonAni_Spring2-SuperSonicAniData	;20
		dc.w SonAni_Spring3-SuperSonicAniData	;21
		dc.w SupSonAni_Transform-SuperSonicAniData
		dc.w SonAni_EndPose-SuperSonicAniData	;23
SupSonAni_Walk:	dc.b  $FF,   7,	  8,   1,   2,	 3,   4,   5,	6, $FF
SupSonAni_Run:	dc.b  $FF, $21,	$22, $23, $24, $FF, $FF, $FF, $FF, $FF
SupSonAni_Roll:	dc.b  $FE, $96,	$97, $96, $98, $96, $99, $96, $9A, $FF
SupSonAni_Roll2:	dc.b  $FE, $96,	$97, $96, $98, $96, $99, $96, $9A, $FF
SupSonAni_Push:	dc.b  $FD, $B6,	$B7, $B8, $B9, $FF, $FF, $FF, $FF, $FF
SupSonAni_Wait:	dc.b	7, $C5, $C6, $FF
SupSonAni_Balance:	dc.b	7, $A4,	$A5, $A6, $FF ;	DATA XREF: ROM:00012AA6o
SupSonAni_Duck:	dc.b	5, $9B,	$9C, $FE,   1 ;	DATA XREF: ROM:00012AA6o
SupSonAni_Transform:	dc.b	2, $D2,	$D2, $D3, $D3, $D4, $D5, $D5, $D5, $D5,	$D5, $D5, $D5, $D5, $FD,   0
					; DATA XREF: ROM:00012AA6o
							align 2