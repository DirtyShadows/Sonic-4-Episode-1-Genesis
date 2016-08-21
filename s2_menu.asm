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
; Para pode utilizar este menu basta fazer a seguinte modificação no código 
; original:
; Localize o label  -> loc_3242 adicione -> jmp     Level_Select_Menu
; O código deve ficar como abaixo
;               ......................
; loc_3242:
;		tst.b	($FFFFFFD0).w
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
;Slow_Motion_Flag      equ $FFFFFFD1
;Debug_Mode_Flag       equ $FFFFFFD2

Main_Menu_Snd   = $0010
Emerald_Snd             = $002B
Ring_Snd                = $0033
Volume_Down             = $00E1
Stop_Sound              = $00E0
;-------------------------------------------------------------------------------
; Options and Level Select Code from Sonic 2 Rev02 (Sonic Classics Version) 
;-------------------------------------------------------------------------------
MenuScreen:
Main_Menu_Screen: ; Offset_0x008B50:   
                jsr     Pal_FadeFrom                           ; Offset_0x002426
                move    #$2700, SR
                move.w  ($FFFFF60C).w, D0
                andi.b  #$BF, D0                                     ; $00C00004
                move.w  D0, ($00C00004)
                jsr     ClearScreen                            ; Offset_0x0011C4
                lea     ($00C00004), A6                       ; $00C00004
                move.w  #$8004, (A6)
                move.w  #$8230, (A6)
                move.w  #$8407, (A6)
                move.w  #$8230, (A6)
                move.w  #$8700, (A6)
                move.w  #$8C81, (A6)
                move.w  #$9001, (A6)
                lea     ($FFFFAC00).w, A1
                moveq   #$00, D0
                move.w  #$00FF, D1
Offset_0x008B96:
                move.l  D0, (A1)+
                dbra    D1, Offset_0x008B96
                lea     ($FFFFD000).w, A1
                moveq   #$00, D0
                move.w  #$07FF, D1
Offset_0x008BA6:
                move.l  D0, (A1)+
                dbra    D1, Offset_0x008BA6
                clr.w   ($FFFFC800).w
                move.l  #$FFFFC800, ($FFFFC8FC).w
                move.l  #$42000000, ($00C00004)               ; $00C00004
                lea     (Nem_MenuFont), A0                        ; Offset_0x07C43A
                jsr     NemDec                             ; Offset_0x00149A
                move.l  #$4E000000, ($00C00004)               ; $00C00004
                lea     (Menu_Frame), A0                       ; Offset_0x07D990
                jsr     NemDec                             ; Offset_0x00149A
                move.l  #$52000000, ($00C00004)               ; $00C00004
                lea     (Level_Icons), A0                      ; Offset_0x07DA10
                jsr     NemDec                             ; Offset_0x00149A
                lea     ($FFFF0000), A1
                lea     (Versus_Menu_Bg_Mappings), A0          ; Offset_0x07CB80
                move.w  #$6000, D0
                jsr     EniDec                              ; Offset_0x00177A
                lea     ($FFFF0000), A1
                move.l  #$60000003, D0
                moveq   #$27, D1
                moveq   #$1B, D2
                jsr     (ShowVDPGraphics)                      ; Offset_0x0013CA
                cmpi.b  #$2C, ($FFFFF600).w         ; $24, $FFFFF600
				beq     Options_Menu                           ; Offset_0x008F56
				jmp    	Level_Select_Menu                ; Offset_0x00928C
Offset_0x008F48:
                moveq   #$00, D1
                move.b  (A1)+, D1
Offset_0x008F4C:
                move.b  (A1)+, D0
                move.w  D0, (A2)+
                dbra    D1, Offset_0x008F4C
                rts                
;===============================================================================                
Options_Menu: ; Offset_0x008F56:
                lea     ($FFFF0000), A1
                lea     (Options_Frame_Mappings), A0           ; Offset_0x009A60
                move.w  #$0070, D0
                jsr     EniDec                              ; Offset_0x00177A
                lea     ($FFFF0160), A1
                lea     (Options_Frame_Mappings), A0           ; Offset_0x009A60
                move.w  #$2070, D0
                jsr     EniDec                              ; Offset_0x00177A
                clr.b   ($FFFFFF8C).w
                bsr     Offset_0x009118
                addq.b  #$01, ($FFFFFF8C).w
                bsr     Offset_0x00918C
                addq.b  #$01, ($FFFFFF8C).w
                bsr     Offset_0x00918C
                clr.b   ($FFFFFF8C).w
                clr.b   ($FFFFF711).w
                clr.w   ($FFFFF7F0).w
                lea     (Menu_Animate), A2                     ; Offset_0x00874E
                jsr     (Dynamic_Normal)                       ; Offset_0x03FC78
                moveq   #$14, D0
                jsr     PalLoad1                               ; Offset_0x0026CE
                move.b  #Main_Menu_Snd, D0      ; $91
                jsr     (PlaySound_Special)                           ; Offset_0x00131A
