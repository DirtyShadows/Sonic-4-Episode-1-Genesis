;===============================================================================
; Object 0x21 - 2P Versus Results ( 1P Win / 2P Win / Tied )
; [ Begin ]
;===============================================================================	
loc_8B4C:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_8B5A(pc,d0),d1
		jmp	loc_8B5A(pc,d1)
loc_8B5A:
		dc.w	loc_8B72-loc_8B5A
		dc.w	loc_8BBA-loc_8B5A
loc_8B5E:
		dc.l	$F00148,$F00130,$E00148,$F00148
		dc.l	$F00148
loc_8B72:
		addq.b	#2,$24(a0)
		move.w	($FFFFFF10).w,d0
		add.w	d0,d0
		add.w	d0,d0
		move.l	loc_8B5E(pc,d0),8(a0)
		move.l	#_2P_Versus_Results_Mappings,4(a0) 
		move.w	#$60,2(a0)
		bsr	loc_9654
		move.b	#0,1(a0)
		move.b	#0,$18(a0)
		moveq	#2,d1
		move.b	($FFFFFF38).w,d0
		sub.b	($FFFFFF39).w,d0
		beq.s	loc_8BB6
		bcs.s	loc_8BB4
		moveq	#0,d1
		bra.s	loc_8BB6
loc_8BB4:
		moveq	#1,d1
loc_8BB6:
		move.b	d1,$1A(a0)
loc_8BBA:
		and.w	#$7FF,2(a0)
		btst	#3,($FFFFFE0F).w
		beq.s	loc_8BCE
		or.w	#$2000,2(a0)
loc_8BCE:
		jmp	displaySprite	
;-------------------------------------------------------------------------------	
_2P_Versus_Results_Mappings: 
		dc.w	_1P_Wins_Mappings-_2P_Versus_Results_Mappings 
		dc.w	_2P_Wins_Mappings-_2P_Versus_Results_Mappings 
		dc.w	Tied_Mappings-_2P_Versus_Results_Mappings	
_1P_Wins_Mappings: 
		dc.w	$3
		dc.l	$F80D0000,0,$F80D000C,$60028
		dc.l	$F8090014,$A0048
_2P_Wins_Mappings: 
		dc.w	$4
		dc.l	$F8050008,$40000,$F8050004,$20010
		dc.l	$F80D000C,$60028,$F8090014,$A0048
Tied_Mappings: 
		dc.w	$2
		dc.l	$F80D001A,$D0018,$F8050022,$110038	
;===============================================================================
; Object 0x21 - 2P Versus Results ( 1P Win / 2P Win / Tied )
; [ End ]
;===============================================================================