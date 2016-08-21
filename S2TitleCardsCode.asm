;===============================================================================
; Objeto 0x34 - Tela com o nome das fases conhecido também conhecido como: 
; [ Início ]         - Splash Screen, Title Cards, etc... 
;===============================================================================                   
Offset_0x013BE4:
                moveq   #$00, D0
                move.b  $0024(A0), D0
                move.w  Offset_0x013BF2(PC, D0), D1
                jmp     Offset_0x013BF2(PC, D1)
Offset_0x013BF2:
                dc.w    Offset_0x013C0A-Offset_0x013BF2
                dc.w    Offset_0x013CBE-Offset_0x013BF2
                dc.w    Offset_0x013CF4-Offset_0x013BF2
                dc.w    Offset_0x013D42-Offset_0x013BF2
                dc.w    Offset_0x013D78-Offset_0x013BF2
                dc.w    Offset_0x013D84-Offset_0x013BF2
                dc.w    Offset_0x013D8A-Offset_0x013BF2
                dc.w    Offset_0x013DDE-Offset_0x013BF2
                dc.w    Offset_0x013E20-Offset_0x013BF2
                dc.w    Offset_0x013E82-Offset_0x013BF2
                dc.w    Offset_0x013E98-Offset_0x013BF2
                dc.w    Offset_0x013EB2-Offset_0x013BF2
Offset_0x013C0A:
                lea     (A0), A1
                lea     Title_Cards_Settings(PC), A2           ; Offset_0x013C70
                moveq   #$05, D1
Offset_0x013C12:
                move.b  #$34, $0000(A1)
                move.b  (A2)+, $0024(A1)
                move.l  #Map_Obj34_S2, $0004(A1)       ; Offset_0x014758
                move.b  (A2)+, $001A(A1)
                move.b  (A2)+, $0019(A1)
                move.b  (A2)+, $001E(A1)
                move.w  (A2), $0008(A1)
                move.w  (A2)+, $0032(A1)
                move.w  (A2)+, $0030(A1)
                move.w  (A2)+, $000A(A1)
                move.b  #$00, $0001(A1)
                lea     $0040(A1), A1
                dbra    D1, Offset_0x013C12
                move.w  #$0026, ($FFFFD1B4).w
                clr.w   ($FFFFF616).w
                move.w  #$FF20, ($FFFFF61E).w
                lea     ($FFFFCC00).w, A1
                moveq   #$00, D0
                move.w  #$00FF, D1
Offset_0x013C68:
                move.l  D0, (A1)+
                dbra    D1, Offset_0x013C68
                rts
;-------------------------------------------------------------------------------                
Title_Cards_Settings: ; Offset_0x013C70:
                dc.b    $08, $00, $80, $1B
                dc.w    $0240, $0120, $00B8
                dc.b    $0A, $11, $40, $1C    ; $11 -> Posição do "ZONE" no ponteiro de mapeamentos
                dc.w    $0028, $0148, $00D0
                dc.b    $0C, $12, $18, $1C    ; $12 -> Posição do "1" "2" "3" no ponteiro de mapeamentos
                dc.w    $0068, $0188, $00D0
                dc.b    $02, $00, $00, $00
                dc.w    $0000, $0000, $0000
                dc.b    $04, $15, $48, $08    ; $15 -> Posição do "SONIC THE HEDGEHOG" no ponteiro de mapeamentos
                dc.w    $02A8, $0168, $0120
                dc.b    $06, $16, $08, $15    ; $16 -> Posição da Barra Vermelha Serrilhada no ponteiro de mapeamentos
                dc.w    $0080, $00F0, $00F0         
;-------------------------------------------------------------------------------   
Offset_0x013CAC:
                subq.b  #$01, $001E(A0)
                bne.s   Offset_0x013CBA
                move.b  #$01, $001E(A0)
                rts
Offset_0x013CBA:
                addq.w  #$04, A7
                rts
Offset_0x013CBE:
                moveq   #$10, D0
                moveq   #$08, D1