;                clr.w   (Two_Player_Flag).w                          ; $FFFFFFB8
                clr.l   ($FFFFF700).w
                clr.l   ($FFFFF704).w
                clr.w   ($FFFFFFE4).w
                clr.w   ($FFFFFFE6).w
                move.b  #$16, ($FFFFF62A).w                       ; $FFFFF62A
                jsr     DelayProgram                           ; Offset_0x00333E
                move.w  ($FFFFF60C).w, D0
                ori.b   #$40, D0
                move.w  D0, ($C00004)                       ; $00C00004
                jsr     Pal_FadeTo                             ; Offset_0x002382
Offset_0x008FEE:
                move.b  #$16, ($FFFFF62A).w                       ; $FFFFF62A
                jsr     DelayProgram                           ; Offset_0x00333E
                move    #$2700, SR
                bsr     Offset_0x00918C
                bsr     Offset_0x009070
                bsr     Offset_0x009118
                move    #$2300, SR
                lea     (Menu_Animate), A2                     ; Offset_0x00874E
                jsr     (Dynamic_Normal)                       ; Offset_0x03FC78
                move.b  ($FFFFF605).w, D0
                or.b    ($FFFFF607).w, D0
                andi.b  #$80, D0
                bne.s   Menu_Go_Play_Mode                      ; Offset_0x00902A
                bra     Offset_0x008FEE
Menu_Go_Play_Mode: ; Offset_0x00902A:
                move.b  ($FFFFFF8C).w, D0
                bne.s   Menu_Go_Versus_Mode                    ; Offset_0x009046
                moveq   #$00, D0
;                move.w  D0, (Two_Player_Flag).w                      ; $FFFFFFB8
                move.w  D0, ($FFFFFF8A).w
                move.w  D0, ($FFFFFE10).w                             ; $FFFFFE10
                move.b  #$0C, ($FFFFF600).w             ; $0C, $FFFFF600
                rts
Menu_Go_Versus_Mode: ; Offset_0x009046:
                subq.b  #$01, D0
                bne.s   Offset_0x009068
                moveq   #$01, D0
  ;              move.w  D0, (Two_Player_Flag).w      ; $FFFFFFB8
                move.w  D0, ($FFFFFF8A).w
                move.b  #$3C, ($FFFFF600).w     ; $1C, $FFFFF600
                move.b  #$00, ($FFFFFF88).w
                move.w  #$0000, ($FFFFFF7A).w
                rts
Offset_0x009068:
                move.b  #$00, ($FFFFF600).w     ; $FFFFF600
                rts
Offset_0x009070:
                moveq   #$00, D2
                move.b  ($FFFFFF8C).w, D2
                move.b  ($FFFFF605).w, D0
                or.b    ($FFFFF607).w, D0
                btst    #$00, D0
                beq.s   Offset_0x00908C
				jsr		Sound_Select_Options
                subq.b  #$01, D2
                bcc.s   Offset_0x00908C
                move.b  #$02, D2
Offset_0x00908C:
                btst    #$01, D0
                beq.s   Offset_0x00909C
				jsr		Sound_Select_Options
                addq.b  #$01, D2
                cmpi.b  #$03, D2
                bcs.s   Offset_0x00909C
                moveq   #$00, D2
Offset_0x00909C:
                move.b  D2, ($FFFFFF8C).w
                lsl.w   #$02, D2
                move.b  Menu_Options_Boundaries(PC, D2), D3    ; Offset_0x00910C
                move.l  Menu_Options_Boundaries(PC, D2), A1    ; Offset_0x00910C
                move.w  (A1), D2                      
                btst    #$02, D0
                beq.s   Offset_0x0090B8
                subq.b  #$01, D2
                bcc.s   Offset_0x0090B8
                move.b  D3, D2
Offset_0x0090B8:
                btst    #$03, D0
                beq.s   Offset_0x0090C6
                addq.b  #$01, D2
                cmp.b   D3, D2
                bls.s   Offset_0x0090C6
                moveq   #$00, D2
Offset_0x0090C6:
                btst    #button_A, D0
                beq.s   Offset_0x0090C6_2
				addi.b  #$10, D2
				jmp		Offset_0x0090C6_3
Offset_0x0090C6_2:
				btst	#button_B,d0
				beq.s	Offset_0x0090D6
				subi.b	#$10,d2
Offset_0x0090C6_3: 
                cmp.b   D3, D2
                bls.s   Offset_0x0090D6
                moveq   #$00, D2
Offset_0x0090D6:
                move.w  D2, (A1)
                cmpi.b  #$02, ($FFFFFF8C).w
                bne.s   Offset_0x00910A
                andi.w	#button_C_mask,d0
                beq.s   Offset_0x00910A
                move.w  ($FFFFFF84).w, D0                     ; $FFFFFF64
				jsr     (PlaySound_Special)                           ; Offset_0x00131A
                lea     (Code_Level_Select), A0                ; Offset_0x00975C
                lea     (Code_14_Continues), A2                ; Offset_0x009762
                lea     ($FFFFFFD0).w, A1
                moveq   #$00, D2
                bsr     Offset_0x0096EA
Offset_0x00910A:
                rts
