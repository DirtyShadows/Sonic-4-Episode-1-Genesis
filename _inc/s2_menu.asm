;===============================================================================
; Menu do Sonic 2 No Sonic 1 reprogramado por Esrael L. G. Neto
; [ Início ]
;
; O código deste menu foi desenvolvido para funcionar com
; o disassembly do Sonic 1 feito por -> drx (www.hacking-cult.org)
; 
; Se estiver usando um disassembly diferente modifique os jumps no final do 
; código para que aponte para as rotinas equivalentes.
; 
; Para poder utilizar este menu basta fazer a seguinte modificação no código 
; original:
; Localize o label  -> loc_3242 adicione -> jmp     Level_Select_Menu
; O código deve ficar como abaixo
;               ......................
; loc_3242:
;		tst.b	($FFFFFFE0).w
;		beq.w	PlayLevel	
;		btst	#6,($FFFFF604).w 
;		beq.w	PlayLevel	  		
;		jmp     Level_Select_Menu ; <- Carrega o Menu do Sonic 2	
;		moveq	#2,d0		
;		bsr.w	PalLoad		 
;               ...............
;
; Não esqueça de incluir este asm em seu código com a diretiva include:
;               include 's2_menu.asm'
;===============================================================================
;Slow_Motion_Flag		equ	$FFFFFFE1
;Debug_Mode_Flag			equ	$FFFFFFE2

;Level_Select_Menu_snd	=	$0091
;Emerald_Snd				=	$00F7
;Ring_Snd				=	$00B5
;Volume_Down				=	$00E0
;Stop_Sound				=	$00E4
;-------------------------------------------------------------------------------
Level_Select_Menu:
	;	move.b	#Stop_Sound,d0
	;	bsr.w	PlaySound			; stop music
	;	move.b	#$01,($FFFFFFF7).w	; set level select flag
	;	bsr.w	Pal_FadeFrom
	;	move	#$2700,sr
	;	move.w	($FFFFF60C).w,d0
	;	andi.b	#$BF,d0
	;	move.w	d0,($00C00004)
	;	bsr.w	ClearScreen
	;	lea		($00C00004),a6
	;	move.w	#$8004,(a6)
	;	move.w	#$8230,(a6)
	;	move.w	#$8407,(a6)
	;	move.w	#$8230,(a6)
	;	move.w	#$8700,(a6)
	;	move.w	#$8C81,(a6)
	;	move.w	#$9001,(a6)
	;	lea		($FFFFAC00).w,a1
	;	moveq	#$00,d0
	;	move.w	#$00FF,d1

;Offset_0x026ACA:
	;	move.l	d0,(a1)+
	;	dbra	d1,Offset_0x026ACA
	;	lea		($FFFFB000).w,a1
	;	moveq	#$00,d0
	;	move.w	#$07FF,d1

;Offset_0x026ADA:
	;	move.l	d0,(a1)+
	;	dbra	d1,Offset_0x026ADA
	;	clr.w	($FFFFDC00).w
	;	move.l	#$FFFFDC00,($FFFFDCFC).w
	;	move.l	#$42000000,($00C00004)
	;	lea		(Nem_MenuFont),a0
	;	bsr.w	NemDec
	;	move.l	#$52000000,($00C00004)
	;	lea		(Nem_LevelIcons),a0
	;	jsr		NemDec
;-------------------------------------------------------------------------------
; Carrega o Mapeamento do Fundo Sonic/Miles
;-------------------------------------------------------------------------------
	;	lea		($FFFF0000),a1
	;	lea		(Eni_MenuBg),a0
	;	move.w	#$6000,d0
	;	bsr.w	EniDec
	;	lea		($FFFF0000),a1
	;	move.l	#$60000003,d0
	;	moveq	#$27,d1
	;	moveq	#$1B,d2
	;	bsr.w	ShowVDPGraphics
