		move.b	#6,routine(a0)
		jsr	Sonic_ResetOnFloor
		bset	#1,status(a0)
		move.w	#-$700,y_vel(a0)
		move.w	#0,x_vel(a0)
		move.w	#0,inertia(a0)
		move.w	$C(a0),$38(a0)
		move.b	#$18,anim(a0)
		bset	#7,2(a0)
	;	move.l	#Map_Sonic,(MainCharacter+mappings).w	; Load the sonic map.
		move.w	#$A3,d0		; play normal death sound
		cmpi.b	#$36,(a2)	; check if you were killed by spikes
		bne.s	Kill_Sound	; if not, branch
		move.w	#$A6,d0		; play spikes death sound
		bcc.w	Kill_Sound
		
Kill_Sound:
		jsr	(PlaySound_Special).l
		
;return2_1AC3C:
;	rts