;-------------------------------------------------------------------------------                 
Menu_Options_Boundaries: ; Offset_0x00910C:
		dc.l (3-1)<<24|($FFFFFF74&$FFFFFF)
		dc.l (2-1)<<24|(Level_Music+4&$FFFFFF)
		dc.l ($FF)<<24|(Sound_test_sound&$FFFFFF)  
;------------------------------------------------------------------------------- 
Offset_0x009118:
                bsr     Offset_0x0091FE
                moveq   #$00, D1
                move.b  ($FFFFFF8C).w, D1
                lsl.w   #$03, D1
                lea     (Menu_Options_Idx), A3                 ; Offset_0x009250
                lea     $00(A3, D1), A3
                move.w  #$6000, D0
                lea     ($FFFF0030), A2
                move.l  (A3)+, A1
                bsr     Offset_0x008F48
                lea     ($FFFF00B6), A2
                moveq   #$00, D1
                cmpi.b  #$02, ($FFFFFF8C).w
                beq.s   Offset_0x009160
                move.b  ($FFFFFF8C).w, D1
                lsl.w   #$02, D1
                lea     Menu_Options_Boundaries(PC), A1        ; Offset_0x00910C
                move.l  $00(A1, D1), A1
                move.w  (A1), D1
                lsl.w   #$02, D1
Offset_0x009160:
                move.l  $00(A4, D1), A1
                bsr     Offset_0x008F48
                cmpi.b  #$02, ($FFFFFF8C).w
                bne.s   Offset_0x00917A
                lea     ($FFFF00C2), A2
                bsr     Offset_0x00922C
Offset_0x00917A:
                lea     ($FFFF0000), A1
                move.l  (A3)+, D0
                moveq   #$15, D1
                moveq   #$07, D2
                jmp     (ShowVDPGraphics)                      ; Offset_0x0013CA
Offset_0x00918C:
                bsr     Offset_0x0091FE
                moveq   #$00, D1
                move.b  ($FFFFFF8C).w, D1
                lsl.w   #$03, D1
                lea     (Menu_Options_Idx), A3                 ; Offset_0x009250
                lea     $00(A3, D1), A3
                moveq   #$00, D0
                lea     ($FFFF0190), A2
                move.l  (A3)+, A1
                bsr     Offset_0x008F48
                lea     ($FFFF0216), A2
                moveq   #$00, D1
                cmpi.b  #$02, ($FFFFFF8C).w
                beq.s   Offset_0x0091D2
                move.b  ($FFFFFF8C).w, D1
                lsl.w   #$02, D1
                lea     Menu_Options_Boundaries(PC), A1        ; Offset_0x00910C
                move.l  $00(A1, D1), A1
                move.w  (A1), D1
                lsl.w   #$02, D1
Offset_0x0091D2:
                move.l  $00(A4, D1), A1
                bsr     Offset_0x008F48
                cmpi.b  #$02, ($FFFFFF8C).w
                bne.s   Offset_0x0091EC
                lea     ($FFFF0222), A2
                bsr     Offset_0x00922C
Offset_0x0091EC:
                lea     ($FFFF0160), A1
                move.l  (A3)+, D0
                moveq   #$15, D1
                moveq   #$07, D2
                jmp     (ShowVDPGraphics)                      ; Offset_0x0013CA
Offset_0x0091FE:
               lea     (Map_Player_Select_Jap_Idx), A4        ; Offset_0x009268
               tst.b   ($FFFFFFF8).w                              ; $FFFFFFD8
               bpl.s   Offset_0x009210
               lea     (Map_Player_Select_Idx), A4            ; Offset_0x009274
Offset_0x009210:
                tst.b   ($FFFFFF8C).w
                beq.s   Offset_0x00921C
                lea     (Map_Vs_Mode_Items_Idx), A4            ; Offset_0x009280
Offset_0x00921C:
                cmpi.b  #$02, ($FFFFFF8C).w
                bne.s   Offset_0x00922A
                lea     (Map_Sound_Test_Idx), A4               ; Offset_0x009288
Offset_0x00922A:
                rts
Offset_0x00922C:
                move.w  ($FFFFFF84).w, D1                     ; $FFFFFF64
                move.b  D1, D2
                lsr.b   #$04, D1
                bsr.s   Offset_0x009238
                move.b  D2, D1
Offset_0x009238:
                andi.w  #$000F, D1
                cmpi.b  #$0A, D1
                bcs.s   Offset_0x009246
                addi.b  #$04, D1
Offset_0x009246:
                addi.b  #$10, D1
                move.b  D1, D0
                move.w  D0, (A2)+
                rts
;-------------------------------------------------------------------------------                
Menu_Options_Idx: ; Offset_0x009250:
                dc.l    Map_Player_Select_Caption              ; Offset_0x009778
                dc.w    $4192, $0003
                dc.l    Map_Vs_Mode_Items_Caption              ; Offset_0x0097DA       
                dc.w    $4592, $0003
                dc.l    Map_Sound_Test_Caption                 ; Offset_0x00980C   
                dc.w    $4992, $0003  
;-------------------------------------------------------------------------------                
Map_Player_Select_Jap_Idx: ; Offset_0x009268: 
                dc.l    Map_Sonic_And_Miles                    ; Offset_0x00978A                 
                dc.l    Map_Sonic_Alone                        ; Offset_0x0097AA  
                dc.l    Map_Miles_Alone                        ; Offset_0x0097BA 