;-------------------------------------------------------------------------------
; Carrega o Texto do Menu de Seleção de Fases
;-------------------------------------------------------------------------------
		lea		($FFFF0000),a3
		move.w	#$045F,d1

Offset_0x026B4E:
		move.w	#$0000,(a3)+
		dbra	d1,Offset_0x026B4E
		lea		($FFFF0000),a3
		lea		(Menu_Level_Select_Text),a1
		lea		(Menu_Text_Positions),a5
		moveq	#$00,d0
		move.w	#$0009,d1	; Quantidade de textos a ser carregada e posição do Sound Test

Menu_Loop_Load_Text:
		move.w	(a5)+,d3
		lea		$00(a3,d3),a2
		moveq	#$00,d2
		move.b	(a1)+,d2
		move.w	d2,d3

Offset_0x026B7A:
		move.b	(a1)+,d0
		move.w	d0,(a2)+
		dbra	d2,Offset_0x026B7A
		move.w	#$000D,d2
		sub.w	d3,d2
		bcs.s	Offset_0x026B92

Offset_0x026B8A:
		move.w	#$0000,(a2)+
		dbra	d2,Offset_0x026B8A

Offset_0x026B92:
		move.w	#$0011,(a2) 	 	 	 ; Load "1"
		lea		$0050(a2),a2
		move.w	#$0012,(a2) 	 	 	 ; Load "2"
		lea		$0050(a2),a2
		move.w	#$0013,(a2) 	 	 	 ; Load "3"
		dbra	d1,Menu_Loop_Load_Text
;-------------------------------------------------------------------------------
		moveq	#$0E,d1
		lea		$FFFFFBA0(a2),a2

Menu_Clear_Act_x:						; Limpa os números dos acts não usados e carrega o "*" do Sound Test
		move.w	#$0000,(a2)				; Load " "
		lea		$0050(a2),a2
		dbra	d1,Menu_Clear_Act_x
;		lea     $FF10(a2), a2
;		move.w  #$001A, (a2)          ; Load "*"
;-------------------------------------------------------------------------------
; Carrega o Mapeamento das Asas onde são mostrados os ícones
;-------------------------------------------------------------------------------
		lea		(Wings_Mappings),a0
		lea		($FFFF0670),a1
		move	#$06,d1
Menu_Loop_Next_Line:
		move	#$09,d0
Menu_Loop_Load_Wings:
		move.w	(a0)+,(a1)+
		dbra	d0,Menu_Loop_Load_Wings
		add.w	#$3C,a1
		dbra	d1,Menu_Loop_Next_Line
;-------------------------------------------------------------------------------
; Carrega o Mapeamento dos ícones
;-------------------------------------------------------------------------------
		lea		($FFFF08C0),a1
		lea		(Eni_LevelIcons),a0
		move.w	#$0090,d0
		bsr.w	EniDec
		lea		($FFFF0000),a1
		move.l	#$40000003,d0
		moveq	#$27,d1
		moveq	#$1B,d2
		bsr.w	ShowVDPGraphics
;-------------------------------------------------------------------------------
		moveq	#$00,d3
		bsr.w	Offset_0x027040
	;	clr.w	($FFFFFF70).w
	;	clr.w	($FFFFFE40).w
	;	clr.b	($FFFFF711).w
	;	clr.w	($FFFFF7F0).w
;-------------------------------------------------------------------------------
		move.w	#$0000,($FFFFF7B8).w	; Inicializa os quadros das animações do menu
		move.w	#$0000,($FFFFF7B9).w	; Inicializa o contador das animações do menu	
		jsr		Dynamic_Menu			; Chama a rotina de animação
;-------------------------------------------------------------------------------

		moveq	#$14,d0
		bsr.w	PalLoad1
		lea		($FFFFFB40).w,a1
		lea		($FFFFFBC0).w,a2
		moveq	#$07,d1