;                tst.w   (Two_Player_Flag).w                          ; $FFFFFFB8
                sne     D6
 ;               beq.s   Offset_0x013CCE
 ;               moveq   #$20, D0
  ;              moveq   #$07, D1
Offset_0x013CCE:
                move.w  $0034(A0), D2
                cmp.w   D0, D2
                beq.s   Offset_0x013CF2
                lsl.w   D1, D2
                move.w  #$C000, D0
                add.w   D2, D0
                move.w  D0, $0036(A0)
                tst.b   D6
                beq.s   Offset_0x013CEE
                addi.w  #$A000, D2
                move.w  D2, $0038(A0)
Offset_0x013CEE:
                addq.w  #$01, $0034(A0)
Offset_0x013CF2:
                rts
Offset_0x013CF4:
                jsr     Offset_0x013CAC(PC)
                move.w  $0034(A0), D0
                bmi     Offset_0x013DB8
                add.w   D0, D0
                move.w  #$0500, D1
;                tst.w   (Two_Player_Flag).w                          ; $FFFFFFB8
                sne     D6
 ;               bne.s   Offset_0x013D10
                add.w   D1, D1
Offset_0x013D10:
                move.w  #$C000, D2
                add.w   D0, D2
                add.w   D1, D2
                move.w  D2, $0036(A0)
                tst.b   D6
                beq.s   Offset_0x013D2A
                addi.w  #$A000, D1
                add.w   D0, D1
                move.w  D1, $0038(A0)
Offset_0x013D2A:
                subq.w  #$02, $0034(A0)
                move.w  $0034(A0), $003A(A0)
                cmpi.w  #$0006, $0034(A0)
                seq     $0034(A0)
                bra     Offset_0x013DB8
Offset_0x013D42:
                jsr     Offset_0x013CAC(PC)
                tst.w   $0034(A0)
                bmi     Offset_0x013DB8
                move.w  #$C000, $0036(A0)
                tst.w   ($FFFFFFB8).w
                beq.s   Offset_0x013D60
                move.w  #$A000, $0038(A0)
Offset_0x013D60:
                addq.w  #$02, $0034(A0)
                move.w  $0034(A0), $003A(A0)
                cmpi.w  #$000E, $0034(A0)
                seq     $0034(A0)
                bra     Offset_0x013DB8
Offset_0x013D78:
                jsr     Offset_0x013CAC(PC)
                move.b  ($FFFFFE10).w, $001A(A0)                      ; $FFFFFE10
                bra.s   Offset_0x013DB8
Offset_0x013D84:
                jsr     Offset_0x013CAC(PC)
                bra.s   Offset_0x013DB8
Offset_0x013D8A:
                jsr     Offset_0x013CAC(PC)
                move.b  ($FFFFFE10).w, D0                             ; $FFFFFE10
                cmpi.b  #$10, D0
                beq.s   Offset_0x013DDA
                cmpi.b  #$06, D0
                beq.s   Offset_0x013DDA
                cmpi.b  #$0E, D0
                beq.s   Offset_0x013DDA
                move.b  ($FFFFFE11).w, D1                               ; $FFFFFE11
                addi.b  #$12, D1
                cmpi.b  #$05, D0
                bne.s   Offset_0x013DB4
                moveq   #$14, D1
Offset_0x013DB4:
                move.b  D1, $001A(A0)
Offset_0x013DB8:
                moveq   #$10, D0
                move.w  $0008(A0), D1
                cmp.w   $0030(A0), D1
                beq.s   Offset_0x013DD4
                bhi.s   Offset_0x013DC8
                neg.w   D0
Offset_0x013DC8:
                sub.w   D0, $0008(A0)
                cmpi.w  #$0200, $0008(A0)
                bhi.s   Offset_0x013DD8
Offset_0x013DD4:
                bra     DisplaySprite                          ; Offset_0x01647A
Offset_0x013DD8:
                rts
Offset_0x013DDA:
                bra     DeleteObject                           ; Offset_0x01646C