;-------------------------------------------------------------------------------                
Map_Player_Select_Idx: ; Offset_0x009274  
                dc.l    Map_Sonic_And_Tails                    ; Offset_0x00979A 
                dc.l    Map_Sonic_Alone                        ; Offset_0x0097AA
                dc.l    Map_Tails_Alone                        ; Offset_0x0097CA               
;-------------------------------------------------------------------------------                
Map_Vs_Mode_Items_Idx: ; Offset_0x009280:  
                dc.l    Map_All_Kinds_Items                    ; Offset_0x0097EC  
                dc.l    Map_Teleport_Only                      ; Offset_0x0097FC
;-------------------------------------------------------------------------------                
Map_Sound_Test_Idx: ; Offset_0x009288:          
                dc.l    Map_Sound_Test_Sound                   ; Offset_0x00981E
;===============================================================================

Level_Select_Menu: ; Offset_0x00928C:
                lea     ($FFFF0000), A1
                lea     (Menu_Level_Select_Text), A0           ; Offset_0x009A8C
                move.w  #$0000, D0
                jsr     EniDec                              ; Offset_0x00177A
                lea     ($FFFF0000), A1
                move.l  #$40000003, D0
                moveq   #$27, D1
                moveq   #$1B, D2
                jsr     (ShowVDPGraphics)                      ; Offset_0x0013CA
                moveq   #$00, D3
                bsr     Offset_0x0095FC
                lea     ($FFFF08C0), A1
                lea     (Menu_Icons_Mappings), A0              ; Offset_0x009BE0
                move.w  #$0090, D0
                jsr     EniDec                              ; Offset_0x00177A
                bsr     Menu_Display_Icon                      ; Offset_0x00962A
                clr.w   ($FFFFFF7A).w
                clr.w   ($FFFFFF10).w
                clr.b   ($FFFFF711).w
                clr.w   ($FFFFF7F0).w
                lea     (Menu_Animate), A2                     ; Offset_0x00874E
                jsr     (Dynamic_Normal)                       ; Offset_0x03FC78
                moveq   #$14, D0
                jsr     PalLoad1                               ; Offset_0x0026CE
                lea     ($FFFFFB40).w, A1
                lea     ($FFFFFBC0).w, A2
                moveq   #$07, D1
Offset_0x009300:
                move.l  (A1), (A2)+
                clr.l   (A1)+
                dbra    D1, Offset_0x009300
                move.b  #$0F, D0      ; $91
                jsr     (PlaySound_Special)                           ; Offset_0x00131A
                move.w  #$0707, ($FFFFF614).w
;               clr.w   (Two_Player_Flag).w                          ; $FFFFFFB8
                clr.l   ($FFFFF700).w
                clr.l   ($FFFFF704).w
                clr.w   ($FFFFFF0C).w
                clr.w   ($FFFFFF0E).w
                move.b  #$16, ($FFFFF62A).w                       ; $FFFFF62A
                jsr     DelayProgram                           ; Offset_0x00333E
                move.w  ($FFFFF60C).w, D0
                ori.b   #$40, D0
                move.w  D0, ($00C00004)                       ; $00C00004
                jsr     Pal_FadeTo                             ; Offset_0x002382
Level_Select_Menu_Main_Loop: ; Offset_0x009348:
                move.b  #$16, ($FFFFF62A).w                       ; $FFFFF62A
                jsr     DelayProgram                           ; Offset_0x00333E
                move    #$2700, SR
                moveq   #$00, D3
                bsr     Offset_0x00955A
                bsr     Offset_0x00947C
                move.w  #$6000, D3
                bsr     Offset_0x00955A
                bsr     Menu_Display_Icon                      ; Offset_0x00962A
                move    #$2300, SR
                lea     (Menu_Animate), A2                     ; Offset_0x00874E
                jsr     (Dynamic_Normal)                       ; Offset_0x03FC78
                move.b  ($FFFFF605).w, D0
                or.b    ($FFFFF607).w, D0
                andi.b  #$80, D0
                bne.s   Offset_0x00938E
                bra     Level_Select_Menu_Main_Loop            ; Offset_0x009348
Offset_0x00938E:
                move.w  ($FFFFFF82).w, D0
                add.w   D0, D0
                move.w  Menu_Level_Select_Array(PC, D0), D0    ; Offset_0x0093F2
                bmi     Menu_Game_Reset                        ; Offset_0x0093EA
                cmpi.w  #$0600, D0
                beq     Menu_Test_Stage
                cmpi.w  #$4000, D0
                bne.w   Menu_Load_Level                        ; Offset_0x00941E
                move.b  #$10, ($FFFFF600).w         ; $10, $FFFFF600
                clr.w   ($FFFFFE10).w                                 ; $FFFFFE10
                jsr (LoadLivesLS).l
;				move.b  #$03, ($FFFFFEC6).w
                moveq   #$00, D0
                move.w  D0, ($FFFFFE20).w
                move.l  D0, ($FFFFFE22).w
                move.l  D0, ($FFFFFE26).w
                move.w  D0, ($FFFFFED0).w
                move.l  D0, ($FFFFFED2).w
                move.l  D0, ($FFFFFED6).w
                move.l  #$00001388, ($FFFFFFC0).w