Offset_0x026C26:
		move.l	(a1),(a2)+
		clr.l	(a1)+
		dbra	d1,Offset_0x026C26
		move.b	#Level_Select_Menu_snd,d0
		bsr.w	PlaySound				; play Level Select Menu sound
		moveq	#$00,d0
		jsr		LoadPLC2
		move.w	#$0707,($FFFFF614).w
	;	clr.w	($FFFFFFDC).w
		clr.l	($FFFFEE00).w
		clr.l	($FFFFEE04).w
		clr.w	($FFFFFF0C).w	; clear Debug Mode Code Counter
		clr.w	($FFFFFF0E).w	; clear All Emerald Code Counter
		move.b	#$18,($FFFFF62A).w
		bsr.w	DelayProgram
		move.w	($FFFFF60C).w,d0
		ori.b	#$40,d0
		move.w	d0,($00C00004)
		bsr.w	Pal_FadeTo

Menu_Main_Loop:
		move.b	#$18,($FFFFF62A).w
		bsr.w	DelayProgram
		move	#$2700,sr
		moveq	#$00,d3
		bsr.w	Offset_0x026ED8
		bsr.w	LevSel_S2_Controls
		move.w	#$6000,d3
		bsr.w	Offset_0x027048
		move	#$2300,sr
		jsr		Dynamic_Menu
		bsr.w	RunPLC_RAM
	;	btst	#$04,($FFFFF604).w
	;	beq.s	Offset_0x026CC6
	;	move.w	#$0001,($FFFFFFD8).w

;Offset_0x026CC6:
		move.b	($FFFFF605).w,d0	; get button press
	;	or.b	($FFFFF607).w,d0
		andi.b	#$80,d0				; is Start button pressed?
		bne.s	Offset_0x026CD8		; if yes, branch
		bra.s	Menu_Main_Loop

Offset_0x026CD8:
		move.w	($FFFFFF82).w,d0	; get item selected
		add.w	d0,d0
		move.w	Menu_Level_Select_Array(pc,d0),d0	; load level number
		bmi.s	Menu_Game_Reset		; if sound test was selected, branch
		cmpi.w	#$0600,d0				; ending sequence was selected?
		beq.s	Menu_Ending_Sequence	; if yes, branch
		cmpi.w	#$5555,d0
		beq.s	Menu_Main_Loop
		cmpi.w	#$4000,d0			; Special Stage was selected?
		bne.s	Menu_Load_Level		; if not, branch
		move.b	#$10,($FFFFF600).w	; set screen mode to $10 (Special Stage)
		clr.w	($FFFFFE10).w		; clear level number
		move.b	#3,($FFFFFE12).w	; set lives to 3
	;	move.b	#$03,($FFFFFEC6).w
		moveq	#0,d0
		move.w	d0,($FFFFFE20).w	; clear rings
		move.l	d0,($FFFFFE22).w	; clear time
		move.l	d0,($FFFFFE26).w	; clear score
	;	move.w	d0,($FFFFFED0).w
	;	move.l	d0,($FFFFFED2).w
	;	move.l	d0,($FFFFFED6).w
	;	move.l	#$00001388,($FFFFFFC0).w
	;	move.l	#$00001388,($FFFFFFC4).w
	;	move.w	($FFFFFF72).w,($FFFFFF70).w
		rts

Menu_Game_Reset:
		move.b	#$00,($FFFFF600).w	; set screen mode to 00 (Sega screen)
		rts

Menu_Ending_Sequence:
		move.b	#$0018,($FFFFF600).w	; set screen mode to $18 (Ending Sequence)
		move.w	#$0600,($FFFFFE10).w	; set level number to 0600 (extra flowers)
		rts

Menu_Level_Select_Array:
		dc.w	$0000,$0001,$0002
		dc.w	$0200,$0201,$0202
		dc.w	$0400,$0401,$0402
		dc.w	$0300,$0301,$0302
		dc.w	$0100,$0101,$0102
		dc.w	$0500,$0501,$0103
		dc.w	$0502,$4000,$0600
		dc.w	$FFFF

