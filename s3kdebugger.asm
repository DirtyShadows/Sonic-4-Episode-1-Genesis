; =============== S U B R O U T I N E =======================================


DebugMode:

		moveq	#0,d0
		move.b	(Debug_placement_mode).w,d0
		move.w	off_92A1C(pc,d0.w),d1
		jmp	off_92A1C(pc,d1.w)
; End of function DebugMode

; ---------------------------------------------------------------------------
off_92A1C:	dc.w loc_92A20-off_92A1C

		dc.w loc_92AB0-off_92A1C
; ---------------------------------------------------------------------------

loc_92A20:
		addq.b	#2,(Debug_placement_mode).w
		move.l	mappings(a0),($FFFFFFCA).w
		cmpi.b	#6,routine(a0)
		bcc.s	loc_92A38
		move.w	art_tile(a0),($FFFFFFCE).w

loc_92A38:
		andi.w	#$7FF,(MainCharacter+y_pos).w
		andi.w	#$7FF,(Camera_Y_pos).w
		andi.w	#$7FF,($FFFFF70C).w
		clr.b	(Scroll_lock).w
		clr.w	($FFFFF7C8).w
		bclr	#6,status(a0)
		beq.s	loc_92A6E
		movea.l	a0,a1
		jsr	(ResumeMusic).l
		move.w	#$600,($FFFFF760).w
		move.w	#$C,($FFFFF762).w
		move.w	#$80,($FFFFF764).w

loc_92A6E:
		move.b	#0,mapping_frame(a0)
		move.b	#0,anim(a0)
		moveq	#0,d0
		move.w	(Current_ZoneAndAct).w,d0
		ror.b	#1,d0
		lsr.w	#6,d0
		andi.w	#$7E,d0
		lea	(DebugList).l,a2
		adda.w	(a2,d0.w),a2
		move.w	(a2)+,d6
		cmp.b	(Debug_object).w,d6
		bhi.s	loc_92AA0
		move.b	#0,(Debug_object).w

loc_92AA0:
		bsr.w	sub_92C88
		move.b	#$C,($FFFFFE0A).w
		move.b	#1,($FFFFFE0B).w

loc_92AB0:
		moveq	#0,d0
		move.w	(Current_ZoneAndAct).w,d0
		ror.b	#1,d0
		lsr.w	#6,d0
		andi.w	#$7E,d0
		lea	(DebugList).l,a2
		adda.w	(a2,d0.w),a2
		move.w	(a2)+,d6
		bsr.w	sub_92AD4
		jmp	(DisplaySprite).l

; =============== S U B R O U T I N E =======================================


sub_92AD4:
		moveq	#0,d4
		move.w	#1,d1
		move.b	(Ctrl_1_Press).w,d4
		andi.w	#$F,d4
		bne.s	loc_92B16
		move.b	(Ctrl_1_Held).w,d0
		andi.w	#$F,d0
		bne.s	loc_92AFE
		move.b	#$C,($FFFFFE0A).w
		move.b	#$F,($FFFFFE0B).w
		bra.w	loc_92B7A
; ---------------------------------------------------------------------------

loc_92AFE:
		subq.b	#1,($FFFFFE0A).w
		bne.s	loc_92B1A
		move.b	#1,($FFFFFE0A).w
		addq.b	#1,($FFFFFE0B).w
		bne.s	loc_92B16
		move.b	#-1,($FFFFFE0B).w

loc_92B16:

		move.b	(Ctrl_1_Held).w,d4

loc_92B1A:
		moveq	#0,d1
		move.b	($FFFFFE0B).w,d1
		addq.w	#1,d1
		swap	d1
		asr.l	#4,d1
		move.l	y_pos(a0),d2
		move.l	x_pos(a0),d3
		btst	#0,d4
		beq.s	loc_92B44
		sub.l	d1,d2
		moveq	#0,d0
		move.w	(Camera_Min_Y_pos).w,d0
		swap	d0
		cmp.l	d0,d2
		bge.s	loc_92B44
		move.l	d0,d2