;               move.l  #$00001388, ($FFFFFFC4).w
                move.w  ($FFFFFF7C).w, ($FFFFFF7A).w
                rts
Menu_Game_Reset: ; Offset_0x0093EA:
                move.b  #$00, ($FFFFF600).w           ; $00, $FFFFF600
                rts
Menu_Test_Stage:
;                move.b	#$0018,($FFFFF600).w
;				move.w	#$0701,($FFFFFE10).w
				jsr		Menu_Load_Level
				rts
;-------------------------------------------------------------------------------                
Menu_Level_Select_Array: ; Offset_0x0093F2:
                dc.w    $0000, $0001, $0002
                dc.w    $0100, $0101, $0102
                dc.w    $0200, $0201, $0202
                dc.w    $0300, $0301, $0302
                dc.w    $0400, $0401, $0402
                dc.w    $0500, $0501, $0103
                dc.w    $0502, $4000, $0701
                dc.w    $FFFF
;------------------------------------------------------------------------------- 
Menu_Load_Level: ; Offset_0x00941E:
                andi.w  #$3FFF, D0
                move.w  D0, ($FFFFFE10).w                             ; $FFFFFE10
                move.b  #$0C, ($FFFFF600).w             ; $0C, $FFFFF600
                jsr (LoadLivesLS).l
;                move.b  #$03, ($FFFFFEC6).w
                moveq   #$00, D0
                move.w  D0, ($FFFFFE20).w
                move.l  D0, ($FFFFFE22).w
                move.l  D0, ($FFFFFE26).w
                move.w  D0, ($FFFFFED0).w
                move.l  D0, ($FFFFFED2).w
                move.l  D0, ($FFFFFED6).w
                move.b  D0, ($FFFFFE18).w
                move.l  #$00001388, ($FFFFFFC0).w
;				move.l  #$00001388, ($FFFFFFC4).w
                move.b  #Volume_Down, D0        ; $F9
                jsr     (PlaySound)                             ; Offset_0x00132C
                moveq   #$00, D0
                move.w  D0, ($FFFFFF8A).w
                move.w  D0, ($FFFFFFE8).w
                rts 
;------------------------------------------------------------------------------- 
Offset_0x00947C:
                move.b  ($FFFFF605).w, D1
                andi.b  #$03, D1
                bne.s   Offset_0x00948C
                subq.w  #$01, ($FFFFFF80).w
                bpl.s   Offset_0x0094C2
Offset_0x00948C:
;                move.w  #$000B, ($FFFFFF80).w
				btst	#6,(Graphics_Flags).w
				bne.s	Offset_0x00948C_2
				move.w  #$000B, ($FFFFFF80).w
				bra.w	Offset_0x00948C_3
Offset_0x00948C_2:
				move.w  #$0009, ($FFFFFF80).w
Offset_0x00948C_3:
                move.b  ($FFFFF604).w, D1
                andi.b  #button_up_mask|button_down_mask, D1
                beq.s   Offset_0x0094C2
				jsr		Sound_Select_Options
                move.w  ($FFFFFF82).w, D0
                btst    #$00, D1
                beq.s   Offset_0x0094AC
                subq.w  #$01, D0
                bcc.s   Offset_0x0094AC
                moveq   #$15, D0
Offset_0x0094AC:
                btst    #$01, D1
                beq.s   Offset_0x0094BC
                addq.w  #$01, D0
                cmpi.w  #$0016, D0
                bcs.s   Offset_0x0094BC
                moveq   #$00, D0
Offset_0x0094BC:
                move.w  D0, ($FFFFFF82).w
                rts
Offset_0x0094C2:
                cmpi.w  #$0015, ($FFFFFF82).w
                bne.s   Offset_0x00952C
                move.w  ($FFFFFF84).w, D0                     ; $FFFFFF64
                move.b  ($FFFFF605).w, D1
                btst    #$02, D1
                beq.s   Offset_0x0094DE
                subq.b  #$01, D0
;                bcc.w   Offset_0x0094DE
        ;        moveq   #$7F, D0
Offset_0x0094DE:
                btst    #$03, D1
                beq.s   Offset_0x0094EE
                addq.b  #$01, D0
   ;             cmpi.w  #$0080, D0
  ;              bcs.s   Offset_0x0094EE
 ;               moveq   #$00, D0
Offset_0x0094EE:
	btst	#button_A,d1
	beq.s	Offset_0x0094EE_2
	addi.b	#$10,d0
Offset_0x0094EE_2:
	btst	#button_B,d1
	beq.s	Offset_0x0094FC
	subi.b	#$10,d0
;	andi.b	#$FF,d0

Offset_0x0094FC:
                move.w  D0, ($FFFFFF84).w                     ; $FFFFFF64
                andi.w  #button_C_mask, D1
                beq.s   Offset_0x00952A
                move.w  ($FFFFFF84).w, D0                     ; $FFFFFF64
                jsr     (PlaySound)                           ; Offset_0x00131A
                lea     (Code_Debug_Mode), A0                  ; Offset_0x009768
                lea     (Code_All_Emeralds), A2                ; Offset_0x009772
                lea     ($FFFFFFD0).w, A1
                moveq   #$01, D2
                bsr     Offset_0x0096EA
