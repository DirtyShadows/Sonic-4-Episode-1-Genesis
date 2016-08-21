;=============================================================================== 
; Object 0x67 - Metropolis - Teleport Attributes
; [ Begin ]	
;===============================================================================
loc_22F10:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_22F38(pc,d0),d1
		jsr	loc_22F38(pc,d1)
		move.b	$2C(a0),d0
		add.b	$36(a0),d0
		beq	loc_23340
		lea	(Teleporte_Animate_Data),a1 
		bsr	loc_2333A
		bra	loc_23334
loc_22F38:
		dc.w	loc_22F3C-loc_22F38
		dc.w	loc_22F60-loc_22F38
loc_22F3C:
		addq.b	#2,$24(a0)
		move.l	#Teleport_Mappings,4(a0) 
		move.w	#$656B,2(a0)
		or.b	#4,1(a0)
		move.b	#$10,$19(a0)
		move.b	#5,$18(a0)
loc_22F60:
		lea	($FFFFB000).w,a1
		lea	$2C(a0),a4
		bsr.s	loc_22F72
		lea	($FFFFB040).w,a1
		lea	$36(a0),a4
loc_22F72:
		moveq	#0,d0
		move.b	(a4),d0
		move.w	loc_22F7E(pc,d0),d0
		jmp	loc_22F7E(pc,d0)
loc_22F7E:
		dc.w	loc_22F84-loc_22F7E
		dc.w	loc_23014-loc_22F7E
		dc.w	loc_23048-loc_22F7E
loc_22F84:
		tst.w	($FFFFFE08).w
		bne	loc_23012
		move.w	8(a1),d0
		sub.w	8(a0),d0
		addq.w	#3,d0
		btst	#0,$22(a0)
		beq.s	loc_22FA2
		add.w	#$A,d0
loc_22FA2:
		cmp.w	#$10,d0
		bcc.s	loc_23012
		move.w	$C(a1),d1
		sub.w	$C(a0),d1
		add.w	#$20,d1
		cmp.w	#$40,d1
		bcc.s	loc_23012
		tst.b	$2A(a1)
		bne.s	loc_23012
		addq.b	#2,(a4)
		move.b	#$81,$2A(a1)
		move.b	#2,$1C(a1)
		move.w	#$800,$14(a1)
		move.w	#0,$10(a1)
		move.w	#0,$12(a1)
		bclr	#5,$22(a0)
		bclr	#5,$22(a1)
		bset	#1,$22(a1)
		move.w	8(a0),8(a1)
		move.w	$C(a0),$C(a1)
		clr.b	1(a4)
		move.w	#$BE,d0
		jsr	Play_Sfx	
		move.w	#$100,$1C(a0)
loc_23012:
		rts
loc_23014:
		move.b	1(a4),d0
		addq.b	#2,1(a4)
		jsr	CalcSine	
		asr.w	#5,d0
		move.w	$C(a0),d2
		sub.w	d0,d2
		move.w	d2,$C(a1)
		cmp.b	#$80,1(a4)
		bne.s	loc_23046
		bsr	loc_230C4
		addq.b	#2,(a4)
		move.w	#$BC,d0
		jsr	Play_Sfx	
loc_23046:
		rts
loc_23048:
		subq.b	#1,2(a4)
		bpl.s	loc_2307C
		move.l	6(a4),a2
		move.w	(a2)+,d4
		move.w	d4,8(a1)
		move.w	(a2)+,d5
		move.w	d5,$C(a1)
		tst.b	$28(a0)
		bpl.s	loc_23066
		subq.w	#8,a2
loc_23066:
		move.l	a2,6(a4)
		subq.w	#4,4(a4)
		beq.s	loc_230A2
		move.w	(a2)+,d4
		move.w	(a2)+,d5
		move.w	#$1000,d2
		bra	loc_23128
loc_2307C:
		move.l	8(a1),d2
		move.l	$C(a1),d3
		move.w	$10(a1),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d2
		move.w	$12(a1),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d3
		move.l	d2,8(a1)
		move.l	d3,$C(a1)
		rts
loc_230A2:
		and.w	#$7FF,$C(a1)
		clr.b	(a4)
		clr.b	$2A(a1)
		btst	#4,$28(a0)
		bne.s	loc_230C2
		move.w	#0,$10(a1)
		move.w	#0,$12(a1)
loc_230C2:
		rts
loc_230C4:
		move.b	$28(a0),d0
		bpl.s	loc_230F8
		neg.b	d0
		and.w	#$F,d0
		add.w	d0,d0
		lea	(Teleport_From_To_Data),a2 
		adda.w	0(a2,d0),a2
		move.w	(a2)+,d0
		subq.w	#4,d0
		move.w	d0,4(a4)
		lea	0(a2,d0),a2
		move.w	(a2)+,d4
		move.w	d4,8(a1)
		move.w	(a2)+,d5
		move.w	d5,$C(a1)
		subq.w	#8,a2
		bra.s	loc_2311C
loc_230F8:
		and.w	#$F,d0
		add.w	d0,d0
		lea	(Teleport_From_To_Data),a2 
		adda.w	0(a2,d0),a2
		move.w	(a2)+,4(a4)
		subq.w	#4,4(a4)
		move.w	(a2)+,d4
		move.w	d4,8(a1)
		move.w	(a2)+,d5
		move.w	d5,$C(a1)
loc_2311C:
		move.l	a2,6(a4)
		move.w	(a2)+,d4
		move.w	(a2)+,d5
		move.w	#$1000,d2