Menu_Load_Level:
		andi.w	#$3FFF,d0
		move.w	d0,($FFFFFE10).w
		move.b	#$0C,($FFFFF600).w	; set screen mode to $0C (level)
		move.b	#3,($FFFFFE12).w	; set lives to 3
	;	move.b	#$03,($FFFFFEC6).w
		moveq	#0,d0
		move.w	d0,($FFFFFE20).w	; clear rings
		move.l	d0,($FFFFFE22).w	; clear time
		move.l	d0,($FFFFFE26).w	; clear score
	;	move.w	d0,($FFFFFED0).w
	;	move.l	d0,($FFFFFED2).w
	;	move.l	d0,($FFFFFED6).w
		nop
		nop
	;	move.l	#$00001388,($FFFFFFC0).w
	;	move.l	#$00001388,($FFFFFFC4).w
		move.b	#Volume_Down,d0
		bsr.w	PlaySound	 	 	
	;	moveq	#$00,d0
	;	move.w	d0,($FFFFFF8A).w
	;	move.w	d0,($FFFFFFDC).w
		rts

; ---------------------------------------------------------------------------
; Subroutine to	change what you're selecting in the level select
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


LevSel_S2_Controls:
		move.b	($FFFFF605).w,d1	; get button press
		andi.b	#$03,d1				; is up/down pressed and held?
		bne.s	LevSel_S2_UpDown	; if yes, branch
		subq.w	#$01,($FFFFFF80).w	; subtract 1 from time	to next	move
		bpl.s	LevSel_S2_SndTest	; if time remains, branch

LevSel_S2_UpDown:
		move.w	#$B,($FFFFFF80).w	; reset time delay
		move.b	($FFFFF604).w,d1	; read controller
		andi.b	#$3,d1				; is up/down pressed?
		beq.s	LevSel_S2_SndTest	; if not, branch
		move.w	($FFFFFF82).w,d0	; get item selected
		btst	#$0,d1				; is up pressed?
		beq.s	LevSel_S2_Down		; if not, branch
		subq.w	#$1,d0		; move up 1 selection
		bcc.s	LevSel_S2_Down
		moveq	#$15,d0		; Último item após apertar para cima

LevSel_S2_Down:
		btst	#$1,d1				; is down pressed?
		beq.s	LevSel_S2_Refresh	; if not, branch
		addq.w	#$1,d0		; move down 1 selection
		cmpi.w	#$16,d0		; Verifica qual o último item da lista
		bcs.s	LevSel_S2_Refresh
		moveq	#$0,d0		; if selection moves above $15, jump to selection $0

LevSel_S2_Refresh:
		move.w	d0,($FFFFFF82).w	; set new selection
		rts
; ===========================================================================
LevSel_S2_SndTest:
		cmpi.w	#$15,($FFFFFF82).w	; se o item for igual muda as funções de esquerda e direita 
		bne.s	LevSel_S2_Left_Right; if not, branch
		move.w	($FFFFFF84).w,d0	; get sound selected
		move.b	($FFFFF605).w,d1	; get button press
		btst	#$2,d1				; is left pressed?
		beq.s	LevSel_S2_Right		; if not, branch
		subq.b	#$1,d0		; subtract 1 from sound test

LevSel_S2_Right:
		btst	#$3,d1				; is right pressed?
		beq.s	LevSel_S2_Button_A	; if not, branch
		addq.b	#$1,d0		; add 1 to sound test
	;	cmpi.w	#$0080,d0

LevSel_S2_Button_A:
		btst	#$6,d1				; is button A pressed?
		beq.s	LevSel_S2_Refresh2	; if not, branch
		addi.b	#$10,d0		; add $10 to sound test

