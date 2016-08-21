Obj3C_ChkSuper:
		tst.b	(Super_Sonic_Flag).w	; is Sonic Super?
		beq.w	locret_D180	; if not, branch
		move.w	$30(a0),$10(a1)
		addq.w	#4,8(a1)
		lea	(Obj3C_FragSpd1).l,a4 ;	use fragments that move	right
		move.w	8(a0),d0
		cmp.w	8(a1),d0	; is Sonic to the right	of the block?
		bcs.s	Obj3C_SuperSmash	; if yes, branch
		subq.w	#8,8(a1)
		lea	(Obj3C_FragSpd2).l,a4 ;	use fragments that move	left

Obj3C_SuperSmash:
		move.w	$10(a1),$20(a1)
		bclr	#5,$22(a0)
		bclr	#5,$22(a1)
		moveq	#7,d1		; load 8 fragments
		move.w	#$70,d2
		bsr.s	SmashObject
;End of function Obj3C_ChkSuper
;Super Sonic Smashable Walls Fix End