
; ===============================================================
; ---------------------------------------------------------------
; Message Screen
; ---------------------------------------------------------------

ObjectsBase	= ($FFFFD800+$400)
ObjectsNum	= $10
FontBase	= $B000
FontTBase	= (FontBase/$20)

MessageScreen:

	; Fade out music and screen
	moveq	#$FFFFFFE0,d0
	jsr	PlaySound
	jsr	Pal_FadeFrom
	move	#$2700,sr
	jsr	ClearScreen

MessageScreen_NoFade:

	move	#$2700,sr
	move.w	#$8134,VDP_Ctrl	; DISP-

	; Load Sonic's palette
	lea	PalLoad2,a0
	tst.b	NonNoobMsg
	beq.s	@FF
	lea	PalLoad2_NonNoob,a0
	addq.b	#3,MessageID	; non-noob msg
	sf.b	NonNoobMsg
@FF
	moveq	#3,d0
	jsr	(a0)		; instant load
	moveq	#0,d0
	moveq	#$60/4-1,d1
@0	move.l	d0,(a3)+	; kill the rest of palette
	dbf	d1,@0

	; Kill objects
	lea	ObjectsBase,a0
	moveq	#$400/8-1,d1
@1	move.l	d0,(a0)+
	move.l	d0,(a0)+
	dbf	d1,@1
	
	; Kill sprite buffer
	lea	$FFFFAC00,a0
	move.w	#$400/8-1,d1
@2	move.l	d0,(a0)+
	move.l	d0,(a0)+
	dbf	d1,@2  
	move.l	d0,$FFFFF800
	
	; Decompress font letters 
	vram	(FontBase)
	lea	Nem_CreditText,a0
	jsr	NemDec

; ---------------------------------------------------------------
; Load Message
; ---------------------------------------------------------------

xpos	= 8
ypos	= $A
timer	= $24

	lea	MessageScripts,a0
	lea	ObjectsBase,a1
	moveq	#0,d0
	move.b	MessageID,d0
	add.w	d0,d0		; Msg*2
	adda.w	(a0,d0.w),a0
	move.w	(a0)+,ScreenTime
	moveq	#0,d1		; d1 = initial delay
	move.l	d1,d2

	; Create objects
@LoadObject:
	move.b	(a0)+,d0	; d0 = text id
	bmi.s	@Done
	move.b	#$19,(a1)
	move.l	#Obj_Message,obj(a1)
	move.b	d0,frame(a1)
	moveq	#0,d3
	move.b	(a0)+,d3
	add.w	#$80,d3
	move.w	d3,ypos(a1)
	move.w	#$120,xpos(a1)
	move.b	(a0)+,d2	; d2 = delay
	add.w	d2,d1		; add to overall delay
	move.w	d1,timer(a1)
	lea	$40(a1),a1
	bra.s	@LoadObject

@Done:
	move.w	#$8174,VDP_Ctrl
	
	; Play intro music
	moveq	#$FFFFFFE4,d0
	jsr	PlaySound
	move.b	#2,VBlankSub
	jsr	DelayProgram
	moveq	#-1,d0
	jsr	Set_MegaPCM_Mode
	move.b	#2,VBlankSub
	jsr	DelayProgram
	moveq	#$FFFFFF8E,d0
	jsr	PlaySample

; ---------------------------------------------------------------
; Main Loop
; ---------------------------------------------------------------

MessageLoop:
	move.b	#2,VBlankSub
	jsr	DelayProgram

	moveq	#0,d0
	lea	ObjectsBase,a0
	moveq	#ObjectsNum-1,d7
	jsr	loc_D348
	jsr	BuildSprites

	tst.w	ScreenTime
	bne.s	MessageLoop
	
	moveq	#0,d0
	jmp	Set_MegaPCM_Mode


; ===============================================================
; ---------------------------------------------------------------
; Message Object
; ---------------------------------------------------------------

Obj_Message:
	move.l	#@WaitMessage,obj(a0)
	move.w	#FontTBase+$8000,art(a0)
	move.l	#Map_obj8A,maps(a0)

@WaitMessage:
	subq.w	#1,timer(a0)
	beq.s	@0
	rts

@0	move.l	#DisplaySprite,obj(a0)
	moveq	#$FFFFFF8F,d0
	jmp	PlaySample_2


; ===============================================================
; ---------------------------------------------------------------
; Message Screen Scripts
; ---------------------------------------------------------------
; FORMAT:	MsgID, Ypos, Delay
; ---------------------------------------------------------------

MessageScripts:
	dc.w	@Msg_PassedAct1-MessageScripts
	dc.w	@Msg_PassedAct2-MessageScripts
	dc.w	@Msg_PassedAct3-MessageScripts

	dc.w	@Msg_PassedAct1_NonNoob-MessageScripts
	dc.w	@Msg_PassedAct2_NonNoob-MessageScripts
	dc.w	@Msg_PassedAct3_NonNoob-MessageScripts

	dc.w	@Msg_PassedPingas-MessageScripts

@Msg_PassedAct1:
	dc.w	8*60	; display time
	dc.b	0, $48, 1+180
	dc.b	1, $68, 30
	dc.b	2, $88, 30
	dc.b	-1
	even

@Msg_PassedAct2:
	dc.w	8*60	; display time
	dc.b	0, $48, 1+180
	dc.b	1, $68, 30
	dc.b	3, $88, 30
	dc.b	-1
	even

@Msg_PassedAct3:
	dc.w	8*60	; display time
	dc.b	0, $48, 1+180
	dc.b	1, $68, 30
	dc.b	4, $88, 30
	dc.b	-1
	even

@Msg_PassedAct1_NonNoob:
	dc.w	8*60	; display time
	dc.b	0, $48, 1+180
	dc.b	5, $68, 30
	dc.b	2, $88, 30
	dc.b	-1
	even

@Msg_PassedAct2_NonNoob:
	dc.w	8*60	; display time
	dc.b	0, $48, 1+180
	dc.b	5, $68, 30
	dc.b	3, $88, 30
	dc.b	-1
	even

@Msg_PassedAct3_NonNoob:
	dc.w	8*60	; display time
	dc.b	0, $48, 1+180
	dc.b	5, $68, 30
	dc.b	4, $88, 30
	dc.b	-1
	even

@Msg_PassedPingas:
	dc.w	8*60	; display time
	dc.b	0, $48, 1+180
	dc.b	1, $68, 30
	dc.b	6, $88, 30
	dc.b	-1
	even