loc_23128:
		moveq	#0,d0
		move.w	d2,d3
		move.w	d4,d0
		sub.w	8(a1),d0
		bge.s	loc_23138
		neg.w	d0
		neg.w	d2
loc_23138:
		moveq	#0,d1
		move.w	d5,d1
		sub.w	$C(a1),d1
		bge.s	loc_23146
		neg.w	d1
		neg.w	d3
loc_23146:
		cmp.w	d0,d1
		bcs.s	loc_23178
		moveq	#0,d1
		move.w	d5,d1
		sub.w	$C(a1),d1
		swap.w	d1
		divs.w	d3,d1
		moveq	#0,d0
		move.w	d4,d0
		sub.w	8(a1),d0
		beq.s	loc_23164
		swap.w	d0
		divs.w	d1,d0
loc_23164:
		move.w	d0,$10(a1)
		move.w	d3,$12(a1)
		tst.w	d1
		bpl.s	loc_23172
		neg.w	d1
loc_23172:
		move.w	d1,2(a4)
		rts
loc_23178:
		moveq	#0,d0
		move.w	d4,d0
		sub.w	8(a1),d0
		swap.w	d0
		divs.w	d2,d0
		moveq	#0,d1
		move.w	d5,d1
		sub.w	$C(a1),d1
		beq.s	loc_23192
		swap.w	d1
		divs.w	d0,d1
loc_23192:
		move.w	d1,$12(a1)
		move.w	d2,$10(a1)
		tst.w	d0
		bpl.s	loc_231A0
		neg.w	d0
loc_231A0:
		move.w	d0,2(a4)
		rts	
;-------------------------------------------------------------------------------
Teleport_From_To_Data: 
		dc.w	loc_231C0-Teleport_From_To_Data
		dc.w	loc_231DA-Teleport_From_To_Data
		dc.w	loc_231E4-Teleport_From_To_Data
		dc.w	loc_231FE-Teleport_From_To_Data
		dc.w	loc_23208-Teleport_From_To_Data
		dc.w	loc_23212-Teleport_From_To_Data
		dc.w	loc_2322C-Teleport_From_To_Data
		dc.w	loc_23246-Teleport_From_To_Data
		dc.w	loc_23260-Teleport_From_To_Data
		dc.w	loc_2327A-Teleport_From_To_Data
		dc.w	loc_23294-Teleport_From_To_Data
		dc.w	loc_232AE-Teleport_From_To_Data
		dc.w	loc_232C8-Teleport_From_To_Data
loc_231C0:
		dc.w	$18,$7A8,$270,$750,$270,$740,$280,$740
		dc.w	$3E0,$750,$3F0,$7A8,$3F0
loc_231DA:
		dc.w	8,$C58,$5F0,$E28,$5F0
loc_231E4:
		dc.w	$18,$1828,$6B0,$17D0,$6B0,$17C0,$6C0,$17C0
		dc.w	$7E0,$17B0,$7F0,$1758,$7F0
loc_231FE:
		dc.w	8,$5D8,$370,$780,$370
loc_23208:
		dc.w	8,$5D8,$5F0,$700,$5F0
loc_23212:
		dc.w	$18,$BD8,$1F0,$C30,$1F0,$C40,$1E0,$C40
		dc.w	$C0,$C50,$B0,$CA8,$B0
loc_2322C:
		dc.w	$18,$1728,$330,$15D0,$330,$15C0,$320,$15C0
		dc.w	$240,$15D0,$230,$1628,$230
loc_23246:
		dc.w	$18,$6D8,$1F0,$730,$1F0,$740,$1E0,$740
		dc.w	$100,$750,$F0,$7A8,$F0
loc_23260:
		dc.w	$18,$7D8,$330,$828,$330,$840,$340,$840
		dc.w	$458,$828,$470,$7D8,$470
loc_2327A:
		dc.w	$18,$FD8,$3B0,$1028,$3B0,$1040,$398,$1040
		dc.w	$2C4,$1058,$2B0,$10A8,$2B0
loc_23294:
		dc.w	$18,$FD8,$4B0,$1028,$4B0,$1040,$4C0,$1040
		dc.w	$5D8,$1058,$5F0,$10A8,$5F0
loc_232AE:
		dc.w	$18,$2058,$430,$20A8,$430,$20C0,$418,$20C0
		dc.w	$2C0,$20D0,$2B0,$2128,$2B0
loc_232C8:
		dc.w	$18,$2328,$5B0,$22D0,$5B0,$22C0,$5A0,$22C0
		dc.w	$4C0,$22D0,$4B0,$2328,$4B0	
;-------------------------------------------------------------------------------
Teleporte_Animate_Data: 
		dc.w	loc_232E6-Teleporte_Animate_Data
		dc.w	loc_232E9-Teleporte_Animate_Data
loc_232E6:
		dc.b	$1F,0,$FF
loc_232E9:
		dc.b	1,1,0,0,0,0,0,1,0,0,0,1,0,0,1,$0
		dc.b	$FE,2,$0	
;-------------------------------------------------------------------------------
Teleport_Mappings: 
		dc.w	loc_23300-Teleport_Mappings
		dc.w	loc_23302-Teleport_Mappings
loc_23300:
		dc.w	$0
loc_23302:
		dc.w	$6
		dc.l	$E0050000,$FFEC,$E0050000,$FFF8
		dc.l	$F0050000,$FFEC,$F0050000,$FFF8
		dc.l	$50000,$FFEC,$50000,$FFF8	
;=============================================================================== 
; Object 0x67 - Metropolis - Teleport Attributes
; [ End ]	
;===============================================================================	