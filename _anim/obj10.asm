; ---------------------------------------------------------------------------
; Animation script - Sonic Surf
; ---------------------------------------------------------------------------
		dc.w Surf_Normal-Ani_obj10
		dc.w Surf_Jump-Ani_obj10
		dc.w Surf_Run-Ani_obj10
Surf_Normal:	dc.b ($13/$2), 0, 1, 2, 3, 4, 3, 2, 1, $FF, 0
Surf_Jump:	dc.b $FF, 5, $FF
Surf_Run:	dc.b $FF, 6, 7, 8, 9, $FF, $FF, $FF
		even