Offset_0x013DDE:
                move.w  $0034(A0), D0
                bpl.s   Offset_0x013DF0
                move.b  #$10, $FFFFFFE4(A0)
                clr.w   $FFFFFFF4(A0)
                bra.s   Offset_0x013DDA
Offset_0x013DF0:
                add.w   D0, D0
                move.w  #$C000, $0036(A0)
                add.w   D0, $0036(A0)
                tst.w   ($FFFFFFB8).w
                beq.s   Offset_0x013E0C
                move.w  #$A000, $0038(A0)
                add.w   D0, $0038(A0)
Offset_0x013E0C:
                subq.w  #$04, $0034(A0)
                cmpi.w  #$FFFE, $0034(A0)
                bne.s   Offset_0x013E1C
                clr.w   $0034(A0)
Offset_0x013E1C:
                bra     Offset_0x013E60
Offset_0x013E20:
                move.w  $0034(A0), D0
                cmpi.w  #$0028, D0
                bne.s   Offset_0x013E32
                move.b  #$12, $FFFFFFE4(A0)
                bra.s   Offset_0x013DDA
Offset_0x013E32:
                add.w   D0, D0
                move.w  #$0500, D1
 ;               tst.w   (Two_Player_Flag).w                          ; $FFFFFFB8
                sne     D6
  ;              bne.s   Offset_0x013E42
                add.w   D1, D1
Offset_0x013E42:
                move.w  #$C000, D2
                add.w   D0, D2
                add.w   D1, D2
                move.w  D2, $0036(A0)
                tst.b   D6
                beq.s   Offset_0x013E5C
                addi.w  #$A000, D1
                add.w   D0, D1
                move.w  D1, $0038(A0)
Offset_0x013E5C:
                addq.w  #$04, $0034(A0)
Offset_0x013E60:
                moveq   #$20, D0
                move.w  $0008(A0), D1
                cmp.w   $0032(A0), D1
                beq.s   Offset_0x013E80
                bhi.s   Offset_0x013E70
                neg.w   D0
Offset_0x013E70:
                sub.w   D0, $0008(A0)
                cmpi.w  #$0200, $0008(A0)
                bhi.s   Offset_0x013E80
                bra     DisplaySprite                          ; Offset_0x01647A
Offset_0x013E80:
                rts
Offset_0x013E82:
                move.l  A0, -(A7)
                move.l  D7, -(A7)
                bsr     BGScrollSpeed                ; Offset_0x00C3AC
                move.l  (A7)+, D7
                move.l  (A7)+, A0
                addq.b  #$02, $0024(A0)
                move.w  #$00F0, $0034(A0)
Offset_0x013E98:
                move.w  $0034(A0), D0
                subi.w  #$0020, D0
                cmpi.w  #$FFD0, D0
                beq     Offset_0x013DDA
                move.w  D0, $0034(A0)
                move.w  D0, $0036(A0)
                rts
Offset_0x013EB2:
                tst.w   $001E(A0)
                beq.s   Offset_0x013EBE
                subq.w  #$01, $001E(A0)
                bra.s   Offset_0x013EDA
Offset_0x013EBE:
                moveq   #$20, D0
                move.w  $0008(A0), D1
                cmp.w   $0032(A0), D1
                beq.s   Offset_0x013EDE
                bhi.s   Offset_0x013ECE
                neg.w   D0
Offset_0x013ECE:
                sub.w   D0, $0008(A0)
                cmpi.w  #$0200, $0008(A0)
                bhi.s   Offset_0x013EDE
Offset_0x013EDA:
                bra     DisplaySprite                          ; Offset_0x01647A
Offset_0x013EDE:
                cmpa.w  #$D080, A0
                bne.s   Offset_0x013EFC
				moveq	#2,d0
				jsr	(LoadPLC).l	; load explosion patterns
				moveq	#0,d0
				move.b	($FFFFFE10).w,d0
				addi.w	#$15,d0
				jsr	(LoadPLC).l	; load animal patterns
Offset_0x013EFC:
                bra     DeleteObject 