LevSel_S2_Refresh2:
		move.w	d0,($FFFFFF84).w	; set sound test number
		andi.w	#$30,d1				; B or C pressed?
		beq.s	LevSel_S2_NoMove	; if not, branch
		move.w	($FFFFFF84).w,d0	; get sound selected
		addi.w	#$80,d0		; add $80 to sound selected
		bsr.w	PlaySound			; play music
		lea		(Code_Debug_Mode),a0	; load Debug Mode Code
		lea		(Code_All_Emeralds),a2	; load All Emeralds Code
	;	lea		(Debug_Mode_Flag).w,a1	; load the RAM address of Debug Mode, slow motion & frame advance
		moveq	#1,d2	; flag to tell the routine to enable the Super Sonic cheat and the Debug Mode cheat
		bsr.w	Menu_Code_Test	

LevSel_S2_NoMove:
		rts
; ===========================================================================
LevSel_S2_Left_Right:
		move.b	($FFFFF605).w,d1	; get button press
		andi.b	#$C,d1				; is left/right pressed?
		beq.s	LevSel_S2_NoMove2	; if not, branch
		move.w	($FFFFFF82).w,d0	; set item selected to d0 
		move.b	Menu_Left_Right_Select(pc,d0),d0	; load new item selected number
		move.w	d0,($FFFFFF82).w	; set new item selected number to item selected

LevSel_S2_NoMove2:
		rts
; End of function LevSel_S2_Controls

; ---------------------------------------------------------------------------
; Level select "Left Right" to set new item selected number
; when left or right is pressed
; ---------------------------------------------------------------------------
Menu_Left_Right_Select:			 	
		dc.b	$0F,$10,$11,$12,$12,$12,$13,$13,$13,$14,$14,$14,$15,$15,$15
		dc.b	$00,$01,$02,$03,$06,$09,$0C
		even
; ===========================================================================

Offset_0x026ED8:
		lea		($FFFF0000),a4
		lea		(Menu_Text_Highlight),a5
		lea		($00C00000),a6
		moveq	#$00,d0
		move.w	($FFFFFF82).w,d0
		lsl.w	#$02,d0
		lea		$00(a5,d0),a3
		moveq	#$00,d0
		move.b	(a3),d0
		mulu.w	#$0050,d0
		moveq	#$00,d1
		move.b	$0001(a3),d1
		add.w	d1,d0
		lea		$00(a4,d0),a1
		moveq	#$00,d1
		move.b	(a3),d1
		lsl.w	#$07,d1
		add.b	$0001(a3),d1
		addi.w	#$C000,d1
		lsl.l	#$02,d1
		lsr.w	#$02,d1
		ori.w	#$4000,d1
		swap.w	d1
		move.l	d1,$0004(a6)
		moveq	#$0E,d2		; Quantidade de letras a selecionar (Highlight)

Offset_0x026F28:		
		move.w	(a1)+,d0
		add.w	d3,d0
		move.w	d0,(a6)
		dbra	d2,Offset_0x026F28
		addq.w	#$02,a3
		moveq	#$00,d0
		move.b	(a3),d0
		beq.s	Offset_0x026F6C
		mulu.w	#$0050,d0
		moveq	#$00,d1
		move.b	$0001(a3),d1
		add.w	d1,d0
		lea		$00(a4,d0),a1
		moveq	#$00,d1
		move.b	(a3),d1
		lsl.w	#$07,d1
		add.b	$0001(a3),d1
		addi.w	#$C000,d1
		lsl.l	#$02,d1
		lsr.w	#$02,d1
		ori.w	#$4000,d1
		swap.w	d1
		move.l	d1,$0004(a6)
		move.w	(a1)+,d0
		add.w	d3,d0
		move.w	d0,(a6)

Offset_0x026F6C:
		cmpi.w	#$0015,($FFFFFF82).w		; Se for igual seleciona o número do Sound Test
		bne.s	Offset_0x026F78
		bsr.s	Offset_0x026F7A