Offset_0x00952A:
                rts
Offset_0x00952C:
                move.b  ($FFFFF605).w, D1
                andi.b  #$0C, D1
                beq.s   Offset_0x009542
				jsr		Sound_Select_Options
                move.w  ($FFFFFF82).w, D0
                move.b  Menu_Left_Right_Select(PC, D0), D0     ; Offset_0x009544
                move.w  D0, ($FFFFFF82).w
Offset_0x009542:
                rts
;-------------------------------------------------------------------------------
Menu_Left_Right_Select: ; Offset_0x009544:
                dc.b    $0F, $10, $11, $12, $12, $12, $13, $13, $13, $14, $14, $14, $15, $15, $15
                dc.b    $00, $01, $02, $03, $06, $09, $0C                                                               
;-------------------------------------------------------------------------------  
Offset_0x00955A:
                lea     ($FFFF0000), A4
                lea     (Menu_Text_Highlight), A5              ; Offset_0x009692
                lea     ($00C00000), A6                          ; $00C00000
                moveq   #$00, D0
                move.w  ($FFFFFF82).w, D0
                lsl.w   #$02, D0
                lea     $00(A5, D0), A3
                moveq   #$00, D0
                move.b  (A3), D0
                mulu.w  #$0050, D0
                moveq   #$00, D1
                move.b  $0001(A3), D1
                add.w   D1, D0
                lea     $00(A4, D0), A1
                moveq   #$00, D1
                move.b  (A3), D1
                lsl.w   #$07, D1
                add.b   $0001(A3), D1
                addi.w  #$C000, D1
                lsl.l   #$02, D1
                lsr.w   #$02, D1
                ori.w   #$4000, D1
                swap.w  D1
                move.l  D1, $0004(A6)
                moveq   #$0D, D2
Offset_0x0095AA:
                move.w  (A1)+, D0
                add.w   D3, D0
                move.w  D0, (A6)
                dbra    D2, Offset_0x0095AA
                addq.w  #$02, A3
                moveq   #$00, D0
                move.b  (A3), D0
                beq.s   Offset_0x0095EE
                mulu.w  #$0050, D0
                moveq   #$00, D1
                move.b  $0001(A3), D1
                add.w   D1, D0
                lea     $00(A4, D0), A1
                moveq   #$00, D1
                move.b  (A3), D1
                lsl.w   #$07, D1
                add.b   $0001(A3), D1
                addi.w  #$C000, D1
                lsl.l   #$02, D1
                lsr.w   #$02, D1
                ori.w   #$4000, D1
                swap.w  D1
                move.l  D1, $0004(A6)
                move.w  (A1)+, D0
                add.w   D3, D0
                move.w  D0, (A6)
Offset_0x0095EE:
                cmpi.w  #$0015, ($FFFFFF82).w
                bne.s   Offset_0x0095FA
                bsr     Offset_0x0095FC
Offset_0x0095FA:
                rts       
;------------------------------------------------------------------------------- 
Offset_0x0095FC:
                move.l  #$49C40003, ($00C00004) ; Posição dos números do Sound Test
                move.w  ($FFFFFF84).w, D0                     ; $FFFFFF64
                move.b  D0, D2
                lsr.b   #$04, D0
                bsr.s   Offset_0x009612
                move.b  D2, D0
Offset_0x009612:
                andi.w  #$000F, D0
                cmpi.b  #$0A, D0
                bcs.s   Offset_0x009620
                addi.b  #$04, D0
Offset_0x009620:
                addi.b  #$10, D0
                add.w   D3, D0
                move.w  D0, (A6)
                rts
Offset_0x0096EA:
                move.w  ($FFFFFF0C).w, D0
                adda.w  D0, A0
                move.w  ($FFFFFF84).w, D0                     ; $FFFFFF64
                cmp.b   (A0), D0
                bne.s   Offset_0x009710
                addq.w  #$01, ($FFFFFF0C).w
                tst.b   $0001(A0)
                bne.s   Offset_0x009716
                move.l  #$01010101, (A1)
				move.w	(A1),($FFFFFFD0).w	; activate slow motion & frame advance cheat flag
				move.b	#$01,($FFFFFFD2).w	; activate debug mode cheat flag
				move.b	#$01,($FFFFFFFA).w	; activate debug mode cheat flag
                move.b  #$33, D0           ; $B5
                jsr     (PlaySound_Special)                             ; Offset_0x00132C
Offset_0x009710:
                move.w  #$0000, ($FFFFFF0C).w
Offset_0x009716:
                move.w  ($FFFFFF0E).w, D0
                adda.w  D0, A2
                move.w  ($FFFFFF84).w, D0                     ; $FFFFFF64
                cmp.b   (A2), D0
                bne.s   Offset_0x009754
                addq.w  #$01, ($FFFFFF0E).w
                tst.b   $0001(A2)
                bne.s   Offset_0x00975A
                tst.w   D2
                bne.s   Offset_0x009744
                move.b  #$0F, ($FFFFFE18).w
                move.b  #$BF, D0 ; $3F - Referência incorreta
                jsr     (PlaySound_Special)                           ; Offset_0x00131A
                bra.s   Offset_0x009754
