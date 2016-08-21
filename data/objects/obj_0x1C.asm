;=============================================================================== 
; Object 0x1C - Bridge,Support,Hill Top Posts... 
; [ Begin ]
;===============================================================================	
loc_EEF0:
		moveq	#0,d0
		move.b	$24(a0),d0
		move.w	loc_EEFE(pc,d0),d1
		jmp	loc_EEFE(pc,d1)
loc_EEFE:
		dc.w	loc_EFC0-loc_EEFE
		dc.w	loc_F008-loc_EEFE	
loc_EF02:	
		dc.l	Mz_Misc_Mappings	
		dc.w	$43FD
		dc.b	4,$6
		dc.l	($1<<$18)|Mz_Misc_Mappings	
		dc.w	$43FD
		dc.b	4,$6
		dc.l	($1<<$18)|GHz_Bridge_Mappings 
		dc.w	$43B6
		dc.b	4,$1
		dc.l	($2<<$18)|Mz_Misc_Mappings	
		dc.w	$23FD
		dc.b	$10,$6
		dc.l	($3<<$18)|Teleferics_Mappings 
		dc.w	$43E6
		dc.b	8,$4
		dc.l	($4<<$18)|Teleferics_Mappings 
		dc.w	$43E6
		dc.b	8,$4
		dc.l	($1<<$18)|Teleferics_Mappings 
		dc.w	$43E6
		dc.b	$20,$1
		dc.l	HTz_Misc_Mappings	
		dc.w	$4000
		dc.b	8,$1
		dc.l	($1<<$18)|HTz_Misc_Mappings 
		dc.w	$4000
		dc.b	8,$1
		dc.l	$F10A
		dc.w	$4428
		dc.b	4,$4
		dc.l	OOz_Misc_Mappings	
		dc.w	$4346
		dc.b	4,$4
		dc.l	($1<<$18)|OOz_Misc_Mappings 
		dc.w	$4346
		dc.b	4,$4	
		dc.l	($2<<$18)|OOz_Misc_Mappings 
		dc.w	$4346
		dc.b	4,$4
		dc.l	($3<<$18)|OOz_Misc_Mappings 
		dc.w	$4346
		dc.b	4,$4
		dc.l	($4<<$18)|OOz_Misc_Mappings 
		dc.w	$4346
		dc.b	4,$4
		dc.l	($5<<$18)|OOz_Misc_Mappings 
		dc.w	$4346
		dc.b	4,$4
		dc.l	OOz_Misc_Mappings_01	
		dc.w	$4346
		dc.b	$18,$4
		dc.l	($1<<$18)|OOz_Misc_Mappings_01 
		dc.w	$4346
		dc.b	$18,$4
		dc.l	($2<<$18)|OOz_Misc_Mappings_01 
		dc.w	$4346
		dc.b	8,$4
		dc.l	($3<<$18)|OOz_Misc_Mappings_01 
		dc.w	$4346
		dc.b	8,$4
		dc.l	($4<<$18)|OOz_Misc_Mappings_01 
		dc.w	$4346
		dc.b	8,$4
loc_EFAA:	
		dc.w	0,0,0,0,0,0,$30,$4060
		dc.w	0,$3040,$5000	
loc_EFC0:
		addq.b	#2,$24(a0)
		moveq	#0,d0
		move.b	$28(a0),d0
		move.w	d0,d1
		lsl.w	#3,d0
		lea	loc_EF02(pc),a1
		lea	0(a1,d0),a1
		move.b	(a1),$1A(a0)
		move.l	(a1)+,4(a0)
		move.w	(a1)+,2(a0)
		bsr	ModifySpriteAttr_2P	
		or.b	#4,1(a0)
		move.b	(a1)+,$19(a0)
		move.b	(a1)+,$18(a0)
		lea	loc_EFAA(pc),a1
		move.b	0(a1,d1),d1
		beq.s	loc_F008
		move.b	d1,$16(a0)
		bset	#4,1(a0)
loc_F008:
		bra	MarkObjGone	
;=============================================================================== 
; Object 0x1C - Bridge,Support,Hill Top Posts... 
; [ End ]
;===============================================================================	