Offset_0x026F78:
		rts
;-------------------------------------------------------------------------------
Offset_0x026F7A:
		move.l	#$49C60003,($00C00004)		; Posição dos números do Sound Test
		move.w	($FFFFFF84).w,d0
		move.b	d0,d2
		lsr.b	#$04,d0
		bsr.s	Offset_0x026F90
		move.b	d2,d0

Offset_0x026F90:
		andi.w	#$000F,d0
		cmpi.b	#$0A,d0
		bcs.s	Offset_0x026F9E
		addi.b	#$04,d0

Offset_0x026F9E:
		addi.b	#$10,d0
		add.w	d3,d0
		move.w	d0,(a6)
		rts

; ---------------------------------------------------------------------------
; Subroutine to	code test in the Sound Test
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


;Menu_Code_Test:
	;	lea		(Code_Debug_Mode),a0	; load Debug Mode Code
	;	lea		(Code_All_Emeralds),a2	; load All Emeralds Code
	;	lea		($FFFFFF0A).w,a1
	;	moveq	#$01,d2
	;	move.w	($FFFFFF0C).w,d0
	;	adda.w	d0,a0
	;	move.w	($FFFFFF84).w,d0	; get sound selected
	;	cmp.b	(a0),d0		; does sound selected match the cheat code?
	;	bne.s	Menu_Reset_Debug_Mode_Code_Counter	; if not, branch
	;	addq.w	#$01,($FFFFFF0C).w	; next sound selected
	;	tst.b	$0001(a0)
	;	bpl.s	Menu_All_Emeralds_Code_Test 
	;	move.w	#$0101,(a1)
	;	bra.s	Menu_Set_Debug_Flag 

;Menu_Set_Debug_Flag:
	;	move.b	#$01,(Slow_Motion_Flag).w	; activate slow motion & frame advance cheat flag
	;	move.b	#$01,(Debug_Mode_Flag).w	; activate debug mode cheat flag
	;	move.b	#Ring_Snd,d0
	;	bsr.w	PlaySound		; play ring sound
	;	bra.s	Menu_Reset_All_Emerald_Code_Counter 

;Menu_Reset_Debug_Mode_Code_Counter:
	;	move.w	#0,($FFFFFF0C).w	; reset Debug Mode Code Counter

;Menu_All_Emeralds_Code_Test:
	;	move.w	($FFFFFF0E).w,d0
	;	adda.w	d0,a2
	;	move.w	($FFFFFF84).w,d0	; get sound selected
	;	cmp.b	(a2),d0		; does sound selected match the cheat code?
	;	bne.s	Menu_Reset_All_Emerald_Code_Counter	; if not, branch
	;	addq.w	#$01,($FFFFFF0E).w	; next sound selected
	;	tst.b	$0001(a2)
	;	bpl.s	Menu_Code_Not_0xFF 
	;	tst.w	d2
	;	bne.s	Menu_Set_All_Emeralds 
	;	bra.s	Menu_Set_All_Emeralds

;Menu_Set_All_Emeralds:
	;	move.b	#$06,($FFFFFE57).w	; set number of chaos emeralds to 6
	;	move.b	#Emerald_Snd,d0
	;	bsr.w	PlaySound		; play emerald music

;Menu_Reset_All_Emerald_Code_Counter:
	;	move.w	#0,($FFFFFF0E).w	; reset All Emerald Code Counter

;Menu_Code_Not_0xFF:
	;	rts
; End of function Menu_Code_Test

; ---------------------------------------------------------------------------
; Level	select codes
; ---------------------------------------------------------------------------
;Code_Debug_Mode:
	;	dc.b	$01,$09,$09,$02,$01,$01,$02,$04,$FF
	;	even

;Code_All_Emeralds:
	;	dc.b	$04,$01,$02,$06,$FF
	;	even