Offset_0x009744:
				move.b	#1,(SRAM_access_flag).l		; enable SRAM (required)
				move.b	#$6,(Emeralds_flag).w	; set number of chaos emeralds to 6
				move.b	#$6,($200121).l
				move.w	#$0102,(Emeralds_flag+1).w	; set number of chaos emeralds to 6
				move.b	#$1,($200123).l
				move.w	#$0304,(Emeralds_flag+3).w	; set number of chaos emeralds to 6	
				move.b	#$2,($200125).l
				move.b	#$05,(Emeralds_flag+5).w	; set number of chaos emeralds to 6
				move.b	#$3,($200127).l
				move.b	#$4,($200129).l
				move.b	#$5,($20012B).l
				move.b	#0,(SRAM_access_flag).l		; enable SRAM (required)
                move.b  #Emerald_Snd, D0        ; $9D
                jsr     (PlaySound_Special)                           ; Offset_0x00131A
Offset_0x009754:
                move.w  #$0000, ($FFFFFF0E).w
Offset_0x00975A:
                rts
;-------------------------------------------------------------------------------                    
Code_Level_Select: ;  Offset_0x00975C:
                dc.b    $19, $65, $09, $17, $00, $00
;-------------------------------------------------------------------------------                 
Code_14_Continues: ; Offset_0x009762:
                dc.b    $01, $01, $02, $04, $00, $00
;-------------------------------------------------------------------------------                  
Code_Debug_Mode: ; Offset_0x009768:
                dc.b    $01, $09, $09, $02, $01, $01, $02, $04, $00, $00
;-------------------------------------------------------------------------------                 
Code_All_Emeralds: ; Offset_0x009772:
                dc.b    $04, $01, $02, $06, $00, $00
;-------------------------------------------------------------------------------  
__ = $00
_0 = $10
_1 = $11
_2 = $12
_3 = $13
_4 = $14
_5 = $15
_6 = $16
_7 = $17
_8 = $18
_9 = $19
_A = $1E
_B = $1F
_C = $20
_D = $21
_E = $22    
_F = $23
_G = $24
_H = $25
_I = $26
_J = $27
_K = $28
_L = $29
_M = $2A
_N = $2B
_O = $2C
_P = $2D
_Q = $2E
_R = $2F
_S = $30
_T = $31
_U = $32
_V = $33
_W = $34
_X = $35
_Y = $36
_Z = $37
_st = $1A

Map_Player_Select_Caption: ; Offset_0x009778:
                dc.b    $10
                dc.b    _st,__,_P,_L,_A,_Y,_E,_R,__,_S,_E,_L,_E,_C,_T,__,_st                   
Map_Sonic_And_Miles: ; Offset_0x00978A: 
                dc.b    $0E
                dc.b    _S,_O,_N,_I,_C,__,_A,_N,_D,__,_M,_I,_L,_E,_S 
Map_Sonic_And_Tails: ; Offset_0x00979A: 
                dc.b    $0E
                dc.b    _S,_O,_N,_I,_C,__,_A,_N,_D,__,_T,_A,_I,_L,_S   
Map_Sonic_Alone: ; Offset_0x0097AA:
                dc.b    $0E
                dc.b    __,__,__,__,_N,_U,_L,_L,__,__,__,__,__,__,__
Map_Miles_Alone: ; Offset_0x0097BA:
                dc.b    $0E
                dc.b    __,__,__,__,_N,_U,_L,_L,__,__,__,__,__,__,__
Map_Tails_Alone: ; Offset_0x0097CA:
                dc.b    $0E
                dc.b    __,__,__,__,_N,_U,_L,_L,__,__,__,__,__,__,__
;-------------------------------------------------------------------------------     
Map_Vs_Mode_Items_Caption: ; Offset_0x0097DA:
                dc.b    $10
                dc.b    _st,_A,_L,_T,_E,_R,_N,_A,_T,_E,__,_M,_U,_S,_I,_C,_st  
Map_All_Kinds_Items: ; Offset_0x0097EC:  
                dc.b    $0E
                dc.b    __,__,__,__,__,__,_O,_F,_F,__,__,__,__,__,__
Map_Teleport_Only: ; Offset_0x0097FC:
                dc.b    $0E
                dc.b    __,__,__,__,__,__,_O,_N,__,__,__,__,__,__,__
;-------------------------------------------------------------------------------   
Map_Sound_Test_Caption: ; Offset_0x00980C:
                dc.b    $10
                dc.b    _st,__,__,_S,_O,_U,_N,_D,__,_T,_E,_S,_T,__,__,__,_st
Map_Sound_Test_Sound: ; Offset_0x00981E:   
                dc.b    $0E
                dc.b    __,__,__,__,__,__,_0,_0,__,__,__,__,__,__,__   