loc_92B44:

		btst	#1,d4
		beq.s	loc_92B5E
		add.l	d1,d2
		moveq	#0,d0
		move.w	(Camera_Max_Y_pos).w,d0
		addi.w	#$DF,d0
		swap	d0
		cmp.l	d0,d2
		blt.s	loc_92B5E
		move.l	d0,d2

loc_92B5E:

		btst	#2,d4
		beq.s	loc_92B6A
		sub.l	d1,d3
		bcc.s	loc_92B6A
		moveq	#0,d3

loc_92B6A:

		btst	#3,d4
		beq.s	loc_92B72
		add.l	d1,d3

loc_92B72:
		move.l	d2,y_pos(a0)
		move.l	d3,x_pos(a0)

loc_92B7A:
		btst	#6,(Ctrl_1_Held).w
		beq.s	loc_92BB2
		btst	#5,(Ctrl_1_Press).w
		beq.s	loc_92B96
		subq.b	#1,(Debug_object).w
		bcc.s	loc_92BAE
		add.b	d6,(Debug_object).w
		bra.s	loc_92BAE
; ---------------------------------------------------------------------------

loc_92B96:
		btst	#6,(Ctrl_1_Press).w
		beq.s	loc_92BB2
		addq.b	#1,(Debug_object).w
		cmp.b	(Debug_object).w,d6
		bhi.s	loc_92BAE
		move.b	#0,(Debug_object).w

loc_92BAE:

		bra.w	sub_92C88
; ---------------------------------------------------------------------------

loc_92BB2:

		btst	#5,(Ctrl_1_Press).w
		beq.s	loc_92C0C
		jsr	(SingleObjLoad).l
		bne.s	loc_92C0C
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		move.b	render_flags(a0),render_flags(a1)
		move.b	render_flags(a0),status(a1)
		andi.b	#$7F,status(a1)
		moveq	#0,d0
		move.b	(Debug_object).w,d0
		add.w	d0,d0
		move.w	d0,d1
		lsl.w	#2,d0
		add.w	d1,d0
		move.b	4(a2,d0.w),subtype(a1)
		move.l	(a2,d0.w),(a1)
		move.b	#0,(a1)
		cmpi.l	#Obj26,(a1)
		bne.s	locret_92C0A
		move.b	#9,subtype(a1)

locret_92C0A:
		rts
; ---------------------------------------------------------------------------

loc_92C0C:

		btst	#4,(Ctrl_1_Press).w
		beq.s	locret_92C52
		moveq	#0,d0
		move.w	d0,(Debug_placement_mode).w
		move	#$2700,sr
		jsr	(Hud_Base).l
		move.b	#1,(Update_HUD_score).w
		move.b	#-$80,(Update_HUD_rings).w
		move	#$2300,sr
		lea	(Object_RAM).w,a1
		move.l	($FFFFFFCA).w,mappings(a1)
		move.w	($FFFFFFCE).w,art_tile(a1)
		bsr.s	sub_92C54
		move.b	#$13,y_radius(a1)
		move.b	#9,x_radius(a1)

locret_92C52:
		rts
; End of function sub_92AD4


; =============== S U B R O U T I N E =======================================


sub_92C54:
		move.b	d0,anim(a1)
		move.w	d0,2+x_pos(a1) ; subpixel x
		move.w	d0,2+y_pos(a1) ; subpixel y
		move.b	d0,obj_control(a1)
		move.b	d0,spindash_flag(a1)
		move.w	d0,x_vel(a1)
		move.w	d0,y_vel(a1)
		move.w	d0,inertia(a1)
		andi.b	#1,status(a1)
		ori.b	#2,status(a1)
		move.b	#2,routine(a1)
		rts
; End of function sub_92C54


; =============== S U B R O U T I N E =======================================


sub_92C88:

		moveq	#0,d0
		move.b	(Debug_object).w,d0
		add.w	d0,d0
		move.w	d0,d1
		lsl.w	#2,d0
		add.w	d1,d0
		move.l	4(a2,d0.w),mappings(a0)
		move.w	8(a2,d0.w),art_tile(a0)
		move.b	(a2,d0.w),mapping_frame(a0)
		rts
; End of function sub_92C88