; ===========================================================================

Offset_0x027040:
		bsr.w	Offset_0x026F7A
		bra.s	Offset_0x027050

Offset_0x027048:
		bsr.w	Offset_0x026ED8
	;	bra.w	Offset_0x027050

Offset_0x027050:
		move.w	($FFFFFF82).w,d0
		lea		(Menu_Icon_List),a3
		lea		$00(a3,d0),a3
		lea		($FFFF08C0),a1
		moveq	#$00,d0
		move.b	(a3),d0
		lsl.w	#$03,d0
		move.w	d0,d1
		add.w	d0,d0
		add.w	d1,d0
		lea		$00(a1,d0),a1
		move.l	#$4B360003,d0			; Posição Horizontal dos Ícones
		moveq	#$03,d1
		moveq	#$02,d2
		bsr.w	ShowVDPGraphics 
		lea		(Pal_MenuIcon),a1  
		moveq	#$00,d0
		move.b	(a3),d0
		lsl.w	#$05,d0
		lea		$00(a1,d0),a1
		lea		($FFFFFB40).w,a2
		moveq	#$07,d1

Offset_0x027098:
		move.l	(a1)+,(a2)+
		dbra	d1,Offset_0x027098
		rts

; ---------------------------------------------------------------------------
; Subroutine to	Dynamic Menu
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


;Dynamic_Menu:
	;	subq.b	#$01,($FFFFF7B9).w			; Decrementa em 1 o Tempo
	;	bpl.s	Exit_Dinamic_Menu			; Se for maior ou igual a 0 sai da função
	;	move.b	#$07,($FFFFF7B9).w			; Inicializa o tempo de duração de cada frame
	;	move.b	($FFFFF7B8).w,d0			; Carrega o Id do Frame Atual em D0
	;	addq.b	#$01,($FFFFF7B8).w			; Carrega o próximo frame em $FFFFFFB8
	;	andi.w	#$001F,d0
	;	move.b	Sonic_Miles_Frame_Select(pc,d0),d0	; Carrega o Id do frame em D0
	;	muls.w	#$0140,d0			; Multiplica o Id pelo tamanho em bytes de cada frame
	;	lsl.w	#$06,d0
	;	lea		($00C00000),a6
	;	move.l	#$40200000,$0004(a6)
	;	lea		(Art_Sonic_Miles),a1
	;	lea		$00(a1,d0),a1
	;	move.w	#$0009,d0		; Tiles-1 a serem carregados por vez 

;Menu_Loop_Load_Tiles:
	;	move.l	(a1)+,(a6)
	;	move.l	(a1)+,(a6)
	;	move.l	(a1)+,(a6)
	;	move.l	(a1)+,(a6)
	;	move.l	(a1)+,(a6)
	;	move.l	(a1)+,(a6)
	;	move.l	(a1)+,(a6)
	;	move.l	(a1)+,(a6)
	;	dbra	d0,Menu_Loop_Load_Tiles

;Exit_Dinamic_Menu:
	;	rts
; End of function Dynamic_Menu


;-------------------------------------------------------------------------------
;Sonic_Miles_Frame_Select:
	;	dc.b	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	;	dc.b	$05,$0A
	;	dc.b	$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
	;	dc.b	$0A,$05
	;	even
		; 0 = 0000000000  ; 1 = 0101000000  ; 2 = 1010000000 ; 3 = 1111000000

;-------------------------------------------------------------------------------
;	__ = $00
;	_A = $1E
;	_B = $1F
;	_C = $20
;	_D = $21
;	_E = $22    
;	_F = $23
;	_G = $24
;	_H = $25
;	_I = $26
;	_J = $27
;	_K = $28
;	_L = $29
;	_M = $2A
;	_N = $2B
;	_O = $2C
;	_P = $2D
;	_Q = $2E
;	_R = $2F
;	_S = $30
;	_T = $31
;	_U = $32
;	_V = $33
;	_W = $34
;	_X = $35
;	_Y = $36
;	_Z = $37
;	_st = $1A