;-------------------------------------------------------------------------------                               
Menu_Display_Icon: ; Offset_0x00962A:
                move.w  ($FFFFFF82).w, D0
                lea     (Menu_Icon_List), A3                   ; Offset_0x00967C
                lea     $00(A3, D0), A3
                lea     ($FFFF08C0), A1
                moveq   #$00, D0
                move.b  (A3), D0
                lsl.w   #$03, D0
                move.w  D0, D1
                add.w   D0, D0
                add.w   D1, D0
                lea     $00(A1, D0), A1
                move.l  #$4B360003, D0
                moveq   #$03, D1
                moveq   #$02, D2
                jsr     (ShowVDPGraphics)                      ; Offset_0x0013CA
                lea     (Pal_Levels_Icons), A1                 ; Offset_0x00982E
                moveq   #$00, D0
                move.b  (A3), D0
                lsl.w   #$05, D0
                lea     $00(A1, D0), A1
                lea     ($FFFFFB40).w, A2
                moveq   #$07, D1
Offset_0x009674:
                move.l  (A1)+, (A2)+
                dbra    D1, Offset_0x009674
                rts

;--------------------------------------------------------------------------------
Dynamic_Normal: 
		lea	($FFFFF7F0).w,a3 
loc_3BD74: 
		move.w	(a2)+,d6
Dynamic_Normal_Loop: 
		subq.b	#1,(a3)
		bcc.s	loc_3BDBC
		moveq	#0,d0
		move.b	1(a3),d0
		cmp.b	6(a2),d0
		bcs.s	loc_3BD8C
		moveq	#0,d0
		move.b	d0,1(a3)
loc_3BD8C:
		addq.b	#1,1(a3)
		move.b	(a2),(a3)
		bpl.s	loc_3BD9A
		add.w	d0,d0
		move.b	9(a2,d0),(a3)
loc_3BD9A:
		move.b	8(a2,d0),d0
		lsl.w	#5,d0
		move.w	4(a2),d2
		move.l	(a2),d1
		and.l	#$FFFFFF,d1
		add.l	d0,d1
		moveq	#0,d3
		move.b	7(a2),d3
		lsl.w	#4,d3
		jsr	QueueDMATransfer 
loc_3BDBC:
		move.b	6(a2),d0
		tst.b	(a2)
		bpl.s	loc_3BDC6
		add.b	d0,d0
loc_3BDC6:
		addq.b	#1,d0
		and.w	#$FE,d0
		lea	8(a2,d0),a2
		addq.w	#2,a3
		dbra	d6,dynamic_Normal_Loop 
		rts

Menu_Animate: ; Offset_0x00874E:  
	dc.w   0
; Sonic/Miles animated background
	dc.l ($FF<<$18)|Sonic_Miles
	dc.w $20
	dc.b 5
	dc.b $A
	dc.b   0,0
	dc.b  $A,  5	; 2
	dc.b $14,  5	; 4
	dc.b $1E,  5	; 10
	dc.b   0,0
Pal_Levels_Icons: ; Offset_0x00982E:                
                incbin  'data\menus\lvsicons.pal'
Menu_Palette:
                incbin  'data\menu\menu.pal'
;-------------------------------------------------------------------------------                  
Menu_Icon_List: ; Offset_0x00967C:
                dc.b    $00, $00, $00, $08, $08, $08, $02, $02, $02, $06, $06, $06, $07, $07, $07, $04
                dc.b    $04, $04, $01, $0C, $0B, $0E  
;-------------------------------------------------------------------------------  
Menu_Text_Highlight: ; Offset_0x009692: 
                dc.w    $0306, $0324, $0306, $0424, $0306, $0524, $0706, $0724
                dc.w    $0706, $0824, $0706, $0924, $0B06, $0B24, $0B06, $0C24
                dc.w    $0B06, $0D24, $0F06, $0F24, $0F06, $1024, $0F06, $1124
                dc.w    $1306, $1324, $1306, $1424, $1306, $1524, $032C, $034A
                dc.w    $032C, $044A, $032C, $054A, $072C, $0000, $0B2C, $0000
                dc.w    $0F2C, $0F48, $132C, $1348                  

;-------------------------------------------------------------------------------
;Nem_MenuFont:                                                    ; Offset_0x07C43A:
 ;               incbin  'data\sprites\menufont.nem'  
Menu_Frame:                                                   ; Offset_0x07D990:
                incbin  'data\menus\menu_frm.nem'  
Level_Icons:
                incbin  'data\menus\levelico.nem' 
Menu_Icons_Mappings: ; Offset_0x009BE0: 
                incbin  'data\menus\iconsmap.eni'   
Versus_Menu_Bg_Mappings:                                      ; Offset_0x07CB80:
                INCBIN	'data\menu\menubg.eni'     
;-------------------------------------------------------------------------------                 
Menu_Level_Select_Text: ; Offset_0x009A8C:
                incbin  'data\menus\menutext.eni'  
Sonic_Miles:                                                  ; Offset_0x07CD2C: 
                incbin  'data\menu\soncmils.bin'         
;-------------------------------------------------------------------------------   
Options_Frame_Mappings: ; Offset_0x009A60:
                incbin  'data\menus\optframe.eni'