Menu_Level_Select_Text: 
		dc.b	$0E,_M,_A,_G,_I,_C,__,_F,_O,_R,_E,_S,_T,__,__,__
		dc.b	$0E,_H,_O,_T,__,_T,_R,_A,_P,__,__,__,__,__,__,__
		dc.b	$0E,_L,_O,_S,_T,__,_C,_I,_T,_Y,__,__,__,__,__,__
		dc.b	$0E,_F,_A,_S,_T,__,_R,_A,_C,_E,__,__,__,__,__,__
		dc.b	$0E,_L,_A,_B,_Y,_R,_I,_N,_T,_H,__,__,__,__,__,__
		dc.b	$0E,_S,_C,_R,_A,_P,__,_B,_R,_A,_I,_N,__,__,__,__
		dc.b	$0E,_F,_I,_N,_A,_L,__,__,__,__,__,__,__,__,__,__   
		dc.b	$0E,_S,_P,_E,_C,_I,_A,_L,__,_S,_T,_A,_G,_E,__,__
		dc.b	$0E,_E,_N,_D,_I,_N,_G,__,_S,_E,_Q,_U,_E,_N,_C,_E
		dc.b	$0E,_S,_O,_U,_N,_D,__,_T,_E,_S,_T,__,__,_st,__,__	
		even
;-------------------------------------------------------------------------------
Menu_Text_Highlight:		  
		dc.w	$0306,$0324,$0306,$0424,$0306,$0524
		dc.w	$0706,$0724,$0706,$0824,$0706,$0924
		dc.w	$0B06,$0B24,$0B06,$0C24,$0B06,$0D24
		dc.w	$0F06,$0F24,$0F06,$1024,$0F06,$1124
		dc.w	$1306,$1324,$1306,$1424,$1306,$1524
		dc.w	$032C,$034A,$032C,$044A,$032C,$054A
		dc.w	$072C,$0000,$0B2C,$0000,$0F2C,$0000
		dc.w	$132C,$134A
		even

; ---------------------------------------------------------------------------
Menu_Icon_List: 
		dc.b	$00,$00,$00,$0E,$0E,$0E,$06,$06,$06,$0B,$0B,$0B,$0D,$0D,$0D,$09
		dc.b	$09,$09,$04,$10,$0F,$11
		even

;-------------------------------------------------------------------------------
Menu_Text_Positions:		   
		dc.w	$00F6,$0236,$0376,$04B6,$05F6,$011C,$025C,$039C
		dc.w	$04DC,$061C
		even

;-------------------------------------------------------------------------------
Wings_Mappings:
		dc.w	$6000,$6000,$6000,$604D,$604E,$684E,$684D,$6000,$6000,$6000
;Wings_Line_1:
		dc.w	$604F,$6050,$6051,$6052,$6053,$6853,$6852,$6851,$6850,$684F
;Wings_Line_2:
		dc.w	$6054,$6055,$6056,$6057,$6057,$6057,$6057,$6856,$6855,$6854
;Wings_Line_3:
		dc.w	$6058,$6059,$605A,$6057,$6057,$6057,$6057,$685A,$6859,$6858
;Wings_Line_4:
		dc.w	$605B,$605C,$605D,$6057,$6057,$6057,$6057,$685D,$685C,$685B
;Wings_Line_5:
		dc.w	$6000,$605E,$605F,$6060,$6061,$6062,$6063,$6064,$685E,$6000
;Wings_Line_6:
		dc.w	$6000,$6000,$6065,$6066,$6067,$6867,$6866,$6865,$6000,$6000
		even

;===============================================================================
; Menu do Sonic 2 No Sonic 1 reprogramado por Esrael L. G. Neto
; [ Fim ]
;===============================================================================