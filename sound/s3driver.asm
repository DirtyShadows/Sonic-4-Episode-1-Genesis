;===============================================================================
; Sonic 3 Sound Driver port by Esrael L. G. Neto
; 
; Parte do código Z80 foi modificado para que o Driver, Os DAC Samples,
; As músicas pudessem serem colocadas em qualquer lugar do Rom desde que
; respeitando os intervalos dos bancos.
;
; Um som não pode começar em um banco e terminar no outro.
;===============================================================================
Sound_Driver:      
                nop
                move.w  #$0100, ($00A11100)     ; Z80 bus request - Start  
                move.w  #$0100, ($00A11200)     ; Z80 stop reset
;-------------------------------------------------------------------------------                
                lea     (Driver_Data), A0                   
                lea     ($00A00000), A1
                move.w  #Driver_Data_End-Driver_Data, D0
Loop_Load_Driver:                
                move.b  (A0)+, (A1)+  
                dbra    D0, Loop_Load_Driver
;------------------------------------------------------------------------------- 
                lea     (Driver_Pointers), A0
                lea     ($00A01300), A1
                move.w  #Driver_Pointers_End-Driver_Pointers, D0
Loop_Load_Driver_Pointers:                
                move.b  (A0)+, (A1)+  
                dbra    D0, Loop_Load_Driver_Pointers
;-------------------------------------------------------------------------------  
                lea     (Universal_Voice_Bank), A0
                lea     ($00A017D8), A1
                move.w  #Universal_Voice_Bank_End-Universal_Voice_Bank, D0
Loop_Load_Universal_Voice_Bank:                
                move.b  (A0)+, (A1)+      
                dbra    D0, Loop_Load_Universal_Voice_Bank
;-------------------------------------------------------------------------------                
                lea     (Driver_Reset_Data), A0
                lea     ($00A01C00), A1
                move.w  #$000F, D0
Loop_S3_Driver_Reset_Data:                
                move.b  (A0)+, (A1)+
                dbra    D0, Loop_S3_Driver_Reset_Data    
;-------------------------------------------------------------------------------                                
                btst    #$06, ($FFFFFFF8).w
                beq.s   Driver_Already_Initialized
                move.b  #$01, ($00A01C02)
Driver_Already_Initialized:
                move.w  #$0000, ($00A11200)
                nop
                nop
                nop
                nop
                move.w  #$0100, ($00A11200)     ; Z80 start reset
                move.w  #$0000, ($00A11100)     ; Z80 bus request - Stop
                rts
Driver_Reset_Data:
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
;-------------------------------------------------------------------------------
Play_Music_New:                
                cmpi.w  #$00FB, D0                 
                blt.s   Play_Not_Special_Flag    
                bhi.s   Test_For_Normal_Speed  
                move    #$0008, D0
                jmp     Music_Control 
Test_For_Normal_Speed:
                cmpi.w  #$00FC, D0                              
                bne.s   Play_Not_Special_Flag
                clr.w   D0
                jmp     Music_Control                  
Play_Not_Special_Flag:                
                move.w  #$0100, ($00A11100)
Play_Music_Z80_Not_Stopped:        
                btst    #$00, ($00A11100)
                bne.s   Play_Music_Z80_Not_Stopped ; loop until it says it's stopped  
                move.b  D0, ($00A01C0A)
                move.w  #$0000, ($00A11100)                    
                rts
;-------------------------------------------------------------------------------    
Play_Sfx_Ex_New:                                
                tst.b   $0004(A0)
                bpl.s   Skip_Play_Sfx_New                     
Play_Sfx_New:   
Play_Unknow_New: 
                move.w  #$0100, ($00A11100)
Play_Sfx_Z80_Not_Stopped:
                btst    #$00, ($00A11100)
                bne.s   Play_Sfx_Z80_Not_Stopped
                cmp.b   ($00A01C0B), D0
                beq.s   Play_Sfx_New_1
                tst.b   ($00A01C0B)
                bne.s   Play_Sfx_New_0
                move.b  D0, ($00A01C0B)
                move.w  #$0000, ($00A11100)
                rts
Play_Sfx_New_0:
                move.b  D0, ($00A01C0C)
Play_Sfx_New_1:
                move.w  #$0000, ($00A11100)
Skip_Play_Sfx_New:                
                rts                   
;-------------------------------------------------------------------------------  
Music_Control:  ; Used to Speed Up Music  $08 - Fast / 
                move.w  #$0100, ($00A11100)
Music_Control_Z80_Not_Stopped:
                btst    #$00, ($00A11100)
                bne.s   Music_Control_Z80_Not_Stopped
                move.b  D0, ($00A01C08)
                move.w  #$0000, ($00A11100)
                rts               
;------------------------------------------------------------------------------- 
Pause_New:     
                nop
                tst.b   ($FFFFFE12).w
                beq     Unpause_New
                tst.w   ($FFFFF63A).w
                bne.s   Pause_AlreadyPaused_New
                move.b  ($FFFFF605).w, D0
                or.b    ($FFFFF607).w, D0
                andi.b  #$80, D0
                beq     Pause_DoNothing_New
Pause_AlreadyPaused_New: 
                move.w  #$0001, ($FFFFF63A).w
                move.w  #$0100, ($00A11100)
Pause_Z80_Not_Stopped:                
                btst    #$00, ($00A11100)
                bne.s   Pause_Z80_Not_Stopped
                move.b  #$01, ($00A01C10)
                move.w  #$0000, ($00A11100)
Pause_Loop_New:                
                move.b  #$10, ($FFFFF62A).w
                jsr     DelayProgram
                tst.b   ($FFFFFFD1).w
                beq.s   Pause_CheckStart_New
                btst    #$06, ($FFFFF605).w
                beq.s   Pause_CheckBC_New
                move.b  #$28, ($FFFFF600).w
                nop
                bra.s   Pause_New_1
Pause_CheckBC_New:
                btst    #$04, ($FFFFF604).w
                bne.s   Pause_Slow
                btst    #$05, ($FFFFF605).w
                bne.s   Pause_Slow
Pause_CheckStart_New:
                cmpi.b  #$0E, ($FFFFFE10).w
                bcs.s   Pause_New_0
                cmpi.b  #$12, ($FFFFFE10).w
                bhi.s   Pause_New_0
                tst.b   ($FFFFFF8B).w
                bpl.s   Pause_New_0
                btst    #$04, ($FFFFF605).w
                beq.s   Pause_New_0
                move.b  #$C0, ($FFFFF600).w
                bra.s   Pause_New_1
Pause_New_0:
                move.b  ($FFFFF605).w, D0
                or.b    ($FFFFF607).w, D0
                andi.b  #$80, D0
                beq.s   Pause_Loop_New
Pause_New_1:
                move.w  #$0100, ($00A11100)
Pause_Check_Start_Z80_Not_Stopped:                
                btst    #$00, ($00A11100)
                bne.s   Pause_Check_Start_Z80_Not_Stopped
                move.b  #$80, ($00A01C10)
                move.w  #$0000, ($00A11100)
Unpause_New:
                move.w  #$0000, ($FFFFF63A).w
Pause_DoNothing_New: 
                rts
Pause_Slow:
                move.w  #$0001, ($FFFFF63A).w
                move.w  #$0100, ($00A11100)
Pause_Slow_Z80_Not_Stopped:                
                btst    #$00, ($00A11100)
                bne.s   Pause_Slow_Z80_Not_Stopped
                move.b  #$80, ($00A01C10)
                move.w  #$0000, ($00A11100)
                rts                
;-------------------------------------------------------------------------------                  
                align   $8000
Driver_Data:                         
                dc.b    $F3, $F3, $ED, $56, $C3, $89, $00, $00
                dc.b    $2A, $15 ; LD HL,(0015h)
                dc.b    $00, $06, $00, $09, $08, $7E
                dc.b    $23, $66, $6F, $08, $C9  
                ; 0015h   
S3_Drv_Ptr      equ     (S3_Driver_Pointers&$1FFF)                      ; $0E7300
                dc.w    ((S3_Drv_Ptr>>$08)|(S3_Drv_Ptr<<$08))&$FFFF     ; $0013  {$1300}                         
                dc.b    $00, $4F, $06, $00, $09, $09, $00, $00, $00
                dc.b    $7E, $23, $66, $6F, $C9, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $F3, $F5, $FD, $E5, $D9, $ED, $5F, $32
                dc.b    $17, $1C, $CD, $21, $01, $3A, $02, $1C, $B7, $28, $12, $3A, $04, $1C, $B7, $20
                dc.b    $08, $3E, $06, $32, $04, $1C, $C3, $3D, $00, $3D, $32, $04, $1C, $AF, $32, $21
                dc.b    $1C, $3A, $30, $1C, $E6, $7F, $4F, $06, $00, $21, $DC, $00, $09, $7E
Z80_0x006E:              
              ; dc.b    $21, $00, $60 ; LD HL,6000h     ; Original
                dc.b    $C3, $4C, $11 ; JP 114Ch        ; Novo                                  
                dc.b    $77, $0F, $77, $0F, $77, $0F, $77, $0F, $77, $0F, $77, $0F, $77, $0F, $77 
                dc.b    $AF, $77                                                                   
Z80_0x0082:                                                                                    
                dc.b    $D9, $FD, $E1, $F1, $06, $01, $C9, $31, $00, $20, $0E, $00, $06, $00
                dc.b    $10, $FE, $0D, $28, $F9, $CD, $29, $09, $3E, $80, $3E, $06, $32, $3E, $1C, $AF
                dc.b    $32, $27, $1C, $32, $30, $1C, $32, $3F, $1C, $32, $28, $1C, $3E, $05, $32, $04
                dc.b    $1C, $FB, $C3, $62, $10, $DD, $CB, $01, $7E, $C0, $DD, $CB, $00, $56, $C0, $DD
                dc.b    $86, $01, $DD, $CB, $01, $56, $20, $09, $32, $00, $40, $00, $79, $32, $01, $40
                dc.b    $C9, $D6, $04, $32, $02, $40, $00, $79, $32, $03, $40, $C9
Z80_0x00DC:       

Dac_Sample_Grp_0 equ ((Dac_Sample_Group_0>>$0F)) 
Dac_Sample_Grp_1 equ ((Dac_Sample_Group_1>>$0F)) 
Dac_Sample_Grp_2 equ ((Dac_Sample_Group_2>>$0F))
Dac_Sample_Selector:
                dc.b    Dac_Sample_Grp_0, Dac_Sample_Grp_0, Dac_Sample_Grp_0, Dac_Sample_Grp_0
                dc.b    Dac_Sample_Grp_0, Dac_Sample_Grp_0, Dac_Sample_Grp_0, Dac_Sample_Grp_0
                dc.b    Dac_Sample_Grp_0, Dac_Sample_Grp_0, Dac_Sample_Grp_0, Dac_Sample_Grp_0
                dc.b    Dac_Sample_Grp_0, Dac_Sample_Grp_0, Dac_Sample_Grp_0, Dac_Sample_Grp_0
                dc.b    Dac_Sample_Grp_0, Dac_Sample_Grp_0, Dac_Sample_Grp_0, Dac_Sample_Grp_0
                dc.b    Dac_Sample_Grp_0, Dac_Sample_Grp_0, Dac_Sample_Grp_0, Dac_Sample_Grp_0
                dc.b    Dac_Sample_Grp_0, Dac_Sample_Grp_0, Dac_Sample_Grp_0, Dac_Sample_Grp_1
                dc.b    Dac_Sample_Grp_1, Dac_Sample_Grp_1, Dac_Sample_Grp_1, Dac_Sample_Grp_1
                dc.b    Dac_Sample_Grp_1, Dac_Sample_Grp_1, Dac_Sample_Grp_1, Dac_Sample_Grp_1
                dc.b    Dac_Sample_Grp_1, Dac_Sample_Grp_1, Dac_Sample_Grp_1, Dac_Sample_Grp_1
                dc.b    Dac_Sample_Grp_1, Dac_Sample_Grp_1, Dac_Sample_Grp_1, Dac_Sample_Grp_2
                dc.b    Dac_Sample_Grp_2, Dac_Sample_Grp_2, Dac_Sample_Grp_2, Dac_Sample_Grp_2
                dc.b    Dac_Sample_Grp_2, Dac_Sample_Grp_2, Dac_Sample_Grp_2, Dac_Sample_Grp_2 
                dc.b    Dac_Sample_Grp_2, Dac_Sample_Grp_2, Dac_Sample_Grp_2, Dac_Sample_Grp_2
                dc.b    Dac_Sample_Grp_2, Dac_Sample_Grp_2, Dac_Sample_Grp_2, Dac_Sample_Grp_2
                dc.b    Dac_Sample_Grp_2, Dac_Sample_Grp_2, Dac_Sample_Grp_2, Dac_Sample_Grp_2
                dc.b    Dac_Sample_Grp_2, Dac_Sample_Grp_2, Dac_Sample_Grp_2, Dac_Sample_Grp_2
                dc.b    Dac_Sample_Grp_2             
                
                dc.b    $CD, $E8, $07, $CD, $A2, $01, $CD, $B1, $09, $CD, $62, $08, $CD, $C6, $08
                dc.b    $3A, $16, $1C, $FE, $29, $20, $18, $3A, $0A, $1C, $FE, $2A, $28, $04, $FE, $32
                dc.b    $38, $04, $AF, $32, $0A, $1C, $AF, $32, $0B, $1C, $32, $0C, $1C, $18, $1F, $3A
                dc.b    $16, $1C, $FE, $FF, $28, $18, $21, $0A, $1C, $5E, $23, $56, $23, $7E, $B2, $B3
                dc.b    $28, $0C, $CD, $C7, $09, $CD, $DF, $04, $CD, $DF, $04, $CD, $DF, $04
Z80_0x016E:             
Z80_Bank_Switch_Ptr0 equ (Z80_Bank_Switch_0&$1FFF)   
Z80_Default_Ptr      equ (Z80_Default_Bank_Switch&$1FFF)                 
                dc.b    $3A, $3E, $1C  ; LD  A,(1C3Eh)   
                dc.b    $FE, $00       ; CP  A, 00h 
                dc.b    $C2            ; JP  NZ, Z80_Default_Bank_Switch   
                dc.w    ((Z80_Default_Ptr>>$08)|(Z80_Default_Ptr<<$08))&$FFFF 
                dc.b    $CD            ; Call Z80_Bank_Switch_Ptr
                dc.w    ((Z80_Bank_Switch_Ptr0>>$08)|(Z80_Bank_Switch_Ptr0<<$08))&$FFFF  
                dc.b    $18, $03       ; JR  $03h 
Z80_Default_Bank_Switch:                           
                dc.b    $CD            ; Call Z80_Bank_Switch_0
                dc.w    ((Z80_Bank_Switch_Ptr>>$08)|(Z80_Bank_Switch_Ptr<<$08))&$FFFF                                                                                                                                 
                dc.b    $00, $00, $00, $00, $00                 
               
              ; dc.b    $21, $00, $60  ; Original  
              ; dc.b    $3A, $3E, $1C                  
              ; dc.b    $77, $1F, $77, $1F, $77, $1F, $77, $AF, $16, $01, $72, $77, $77, $77, $77
Z80_0x0183:                 
                dc.b    $AF, $32, $19, $1C, $3A, $16, $1C, $FE, $FF, $CC, $05, $0A, $DD
                dc.b    $21, $40, $1C, $DD, $CB, $00, $7E, $C4, $7A, $0B, $06, $08, $DD, $21, $70, $1C
                dc.b    $18, $1A, $3E, $01, $32, $19, $1C
Z80_0x01A7: ; Sfx Bank Switch             
                dc.b    $3E, Bank_Grp_Sfx         ; LD, A, Bank_Grp_Sfx 
                dc.b    $CD ; Call Z80_Bank_Switch
                dc.w    ((Z80_Bank_Switch_Ptr>>$08)|(Z80_Bank_Switch_Ptr<<$08))&$FFFF  
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
               ;dc.b    $21, $00, $60 ; Sfx Bank Selector
               ;dc.b    $AF, $1E, $01, $73, $73, $73, $73, $73, $77, $77, $77, $77
                dc.b    $DD, $21, $F0, $1D, $06, $07, $C5, $DD, $CB, $00
                dc.b    $7E, $C4, $E6, $01, $11, $30, $00, $DD, $19, $C1, $10, $F0, $3A, $08, $1C, $B7
                dc.b    $C8, $3A, $2F, $1C, $B7, $C2, $E1, $01, $3A, $08, $1C, $32, $2F, $1C, $C3, $27
                dc.b    $01, $3D, $32, $2F, $1C, $C9, $DD, $CB, $01, $7E, $C2, $9C, $0F, $CD, $37, $03
                dc.b    $20, $17, $CD, $74, $02, $DD, $CB, $00, $66, $C0, $CD, $9B, $03, $CD, $6C, $04
                dc.b    $CD, $C6, $03, $CD, $28, $02, $C3, $3F, $03, $DD, $CB, $00, $66, $C0, $CD, $6A
                dc.b    $03, $DD, $7E, $1E, $B7, $28, $06, $DD, $35, $1E, $CA, $58, $03, $CD, $6C, $04
                dc.b    $DD, $CB, $00, $76, $C0, $CD, $C6, $03, $DD, $CB, $00, $56, $C0, $DD, $CB, $00
                dc.b    $46, $C2, $41, $02, $3E, $A4, $4C, $CD, $B5, $00, $3E, $A0, $4D, $CD, $B5, $00
                dc.b    $C9, $DD, $7E, $01, $FE, $02, $20, $EC, $06, $04, $21, $6F, $02, $C5, $7E, $23
                dc.b    $E5, $EB, $4E, $23, $46, $23, $EB, $DD, $6E, $0D, $DD, $66, $0E, $09, $F5, $4C
                dc.b    $CD, $C8, $00, $F1, $D6, $04, $4D, $CD, $C8, $00, $E1, $C1, $10, $DF, $C9, $AD
                dc.b    $AE, $AC, $A6, $C9, $DD, $5E, $03, $DD, $56, $04, $DD, $CB, $00, $8E, $DD, $CB
                dc.b    $00, $A6, $1A, $13, $FE, $E0, $D2, $CF, $0B, $08, $CD, $58, $03, $08, $DD, $CB
                dc.b    $00, $5E, $C2, $E5, $02, $B7, $F2, $05, $03, $D6, $81, $F2, $A3, $02, $CD, $44
                dc.b    $10, $18, $2E, $DD, $86, $05, $21, $88, $0A, $F5, $DF, $F1, $DD, $CB, $01, $7E
                dc.b    $20, $19, $D5, $16, $08, $1E, $0C, $08, $AF, $08, $93, $38, $05, $08, $82, $18
                dc.b    $F8, $08, $83, $21, $30, $0B, $DF, $08, $B4, $67, $D1, $DD, $75, $0D, $DD, $74
                dc.b    $0E, $1A, $B7, $F2, $04, $03, $DD, $7E, $0C, $DD, $77, $0B, $18, $2D, $1A, $13
                dc.b    $DD, $77, $11, $18, $1E, $67, $1A, $13, $6F, $B4, $28, $0C, $DD, $7E, $05, $06
                dc.b    $00, $B7, $F2, $F6, $02, $05, $4F, $09, $DD, $75, $0D, $DD, $74, $0E, $1A, $13
                dc.b    $DD, $77, $11, $1A, $13, $CD, $2D, $03, $DD, $77, $0C, $DD, $73, $03, $DD, $72
                dc.b    $04, $DD, $7E, $0C, $DD, $77, $0B, $DD, $CB, $00, $4E, $C0, $AF, $DD, $77, $25
                dc.b    $DD, $77, $22, $DD, $77, $17, $DD, $7E, $1F, $DD, $77, $1E, $C9, $DD, $46, $02
                dc.b    $05, $C8, $4F, $81, $10, $FD, $C9, $DD, $7E, $0B, $3D, $DD, $77, $0B, $C9, $DD
                dc.b    $7E, $0D, $DD, $B6, $0E, $C8, $DD, $7E, $00, $E6, $06, $C0, $DD, $7E, $01, $F6
                dc.b    $F0, $4F, $3E, $28, $CD, $C8, $00, $C9, $DD, $7E, $00, $E6, $06, $C0, $DD, $4E
                dc.b    $01, $CB, $79, $C0, $3E, $28, $CD, $C8, $00, $C9, $DD, $7E, $18, $B7, $C8, $F8
                dc.b    $3D, $0E, $0A, $CF, $DF, $CD, $12, $10, $DD, $66, $1D, $DD, $6E, $1C, $11, $AE
                dc.b    $04, $06, $04, $DD, $4E, $19, $F5, $CB, $29, $C5, $30, $08, $86, $E6, $7F, $4F
                dc.b    $1A, $CD, $B5, $00, $C1, $13, $23, $F1, $10, $EC, $C9, $DD, $CB, $07, $7E, $C8
                dc.b    $DD, $CB, $00, $4E, $C0, $DD, $5E, $20, $DD, $56, $21, $DD, $E5, $E1, $06, $00
                dc.b    $0E, $24, $09, $EB, $ED, $A0, $ED, $A0, $ED, $A0, $7E, $CB, $3F, $12, $AF, $DD
                dc.b    $77, $22, $DD, $77, $23, $C9, $DD, $7E, $07, $B7, $C8, $FE, $80, $20, $48, $DD
                dc.b    $35, $24, $C0, $DD, $34, $24, $E5, $DD, $6E, $22, $DD, $66, $23, $DD, $5E, $20
                dc.b    $DD, $56, $21, $D5, $FD, $E1, $DD, $35, $25, $20, $17, $FD, $7E, $01, $DD, $77
                dc.b    $25, $DD, $7E, $26, $4F, $E6, $80, $07, $ED, $44, $47, $09, $DD, $75, $22, $DD
                dc.b    $74, $23, $C1, $09, $DD, $35, $27, $C0, $FD, $7E, $03, $DD, $77, $27, $DD, $7E
                dc.b    $26, $ED, $44, $DD, $77, $26, $C9, $3D, $EB, $0E, $08, $CF, $DF, $18, $03, $DD
                dc.b    $77, $25, $E5, $DD, $4E, $25, $06, $00, $09, $7E, $E1, $CB, $7F, $CA, $5D, $04
                dc.b    $FE, $82, $28, $12, $FE, $80, $28, $12, $FE, $84, $28, $11, $26, $FF, $30, $1F
                dc.b    $DD, $CB, $00, $F6, $E1, $C9, $03, $0A, $18, $D5, $AF, $18, $D2, $03, $0A, $DD
                dc.b    $86, $22, $DD, $77, $22, $DD, $34, $25, $DD, $34, $25, $18, $C5, $26, $00, $6F
                dc.b    $DD, $46, $22, $04, $EB, $19, $10, $FD, $DD, $34, $25, $C9, $DD, $66, $0E, $DD
                dc.b    $6E, $0D, $06, $00, $DD, $7E, $10, $B7, $F2, $7D, $04, $06, $FF, $4F, $09, $C9
                dc.b    $2A, $37, $1C, $3A, $19, $1C, $B7, $28, $06, $DD, $6E, $2A, $DD, $66, $2B, $AF
                dc.b    $B0, $C8, $11, $19, $00, $19, $10, $FD, $C9, $B0, $30, $38, $34, $3C, $50, $58
                dc.b    $54, $5C, $60, $68, $64, $6C, $70, $78, $74, $7C, $80, $88, $84, $8C, $40, $48
                dc.b    $44, $4C, $90, $98, $94, $9C, $11, $99, $04, $DD, $4E, $0A, $3E, $B4, $CD, $B5
                dc.b    $00, $CD, $D7, $04, $DD, $77, $1B, $06, $14, $CD, $D7, $04, $10, $FB, $DD, $75
                dc.b    $1C, $DD, $74, $1D, $C3, $9C, $0C, $1A, $13, $4E, $23, $CD, $B5, $00, $C9, $3A
                dc.b    $05, $1C, $32, $09, $1C, $3A, $06, $1C, $32, $05, $1C, $3A, $07, $1C, $32, $06
                dc.b    $1C, $AF, $32, $07, $1C, $3A, $09, $1C, $FE, $FF, $CA, $FB, $09, $FE, $33, $DA
                dc.b    $4A, $05, $FE, $E0, $DA, $99, $06, $FE, $E1, $DA, $29, $09, $FE, $E6, $D2, $29
                dc.b    $09, $D6, $E1, $21, $1C, $05, $DF, $AF, $32, $18, $1C, $E9, $45, $08, $29, $09
                dc.b    $A1, $09, $26, $05, $45, $08, $DD, $21, $F0, $1D, $06, $07, $3E, $01, $32, $19
                dc.b    $1C, $C5, $DD, $CB, $00, $7E, $C4, $45, $05, $11, $30, $00, $DD, $19, $C1, $10
                dc.b    $F0, $CD, $80, $06, $C9, $E5, $E5, $C3, $61, $0C, $D6, $01, $F8, $F5, $FE, $29
                dc.b    $C2, $CD, $05, $3A, $29, $1C, $B7, $CA, $72, $05, $AF, $32, $0A, $1C, $32, $0B
                dc.b    $1C, $32, $0C, $1C, $32, $05, $1C, $32, $06, $1C, $32, $07, $1C, $32, $09, $1C
                dc.b    $F1, $C9, $3A, $16, $1C, $FE, $29, $CA, $D0, $05, $AF, $32, $0A, $1C, $32, $0B
                dc.b    $1C, $32, $0C, $1C, $32, $05, $1C, $32, $06, $1C, $32, $07, $1C, $3A, $3E, $1C
                dc.b    $32, $2D, $1C, $3A, $08, $1C, $32, $2E, $1C, $AF, $32, $08, $1C, $21, $40, $1C
                dc.b    $11, $F0, $1D, $01, $B0, $01, $ED, $B0, $21, $F0, $1D, $11, $30, $00, $06, $09
                dc.b    $7E, $E6, $7F, $CB, $D6, $77, $19, $10, $F7, $3E, $29, $32, $16, $1C, $3A, $24
                dc.b    $1C, $32, $2C, $1C, $2A, $37, $1C, $22, $2A, $1C, $C3, $D0, $05, $CD, $29, $09
                dc.b    $F1, $F5  
Z80_0x05D2:                              
                dc.b    $21, $48, $0B  ; LD  HL, Bank_Selector
                dc.b    $85, $6F, $8C, $95, $67, $22, $DE, $05, $3A, $48, $0B
                dc.b    $32, $3E, $1C
Z80_Bank_Switch_Ptr equ (Z80_Bank_Switch&$1FFF)             
Z80_0x05E3:    ; Music Bank Switch      
                dc.b    $CD ; Call Z80_Bank_Switch
                dc.w    ((Z80_Bank_Switch_Ptr>>$08)|(Z80_Bank_Switch_Ptr<<$08))&$FFFF  
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 
   ;            dc.b    $21, $00, $60      
   ;            dc.b    $77, $1F, $77, $1F, $77, $1F, $77, $AF, $16, $01, $72, $77, $77, $77, $77                     
                dc.b    $3E, $B6, $32, $02, $40, $00, $3E, $C0, $32, $03, $40
                dc.b    $F1, $0E, $04, $CF, $DF, $E5, $E5, $E7, $22, $37, $1C, $E1, $FD, $E1, $FD, $7E
                dc.b    $05, $32, $13, $1C, $32, $24, $1C, $11, $06, $00, $19, $22, $33, $1C, $21, $85
                dc.b    $06, $22, $35, $1C, $11, $40, $1C, $FD, $46, $02, $FD, $7E, $04, $C5, $2A, $35
                dc.b    $1C, $ED, $A0, $ED, $A0, $12, $13, $22, $35, $1C, $2A, $33, $1C, $ED, $A0, $ED
                dc.b    $A0, $ED, $A0, $ED, $A0, $22, $33, $1C, $CD, $AE, $07, $C1, $10, $DF, $FD, $7E
                dc.b    $03, $B7, $CA, $80, $06, $47, $21, $93, $06, $22, $35, $1C, $11, $60, $1D, $FD
                dc.b    $7E, $04, $C5, $2A, $35, $1C, $ED, $A0, $ED, $A0, $12, $13, $22, $35, $1C, $2A
                dc.b    $33, $1C, $01, $06, $00, $ED, $B0, $22, $33, $1C, $CD, $B5, $07, $C1, $10, $E2
                dc.b    $AF, $32, $09, $1C, $C9, $80, $06, $80, $00, $80, $01, $80, $02, $80, $04, $80
                dc.b    $05, $80, $06, $80, $80, $80, $A0, $80, $C0, $D6, $33, $B7, $C2, $A7, $06, $3A
                dc.b    $28, $1C, $EE, $01, $32, $28, $1C, $08
Z80_0x06A8:  ; Sfx Bank Switch   
                dc.b    $3E, Bank_Grp_Sfx         ; LD, A, Bank_Grp_Sfx 
                dc.b    $CD ; Call Z80_Bank_Switch
                dc.w    ((Z80_Bank_Switch_Ptr>>$08)|(Z80_Bank_Switch_Ptr<<$08))&$FFFF  
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
              ; dc.b    $21, $00, $60  ; Original                     
              ; dc.b    $AF, $1E, $01, $73, $73, $73, $73, $73, $77, $77, $77, $77 
Z80_0x06B7:
                dc.b    $AF, $0E, $06, $32, $19, $1C, $08, $FE, $78
                dc.b    $CA, $F5, $06, $FE, $89, $DA, $EF, $06, $F5, $47, $3A, $25, $1C, $90, $C2, $E4
                dc.b    $06, $3E, $80, $32, $26, $1C, $CF, $F1, $4F, $DF, $23, $23, $23, $7E, $32, $31
                dc.b    $1C, $C3, $80, $06, $AF, $32, $26, $1C, $F1, $32, $25, $1C, $C3, $F5, $06, $F5
                dc.b    $AF, $32, $27, $1C, $F1, $CF, $DF, $E5, $E7, $22, $39, $1C, $AF, $32, $15, $1C
                dc.b    $E1, $E5, $FD, $E1, $FD, $7E, $02, $32, $3B, $1C, $11, $04, $00, $19, $FD, $46
                dc.b    $03, $78, $32, $31, $1C, $C5, $E5, $23, $4E, $CD, $78, $07, $CB, $D6, $DD, $E5
                dc.b    $3A, $19, $1C, $B7, $28, $03, $E1, $FD, $E5, $D1, $E1, $ED, $A0, $1A, $FE, $02
                dc.b    $CC, $5E, $09, $ED, $A0, $3A, $3B, $1C, $12, $13, $ED, $A0, $ED, $A0, $ED, $A0
                dc.b    $ED, $A0, $CD, $AE, $07, $DD, $CB, $00, $7E, $28, $0C, $DD, $7E, $01, $FD, $BE
                dc.b    $01, $20, $04, $FD, $CB, $00, $D6, $E5, $2A, $39, $1C, $3A, $19, $1C, $B7, $28
                dc.b    $04, $FD, $E5, $DD, $E1, $DD, $75, $2A, $DD, $74, $2B, $CD, $58, $03, $CD, $6B
                dc.b    $09, $E1, $C1, $10, $A0, $C3, $80, $06, $CB, $79, $20, $08, $79, $CB, $57, $28
                dc.b    $1A, $3D, $18, $17, $3E, $1F, $CD, $4D, $10, $3E, $FF, $32, $11, $7F, $79, $CB
                dc.b    $3F, $CB, $3F, $CB, $3F, $CB, $3F, $CB, $3F, $C6, $02, $D6, $02, $32, $32, $1C
                dc.b    $F5, $21, $C8, $07, $DF, $E5, $DD, $E1, $F1, $21, $D8, $07, $DF, $C9, $08, $AF
                dc.b    $12, $13, $12, $13, $08, $EB, $36, $30, $23, $36, $C0, $23, $36, $01, $06, $24
                dc.b    $23, $36, $00, $10, $FB, $23, $EB, $C9, $F0, $1D, $20, $1E, $50, $1E, $80, $1E
                dc.b    $B0, $1E, $E0, $1E, $10, $1F, $10, $1F, $D0, $1C, $00, $1D, $30, $1D, $40, $1C
                dc.b    $60, $1D, $90, $1D, $C0, $1D, $C0, $1D, $21, $10, $1C, $7E, $B7, $C8, $FA, $F9
                dc.b    $07, $D1, $3D, $C0, $36, $02, $C3, $72, $09, $AF, $77, $3A, $0D, $1C, $B7, $C2
                dc.b    $29, $09, $DD, $21, $70, $1C, $06, $06, $3A, $11, $1C, $B7, $20, $06, $DD, $CB
                dc.b    $00, $7E, $28, $08, $DD, $4E, $0A, $3E, $B4, $CD, $B5, $00, $11, $30, $00, $DD
                dc.b    $19, $10, $E5, $DD, $21, $40, $1F, $06, $07, $DD, $CB, $00, $7E, $28, $0E, $DD
                dc.b    $CB, $01, $7E, $20, $08, $DD, $4E, $0A, $3E, $B4, $CD, $B5, $00, $11, $30, $00
                dc.b    $DD, $19, $10, $E5, $C9, $3E, $28, $32, $0D, $1C, $3E, $06, $32, $0F, $1C, $32
                dc.b    $0E, $1C, $AF, $32, $40, $1C, $32, $C0, $1D, $32, $60, $1D, $32, $90, $1D, $C3
                dc.b    $A1, $09, $21, $0D, $1C, $7E, $B7, $C8, $FC, $52, $08, $CB, $BE, $3A, $0F, $1C
                dc.b    $3D, $28, $04, $32, $0F, $1C, $C9, $3A, $0E, $1C, $32, $0F, $1C, $3A, $0D, $1C
                dc.b    $3D, $32, $0D, $1C, $CA, $29, $09, $3A, $3E, $1C
Z80_0x088A:                 
                dc.b    $21, $00, $60  ; Original   
                dc.b    $77, $1F, $77, $1F, $77, $1F, $77, $AF, $16, $01, $72, $77, $77, $77, $77
Z80_0x089C:                
                dc.b    $DD, $21, $40, $1C
                dc.b    $06, $06, $DD, $34, $06, $F2, $AD, $08, $DD, $35, $06, $18, $11, $DD, $CB, $00
                dc.b    $7E, $28, $0B, $DD, $CB, $00, $56, $20, $05, $C5, $CD, $9C, $0C, $C1, $11, $30
                dc.b    $00, $DD, $19, $10, $DD, $C9, $3A, $29, $1C, $B7, $C8, $3A, $3E, $1C
Z80_0x08CE:  ; Music Restore After Extra Life Sound Played  
                dc.b    $CD ; Call Z80_Bank_Switch
                dc.w    ((Z80_Bank_Switch_Ptr>>$08)|(Z80_Bank_Switch_Ptr<<$08))&$FFFF
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00              
              ; dc.b    $21, $00, $60 ;  Original                  
              ; dc.b    $77, $1F, $77, $1F, $77, $1F, $77, $AF, $16, $01, $72, $77, $77, $77, $77 
Z80_0x08E0:                
                dc.b    $3A, $0E, $1C, $3D, $32, $0E, $1C, $C0, $3A, $0F, $1C, $32, $0E, $1C, $06, $05
                dc.b    $DD, $21, $70, $1C, $11, $30, $00, $DD, $7E, $06, $3D, $DD, $77, $06, $C5, $CD
                dc.b    $9C, $0C, $C1, $DD, $19, $10, $F0, $3A, $29, $1C, $3D, $32, $29, $1C, $C0, $06
                dc.b    $03, $DD, $21, $60, $1D, $11, $30, $00, $DD, $CB, $00, $96, $DD, $19, $10, $F8
                dc.b    $DD, $21, $40, $1C, $DD, $CB, $00, $96, $C9, $21, $0D, $1C, $11, $0E, $1C, $01
                dc.b    $C6, $03, $36, $00, $ED, $B0, $AF, $32, $08, $1C, $DD, $21, $85, $06, $06, $06
                dc.b    $C5, $CD, $DB, $09, $CD, $6B, $09, $DD, $23, $DD, $23, $C1, $10, $F2, $06, $07
                dc.b    $AF, $32, $0D, $1C, $CD, $A1, $09, $0E, $00, $3E, $2B, $CD, $C8, $00, $AF, $32
                dc.b    $12, $1C, $4F, $3E, $27, $CD, $C8, $00, $C3, $80, $06, $3E, $90, $0E, $00, $C3
                dc.b    $EF, $09, $CD, $A1, $09, $C5, $F5, $06, $03, $3E, $B4, $0E, $00, $F5, $CD, $C8
                dc.b    $00, $F1, $3C, $10, $F8, $06, $02, $3E, $B4, $F5, $CD, $D3, $00, $F1, $3C, $10
                dc.b    $F8, $0E, $00, $06, $06, $3E, $28, $F5, $CD, $C8, $00, $0C, $F1, $10, $F8, $F1
                dc.b    $C1, $C5, $06, $04, $3E, $9F, $32, $11, $7F, $C6, $20, $10, $F9, $C1, $C3, $80
                dc.b    $06, $3A, $24, $1C, $21, $13, $1C, $86, $77, $D0, $21, $4B, $1C, $11, $30, $00
                dc.b    $06, $09, $34, $19, $10, $FC, $C9, $21, $0A, $1C, $11, $05, $1C, $ED, $A0, $ED
                dc.b    $A0, $ED, $A0, $AF, $2B, $77, $2B, $77, $2B, $77, $C9, $CD, $EB, $09, $3E, $40
                dc.b    $0E, $7F, $CD, $EF, $09, $DD, $4E, $01, $C3, $64, $03, $3E, $80, $0E, $FF, $06
                dc.b    $04, $F5, $CD, $B5, $00, $F1, $C6, $04, $10, $F7, $C9, $CD, $29, $09, $3E, $01
                dc.b    $32, $3F, $1C, $E1, $C9, $AF, $32, $16, $1C, $3A, $2C, $1C, $32, $24, $1C, $3A
                dc.b    $2E, $1C, $32, $08, $1C, $2A, $2A, $1C, $22, $37, $1C
Z80_0x0A1B:  ; Music Restore After Extra Life Sound Played  
                dc.b    $3A, $2D, $1C, $32, $3E, $1C
                dc.b    $CD ; Call Z80_Bank_Switch
                dc.w    ((Z80_Bank_Switch_Ptr>>$08)|(Z80_Bank_Switch_Ptr<<$08))&$FFFF
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00              
              ; dc.b    $21, $00, $60   Original
              ; dc.b    $3A, $2D, $1C, $32, $3E, $1C
              ; dc.b    $77, $1F, $77, $1F, $77, $1F, $77, $AF, $16, $01, $72, $77, $77, $77, $77
Z80_0x0A33:                
                dc.b    $21, $F0, $1D, $11, $40, $1C, $01, $B0, $01, $ED, $B0, $3A, $40
                dc.b    $1C, $F6, $84, $32, $40, $1C, $DD, $21, $70, $1C, $06, $08, $DD, $7E, $00, $F6
                dc.b    $84, $DD, $77, $00, $DD, $CB, $01, $7E, $C2, $73, $0A, $DD, $CB, $00, $96, $DD
                dc.b    $7E, $06, $C6, $40, $DD, $77, $06, $DD, $7E, $08, $C5, $47, $CD, $80, $04, $CD
                dc.b    $B6, $04, $C1, $11, $30, $00, $DD, $19, $10, $D2, $3E, $40, $32, $29, $1C, $3E
                dc.b    $02, $32, $0F, $1C, $32, $0E, $1C, $C9, $FF, $03, $FF, $03, $FF, $03, $FF, $03
                dc.b    $FF, $03, $FF, $03, $FF, $03, $FF, $03, $FF, $03, $F7, $03, $BE, $03, $88, $03
                dc.b    $56, $03, $26, $03, $F9, $02, $CE, $02, $A5, $02, $80, $02, $5C, $02, $3A, $02
                dc.b    $1A, $02, $FB, $01, $DF, $01, $C4, $01, $AB, $01, $93, $01, $7D, $01, $67, $01
                dc.b    $53, $01, $40, $01, $2E, $01, $1D, $01, $0D, $01, $FE, $00, $EF, $00, $E2, $00
                dc.b    $D6, $00, $C9, $00, $BE, $00, $B4, $00, $A9, $00, $A0, $00, $97, $00, $8F, $00
                dc.b    $87, $00, $7F, $00, $78, $00, $71, $00, $6B, $00, $65, $00, $5F, $00, $5A, $00
                dc.b    $55, $00, $50, $00, $4B, $00, $47, $00, $43, $00, $40, $00, $3C, $00, $39, $00
                dc.b    $36, $00, $33, $00, $30, $00, $2D, $00, $2B, $00, $28, $00, $26, $00, $24, $00
                dc.b    $22, $00, $20, $00, $1F, $00, $1D, $00, $1B, $00, $1A, $00, $18, $00, $17, $00
                dc.b    $16, $00, $15, $00, $13, $00, $12, $00, $11, $00, $10, $00, $00, $00, $00, $00
                dc.b    $84, $02, $AB, $02, $D3, $02, $FE, $02, $2D, $03, $5C, $03, $8F, $03, $C5, $03
                dc.b    $FF, $03, $3C, $04, $7C, $04, $C0, $04
                
Bank_Grp_0   equ ((Bank_Group_0>>$0F))
Bank_Grp_1   equ ((Bank_Group_1>>$0F))  
Bank_Grp_2   equ ((Bank_Group_2>>$0F))  
Bank_Grp_3   equ ((Bank_Group_3>>$0F))  
Bank_Grp_Sfx equ ((Bank_Group_Sfx>>$0F))  
Sega_Grp     equ ((Sega_Group>>$0F)) 
; Z80_0x0B48:   
;===============================================================================
; O array abaixo identifica o banco que cada musica se localiza em ordem 
; crescente
;===============================================================================                
Bank_Selector: ; $Sound Array 01,02,03...            
                dc.b    Bank_Grp_1, Bank_Grp_1, Bank_Grp_1, Bank_Grp_1
                dc.b    Bank_Grp_1, Bank_Grp_1, Bank_Grp_1, Bank_Grp_1
                dc.b    Bank_Grp_1, Bank_Grp_1, Bank_Grp_2, Bank_Grp_2
                dc.b    Bank_Grp_2, Bank_Grp_2, Bank_Grp_2, Bank_Grp_2
                dc.b    Bank_Grp_2, Bank_Grp_2, Bank_Grp_2, Bank_Grp_2
                dc.b    Bank_Grp_2, Bank_Grp_2, Bank_Grp_2, Bank_Grp_2                    
                dc.b    Bank_Grp_2, Bank_Grp_1, Bank_Grp_2, Bank_Grp_2   
                dc.b    Bank_Grp_3, Bank_Grp_3, Bank_Grp_3, Bank_Grp_3 
                dc.b    Bank_Grp_3, Bank_Grp_3, Bank_Grp_3, Bank_Grp_3
                dc.b    Bank_Grp_3, Bank_Grp_3, Bank_Grp_3, Bank_Grp_3
                dc.b    Bank_Grp_2, Bank_Grp_3, Bank_Grp_3, Bank_Grp_3 
                dc.b    Bank_Grp_3, Bank_Grp_0, Bank_Grp_2, Bank_Grp_0 
                dc.b    Bank_Grp_3, Bank_Grp_3                        
                            
                dc.b    $CD, $37, $03, $C0, $DD, $5E
                dc.b    $03, $DD, $56, $04, $1A, $13, $FE, $E0, $D2, $C5, $0B, $B7, $FA, $93, $0B, $1B
                dc.b    $DD, $7E, $0D, $DD, $77, $0D, $FE, $80, $CA, $B5, $0B, $CB, $BF, $D5, $08, $CD
                dc.b    $58, $03, $CD, $5E, $09, $08, $DD, $21, $40, $1C, $DD, $CB, $00, $56, $C2, $B4
                dc.b    $0B, $32, $30, $1C, $D1, $1A, $13, $B7, $F2, $05, $03, $1B, $DD, $7E, $0C, $DD
                dc.b    $77, $0B, $C3, $0B, $03, $21, $CB, $0B, $C3, $D2, $0B, $13, $C3, $84, $0B, $21
                dc.b    $DB, $0B, $E5, $D6, $E0, $21, $DF, $0B, $DF, $1A, $E9, $13, $C3, $82, $02, $33
                dc.b    $0C, $59, $0C, $5D, $0C, $61, $0C, $67, $0C, $83, $0C, $85, $0C, $BD, $0C, $C3
                dc.b    $0C, $47, $0C, $2F, $0C, $CD, $0C, $E3, $0C, $FD, $0C, $03, $0D, $10, $0D, $4F
                dc.b    $0D, $5D, $0D, $69, $0D, $11, $0E, $65, $0D, $30, $0E, $39, $0E, $3F, $0E, $56
                dc.b    $0E, $70, $0E, $83, $0E, $89, $0E, $90, $0E, $B2, $0E, $C0, $0E, $07, $0F, $0E
                dc.b    $0F, $12, $0F, $1A, $0F, $55, $0F, $63, $0F, $72, $0F, $8D, $0F, $96, $0F, $32
                dc.b    $30, $1C, $C9, $0E, $3F, $DD, $7E, $0A, $A1, $D5, $EB, $B6, $DD, $77, $0A, $4F
                dc.b    $3E, $B4, $CD, $B5, $00, $D1, $C9, $21, $27, $1C, $7E, $DD, $86, $05, $DD, $77
                dc.b    $05, $FE, $10, $CA, $57, $0C, $34, $1B, $C9, $DD, $77, $10, $C9, $32, $16, $1C
                dc.b    $C9, $CD, $DB, $09, $C3, $69, $0D, $DD, $CB, $01, $7E, $28, $0D, $CB, $3F, $CB
                dc.b    $3F, $CB, $3F, $EE, $0F, $E6, $0F, $C3, $F9, $0C, $EE, $7F, $E6, $7F, $DD, $77
                dc.b    $06, $18, $19, $13, $1A, $DD, $CB, $01, $7E, $C0, $DD, $86, $06, $F2, $99, $0C
                dc.b    $EA, $97, $0C, $AF, $C3, $99, $0C, $3E, $7F, $DD, $77, $06, $D5, $11, $AE, $04
                dc.b    $DD, $6E, $1C, $DD, $66, $1D, $06, $04, $7E, $B7, $F2, $B0, $0C, $DD, $86, $06
                dc.b    $E6, $7F, $4F, $1A, $CD, $B5, $00, $13, $23, $10, $ED, $D1, $C9, $DD, $CB, $00
                dc.b    $CE, $1B, $C9, $CD, $2D, $03, $DD, $77, $1E, $DD, $77, $1F, $C9, $13, $C6, $28
                dc.b    $4F, $06, $00, $DD, $E5, $E1, $09, $7E, $3D, $CA, $DE, $0C, $13, $C9, $AF, $77
                dc.b    $C3, $39, $0E, $DD, $CB, $01, $7E, $C8, $DD, $CB, $00, $A6, $DD, $35, $17, $DD
                dc.b    $86, $06, $FE, $0F, $DA, $F9, $0C, $3E, $0F, $DD, $77, $06, $C9, $D6, $40, $DD
                dc.b    $77, $05, $C9, $CD, $0A, $0D, $CD, $C8, $00, $C9, $EB, $7E, $23, $4E, $EB, $C9
                dc.b    $DD, $CB, $01, $7E, $20, $30, $CD, $EB, $09, $1A, $DD, $77, $08, $B7, $F2, $3C
                dc.b    $0D, $13, $1A, $DD, $77, $0F, $D5, $DD, $7E, $0F, $D6, $81, $0E, $04, $CF, $DF
                dc.b    $E7, $DD, $7E, $08, $E6, $7F, $47, $CD, $8F, $04, $18, $05, $D5, $47, $CD, $80
                dc.b    $04, $CD, $B6, $04, $D1, $C9, $B7, $F2, $35, $0E, $13, $C3, $35, $0E, $C9, $DD
                dc.b    $73, $20, $DD, $72, $21, $DD, $36, $07, $80, $13, $13, $13, $C9, $13, $DD, $CB
                dc.b    $01, $7E, $20, $01, $1A, $DD, $77, $07, $C9, $DD, $CB, $00, $BE, $3E, $1F, $32
                dc.b    $15, $1C, $CD, $58, $03, $DD, $4E, $01, $DD, $E5, $CD, $78, $07, $3A, $19, $1C
                dc.b    $B7, $28, $77, $AF, $32, $18, $1C, $E5, $2A, $37, $1C, $DD, $E1, $DD, $CB, $00
                dc.b    $96, $DD, $CB, $01, $7E, $20, $68, $DD, $CB, $00, $7E, $28, $5D, $3E, $02, $DD
                dc.b    $BE, $01, $20, $0D, $3E, $4F, $DD, $CB, $00, $46, $20, $02, $E6, $0F, $CD, $E9
                dc.b    $0E, $DD, $7E, $08, $B7, $F2, $BD, $0D, $CD, $26, $0D, $18, $3A, $47, $E5
Z80_0x0DBF:                               
                dc.b    $3A, $3E, $1C  
                dc.b    $CD ; Call Z80_Bank_Switch
                dc.w    ((Z80_Bank_Switch_Ptr>>$08)|(Z80_Bank_Switch_Ptr<<$08))&$FFFF  
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
             ;  dc.b    $21, $00, $60  ; Original
             ;  dc.b    $3A, $3E, $1C    
             ;  dc.b    $77, $1F, $77, $1F, $77, $1F, $77, $AF, $16, $01, $72, $77, $77, $77, $77
Z80_0x0DD4:                 
                dc.b    $E1, $CD, $8F, $04, $CD, $B6, $04
Z80_0x0DDB: ; Sfx Bank Switch ???            
                dc.b    $3E, Bank_Grp_Sfx         ; LD, A, Bank_Grp_Sfx 
                dc.b    $CD ; Call Z80_Bank_Switch
                dc.w    ((Z80_Bank_Switch_Ptr>>$08)|(Z80_Bank_Switch_Ptr<<$08))&$FFFF  
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
              ; dc.b    $21, $00, $60
              ; dc.b    $AF, $1E, $01, $73, $73, $73, $73, $73, $77, $77, $77, $77
                dc.b    $DD, $7E, $18, $B7, $F2, $FA
                dc.b    $0D, $DD, $5E, $19, $DD, $56, $1A, $CD, $7C, $0F, $DD, $E1, $E1, $E1, $C9, $DD
                dc.b    $CB, $00, $46, $28, $F5, $DD, $7E, $1A, $B7, $F2, $0F, $0E, $32, $11, $7F, $18
                dc.b    $E9, $DD, $CB, $01, $56, $C0, $3E, $DF, $32, $11, $7F, $1A, $DD, $77, $1A, $DD
                dc.b    $CB, $00, $C6, $B7, $20, $06, $DD, $CB, $00, $86, $3E, $FF, $32, $11, $7F, $C9
                dc.b    $DD, $CB, $01, $7E, $C8, $DD, $77, $08, $C9, $EB, $5E, $23, $56, $1B, $C9, $13
                dc.b    $C6, $28, $4F, $06, $00, $DD, $E5, $E1, $09, $7E, $B7, $20, $02, $1A, $77, $13
                dc.b    $35, $C2, $39, $0E, $13, $C9, $4F, $13, $1A, $47, $C5, $DD, $E5, $E1, $DD, $35
                dc.b    $09, $DD, $4E, $09, $DD, $35, $09, $06, $00, $09, $72, $2B, $73, $D1, $1B, $C9
                dc.b    $DD, $E5, $E1, $DD, $4E, $09, $06, $00, $09, $5E, $23, $56, $DD, $34, $09, $DD
                dc.b    $34, $09, $C9, $DD, $CB, $07, $BE, $1B, $C9, $DD, $86, $05, $DD, $77, $05, $C9
                dc.b    $3A, $26, $1C, $FE, $80, $CA, $A1, $0E, $AF, $32, $25, $1C, $32, $26, $1C, $13
                dc.b    $C9, $3A, $31, $1C, $3D, $32, $31, $1C, $C2, $39, $0E, $AF, $32, $26, $1C, $C3
                dc.b    $39, $0E, $FE, $01, $20, $05, $DD, $CB, $00, $DE, $C9, $DD, $CB, $00, $9E, $C9
                dc.b    $DD, $7E, $01, $FE, $02, $20, $2C, $DD, $CB, $00, $C6, $EB, $CD, $73, $02, $06
                dc.b    $04, $C5, $7E, $23, $E5, $21, $F7, $0E, $87, $4F, $06, $00, $09, $ED, $A0, $ED
                dc.b    $A0, $E1, $C1, $10, $EC, $EB, $1B, $3E, $4F, $32, $12, $1C, $4F, $3E, $27, $CD
                dc.b    $C8, $00, $C9, $13, $13, $13, $C9, $00, $00, $32, $01, $8E, $01, $E4, $01, $34
                dc.b    $02, $7E, $02, $C2, $02, $F0, $02, $21, $1F, $0C, $DF, $13, $1A, $E9, $32, $24
                dc.b    $1C, $C9, $DD, $E5, $CD, $F8, $04, $DD, $E1, $C9, $32, $11, $1C, $B7, $28, $1D
                dc.b    $DD, $E5, $D5, $DD, $21, $40, $1C, $06, $09, $11, $30, $00, $DD, $CB, $00, $BE
                dc.b    $CD, $5E, $03, $DD, $19, $10, $F5, $D1, $DD, $E1, $C3, $A1, $09, $DD, $E5, $D5
                dc.b    $DD, $21, $40, $1C, $06, $09, $11, $30, $00, $DD, $CB, $00, $FE, $DD, $19, $10
                dc.b    $F8, $D1, $DD, $E1, $C9, $EB, $5E, $23, $56, $23, $4E, $06, $00, $23, $EB, $ED
                dc.b    $B0, $1B, $C9, $06, $09, $21, $42, $1C, $C5, $01, $30, $00, $77, $09, $C1, $10
                dc.b    $F7, $C9, $DD, $36, $18, $80, $DD, $73, $19, $DD, $72, $1A, $21, $B2, $04, $06
                dc.b    $04, $1A, $13, $4F, $7E, $23, $CD, $B5, $00, $10, $F6, $1B, $C9, $DD, $77, $18
                dc.b    $13, $1A, $DD, $77, $19, $C9, $AF, $32, $27, $1C, $1B, $C9, $CD, $37, $03, $20
                dc.b    $0D, $CD, $74, $02, $DD, $CB, $00, $66, $C0, $CD, $9B, $03, $18, $0C, $DD, $7E
                dc.b    $1E, $B7, $28, $06, $DD, $35, $1E, $CA, $44, $10, $CD, $6C, $04, $CD, $C6, $03
                dc.b    $DD, $CB, $00, $56, $C0, $DD, $4E, $01, $7D, $E6, $0F, $B1, $32, $11, $7F, $7D
                dc.b    $E6, $F0, $B4, $0F, $0F, $0F, $0F, $32, $11, $7F, $DD, $7E, $08, $B7, $0E, $00
                dc.b    $28, $09, $3D, $0E, $0A, $CF, $DF, $CD, $12, $10, $4F, $DD, $CB, $00, $66, $C0
                dc.b    $DD, $7E, $06, $81, $CB, $67, $28, $02, $3E, $0F, $DD, $B6, $01, $C6, $10, $DD
                dc.b    $CB, $00, $46, $20, $04, $32, $11, $7F, $C9, $C6, $20, $32, $11, $7F, $C9, $DD
                dc.b    $77, $17, $E5, $DD, $4E, $17, $06, $00, $09, $7E, $E1, $CB, $7F, $28, $21, $FE
                dc.b    $83, $28, $0C, $FE, $81, $28, $13, $FE, $80, $28, $0C, $03, $0A, $18, $E0, $DD
                dc.b    $CB, $00, $E6, $E1, $C3, $44, $10, $AF, $18, $D5, $E1, $DD, $CB, $00, $E6, $C9
                dc.b    $DD, $34, $17, $C9, $DD, $CB, $00, $E6, $DD, $CB, $00, $56, $C0, $3E, $1F, $DD
                dc.b    $86, $01, $B7, $F0, $32, $11, $7F, $DD, $CB, $00, $46, $C8, $3E, $FF, $32, $11
                dc.b    $7F, $C9, $F3, $3E, $2B, $0E, $00, $CD, $C8, $00, $FB, $3A, $3F, $1C, $B7, $C2
                dc.b    $FE, $10, $3A, $30, $1C, $B7, $28, $F2, $3E, $2B, $0E, $80, $F3, $CD, $C8, $00
                dc.b    $FB, $FD, $21, $EE, $10, $21, $30, $1C, $7E, $3D, $CB, $FE, $21, $00, $80, $DF
                dc.b    $0E, $80, $7E, $32, $A3, $10, $32, $C0, $10, $23, $5E, $23, $56, $23, $7E, $23
                dc.b    $66, $6F, $06, $0A, $FB, $10, $FE, $F3, $3E, $2A, $32, $00, $40, $7E, $07, $07
                dc.b    $07, $07, $E6, $0F, $32, $BA, $10, $79, $FD, $86, $00, $32, $01, $40, $4F, $06
                dc.b    $0A, $FB, $10, $FE, $F3, $3E, $2A, $32, $00, $40, $7E, $E6, $0F, $32, $D3, $10
                dc.b    $79, $FD, $86, $00, $32, $01, $40, $FB, $4F, $3A, $30, $1C, $B7, $F2, $6A, $10
                dc.b    $23, $1B, $7A, $B3, $C2, $A2, $10, $AF, $32, $30, $1C, $C3, $62, $10, $00, $01
                dc.b    $02, $04, $08, $10, $20, $40, $80, $FF, $FE, $FC, $F8, $F0, $E0, $C0, $F3, $CD
                dc.b    $C7, $09, $3E, $2B, $32, $00, $40, $00, $3E, $80, $32, $01, $40
Z80_0x110D: ; Sega Sound Bank Switch            
                dc.b    $3E, Sega_Grp ; LD, A, Sega_Grp 
                dc.b    $CD           ; Call Z80_Bank_Switch
                dc.w    ((Z80_Bank_Switch_Ptr>>$08)|(Z80_Bank_Switch_Ptr<<$08))&$FFFF 
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00
        ;       dc.b    $3E, $1F      ; LD  A, 1Fh                                             
        ;       dc.b    $06, $08      ; LD  B, 08h
        ;       dc.b    $32, $00, $60 ; LD  (6000h), A  
        ;       dc.b    $0F           ; RRCA
        ;       dc.b    $10, $FA      ; DJNZ FAh
        ;       dc.b    $AF           ; XOR A, A     
        ;       dc.b    $32, $00, $60 ; LD  (6000h), A                                                 
                dc.b    $21           ; LD  HL, 8000h ;  Sega Bank Offset
                dc.w    ((Sega_Snd_Ptr>>$08)|(Sega_Snd_Ptr<<$08))&$FFFF ; $0080  {$8000}
                dc.b    $11, $2F, $5E ; LD  DE, 5E2Fh ;  Sega Sound Size
                dc.b    $3E, $2A, $32, $00, $40, $00, $7E, $32, $01, $40, $3A, $0A, $1C, $FE, $FE
                dc.b    $28, $0C, $00, $00, $06, $0C, $10, $FE, $23, $1B, $7A, $B3, $20, $E9, $AF, $32
                dc.b    $3F, $1C, $21, $0D, $1C, $CD, $D3, $09, $C3, $62, $10, $FF                
Z80_0x114C:                 
              ; dc.b    $C3, $4C, $11        
                dc.b    $21, $00, $60 ; LD HL,6000h                                                      
                dc.b    $77, $0F, $77, $0F, $77, $0F, $77, $0F, $77, $0F, $77, $0F, $77, $0F, $77 
                dc.b    $AF, $77  
                dc.b    $C3, $82, $00 ; JP 0082h
Z80_Bank_Switch_0:                
Z80_0x1170:                 
                dc.b    $21, $00, $60  ; LD  HL, 6000h         
                dc.b    $77            ; LD  (HL), E   
                dc.b    $1F            ; RRA
                dc.b    $77            ; LD  (HL), A   
                dc.b    $1F            ; RRA
                dc.b    $77            ; LD  (HL), A     
                dc.b    $1F            ; RRA                           
                dc.b    $77            ; LD  (HL), E                  
                dc.b    $AF            ; XOR A, A   -> LD  A, 00h             
                dc.b    $16, $01       ; LD  D, 01h                  
                dc.b    $72            ; LD  (HL), D   ; 1                            
                dc.b    $77            ; LD  (HL), A   ; 0   
                dc.b    $77            ; LD  (HL), A   ; 0
                dc.b    $77            ; LD  (HL), A   ; 0
                dc.b    $77            ; LD  (HL), A   ; 0                              
                dc.b    $C9            ; RET
Z80_Bank_Switch:                
                dc.b    $21, $00, $60  ; LD  HL,6000h               
                dc.b    $77            ; LD  (HL), A    ; moves last bit to HL
                dc.b    $1F            ; RRA            ; rotate Bits Right
                dc.b    $77            ; LD  (HL), A  
                dc.b    $1F            ; RRA 
                dc.b    $77            ; LD  (HL), A  
                dc.b    $1F            ; RRA 
                dc.b    $77            ; LD  (HL), A  
                dc.b    $1F            ; RRA 
                dc.b    $77            ; LD  (HL), A  
                dc.b    $1F            ; RRA 
                dc.b    $77            ; LD  (HL), A  
                dc.b    $1F            ; RRA 
                dc.b    $77            ; LD  (HL), A  
                dc.b    $1F            ; RRA 
                dc.b    $77            ; LD  (HL), A  
                dc.b    $1F            ; RRA 
                dc.b    $77            ; LD  (HL), A  
                dc.b    $C9            ; RET                                
Driver_Data_End:                 
;-------------------------------------------------------------------------------   
; Filler to align pointers at 1300h in Z80 Ram
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
                dc.b    $00, $00, $00, $00, $00               
Driver_Pointers:                
;------------------------------------------------------------------------------- 
Z80_130E_Ptr    equ     (Z80_0x130E&$1FFF)                             ; $0E730E 
Z80_1387_Ptr    equ     (Z80_0x1387&$1FFF)                             ; $0E7387 
Sound_Ptr       equ     (Sound_Pointers&$1FFF)                         ; $0E761A 
Sfx_Ptr         equ     (Sfx_Pointers&$1FFF)                           ; $0E767E 
UVB_Ptr         equ     (Universal_Voice_Bank&$1FFF)                   ; $0E77D8  
                 
S3_Driver_Pointers equ  $1300 ; Z80 Ram Location                
                dc.w    ((Sound_Ptr>>$08)|(Sound_Ptr<<$08))&$FFFF       ; $1A16  {$161A}           
                dc.w    ((UVB_Ptr>>$08)|(UVB_Ptr<<$08))&$FFFF           ; $D817  {$17D8}                
                dc.w    ((Sound_Ptr>>$08)|(Sound_Ptr<<$08))&$FFFF       ; $1A16  {$161A}
                dc.w    ((Sfx_Ptr>>$08)|(Sfx_Ptr<<$08))&$FFFF           ; $7E16  {$167E}
                dc.w    ((Z80_130E_Ptr>>$08)|(Z80_130E_Ptr<<$08))&$FFFF ; $0E13  {$130E} 
                dc.w    ((Z80_1387_Ptr>>$08)|(Z80_1387_Ptr<<$08))&$FFFF ; $8713  {$1378}
                dc.b    $33, $00   
;------------------------------------------------------------------------------- 
Z80_131E_Ptr    equ     (Z80_0x131E&$1FFF)
Z80_131F_Ptr    equ     (Z80_0x131F&$1FFF)
Z80_132B_Ptr    equ     (Z80_0x132B&$1FFF)
Z80_1338_Ptr    equ     (Z80_0x1338&$1FFF)
Z80_1346_Ptr    equ     (Z80_0x1346&$1FFF)
Z80_1352_Ptr    equ     (Z80_0x1352&$1FFF) 
Z80_1364_Ptr    equ     (Z80_0x1364&$1FFF)
Z80_1375_Ptr    equ     (Z80_0x1375&$1FFF)  
                                       
Z80_0x130E: 
                dc.w    ((Z80_131F_Ptr>>$08)|(Z80_131F_Ptr<<$08))&$FFFF ; $1F13  {$131F} 
                dc.w    ((Z80_131E_Ptr>>$08)|(Z80_131E_Ptr<<$08))&$FFFF ; $1E13  {$131E}
                dc.w    ((Z80_132B_Ptr>>$08)|(Z80_132B_Ptr<<$08))&$FFFF ; $2B13  {$132B}
                dc.w    ((Z80_1338_Ptr>>$08)|(Z80_1338_Ptr<<$08))&$FFFF ; $3813  {$1338}
                dc.w    ((Z80_1346_Ptr>>$08)|(Z80_1346_Ptr<<$08))&$FFFF ; $4613  {$1346}
                dc.w    ((Z80_1352_Ptr>>$08)|(Z80_1352_Ptr<<$08))&$FFFF ; $5213  {$1352}
                dc.w    ((Z80_1364_Ptr>>$08)|(Z80_1364_Ptr<<$08))&$FFFF ; $6413  {$1364}
                dc.w    ((Z80_1375_Ptr>>$08)|(Z80_1375_Ptr<<$08))&$FFFF ; $7513  {$1375}    
Z80_0x131E:                
                dc.b    $00  
Z80_0x131F:                                                             
                dc.b    $01, $02, $01, $00, $FF, $FE, $FD, $FC, $FD, $FE, $FF, $83
Z80_0x132B:                 
                dc.b    $00, $00, $00, $00, $13, $26, $39, $4C, $5F, $72, $7F, $72, $83
Z80_0x1338:                 
                dc.b    $01, $02, $03, $02, $01, $00, $FF, $FE, $FD, $FE, $FF, $00, $82, $00 
Z80_0x1346:                  
                dc.b    $00, $00, $01, $03, $01, $00, $FF, $FD, $FF, $00, $82, $02
Z80_0x1352:                 
                dc.b    $00, $00, $00, $00, $00, $0A, $14, $1E, $14, $0A, $00, $F6, $EC, $E2, $EC, $F6
                dc.b    $82, $04
Z80_0x1364:                  
                dc.b    $00, $00, $00, $00, $16, $2C, $42, $2C, $16, $00, $EA, $D4, $BE, $D4, $EA, $82
                dc.b    $03
Z80_0x1375:                
                dc.b    $01, $02, $03, $04, $03, $02, $01, $00, $FF, $FE, $FD, $FC, $FD, $FE, $FF, $00                 
                dc.b    $82, $01 
;-------------------------------------------------------------------------------  
Z80_13D5_Ptr    equ     (Z80_0x13D5&$1FFF)
Z80_13D7_Ptr    equ     (Z80_0x13D7&$1FFF)
Z80_13DE_Ptr    equ     (Z80_0x13DE&$1FFF)
Z80_13F7_Ptr    equ     (Z80_0x13F7&$1FFF)   
Z80_1403_Ptr    equ     (Z80_0x1403&$1FFF)
Z80_140E_Ptr    equ     (Z80_0x140E&$1FFF)  
Z80_141D_Ptr    equ     (Z80_0x141D&$1FFF)  
Z80_1426_Ptr    equ     (Z80_0x1426&$1FFF) 
Z80_1437_Ptr    equ     (Z80_0x1437&$1FFF)  
Z80_1442_Ptr    equ     (Z80_0x1442&$1FFF) 
Z80_1457_Ptr    equ     (Z80_0x1457&$1FFF)
Z80_1461_Ptr    equ     (Z80_0x1461&$1FFF)
Z80_146A_Ptr    equ     (Z80_0x146A&$1FFF)    
Z80_146C_Ptr    equ     (Z80_0x146C&$1FFF) 
Z80_146E_Ptr    equ     (Z80_0x146E&$1FFF) 
Z80_1475_Ptr    equ     (Z80_0x1475&$1FFF) 
Z80_1494_Ptr    equ     (Z80_0x1494&$1FFF)  
Z80_149B_Ptr    equ     (Z80_0x149B&$1FFF) 
Z80_14A6_Ptr    equ     (Z80_0x14A6&$1FFF) 
Z80_14B5_Ptr    equ     (Z80_0x14B5&$1FFF) 
Z80_14BB_Ptr    equ     (Z80_0x14BB&$1FFF) 
Z80_14CC_Ptr    equ     (Z80_0x14CC&$1FFF)   
Z80_14D7_Ptr    equ     (Z80_0x14D7&$1FFF) 
Z80_14EC_Ptr    equ     (Z80_0x14EC&$1FFF)
Z80_1505_Ptr    equ     (Z80_0x1505&$1FFF) 
Z80_150E_Ptr    equ     (Z80_0x150E&$1FFF)
Z80_1515_Ptr    equ     (Z80_0x1515&$1FFF) 
Z80_151E_Ptr    equ     (Z80_0x151E&$1FFF)
Z80_152F_Ptr    equ     (Z80_0x152F&$1FFF)
Z80_155C_Ptr    equ     (Z80_0x155C&$1FFF)
Z80_155F_Ptr    equ     (Z80_0x155F&$1FFF)
Z80_1563_Ptr    equ     (Z80_0x1563&$1FFF)
Z80_1570_Ptr    equ     (Z80_0x1570&$1FFF)
Z80_1582_Ptr    equ     (Z80_0x1582&$1FFF)
Z80_1589_Ptr    equ     (Z80_0x1589&$1FFF)
Z80_1592_Ptr    equ     (Z80_0x1592&$1FFF)      
Z80_1596_Ptr    equ     (Z80_0x1596&$1FFF)        
Z80_15A8_Ptr    equ     (Z80_0x15A8&$1FFF)
Z80_160D_Ptr    equ     (Z80_0x160D&$1FFF)  

Z80_0x1387:                
                dc.w    ((Z80_13D5_Ptr>>$08)|(Z80_13D5_Ptr<<$08))&$FFFF ; $D513  {$13D5}
                dc.w    ((Z80_13D7_Ptr>>$08)|(Z80_13D7_Ptr<<$08))&$FFFF ; $D713  {$13D7}
                dc.w    ((Z80_13DE_Ptr>>$08)|(Z80_13DE_Ptr<<$08))&$FFFF ; $DE13  {$13DE}
                dc.w    ((Z80_13F7_Ptr>>$08)|(Z80_13F7_Ptr<<$08))&$FFFF ; $F713  {$13F7}
                dc.w    ((Z80_1403_Ptr>>$08)|(Z80_1403_Ptr<<$08))&$FFFF ; $0314  {$1403}
                dc.w    ((Z80_140E_Ptr>>$08)|(Z80_140E_Ptr<<$08))&$FFFF ; $0E14  {$140E}
                dc.w    ((Z80_141D_Ptr>>$08)|(Z80_141D_Ptr<<$08))&$FFFF ; $1D14  {$141D}               
                dc.w    ((Z80_1426_Ptr>>$08)|(Z80_1426_Ptr<<$08))&$FFFF ; $2614  {$1426}
                dc.w    ((Z80_1437_Ptr>>$08)|(Z80_1437_Ptr<<$08))&$FFFF ; $3714  {$1437}
                dc.w    ((Z80_1442_Ptr>>$08)|(Z80_1442_Ptr<<$08))&$FFFF ; $4214  {$1442}
                dc.w    ((Z80_1457_Ptr>>$08)|(Z80_1457_Ptr<<$08))&$FFFF ; $5714  {$1457}
                dc.w    ((Z80_1461_Ptr>>$08)|(Z80_1461_Ptr<<$08))&$FFFF ; $6114  {$1461}
                dc.w    ((Z80_146A_Ptr>>$08)|(Z80_146A_Ptr<<$08))&$FFFF ; $6A14  {$146A}                
                dc.w    ((Z80_146C_Ptr>>$08)|(Z80_146C_Ptr<<$08))&$FFFF ; $6C14  {$146C}
                dc.w    ((Z80_146E_Ptr>>$08)|(Z80_146E_Ptr<<$08))&$FFFF ; $6E14  {$146E}
                dc.w    ((Z80_1475_Ptr>>$08)|(Z80_1475_Ptr<<$08))&$FFFF ; $7514  {$1475}
                dc.w    ((Z80_1494_Ptr>>$08)|(Z80_1494_Ptr<<$08))&$FFFF ; $9414  {$1494}
                dc.w    ((Z80_149B_Ptr>>$08)|(Z80_149B_Ptr<<$08))&$FFFF ; $9B14  {$149B}
                dc.w    ((Z80_14A6_Ptr>>$08)|(Z80_14A6_Ptr<<$08))&$FFFF ; $A614  {$14A6}
                dc.w    ((Z80_14B5_Ptr>>$08)|(Z80_14B5_Ptr<<$08))&$FFFF ; $B514  {$14B5}
                dc.w    ((Z80_14BB_Ptr>>$08)|(Z80_14BB_Ptr<<$08))&$FFFF ; $BB14  {$14BB}              
                dc.w    ((Z80_14CC_Ptr>>$08)|(Z80_14CC_Ptr<<$08))&$FFFF ; $CC14  {$14CC}
                dc.w    ((Z80_14D7_Ptr>>$08)|(Z80_14D7_Ptr<<$08))&$FFFF ; $D714  {$14D7}
                dc.w    ((Z80_14EC_Ptr>>$08)|(Z80_14EC_Ptr<<$08))&$FFFF ; $EC14  {$14EC}
                dc.w    ((Z80_1505_Ptr>>$08)|(Z80_1505_Ptr<<$08))&$FFFF ; $0515  {$1505}
                dc.w    ((Z80_150E_Ptr>>$08)|(Z80_150E_Ptr<<$08))&$FFFF ; $0E15  {$150E}
                dc.w    ((Z80_1515_Ptr>>$08)|(Z80_1515_Ptr<<$08))&$FFFF ; $1515  {$1515}
                dc.w    ((Z80_151E_Ptr>>$08)|(Z80_151E_Ptr<<$08))&$FFFF ; $1E15  {$151E}
                dc.w    ((Z80_152F_Ptr>>$08)|(Z80_152F_Ptr<<$08))&$FFFF ; $2F15  {$152F}
                dc.w    ((Z80_155C_Ptr>>$08)|(Z80_155C_Ptr<<$08))&$FFFF ; $5C15  {$155C}
                dc.w    ((Z80_155F_Ptr>>$08)|(Z80_155F_Ptr<<$08))&$FFFF ; $5F15  {$155F}
                dc.w    ((Z80_1563_Ptr>>$08)|(Z80_1563_Ptr<<$08))&$FFFF ; $6315  {$1563}
                dc.w    ((Z80_1570_Ptr>>$08)|(Z80_1570_Ptr<<$08))&$FFFF ; $7015  {$1570}
                dc.w    ((Z80_1582_Ptr>>$08)|(Z80_1582_Ptr<<$08))&$FFFF ; $8215  {$1582}
                dc.w    ((Z80_1589_Ptr>>$08)|(Z80_1589_Ptr<<$08))&$FFFF ; $8915  {$1589}
                dc.w    ((Z80_1592_Ptr>>$08)|(Z80_1592_Ptr<<$08))&$FFFF ; $9215  {$1592}
                dc.w    ((Z80_1596_Ptr>>$08)|(Z80_1596_Ptr<<$08))&$FFFF ; $9615  {$1596}
                dc.w    ((Z80_15A8_Ptr>>$08)|(Z80_15A8_Ptr<<$08))&$FFFF ; $A815  {$15A8}
                dc.w    ((Z80_160D_Ptr>>$08)|(Z80_160D_Ptr<<$08))&$FFFF ; $0D16  {$160D}                 
Z80_0x13D5:                
                dc.b    $02, $83
Z80_0x13D7:                 
                dc.b    $00, $02, $04, $06, $08, $10, $83
Z80_0x13DE:                   
                dc.b    $02, $01, $00, $00, $01, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
                dc.b    $02, $03, $03, $03, $04, $04, $04, $05, $81   
Z80_0x13F7:                 
                dc.b    $00, $00, $02, $03, $04, $04, $05, $05, $05, $06, $06, $81 
Z80_0x1403:                
                dc.b    $03, $00, $01, $01, $01, $02, $03, $04, $04, $05, $81
Z80_0x140E:                
                dc.b    $00, $00, $01, $01, $02, $03, $04, $05, $05, $06, $08, $07, $07, $06, $81                
Z80_0x141D:                 
                dc.b    $01, $0C, $03, $0F, $02, $07, $03, $0F, $80
Z80_0x1426:                 
                dc.b    $00, $00, $00, $02, $03, $03, $04, $05, $06, $07, $08, $09, $0A, $0B, $0E, $0F
                dc.b    $83
Z80_0x1437:                 
                dc.b    $03, $02, $01, $01, $00, $00, $01, $02, $03, $04, $81
Z80_0x1442:                 
                dc.b    $01, $00, $00, $00, $00, $01, $01, $01, $02, $02, $02, $03, $03, $03, $03, $04
                dc.b    $04, $04, $05, $05, $81 
Z80_0x1457:                
                dc.b    $10, $20, $30, $40, $30, $20, $10, $00, $F0, $80
Z80_0x1461:                 
                dc.b    $00, $00, $01, $01, $03, $03, $04, $05, $83
Z80_0x146A:                 
                dc.b    $00, $81
Z80_0x146C:                
                dc.b    $02, $83
Z80_0x146E:                 
                dc.b    $00, $02, $04, $06, $08, $10, $83
Z80_0x1475:                 
                dc.b    $09, $09, $09, $08, $08, $08, $07, $07, $07, $06, $06, $06, $05, $05, $05, $04
                dc.b    $04, $04, $03, $03, $03, $02, $02, $02, $01, $01, $01, $00, $00, $00, $81
Z80_0x1494:                
                dc.b    $01, $01, $01, $00, $00, $00, $81
Z80_0x149B:                 
                dc.b    $03, $00, $01, $01, $01, $02, $03, $04, $04, $05, $81
Z80_0x14A6:                      
                dc.b    $00, $00, $01, $01, $02, $03, $04, $05, $05, $06, $08, $07, $07, $06, $81
Z80_0x14B5:                  
                dc.b    $0A, $05, $00, $04, $08, $83
Z80_0x14BB:                 
                dc.b    $00, $00, $00, $02, $03, $03, $04, $05, $06, $07, $08, $09, $0A, $0B, $0E, $0F
                dc.b    $83
Z80_0x14CC:                
                dc.b    $03, $02, $01, $01, $00, $00, $01, $02, $03, $04, $81
Z80_0x14D7:                                   
                dc.b    $01, $00, $00, $00, $00, $01, $01, $01, $02, $02, $02, $03, $03, $03, $03, $04
                dc.b    $04, $04, $05, $05, $81
Z80_0x14EC:                
                dc.b    $10, $20, $30, $40, $30, $20, $10, $00, $10, $20, $30, $40, $30, $20, $10, $00
                dc.b    $10, $20, $30, $40, $30, $20, $10, $00, $80
Z80_0x1505:                                
                dc.b    $00, $00, $01, $01, $03, $03, $04, $05, $83
Z80_0x150E:                 
                dc.b    $00, $02, $04, $06, $08, $16, $83
Z80_0x1515:                
                dc.b    $00, $00, $01, $01, $03, $03, $04, $05, $83
Z80_0x151E:                
                dc.b    $04, $04, $04, $04, $03, $03, $03, $03, $02, $02, $02, $02, $01, $01, $01, $01
                dc.b    $83
Z80_0x152F:                
                dc.b    $00, $00, $00, $00, $01, $01, $01, $01, $02, $02, $02, $02, $03, $03, $03, $03
                dc.b    $04, $04, $04, $04, $05, $05, $05, $05, $06, $06, $06, $06, $07, $07, $07, $07
                dc.b    $08, $08, $08, $08, $09, $09, $09, $09, $0A, $0A, $0A, $0A, $81
Z80_0x155C:                                   
                dc.b    $00, $0A, $83
Z80_0x155F:                
                dc.b    $00, $02, $04, $81
Z80_0x1563:                 
                dc.b    $30, $20, $10, $00, $00, $00, $00, $00, $08, $10, $20, $30, $81
Z80_0x1570:                
                dc.b    $00, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $06, $06, $06, $08, $08
                dc.b    $0A, $83
Z80_0x1582:                               
                dc.b    $00, $02, $03, $04, $06, $07, $81
Z80_0x1589:                
                dc.b    $02, $01, $00, $00, $00, $02, $04, $07, $81
Z80_0x1592:                        
                dc.b    $0F, $01, $05, $83
Z80_0x1596:                 
                dc.b    $08, $06, $02, $03, $04, $05, $06, $07, $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
                dc.b    $10, $83
Z80_0x15A8:                
                dc.b    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01
                dc.b    $01, $01, $01, $01, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $03, $03
                dc.b    $03, $03, $03, $03, $03, $03, $03, $03, $04, $04, $04, $04, $04, $04, $04, $04
                dc.b    $04, $04, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $06, $06, $06, $06
                dc.b    $06, $06, $06, $06, $06, $06, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
                dc.b    $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $09, $09, $09, $09, $09, $09
                dc.b    $09, $09, $09, $09, $83
Z80_0x160D:                 
                dc.b    $00, $02, $02
                dc.b    $02, $03, $03, $03, $04, $04, $04, $05, $05, $83
                ; Bank 0
MB_Ptr          equ     (Mini_Boss_Snd&$FFFF)|$8000                    ; $0C71A0   
FB_Ptr          equ     (Final_Boss_Snd&$FFFF)|$8000                   ; $0C7A61                
                ; Bank 1
AIz1_Ptr        equ     (Angel_Island_1_Snd&$FFFF)|$8000               ; $0C8000
AIz2_Ptr        equ     (Angel_Island_2_Snd&$FFFF)|$8000               ; $0C9B6D
HCz1_Ptr        equ     (Hidrocity_1_Snd&$FFFF)|$8000                  ; $0CB0BC
HCz2_Ptr        equ     (Hidrocity_2_Snd&$FFFF)|$8000                  ; $0CC0C6
MGz1_Ptr        equ     (Marble_Garden_1_Snd&$FFFF)|$8000              ; $0CD364
MGz2_Ptr        equ     (Marble_Garden_2_Snd&$FFFF)|$8000              ; $0CD97B
CNz2_Ptr        equ     (Carnival_Night_2_Snd&$FFFF)|$8000             ; $0CDDA9
CNz1_Ptr        equ     (Carnival_Night_1_Snd&$FFFF)|$8000             ; $0CE48F   
FBz1_Ptr        equ     (Flying_Battery_1_Snd&$FFFF)|$8000             ; $0CEBF1
FBz2_Ptr        equ     (Flying_Battery_2_Snd&$FFFF)|$8000             ; $0CF189   
TDz_Ptr         equ     (The_Doomsday_Snd&$FFFF)|$8000                 ; $0CF6F0
                ; Bank 2
Iz2_Ptr         equ     (Icecap_2_Snd&$FFFF)|$8000                     ; $0D0000
Iz1_Ptr         equ     (Icecap_1_Snd&$FFFF)|$8000                     ; $0D06AA
LBz2_Ptr        equ     (Launch_Base_2_Snd&$FFFF)|$8000                ; $0D0DC8
LBz1_Ptr        equ     (Launch_Base_1_Snd&$FFFF)|$8000                ; $0D1345
MHz1_Ptr        equ     (Mushroom_Hill_1_Snd&$FFFF)|$8000              ; $0D17A7
MHz2_Ptr        equ     (Mushroom_Hill_2_Snd&$FFFF)|$8000              ; $0D1DAF
Sz1_Ptr         equ     (Sandopolis_1_Snd&$FFFF)|$8000                 ; $0D2331
Sz2_Ptr         equ     (Sandopolis_2_Snd&$FFFF)|$8000                 ; $0D299B
LRz1_Ptr        equ     (Lava_Reef_1_Snd&$FFFF)|$8000                  ; $0D2F8E
LRz2_Ptr        equ     (Lava_Reef_2_Snd&$FFFF)|$8000                  ; $0D399C
SCz_Ptr         equ     (Sky_Sanctuary_Snd&$FFFF)|$8000                ; $0D4B29
DEz1_Ptr        equ     (Death_Egg_1_Snd&$FFFF)|$8000                  ; $0D4F4F
DEz2_Ptr        equ     (Death_Egg_2_Snd&$FFFF)|$8000                  ; $0D543A
MB_SK_Ptr       equ     (Mini_Boss_SK_Snd&$FFFF)|$8000                 ; $0D584C
Boss_Ptr        equ     (Boss_Snd&$FFFF)|$8000                         ; $0D5B7C
GS_BS_Ptr       equ     (Glowing_Spheres_Bonus_Stage_snd&$FFFF)|$8000  ; $0D6078 
SS_Ptr          equ     (Special_Stage_Snd&$FFFF)|$8000                ; $0D65DB
LR_Ptr          equ     (Level_Results_Snd&$FFFF)|$8000                ; $0D6E73
Menu_Ptr        equ     (Menu_Snd&$FFFF)|$8000                         ; $0D7027
                ; Bank 3
SM_BS_Ptr       equ     (Slot_Machine_Bonus_Stage_snd&$FFFF)|$8000     ; $0D8000
GBM_BS_Ptr      equ     (Gum_Ball_Machine_Bonus_Stage_snd&$FFFF)|$8000 ; $0D8AE8
KTE_Ptr         equ     (Knuckles_Theme_Snd&$FFFF)|$8000               ; $0D97FD
ALz_Ptr         equ     (Azure_Lake_Snd&$FFFF)|$8000                   ; $0D99F7
BPz_Ptr         equ     (Balloon_Park_Snd&$FFFF)|$8000                 ; $0DA4FD
DPz_Ptr         equ     (Desert_Palace_Snd&$FFFF)|$8000                ; $0DB0EC
CGz_Ptr         equ     (Chrome_Gadget_Snd&$FFFF)|$8000                ; $0DC324
EMz_Ptr         equ     (Endless_Mine_Snd&$FFFF)|$8000                 ; $0DDA47
TS_Ptr          equ     (Title_Screen_Snd&$FFFF)|$8000                 ; $0DE18F
Credits_Ptr     equ     (Credits_Snd&$FFFF)|$8000                      ; $0DE587
TGOvr_Ptr       equ     (Time_Game_Over_Snd&$FFFF)|$8000               ; $0DEA20
Continue_Ptr    equ     (Continue_Snd&$FFFF)|$8000                     ; $0DEC7B
_1_Up_Ptr       equ     (Extra_Life_Snd&$FFFF)|$8000                   ; $0DF095
Emerald_Ptr     equ     (Emerald_Snd&$FFFF)|$8000                      ; $0DF298
Invcblty_Ptr    equ     (Invencibility_Snd&$FFFF)|$8000                ; $0DF364
_2p_Menu_Ptr    equ     (Competition_Menu_Snd&$FFFF)|$8000             ; $0DF5E4
UT_Ptr          equ     (Underwater_Timming_Snd&$FFFF)|$8000           ; $0DFABE
PbS_Ptr         equ     (Presented_by_SEGA_Snd&$FFFF)|$8000            ; $0DFBFE
                ; Bank 4
Sega_Snd_Ptr    equ     (Sega_Snd&$FFFF)|$8000                         ; $0F8000                  
Sfx_34_Ptr      equ     (Sfx_34_Snd&$FFFF)|$8000                       ; $0FDE30  
Sfx_35_Ptr      equ     (Sfx_35_Snd&$FFFF)|$8000                       ; $0FDE5E        
Sfx_36_Ptr      equ     (Sfx_36_Snd&$FFFF)|$8000                       ; $0FDE6F
Sfx_37_Ptr      equ     (Sfx_37_Snd&$FFFF)|$8000                       ; $0FDEA1 
Sfx_38_Ptr      equ     (Sfx_38_Snd&$FFFF)|$8000                       ; $0FDEC5        
Sfx_39_Ptr      equ     (Sfx_39_Snd&$FFFF)|$8000                       ; $0FDEF4 
Sfx_3A_Ptr      equ     (Sfx_3A_Snd&$FFFF)|$8000                       ; $0FDF2A
Sfx_3B_Ptr      equ     (Sfx_3B_Snd&$FFFF)|$8000                       ; $0FDF6B
Sfx_3C_Ptr      equ     (Sfx_3C_Snd&$FFFF)|$8000                       ; $0FDF96
Sfx_3D_Ptr      equ     (Sfx_3D_Snd&$FFFF)|$8000                       ; $0FDFE5
Sfx_3E_Ptr      equ     (Sfx_3E_Snd&$FFFF)|$8000                       ; $0FE023
Sfx_3F_Ptr      equ     (Sfx_3F_Snd&$FFFF)|$8000                       ; $0FE05D     
Sfx_40_Ptr      equ     (Sfx_40_Snd&$FFFF)|$8000                       ; $0FE088
Sfx_41_Ptr      equ     (Sfx_41_Snd&$FFFF)|$8000                       ; $0FE0AB
Sfx_42_Ptr      equ     (Sfx_42_Snd&$FFFF)|$8000                       ; $0FE0CE
Sfx_43_Ptr      equ     (Sfx_43_Snd&$FFFF)|$8000                       ; $0FE0F1                                                 
Sfx_44_Ptr      equ     (Sfx_44_Snd&$FFFF)|$8000                       ; $0FE109                                                 
Sfx_45_Ptr      equ     (Sfx_45_Snd&$FFFF)|$8000                       ; $0FE122                                                 
Sfx_46_Ptr      equ     (Sfx_46_Snd&$FFFF)|$8000                       ; $0FE14F                                                 
Sfx_47_Ptr      equ     (Sfx_47_Snd&$FFFF)|$8000                       ; $0FE177                                                 
Sfx_48_Ptr      equ     (Sfx_48_Snd&$FFFF)|$8000                       ; $0FE1A4                                                
Sfx_49_Ptr      equ     (Sfx_49_Snd&$FFFF)|$8000                       ; $0FE1C4                                                
Sfx_4A_Ptr      equ     (Sfx_4A_Snd&$FFFF)|$8000                       ; $0FE1DE                                                                      
Sfx_4B_Ptr      equ     (Sfx_4B_Snd&$FFFF)|$8000                       ; $0FE206
Sfx_4C_Ptr      equ     (Sfx_4C_Snd&$FFFF)|$8000                       ; $0FE22E
Sfx_4D_Ptr      equ     (Sfx_4D_Snd&$FFFF)|$8000                       ; $0FE278
Sfx_4E_Ptr      equ     (Sfx_4E_Snd&$FFFF)|$8000                       ; $0FE2A2
Sfx_4F_Ptr      equ     (Sfx_4F_Snd&$FFFF)|$8000                       ; $0FE2CF
Sfx_50_Ptr      equ     (Sfx_50_Snd&$FFFF)|$8000                       ; $0FE313
Sfx_51_Ptr      equ     (Sfx_51_Snd&$FFFF)|$8000                       ; $0FE322
Sfx_52_Ptr      equ     (Sfx_52_Snd&$FFFF)|$8000                       ; $0FE35A
Sfx_53_Ptr      equ     (Sfx_53_Snd&$FFFF)|$8000                       ; $0FE38B                
Sfx_54_Ptr      equ     (Sfx_54_Snd&$FFFF)|$8000                       ; $0FE3A8                
Sfx_55_Ptr      equ     (Sfx_55_Snd&$FFFF)|$8000                       ; $0FE3E8                
Sfx_56_Ptr      equ     (Sfx_56_Snd&$FFFF)|$8000                       ; $0FE42B                
Sfx_57_Ptr      equ     (Sfx_57_Snd&$FFFF)|$8000                       ; $0FE453               
Sfx_58_Ptr      equ     (Sfx_58_Snd&$FFFF)|$8000                       ; $0FE463               
Sfx_59_Ptr      equ     (Sfx_59_Snd&$FFFF)|$8000                       ; $0FE481               
Sfx_5A_Ptr      equ     (Sfx_5A_Snd&$FFFF)|$8000                       ; $0FE49A                
Sfx_5B_Ptr      equ     (Sfx_5B_Snd&$FFFF)|$8000                       ; $0FE4F6    
Sfx_5C_Ptr      equ     (Sfx_5C_Snd&$FFFF)|$8000                       ; $0FE523
Sfx_5D_Ptr      equ     (Sfx_5D_Snd&$FFFF)|$8000                       ; $0FE530
Sfx_5E_Ptr      equ     (Sfx_5E_Snd&$FFFF)|$8000                       ; $0FE558
Sfx_5F_Ptr      equ     (Sfx_5F_Snd&$FFFF)|$8000                       ; $0FE581          
Sfx_60_Ptr      equ     (Sfx_60_Snd&$FFFF)|$8000                       ; $0FE5B2                
Sfx_61_Ptr      equ     (Sfx_61_Snd&$FFFF)|$8000                       ; $0FE5DA
Sfx_62_Ptr      equ     (Sfx_62_Snd&$FFFF)|$8000                       ; $0FE61B                
Sfx_63_Ptr      equ     (Sfx_63_Snd&$FFFF)|$8000                       ; $0FE64C
Sfx_64_Ptr      equ     (Sfx_64_Snd&$FFFF)|$8000                       ; $0FE662                
Sfx_65_Ptr      equ     (Sfx_65_Snd&$FFFF)|$8000                       ; $0FE68C
Sfx_66_Ptr      equ     (Sfx_66_Snd&$FFFF)|$8000                       ; $0FE6AB                
Sfx_67_Ptr      equ     (Sfx_67_Snd&$FFFF)|$8000                       ; $0FE6E1
Sfx_68_Ptr      equ     (Sfx_68_Snd&$FFFF)|$8000                       ; $0FE730                
Sfx_69_Ptr      equ     (Sfx_69_Snd&$FFFF)|$8000                       ; $0FE75C
Sfx_6A_Ptr      equ     (Sfx_6A_Snd&$FFFF)|$8000                       ; $0FE7B0
Sfx_6B_Ptr      equ     (Sfx_6B_Snd&$FFFF)|$8000                       ; $0FE7DD
Sfx_6C_Ptr      equ     (Sfx_6C_Snd&$FFFF)|$8000                       ; $0FE811
Sfx_6D_Ptr      equ     (Sfx_6D_Snd&$FFFF)|$8000                       ; $0FE823
Sfx_6E_Ptr      equ     (Sfx_6E_Snd&$FFFF)|$8000                       ; $0FE833
Sfx_6F_Ptr      equ     (Sfx_6F_Snd&$FFFF)|$8000                       ; $0FE852
Sfx_70_Ptr      equ     (Sfx_70_Snd&$FFFF)|$8000                       ; $0FE886
Sfx_71_Ptr      equ     (Sfx_71_Snd&$FFFF)|$8000                       ; $0FE896
Sfx_72_Ptr      equ     (Sfx_72_Snd&$FFFF)|$8000                       ; $0FE8E0
Sfx_73_Ptr      equ     (Sfx_73_Snd&$FFFF)|$8000                       ; $0FE8EA
Sfx_74_Ptr      equ     (Sfx_74_Snd&$FFFF)|$8000                       ; $0FE917
Sfx_75_Ptr      equ     (Sfx_75_Snd&$FFFF)|$8000                       ; $0FE94B   
Sfx_76_Ptr      equ     (Sfx_76_Snd&$FFFF)|$8000                       ; $0FE978
Sfx_77_Ptr      equ     (Sfx_77_Snd&$FFFF)|$8000                       ; $0FE9A7
Sfx_78_Ptr      equ     (Sfx_78_Snd&$FFFF)|$8000                       ; $0FE9D1
Sfx_79_Ptr      equ     (Sfx_79_Snd&$FFFF)|$8000                       ; $0FEA1B
Sfx_7A_Ptr      equ     (Sfx_7A_Snd&$FFFF)|$8000                       ; $0FEA48  
Sfx_7B_Ptr      equ     (Sfx_7B_Snd&$FFFF)|$8000                       ; $0FEA93
Sfx_7C_Ptr      equ     (Sfx_7C_Snd&$FFFF)|$8000                       ; $0FEAC7                  
Sfx_7D_Ptr      equ     (Sfx_7D_Snd&$FFFF)|$8000                       ; $0FEAF7
Sfx_7E_Ptr      equ     (Sfx_7E_Snd&$FFFF)|$8000                       ; $0FEB28                   
Sfx_7F_Ptr      equ     (Sfx_7F_Snd&$FFFF)|$8000                       ; $0FEB55   
Sfx_80_Ptr      equ     (Sfx_80_Snd&$FFFF)|$8000                       ; $0FEB6D               
Sfx_81_Ptr      equ     (Sfx_81_Snd&$FFFF)|$8000                       ; $0FEB8B 
Sfx_82_Ptr      equ     (Sfx_82_Snd&$FFFF)|$8000                       ; $0FEBBA               
Sfx_83_Ptr      equ     (Sfx_83_Snd&$FFFF)|$8000                       ; $0FEC05 
Sfx_84_Ptr      equ     (Sfx_84_Snd&$FFFF)|$8000                       ; $0FEC32               
Sfx_85_Ptr      equ     (Sfx_85_Snd&$FFFF)|$8000                       ; $0FEC7E 
Sfx_86_Ptr      equ     (Sfx_86_Snd&$FFFF)|$8000                       ; $0FECAB               
Sfx_87_Ptr      equ     (Sfx_87_Snd&$FFFF)|$8000                       ; $0FECD8  
Sfx_88_Ptr      equ     (Sfx_88_Snd&$FFFF)|$8000                       ; $0FED05                
Sfx_89_Ptr      equ     (Sfx_89_Snd&$FFFF)|$8000                       ; $0FED3B 
Sfx_8A_Ptr      equ     (Sfx_8A_Snd&$FFFF)|$8000                       ; $0FED68               
Sfx_8B_Ptr      equ     (Sfx_8B_Snd&$FFFF)|$8000                       ; $0FED75 
Sfx_8C_Ptr      equ     (Sfx_8C_Snd&$FFFF)|$8000                       ; $0FEDA9               
Sfx_8D_Ptr      equ     (Sfx_8D_Snd&$FFFF)|$8000                       ; $0FEDDF 
Sfx_8E_Ptr      equ     (Sfx_8E_Snd&$FFFF)|$8000                       ; $0FEE10               
Sfx_8F_Ptr      equ     (Sfx_8F_Snd&$FFFF)|$8000                       ; $0FEE2A
Sfx_90_Ptr      equ     (Sfx_90_Snd&$FFFF)|$8000                       ; $0FEE5B               
Sfx_91_Ptr      equ     (Sfx_91_Snd&$FFFF)|$8000                       ; $0FEE91 
Sfx_92_Ptr      equ     (Sfx_92_Snd&$FFFF)|$8000                       ; $0FEEC3               
Sfx_93_Ptr      equ     (Sfx_93_Snd&$FFFF)|$8000                       ; $0FEEF9 
Sfx_94_Ptr      equ     (Sfx_94_Snd&$FFFF)|$8000                       ; $0FEF2D               
Sfx_95_Ptr      equ     (Sfx_95_Snd&$FFFF)|$8000                       ; $0FEF77 
Sfx_96_Ptr      equ     (Sfx_96_Snd&$FFFF)|$8000                       ; $0FEFA6               
Sfx_97_Ptr      equ     (Sfx_97_Snd&$FFFF)|$8000                       ; $0FEFD5  
Sfx_98_Ptr      equ     (Sfx_98_Snd&$FFFF)|$8000                       ; $0FF009               
Sfx_99_Ptr      equ     (Sfx_99_Snd&$FFFF)|$8000                       ; $0FF01C 
Sfx_9A_Ptr      equ     (Sfx_9A_Snd&$FFFF)|$8000                       ; $0FF068               
Sfx_9B_Ptr      equ     (Sfx_9B_Snd&$FFFF)|$8000                       ; $0FF090 
Sfx_9C_Ptr      equ     (Sfx_9C_Snd&$FFFF)|$8000                       ; $0FF0AF               
Sfx_9D_Ptr      equ     (Sfx_9D_Snd&$FFFF)|$8000                       ; $0FF114 
Sfx_9E_Ptr      equ     (Sfx_9E_Snd&$FFFF)|$8000                       ; $0FF14B               
Sfx_9F_Ptr      equ     (Sfx_9F_Snd&$FFFF)|$8000                       ; $0FF17F
Sfx_A0_Ptr      equ     (Sfx_A0_Snd&$FFFF)|$8000                       ; $0FF1C0
Sfx_A1_Ptr      equ     (Sfx_A1_Snd&$FFFF)|$8000                       ; $0FF1FC
Sfx_A2_Ptr      equ     (Sfx_A2_Snd&$FFFF)|$8000                       ; $0FF214
Sfx_A3_Ptr      equ     (Sfx_A3_Snd&$FFFF)|$8000                       ; $0FF23C
Sfx_A4_Ptr      equ     (Sfx_A4_Snd&$FFFF)|$8000                       ; $0FF274
Sfx_A5_Ptr      equ     (Sfx_A5_Snd&$FFFF)|$8000                       ; $0FF2A1
Sfx_A6_Ptr      equ     (Sfx_A6_Snd&$FFFF)|$8000                       ; $0FF2CE
Sfx_A7_Ptr      equ     (Sfx_A7_Snd&$FFFF)|$8000                       ; $0FF2FB
Sfx_A8_Ptr      equ     (Sfx_A8_Snd&$FFFF)|$8000                       ; $0FF313
Sfx_A9_Ptr      equ     (Sfx_A9_Snd&$FFFF)|$8000                       ; $0FF33B
Sfx_AA_Ptr      equ     (Sfx_AA_Snd&$FFFF)|$8000                       ; $0FF365
Sfx_AB_Ptr      equ     (Sfx_AB_Snd&$FFFF)|$8000                       ; $0FF38F
Sfx_AC_Ptr      equ     (Sfx_AC_Snd&$FFFF)|$8000                       ; $0FF3EA
Sfx_AD_Ptr      equ     (Sfx_AD_Snd&$FFFF)|$8000                       ; $0FF42A
Sfx_AE_Ptr      equ     (Sfx_AE_Snd&$FFFF)|$8000                       ; $0FF49C
Sfx_AF_Ptr      equ     (Sfx_AF_Snd&$FFFF)|$8000                       ; $0FF4AB
Sfx_B0_Ptr      equ     (Sfx_B0_Snd&$FFFF)|$8000                       ; $0FF4DA
Sfx_B1_Ptr      equ     (Sfx_B1_Snd&$FFFF)|$8000                       ; $0FF507
Sfx_B2_Ptr      equ     (Sfx_B2_Snd&$FFFF)|$8000                       ; $0FF582
Sfx_B3_Ptr      equ     (Sfx_B3_Snd&$FFFF)|$8000                       ; $0FF5D7
Sfx_B4_Ptr      equ     (Sfx_B4_Snd&$FFFF)|$8000                       ; $0FF603
Sfx_B5_Ptr      equ     (Sfx_B5_Snd&$FFFF)|$8000                       ; $0FF67D
Sfx_B6_Ptr      equ     (Sfx_B6_Snd&$FFFF)|$8000                       ; $0FF6AA
Sfx_B7_Ptr      equ     (Sfx_B7_Snd&$FFFF)|$8000                       ; $0FF6D2
Sfx_B8_Ptr      equ     (Sfx_B8_Snd&$FFFF)|$8000                       ; $0FF713
Sfx_B9_Ptr      equ     (Sfx_B9_Snd&$FFFF)|$8000                       ; $0FF745
Sfx_BA_Ptr      equ     (Sfx_BA_Snd&$FFFF)|$8000                       ; $0FF76C
Sfx_BB_Ptr      equ     (Sfx_BB_Snd&$FFFF)|$8000                       ; $0FF794
Sfx_BC_Ptr      equ     (Sfx_BC_Snd&$FFFF)|$8000                       ; $0FF7BE 
Sfx_BD_Ptr      equ     (Sfx_BD_Snd&$FFFF)|$8000                       ; $0FF7CE
Sfx_BE_Ptr      equ     (Sfx_BE_Snd&$FFFF)|$8000                       ; $0FF7F9
Sfx_BF_Ptr      equ     (Sfx_BF_Snd&$FFFF)|$8000                       ; $0FF837
Sfx_C0_Ptr      equ     (Sfx_C0_Snd&$FFFF)|$8000                       ; $0FF86A
Sfx_C1_Ptr      equ     (Sfx_C1_Snd&$FFFF)|$8000                       ; $0FF89C
Sfx_C2_Ptr      equ     (Sfx_C2_Snd&$FFFF)|$8000                       ; $0FF8D1
Sfx_C3_Ptr      equ     (Sfx_C3_Snd&$FFFF)|$8000                       ; $0FF907
Sfx_C4_Ptr      equ     (Sfx_C4_Snd&$FFFF)|$8000                       ; $0FF91E
Sfx_C5_Ptr      equ     (Sfx_C5_Snd&$FFFF)|$8000                       ; $0FF94E
Sfx_C6_Ptr      equ     (Sfx_C6_Snd&$FFFF)|$8000                       ; $0FF97E
Sfx_C7_Ptr      equ     (Sfx_C7_Snd&$FFFF)|$8000                       ; $0FF9B7
Sfx_C8_Ptr      equ     (Sfx_C8_Snd&$FFFF)|$8000                       ; $0FF9F2
Sfx_C9_Ptr      equ     (Sfx_C9_Snd&$FFFF)|$8000                       ; $0FFA21
Sfx_CA_Ptr      equ     (Sfx_CA_Snd&$FFFF)|$8000                       ; $0FFA2B
Sfx_CB_Ptr      equ     (Sfx_CB_Snd&$FFFF)|$8000                       ; $0FFA66
Sfx_CC_Ptr      equ     (Sfx_CC_Snd&$FFFF)|$8000                       ; $0FFA9C
Sfx_CD_Ptr      equ     (Sfx_CD_Snd&$FFFF)|$8000                       ; $0FFAD7
Sfx_CE_Ptr      equ     (Sfx_CE_Snd&$FFFF)|$8000                       ; $0FFB12
Sfx_CF_Ptr      equ     (Sfx_CF_Snd&$FFFF)|$8000                       ; $0FFB45
Sfx_D0_Ptr      equ     (Sfx_D0_Snd&$FFFF)|$8000                       ; $0FFB60
Sfx_D1_Ptr      equ     (Sfx_D1_Snd&$FFFF)|$8000                       ; $0FFB6A
Sfx_D2_Ptr      equ     (Sfx_D2_Snd&$FFFF)|$8000                       ; $0FFBA1
Sfx_D3_Ptr      equ     (Sfx_D3_Snd&$FFFF)|$8000                       ; $0FFBBE
Sfx_D4_Ptr      equ     (Sfx_D4_Snd&$FFFF)|$8000                       ; $0FFBF4
Sfx_D5_Ptr      equ     (Sfx_D5_Snd&$FFFF)|$8000                       ; $0FFC2D
Sfx_D6_Ptr      equ     (Sfx_D6_Snd&$FFFF)|$8000                       ; $0FFC64
Sfx_D7_Ptr      equ     (Sfx_D7_Snd&$FFFF)|$8000                       ; $0FFC9D
Sfx_D8_Ptr      equ     (Sfx_D8_Snd&$FFFF)|$8000                       ; $0FFCCE
Sfx_D9_Ptr      equ     (Sfx_D9_Snd&$FFFF)|$8000                       ; $0FFCFF
Sfx_DA_Ptr      equ     (Sfx_DA_Snd&$FFFF)|$8000                       ; $0FFD32
Sfx_DB_Ptr      equ     (Sfx_DB_Snd&$FFFF)|$8000                       ; $0FFD62
Sfx_DC_Ptr      equ     (Sfx_DC_Snd&$FFFF)|$8000                       ; $0FFD94                  
                ; Bank 1
Sound_Pointers:                
                dc.w    ((AIz1_Ptr>>$08)|(AIz1_Ptr<<$08))&$FFFF         ; $0080  {$8000}
                dc.w    ((AIz2_Ptr>>$08)|(AIz2_Ptr<<$08))&$FFFF         ; $6D9B  {$9B6D}
                dc.w    ((HCz1_Ptr>>$08)|(HCz1_Ptr<<$08))&$FFFF         ; $BCB0  {$B0BC}
                dc.w    ((HCz2_Ptr>>$08)|(HCz2_Ptr<<$08))&$FFFF         ; $C6C0  {$C0C6}
                dc.w    ((MGz1_Ptr>>$08)|(MGz1_Ptr<<$08))&$FFFF         ; $64D3  {$D364}
                dc.w    ((MGz2_Ptr>>$08)|(MGz2_Ptr<<$08))&$FFFF         ; $7BD9  {$D97B}
                dc.w    ((CNz1_Ptr>>$08)|(CNz1_Ptr<<$08))&$FFFF         ; $8FE4  {$E48F}
                dc.w    ((CNz2_Ptr>>$08)|(CNz2_Ptr<<$08))&$FFFF         ; $A9DD  {$DDA9}
                dc.w    ((FBz1_Ptr>>$08)|(FBz1_Ptr<<$08))&$FFFF         ; $F1EB  {$EBF1}
                dc.w    ((FBz2_Ptr>>$08)|(FBz2_Ptr<<$08))&$FFFF         ; $89F1  {$F189}
                ; Bank 2                                              
                dc.w    ((Iz1_Ptr>>$08)|(Iz1_Ptr<<$08))&$FFFF           ; $AA86  {$86AA}                  
                dc.w    ((Iz2_Ptr>>$08)|(Iz2_Ptr<<$08))&$FFFF           ; $0080  {$8000} 
                dc.w    ((LBz1_Ptr>>$08)|(LBz1_Ptr<<$08))&$FFFF         ; $4593  {$9345}
                dc.w    ((LBz2_Ptr>>$08)|(LBz2_Ptr<<$08))&$FFFF         ; $C88D  {$8DC8}
                dc.w    ((MHz1_Ptr>>$08)|(MHz1_Ptr<<$08))&$FFFF         ; $A797  {$97A7}
                dc.w    ((MHz2_Ptr>>$08)|(MHz2_Ptr<<$08))&$FFFF         ; $AF9D  {$9DAF}
                dc.w    ((Sz1_Ptr>>$08)|(Sz1_Ptr<<$08))&$FFFF           ; $31A3  {$A331}
                dc.w    ((Sz2_Ptr>>$08)|(Sz2_Ptr<<$08))&$FFFF           ; $9BA9  {$A99B}
                dc.w    ((LRz1_Ptr>>$08)|(LRz1_Ptr<<$08))&$FFFF         ; $8EAF  {$AF8E}
                dc.w    ((LRz2_Ptr>>$08)|(LRz2_Ptr<<$08))&$FFFF         ; $9CB9  {$B99C}
                dc.w    ((SCz_Ptr>>$08)|(SCz_Ptr<<$08))&$FFFF           ; $29CB  {$CB29}
                dc.w    ((DEz1_Ptr>>$08)|(DEz1_Ptr<<$08))&$FFFF         ; $4FCF  {$CF4F}
                dc.w    ((DEz2_Ptr>>$08)|(DEz2_Ptr<<$08))&$FFFF         ; $3AD4  {$D43A}
                dc.w    ((MB_SK_Ptr>>$08)|(MB_SK_Ptr<<$08))&$FFFF       ; $4CD8  {$D84C}
                dc.w    ((Boss_Ptr>>$08)|(Boss_Ptr<<$08))&$FFFF         ; $7CDB  {$DB7C}
                ; Bank 1  
                dc.w    ((TDz_Ptr>>$08)|(TDz_Ptr<<$08))&$FFFF           ; $F0F6  {$F6F0} 
                ; Bank 2
                dc.w    ((GS_BS_Ptr>>$08)|(GS_BS_Ptr<<$08))&$FFFF       ; $78E0  {$E078}             
                dc.w    ((SS_Ptr>>$08)|(SS_Ptr<<$08))&$FFFF             ; $DBE5  {$E5DB}
                ; Bank 3
                dc.w    ((SM_BS_Ptr>>$08)|(SM_BS_Ptr<<$08))&$FFFF       ; $0080  {$8000}
                dc.w    ((GBM_BS_Ptr>>$08)|(GBM_BS_Ptr<<$08))&$FFFF     ; $E88A  {$8AE8}
                dc.w    ((KTE_Ptr>>$08)|(KTE_Ptr<<$08))&$FFFF           ; $FD97  {$97FD} 
                dc.w    ((ALz_Ptr>>$08)|(ALz_Ptr<<$08))&$FFFF           ; $F799  {$99F7}
                dc.w    ((BPz_Ptr>>$08)|(BPz_Ptr<<$08))&$FFFF           ; $FDA4  {$A4FD}
                dc.w    ((DPz_Ptr>>$08)|(DPz_Ptr<<$08))&$FFFF           ; $ECB0  {$B0EC}
                dc.w    ((CGz_Ptr>>$08)|(CGz_Ptr<<$08))&$FFFF           ; $24C3  {$C324}
                dc.w    ((EMz_Ptr>>$08)|(EMz_Ptr<<$08))&$FFFF           ; $47DA  {$DA47} 
                dc.w    ((TS_Ptr>>$08)|(TS_Ptr<<$08))&$FFFF             ; $8FE1  {$E18F}
                dc.w    ((Credits_Ptr>>$08)|(Credits_Ptr<<$08))&$FFFF   ; $87E5  {$E587}
                dc.w    ((TGOvr_Ptr>>$08)|(TGOvr_Ptr<<$08))&$FFFF       ; $20EA  {$EA20}
                dc.w    ((Continue_Ptr>>$08)|(Continue_Ptr<<$08))&$FFFF ; $7BEC  {$EC7B}
                ; Bank 2
                dc.w    ((LR_Ptr>>$08)|(LR_Ptr<<$08))&$FFFF             ; $73EE  {$EE73}  
                ; Bank 3
                dc.w    ((_1_Up_Ptr>>$08)|(_1_Up_Ptr<<$08))&$FFFF       ; $95F0  {$F095}
                dc.w    ((Emerald_Ptr>>$08)|(Emerald_Ptr<<$08))&$FFFF   ; $98F2  {$F298}
                dc.w    ((Invcblty_Ptr>>$08)|(Invcblty_Ptr<<$08))&$FFFF ; $64F3  {$F364}
                dc.w    ((_2p_Menu_Ptr>>$08)|(_2p_Menu_Ptr<<$08))&$FFFF ; $E4F5  {$F5E4}
                ; Bank 0
                dc.w    ((MB_Ptr>>$08)|(MB_Ptr<<$08))&$FFFF             ; $A0F1  {$F1A0}
                ; Bank 2
                dc.w    ((Menu_Ptr>>$08)|(Menu_Ptr<<$08))&$FFFF         ; $27F0  {$F027}
                ; Bank 0
                dc.w    ((FB_Ptr>>$08)|(FB_Ptr<<$08))&$FFFF             ; $61FA  {$FA61}
                ; Bank 3
                dc.w    ((UT_Ptr>>$08)|(UT_Ptr<<$08))&$FFFF             ; $BEFA  {$FABE}
                dc.w    ((PbS_Ptr>>$08)|(PbS_Ptr<<$08))&$FFFF           ; $FEFB  {$FBFE}
                ; Bank 4
Sfx_Pointers:                
                dc.w    ((Sfx_34_Ptr>>$08)|(Sfx_34_Ptr<<$08))&$FFFF     ; $30DE  {$DE30}
                dc.w    ((Sfx_35_Ptr>>$08)|(Sfx_35_Ptr<<$08))&$FFFF     ; $5EDE  {$DE5E}
                dc.w    ((Sfx_36_Ptr>>$08)|(Sfx_36_Ptr<<$08))&$FFFF     ; $6FDE  {$DE6F}
                dc.w    ((Sfx_37_Ptr>>$08)|(Sfx_37_Ptr<<$08))&$FFFF     ; $A1DE  {$DEA1}
                dc.w    ((Sfx_38_Ptr>>$08)|(Sfx_38_Ptr<<$08))&$FFFF     ; $C5DE  {$DEC5}
                dc.w    ((Sfx_39_Ptr>>$08)|(Sfx_39_Ptr<<$08))&$FFFF     ; $F4DE  {$DEF4}
                dc.w    ((Sfx_3A_Ptr>>$08)|(Sfx_3A_Ptr<<$08))&$FFFF     ; $2ADF  {$DF2A}
                dc.w    ((Sfx_3B_Ptr>>$08)|(Sfx_3B_Ptr<<$08))&$FFFF     ; $6BDF  {$DF6B}
                dc.w    ((Sfx_3C_Ptr>>$08)|(Sfx_3C_Ptr<<$08))&$FFFF     ; $96DF  {$DF96}
                dc.w    ((Sfx_3D_Ptr>>$08)|(Sfx_3D_Ptr<<$08))&$FFFF     ; $E5DF  {$DFE5}
                dc.w    ((Sfx_3E_Ptr>>$08)|(Sfx_3E_Ptr<<$08))&$FFFF     ; $23E0  {$E023}
                dc.w    ((Sfx_3F_Ptr>>$08)|(Sfx_3F_Ptr<<$08))&$FFFF     ; $5DE0  {$E05D}
                dc.w    ((Sfx_40_Ptr>>$08)|(Sfx_40_Ptr<<$08))&$FFFF     ; $88E0  {$E088}
                dc.w    ((Sfx_41_Ptr>>$08)|(Sfx_41_Ptr<<$08))&$FFFF     ; $ABE0  {$E0AB}
                dc.w    ((Sfx_42_Ptr>>$08)|(Sfx_42_Ptr<<$08))&$FFFF     ; $CEE0  {$E0CE}
                dc.w    ((Sfx_43_Ptr>>$08)|(Sfx_43_Ptr<<$08))&$FFFF     ; $F1E0  {$E0F1}
                dc.w    ((Sfx_44_Ptr>>$08)|(Sfx_44_Ptr<<$08))&$FFFF     ; $09E1  {$E109}
                dc.w    ((Sfx_45_Ptr>>$08)|(Sfx_45_Ptr<<$08))&$FFFF     ; $22E1  {$E122}
                dc.w    ((Sfx_46_Ptr>>$08)|(Sfx_46_Ptr<<$08))&$FFFF     ; $4FE1  {$E14F}
                dc.w    ((Sfx_47_Ptr>>$08)|(Sfx_47_Ptr<<$08))&$FFFF     ; $77E1  {$E177}
                dc.w    ((Sfx_48_Ptr>>$08)|(Sfx_48_Ptr<<$08))&$FFFF     ; $A4E1  {$E1A4}
                dc.w    ((Sfx_49_Ptr>>$08)|(Sfx_49_Ptr<<$08))&$FFFF     ; $C4E1  {$E1C4}
                dc.w    ((Sfx_4A_Ptr>>$08)|(Sfx_4A_Ptr<<$08))&$FFFF     ; $DEE1  {$E1DE}
                dc.w    ((Sfx_4B_Ptr>>$08)|(Sfx_4B_Ptr<<$08))&$FFFF     ; $06E2  {$E206}
                dc.w    ((Sfx_4C_Ptr>>$08)|(Sfx_4C_Ptr<<$08))&$FFFF     ; $2EE2  {$E22E}
                dc.w    ((Sfx_4D_Ptr>>$08)|(Sfx_4D_Ptr<<$08))&$FFFF     ; $78E2  {$E278}
                dc.w    ((Sfx_4E_Ptr>>$08)|(Sfx_4E_Ptr<<$08))&$FFFF     ; $A2E2  {$E2A2}
                dc.w    ((Sfx_4F_Ptr>>$08)|(Sfx_4F_Ptr<<$08))&$FFFF     ; $CFE2  {$E2CF}                             
                dc.w    ((Sfx_50_Ptr>>$08)|(Sfx_50_Ptr<<$08))&$FFFF     ; $13E3  {$E313}
                dc.w    ((Sfx_51_Ptr>>$08)|(Sfx_51_Ptr<<$08))&$FFFF     ; $22E3  {$E322}
                dc.w    ((Sfx_52_Ptr>>$08)|(Sfx_52_Ptr<<$08))&$FFFF     ; $5AE3  {$E35A}
                dc.w    ((Sfx_53_Ptr>>$08)|(Sfx_53_Ptr<<$08))&$FFFF     ; $8BE3  {$E38B}
                dc.w    ((Sfx_54_Ptr>>$08)|(Sfx_54_Ptr<<$08))&$FFFF     ; $A8E3  {$E3A8} 
                dc.w    ((Sfx_55_Ptr>>$08)|(Sfx_55_Ptr<<$08))&$FFFF     ; $E8E3  {$E3E8}
                dc.w    ((Sfx_56_Ptr>>$08)|(Sfx_56_Ptr<<$08))&$FFFF     ; $2BE4  {$E42B}
                dc.w    ((Sfx_57_Ptr>>$08)|(Sfx_57_Ptr<<$08))&$FFFF     ; $53E4  {$E453}
                dc.w    ((Sfx_58_Ptr>>$08)|(Sfx_58_Ptr<<$08))&$FFFF     ; $63E4  {$E463}
                dc.w    ((Sfx_59_Ptr>>$08)|(Sfx_59_Ptr<<$08))&$FFFF     ; $81E4  {$E481}  
                dc.w    ((Sfx_5A_Ptr>>$08)|(Sfx_5A_Ptr<<$08))&$FFFF     ; $9AE4  {$E49A}
                dc.w    ((Sfx_5B_Ptr>>$08)|(Sfx_5B_Ptr<<$08))&$FFFF     ; $F6E4  {$E4F6}
                dc.w    ((Sfx_5C_Ptr>>$08)|(Sfx_5C_Ptr<<$08))&$FFFF     ; $23E5  {$E523}   
                dc.w    ((Sfx_5D_Ptr>>$08)|(Sfx_5D_Ptr<<$08))&$FFFF     ; $30E5  {$E530} 
                dc.w    ((Sfx_5E_Ptr>>$08)|(Sfx_5E_Ptr<<$08))&$FFFF     ; $58E5  {$E558} 
                dc.w    ((Sfx_5F_Ptr>>$08)|(Sfx_5F_Ptr<<$08))&$FFFF     ; $81E5  {$E581} 
                dc.w    ((Sfx_60_Ptr>>$08)|(Sfx_60_Ptr<<$08))&$FFFF     ; $B2E5  {$E5B2}
                dc.w    ((Sfx_61_Ptr>>$08)|(Sfx_61_Ptr<<$08))&$FFFF     ; $DAE5  {$E5DA}
                dc.w    ((Sfx_62_Ptr>>$08)|(Sfx_62_Ptr<<$08))&$FFFF     ; $1BE6  {$E61B}
                dc.w    ((Sfx_63_Ptr>>$08)|(Sfx_63_Ptr<<$08))&$FFFF     ; $4CE6  {$E64C}
                dc.w    ((Sfx_64_Ptr>>$08)|(Sfx_64_Ptr<<$08))&$FFFF     ; $62E6  {$E662}                   
                dc.w    ((Sfx_65_Ptr>>$08)|(Sfx_65_Ptr<<$08))&$FFFF     ; $8CE6  {$E68C}
                dc.w    ((Sfx_66_Ptr>>$08)|(Sfx_66_Ptr<<$08))&$FFFF     ; $ABE6  {$E6AB}
                dc.w    ((Sfx_67_Ptr>>$08)|(Sfx_67_Ptr<<$08))&$FFFF     ; $E1E6  {$E6E1}
                dc.w    ((Sfx_68_Ptr>>$08)|(Sfx_68_Ptr<<$08))&$FFFF     ; $30E7  {$E730}
                dc.w    ((Sfx_69_Ptr>>$08)|(Sfx_69_Ptr<<$08))&$FFFF     ; $5CE7  {$E75C} 
                dc.w    ((Sfx_6A_Ptr>>$08)|(Sfx_6A_Ptr<<$08))&$FFFF     ; $B0E7  {$E7B0}
                dc.w    ((Sfx_6B_Ptr>>$08)|(Sfx_6B_Ptr<<$08))&$FFFF     ; $DDE7  {$E7DD}
                dc.w    ((Sfx_6C_Ptr>>$08)|(Sfx_6C_Ptr<<$08))&$FFFF     ; $11E8  {$E811}
                dc.w    ((Sfx_6D_Ptr>>$08)|(Sfx_6D_Ptr<<$08))&$FFFF     ; $23E8  {$E823}
                dc.w    ((Sfx_6E_Ptr>>$08)|(Sfx_6E_Ptr<<$08))&$FFFF     ; $33E8  {$E833} 
                dc.w    ((Sfx_6F_Ptr>>$08)|(Sfx_6F_Ptr<<$08))&$FFFF     ; $52E8  {$E852}
                dc.w    ((Sfx_70_Ptr>>$08)|(Sfx_70_Ptr<<$08))&$FFFF     ; $86E8  {$E886}
                dc.w    ((Sfx_71_Ptr>>$08)|(Sfx_71_Ptr<<$08))&$FFFF     ; $96E8  {$E896}
                dc.w    ((Sfx_72_Ptr>>$08)|(Sfx_72_Ptr<<$08))&$FFFF     ; $E0E8  {$E8E0}
                dc.w    ((Sfx_73_Ptr>>$08)|(Sfx_73_Ptr<<$08))&$FFFF     ; $EAE8  {$E8EA}
                dc.w    ((Sfx_74_Ptr>>$08)|(Sfx_74_Ptr<<$08))&$FFFF     ; $17E9  {$E917} 
                dc.w    ((Sfx_75_Ptr>>$08)|(Sfx_75_Ptr<<$08))&$FFFF     ; $4BE9  {$E94B} 
                dc.w    ((Sfx_76_Ptr>>$08)|(Sfx_76_Ptr<<$08))&$FFFF     ; $78E9  {$E978} 
                dc.w    ((Sfx_77_Ptr>>$08)|(Sfx_77_Ptr<<$08))&$FFFF     ; $A7E9  {$E9A7}
                dc.w    ((Sfx_78_Ptr>>$08)|(Sfx_78_Ptr<<$08))&$FFFF     ; $D1E9  {$E9D1}
                dc.w    ((Sfx_79_Ptr>>$08)|(Sfx_79_Ptr<<$08))&$FFFF     ; $1BEA  {$EA1B} 
                dc.w    ((Sfx_7A_Ptr>>$08)|(Sfx_7A_Ptr<<$08))&$FFFF     ; $48EA  {$EA48} 
                dc.w    ((Sfx_7B_Ptr>>$08)|(Sfx_7B_Ptr<<$08))&$FFFF     ; $93EA  {$EA93} 
                dc.w    ((Sfx_7C_Ptr>>$08)|(Sfx_7C_Ptr<<$08))&$FFFF     ; $C7EA  {$EAC7} 
                dc.w    ((Sfx_7D_Ptr>>$08)|(Sfx_7D_Ptr<<$08))&$FFFF     ; $F7EA  {$EAF7} 
                dc.w    ((Sfx_7E_Ptr>>$08)|(Sfx_7E_Ptr<<$08))&$FFFF     ; $28EB  {$EB28}   
                dc.w    ((Sfx_7F_Ptr>>$08)|(Sfx_7F_Ptr<<$08))&$FFFF     ; $55EB  {$EB55} 
                dc.w    ((Sfx_80_Ptr>>$08)|(Sfx_80_Ptr<<$08))&$FFFF     ; $6DEB  {$EB6D}
                dc.w    ((Sfx_81_Ptr>>$08)|(Sfx_81_Ptr<<$08))&$FFFF     ; $8BEB  {$EB8B}
                dc.w    ((Sfx_82_Ptr>>$08)|(Sfx_82_Ptr<<$08))&$FFFF     ; $BAEB  {$EBBA}
                dc.w    ((Sfx_83_Ptr>>$08)|(Sfx_83_Ptr<<$08))&$FFFF     ; $05EC  {$EC05}
                dc.w    ((Sfx_84_Ptr>>$08)|(Sfx_84_Ptr<<$08))&$FFFF     ; $32EC  {$EC32}
                dc.w    ((Sfx_85_Ptr>>$08)|(Sfx_85_Ptr<<$08))&$FFFF     ; $7EEC  {$EC7E} 
                dc.w    ((Sfx_86_Ptr>>$08)|(Sfx_86_Ptr<<$08))&$FFFF     ; $ABEC  {$ECAB} 
                dc.w    ((Sfx_87_Ptr>>$08)|(Sfx_87_Ptr<<$08))&$FFFF     ; $D8EC  {$ECD8} 
                dc.w    ((Sfx_88_Ptr>>$08)|(Sfx_88_Ptr<<$08))&$FFFF     ; $05ED  {$ED05} 
                dc.w    ((Sfx_89_Ptr>>$08)|(Sfx_89_Ptr<<$08))&$FFFF     ; $3BED  {$ED3B} 
                dc.w    ((Sfx_8A_Ptr>>$08)|(Sfx_8A_Ptr<<$08))&$FFFF     ; $68ED  {$ED68} 
                dc.w    ((Sfx_8B_Ptr>>$08)|(Sfx_8B_Ptr<<$08))&$FFFF     ; $75ED  {$ED75} 
                dc.w    ((Sfx_8C_Ptr>>$08)|(Sfx_8C_Ptr<<$08))&$FFFF     ; $A9ED  {$EDA9}
                dc.w    ((Sfx_8D_Ptr>>$08)|(Sfx_8D_Ptr<<$08))&$FFFF     ; $DFED  {$EDDF}
                dc.w    ((Sfx_8E_Ptr>>$08)|(Sfx_8E_Ptr<<$08))&$FFFF     ; $10EE  {$EE10}
                dc.w    ((Sfx_8F_Ptr>>$08)|(Sfx_8F_Ptr<<$08))&$FFFF     ; $2AEE  {$EE2A}
                dc.w    ((Sfx_90_Ptr>>$08)|(Sfx_90_Ptr<<$08))&$FFFF     ; $5BEE  {$EE5B}
                dc.w    ((Sfx_91_Ptr>>$08)|(Sfx_91_Ptr<<$08))&$FFFF     ; $91EE  {$EE91}
                dc.w    ((Sfx_92_Ptr>>$08)|(Sfx_92_Ptr<<$08))&$FFFF     ; $C3EE  {$EEC3}
                dc.w    ((Sfx_93_Ptr>>$08)|(Sfx_93_Ptr<<$08))&$FFFF     ; $F9EE  {$EEF9}
                dc.w    ((Sfx_94_Ptr>>$08)|(Sfx_94_Ptr<<$08))&$FFFF     ; $2DEF  {$EF2D}
                dc.w    ((Sfx_95_Ptr>>$08)|(Sfx_95_Ptr<<$08))&$FFFF     ; $77EF  {$EF77}
                dc.w    ((Sfx_96_Ptr>>$08)|(Sfx_96_Ptr<<$08))&$FFFF     ; $A6EF  {$EFA6}
                dc.w    ((Sfx_97_Ptr>>$08)|(Sfx_97_Ptr<<$08))&$FFFF     ; $D5EF  {$EFD5}
                dc.w    ((Sfx_98_Ptr>>$08)|(Sfx_98_Ptr<<$08))&$FFFF     ; $09F0  {$F009}
                dc.w    ((Sfx_99_Ptr>>$08)|(Sfx_99_Ptr<<$08))&$FFFF     ; $1CF0  {$F01C}
                dc.w    ((Sfx_9A_Ptr>>$08)|(Sfx_9A_Ptr<<$08))&$FFFF     ; $68F0  {$F068}
                dc.w    ((Sfx_9B_Ptr>>$08)|(Sfx_9B_Ptr<<$08))&$FFFF     ; $90F0  {$F090}
                dc.w    ((Sfx_9C_Ptr>>$08)|(Sfx_9C_Ptr<<$08))&$FFFF     ; $AFF0  {$F0AF}
                dc.w    ((Sfx_9D_Ptr>>$08)|(Sfx_9D_Ptr<<$08))&$FFFF     ; $14F1  {$F114}
                dc.w    ((Sfx_9E_Ptr>>$08)|(Sfx_9E_Ptr<<$08))&$FFFF     ; $4BF1  {$F14B}
                dc.w    ((Sfx_9F_Ptr>>$08)|(Sfx_9F_Ptr<<$08))&$FFFF     ; $7FF1  {$F17F}
                dc.w    ((Sfx_A0_Ptr>>$08)|(Sfx_A0_Ptr<<$08))&$FFFF     ; $C0F1  {$F1C0}
                dc.w    ((Sfx_A1_Ptr>>$08)|(Sfx_A1_Ptr<<$08))&$FFFF     ; $FCF1  {$F1FC}
                dc.w    ((Sfx_A2_Ptr>>$08)|(Sfx_A2_Ptr<<$08))&$FFFF     ; $14F2  {$F214}
                dc.w    ((Sfx_A3_Ptr>>$08)|(Sfx_A3_Ptr<<$08))&$FFFF     ; $3CF2  {$F23C}
                dc.w    ((Sfx_A4_Ptr>>$08)|(Sfx_A4_Ptr<<$08))&$FFFF     ; $74F2  {$F274}
                dc.w    ((Sfx_A5_Ptr>>$08)|(Sfx_A5_Ptr<<$08))&$FFFF     ; $A1F2  {$F2A1}
                dc.w    ((Sfx_A6_Ptr>>$08)|(Sfx_A6_Ptr<<$08))&$FFFF     ; $CEF2  {$F2CE}
                dc.w    ((Sfx_A7_Ptr>>$08)|(Sfx_A7_Ptr<<$08))&$FFFF     ; $FBF2  {$F2FB}
                dc.w    ((Sfx_A8_Ptr>>$08)|(Sfx_A8_Ptr<<$08))&$FFFF     ; $13F3  {$F313}
                dc.w    ((Sfx_A9_Ptr>>$08)|(Sfx_A9_Ptr<<$08))&$FFFF     ; $3BF3  {$F33B}
                dc.w    ((Sfx_AA_Ptr>>$08)|(Sfx_AA_Ptr<<$08))&$FFFF     ; $65F3  {$F365}
                dc.w    ((Sfx_AB_Ptr>>$08)|(Sfx_AB_Ptr<<$08))&$FFFF     ; $8FF3  {$F38F}
                dc.w    ((Sfx_AC_Ptr>>$08)|(Sfx_AC_Ptr<<$08))&$FFFF     ; $EAF3  {$F3EA}
                dc.w    ((Sfx_AD_Ptr>>$08)|(Sfx_AD_Ptr<<$08))&$FFFF     ; $2AF4  {$F42A}
                dc.w    ((Sfx_AE_Ptr>>$08)|(Sfx_AE_Ptr<<$08))&$FFFF     ; $9CF4  {$F49C}
                dc.w    ((Sfx_AF_Ptr>>$08)|(Sfx_AF_Ptr<<$08))&$FFFF     ; $ABF4  {$F4AB}
                dc.w    ((Sfx_B0_Ptr>>$08)|(Sfx_B0_Ptr<<$08))&$FFFF     ; $DAF4  {$F4DA}
                dc.w    ((Sfx_B1_Ptr>>$08)|(Sfx_B1_Ptr<<$08))&$FFFF     ; $07F5  {$F507}
                dc.w    ((Sfx_B2_Ptr>>$08)|(Sfx_B2_Ptr<<$08))&$FFFF     ; $82F5  {$F582}
                dc.w    ((Sfx_B3_Ptr>>$08)|(Sfx_B3_Ptr<<$08))&$FFFF     ; $D7F5  {$F5D7}
                dc.w    ((Sfx_B4_Ptr>>$08)|(Sfx_B4_Ptr<<$08))&$FFFF     ; $03F6  {$F603}
                dc.w    ((Sfx_B5_Ptr>>$08)|(Sfx_B5_Ptr<<$08))&$FFFF     ; $7DF6  {$F67D}
                dc.w    ((Sfx_B6_Ptr>>$08)|(Sfx_B6_Ptr<<$08))&$FFFF     ; $AAF6  {$F6AA}
                dc.w    ((Sfx_B7_Ptr>>$08)|(Sfx_B7_Ptr<<$08))&$FFFF     ; $D2F6  {$F6D2}
                dc.w    ((Sfx_B8_Ptr>>$08)|(Sfx_B8_Ptr<<$08))&$FFFF     ; $13F7  {$F713}
                dc.w    ((Sfx_B9_Ptr>>$08)|(Sfx_B9_Ptr<<$08))&$FFFF     ; $45F7  {$F745}
                dc.w    ((Sfx_BA_Ptr>>$08)|(Sfx_BA_Ptr<<$08))&$FFFF     ; $6CF7  {$F76C}
                dc.w    ((Sfx_BB_Ptr>>$08)|(Sfx_BB_Ptr<<$08))&$FFFF     ; $94F7  {$F794}
                dc.w    ((Sfx_BC_Ptr>>$08)|(Sfx_BC_Ptr<<$08))&$FFFF     ; $BEF7  {$F7BE}
                dc.w    ((Sfx_BD_Ptr>>$08)|(Sfx_BD_Ptr<<$08))&$FFFF     ; $CEF7  {$F7CE}
                dc.w    ((Sfx_BE_Ptr>>$08)|(Sfx_BE_Ptr<<$08))&$FFFF     ; $F9F7  {$F7F9}
                dc.w    ((Sfx_BF_Ptr>>$08)|(Sfx_BF_Ptr<<$08))&$FFFF     ; $37F8  {$F837}
                dc.w    ((Sfx_C0_Ptr>>$08)|(Sfx_C0_Ptr<<$08))&$FFFF     ; $6AF8  {$F86A}
                dc.w    ((Sfx_C1_Ptr>>$08)|(Sfx_C1_Ptr<<$08))&$FFFF     ; $9CF8  {$F89C}
                dc.w    ((Sfx_C2_Ptr>>$08)|(Sfx_C2_Ptr<<$08))&$FFFF     ; $D1F8  {$F8D1}
                dc.w    ((Sfx_C3_Ptr>>$08)|(Sfx_C3_Ptr<<$08))&$FFFF     ; $07F9  {$F907}
                dc.w    ((Sfx_C4_Ptr>>$08)|(Sfx_C4_Ptr<<$08))&$FFFF     ; $1EF9  {$F91E}
                dc.w    ((Sfx_C5_Ptr>>$08)|(Sfx_C5_Ptr<<$08))&$FFFF     ; $4EF9  {$F94E}
                dc.w    ((Sfx_C6_Ptr>>$08)|(Sfx_C6_Ptr<<$08))&$FFFF     ; $7EF9  {$F97E}
                dc.w    ((Sfx_C7_Ptr>>$08)|(Sfx_C7_Ptr<<$08))&$FFFF     ; $B7F9  {$F9B7}
                dc.w    ((Sfx_C8_Ptr>>$08)|(Sfx_C8_Ptr<<$08))&$FFFF     ; $F2F9  {$F9F2}
                dc.w    ((Sfx_C9_Ptr>>$08)|(Sfx_C9_Ptr<<$08))&$FFFF     ; $21FA  {$FA21}
                dc.w    ((Sfx_CA_Ptr>>$08)|(Sfx_CA_Ptr<<$08))&$FFFF     ; $2BFA  {$FA2B}
                dc.w    ((Sfx_CB_Ptr>>$08)|(Sfx_CB_Ptr<<$08))&$FFFF     ; $66FA  {$FA66}
                dc.w    ((Sfx_CC_Ptr>>$08)|(Sfx_CC_Ptr<<$08))&$FFFF     ; $9CFA  {$FA9C}
                dc.w    ((Sfx_CD_Ptr>>$08)|(Sfx_CD_Ptr<<$08))&$FFFF     ; $D7FA  {$FAD7}
                dc.w    ((Sfx_CE_Ptr>>$08)|(Sfx_CE_Ptr<<$08))&$FFFF     ; $12FB  {$FB12}
                dc.w    ((Sfx_CF_Ptr>>$08)|(Sfx_CF_Ptr<<$08))&$FFFF     ; $45FB  {$FB45}
                dc.w    ((Sfx_D0_Ptr>>$08)|(Sfx_D0_Ptr<<$08))&$FFFF     ; $60FB  {$FB60}
                dc.w    ((Sfx_D1_Ptr>>$08)|(Sfx_D1_Ptr<<$08))&$FFFF     ; $6AFB  {$FB6A}
                dc.w    ((Sfx_D2_Ptr>>$08)|(Sfx_D2_Ptr<<$08))&$FFFF     ; $A1FB  {$FBA1}
                dc.w    ((Sfx_D3_Ptr>>$08)|(Sfx_D3_Ptr<<$08))&$FFFF     ; $BEFB  {$FBBE}
                dc.w    ((Sfx_D4_Ptr>>$08)|(Sfx_D4_Ptr<<$08))&$FFFF     ; $F4FB  {$FBF4}
                dc.w    ((Sfx_D5_Ptr>>$08)|(Sfx_D5_Ptr<<$08))&$FFFF     ; $2DFC  {$FC2D}
                dc.w    ((Sfx_D6_Ptr>>$08)|(Sfx_D6_Ptr<<$08))&$FFFF     ; $64FC  {$FC64}
                dc.w    ((Sfx_D7_Ptr>>$08)|(Sfx_D7_Ptr<<$08))&$FFFF     ; $9DFC  {$FC9D}
                dc.w    ((Sfx_D8_Ptr>>$08)|(Sfx_D8_Ptr<<$08))&$FFFF     ; $CEFC  {$FCCE}
                dc.w    ((Sfx_D9_Ptr>>$08)|(Sfx_D9_Ptr<<$08))&$FFFF     ; $FFFC  {$FCFF}
                dc.w    ((Sfx_DA_Ptr>>$08)|(Sfx_DA_Ptr<<$08))&$FFFF     ; $32FD  {$FD32}
                dc.w    ((Sfx_DB_Ptr>>$08)|(Sfx_DB_Ptr<<$08))&$FFFF     ; $62FD  {$FD62}
                dc.w    ((Sfx_DC_Ptr>>$08)|(Sfx_DC_Ptr<<$08))&$FFFF     ; $94FD  {$FD94}
                dc.w    ((Sfx_DC_Ptr>>$08)|(Sfx_DC_Ptr<<$08))&$FFFF     ; $94FD  {$FD94}
                dc.w    ((Sfx_DC_Ptr>>$08)|(Sfx_DC_Ptr<<$08))&$FFFF     ; $94FD  {$FD94}
                dc.w    ((Sfx_DC_Ptr>>$08)|(Sfx_DC_Ptr<<$08))&$FFFF     ; $94FD  {$FD94} 
                dc.w    ((Sfx_DC_Ptr>>$08)|(Sfx_DC_Ptr<<$08))&$FFFF     ; $94FD  {$FD94}
Driver_Pointers_End:
;-------------------------------------------------------------------------------                  
Universal_Voice_Bank: 
                incbin  'uvb.bin'  
Universal_Voice_Bank_End:                
;-------------------------------------------------------------------------------                  

                
;===============================================================================
                align   $8000  
Dac_Sample_Group_0: 
;-------------------------------------------------------------------------------                                
                incbin  'dac_0.bin'  
;===============================================================================
                align   $8000  
Dac_Sample_Group_1: ;  C'Mon / Go-Go-Go / Wooo 
;-------------------------------------------------------------------------------                                
                incbin  'dac_1.bin'                    
;===============================================================================
                align   $8000  
Dac_Sample_Group_2: 
;-------------------------------------------------------------------------------                                 
                incbin  'dac_2.bin'                                                                     
            
;===============================================================================
                align   $8000  ; align   $71A0 does not work....
Bank_Group_0: 
;-------------------------------------------------------------------------------  
                incbin  'filler.bin'
Mini_Boss_Snd:
                incbin  'miniboss.snd'
Final_Boss_Snd:
                incbin  'f_boss.snd'                                                
;===============================================================================
                align   $8000
Bank_Group_1: 
;-------------------------------------------------------------------------------                   
Angel_Island_1_Snd:                
                incbin  'aiz1.snd'
Angel_Island_2_Snd:                     
                incbin  'aiz2.snd'  
Hidrocity_1_Snd:                   
                incbin  'hcz1.snd'
Hidrocity_2_Snd:                      
                incbin  'hcz2.snd'
Marble_Garden_1_Snd:                
                incbin  'mgz1.snd'
Marble_Garden_2_Snd:                   
                incbin  'mgz2.snd'
Carnival_Night_2_Snd:                    
                incbin  'cnz2.snd'
Carnival_Night_1_Snd:                  
                incbin  'cnz1.snd'
Flying_Battery_1_Snd:                
                incbin  'fbz1.snd'
Flying_Battery_2_Snd:                 
                incbin  'fbz2.snd'
The_Doomsday_Snd:                
                incbin  'tdz.snd'  
;===============================================================================
                align   $8000
Bank_Group_2:                
;-------------------------------------------------------------------------------                                                       
Icecap_2_Snd:                 
                incbin  'iz2.snd'                
Icecap_1_Snd:          
                incbin  'iz1.snd'
Launch_Base_2_Snd:
                incbin  'lbz2.snd'
Launch_Base_1_Snd:
                incbin  'lbz1.snd'
Mushroom_Hill_1_Snd:
                incbin  'mhz1.snd'                                
Mushroom_Hill_2_Snd:
                incbin  'mhz2.snd'
Sandopolis_1_Snd:
                incbin  'sz1.snd'
Sandopolis_2_Snd:
                incbin  'sz2.snd' 
Lava_Reef_1_Snd:
                incbin  'lrz1.snd'                                
Lava_Reef_2_Snd:
                incbin  'lrz2.snd' 
Sky_Sanctuary_Snd:
                incbin  'scz.snd' 
Death_Egg_1_Snd:
                incbin  'dez1.snd'
Death_Egg_2_Snd:
                incbin  'dez2.snd'  
Mini_Boss_SK_Snd:
                incbin  'mb_sk.snd'  
Boss_Snd:                                                                               
                incbin  'boss.snd'
Glowing_Spheres_Bonus_Stage_snd:
                incbin  'gs_bs.snd'
Special_Stage_Snd:                
                incbin  'ss.snd' 
Level_Results_Snd:                     
                incbin  'lr.snd'
Menu_Snd:                
                incbin  'menu.snd'  
                
;===============================================================================
                align   $8000
Bank_Group_3:                
;-------------------------------------------------------------------------------                               
Slot_Machine_Bonus_Stage_snd:
                incbin  'sm_bs.snd'                
Gum_Ball_Machine_Bonus_Stage_snd:
                incbin  'gbm_bs.snd'  
Knuckles_Theme_Snd:
                incbin  'kte.snd'  
Azure_Lake_Snd:
                incbin  'alz.snd'                
Balloon_Park_Snd:
                incbin  'bpz.snd'           
Desert_Palace_Snd:
                incbin  'dpz.snd'  
Chrome_Gadget_Snd:                                              
                incbin  'cgz.snd'
Endless_Mine_Snd:
                incbin  'emz.snd'
Title_Screen_Snd:       
                incbin  'ts.snd'
Credits_Snd:                
                incbin  'credits.snd'   
Time_Game_Over_Snd:                
                incbin  'tgovr.snd'   
Continue_Snd:
                incbin  'continue.snd'
Extra_Life_Snd:
                incbin  '1up.snd'
Emerald_Snd:
                incbin  'emerald.snd'  
Invencibility_Snd:                
                incbin  'invcblty.snd'  
Competition_Menu_Snd:
                incbin  '2p_menu.snd' 
Underwater_Timming_Snd:                          
                incbin  'panic.snd'  
Presented_by_SEGA_Snd:
                incbin  'p_sega.snd'                                 
;===============================================================================
                align   $8000  
Bank_Group_Sfx: 
Sega_Group:
;-------------------------------------------------------------------------------                                    
Sega_Snd:                
                incbin  'sega.snd'                                                                                            
Sfx_34_Snd:
                incbin  'sfx_34.snd' 
Sfx_35_Snd:
                incbin  'sfx_35.snd'                 
Sfx_36_Snd:
                incbin  'sfx_36.snd'                 
Sfx_37_Snd:
                incbin  'sfx_37.snd' 
Sfx_38_Snd:
                incbin  'sfx_38.snd'                 
Sfx_39_Snd:
                incbin  'sfx_39.snd'                             
Sfx_3A_Snd:
                incbin  'sfx_3A.snd' 
Sfx_3B_Snd:
                incbin  'sfx_3B.snd'                 
Sfx_3C_Snd:
                incbin  'sfx_3C.snd'                 
Sfx_3D_Snd:
                incbin  'sfx_3D.snd' 
Sfx_3E_Snd:
                incbin  'sfx_3E.snd'                 
Sfx_3F_Snd:
                incbin  'sfx_3F.snd'                         
Sfx_40_Snd:
                incbin  'sfx_40.snd'                          
Sfx_41_Snd:
                incbin  'sfx_41.snd'
Sfx_42_Snd:
                incbin  'sfx_42.snd'                          
Sfx_43_Snd:
                incbin  'sfx_43.snd'                
Sfx_44_Snd:
                incbin  'sfx_44.snd' 
Sfx_45_Snd:
                incbin  'sfx_45.snd'                 
Sfx_46_Snd:
                incbin  'sfx_46.snd'                 
Sfx_47_Snd:
                incbin  'sfx_47.snd' 
Sfx_48_Snd:
                incbin  'sfx_48.snd'                 
Sfx_49_Snd:
                incbin  'sfx_49.snd'                
Sfx_4A_Snd:
                incbin  'sfx_4A.snd'   
Sfx_4B_Snd:
                incbin  'sfx_4B.snd'                 
Sfx_4C_Snd:
                incbin  'sfx_4C.snd'                 
Sfx_4D_Snd:
                incbin  'sfx_4D.snd' 
Sfx_4E_Snd:
                incbin  'sfx_4E.snd'                 
Sfx_4F_Snd:
                incbin  'sfx_4F.snd'                 
Sfx_50_Snd:
                incbin  'sfx_50.snd'                          
Sfx_51_Snd:
                incbin  'sfx_51.snd'
Sfx_52_Snd:
                incbin  'sfx_52.snd'                          
Sfx_53_Snd:
                incbin  'sfx_53.snd'                
Sfx_54_Snd:
                incbin  'sfx_54.snd' 
Sfx_55_Snd:
                incbin  'sfx_55.snd'                 
Sfx_56_Snd:
                incbin  'sfx_56.snd'                 
Sfx_57_Snd:
                incbin  'sfx_57.snd' 
Sfx_58_Snd:
                incbin  'sfx_58.snd'                 
Sfx_59_Snd:
                incbin  'sfx_59.snd'                
Sfx_5A_Snd:
                incbin  'sfx_5A.snd'   
Sfx_5B_Snd:
                incbin  'sfx_5B.snd'                 
Sfx_5C_Snd:
                incbin  'sfx_5C.snd'                 
Sfx_5D_Snd:
                incbin  'sfx_5D.snd' 
Sfx_5E_Snd:
                incbin  'sfx_5E.snd'                 
Sfx_5F_Snd:
                incbin  'sfx_5F.snd'                
Sfx_60_Snd:
                incbin  'sfx_60.snd'                          
Sfx_61_Snd:
                incbin  'sfx_61.snd'
Sfx_62_Snd:
                incbin  'sfx_62.snd'                          
Sfx_63_Snd:
                incbin  'sfx_63.snd'                
Sfx_64_Snd:
                incbin  'sfx_64.snd' 
Sfx_65_Snd:
                incbin  'sfx_65.snd'                 
Sfx_66_Snd:
                incbin  'sfx_66.snd'                 
Sfx_67_Snd:
                incbin  'sfx_67.snd' 
Sfx_68_Snd:
                incbin  'sfx_68.snd'                 
Sfx_69_Snd:
                incbin  'sfx_69.snd'                
Sfx_6A_Snd:
                incbin  'sfx_6A.snd'   
Sfx_6B_Snd:
                incbin  'sfx_6B.snd'                 
Sfx_6C_Snd:
                incbin  'sfx_6C.snd'                 
Sfx_6D_Snd:
                incbin  'sfx_6D.snd' 
Sfx_6E_Snd:
                incbin  'sfx_6E.snd'                 
Sfx_6F_Snd:
                incbin  'sfx_6F.snd'                
Sfx_70_Snd:
                incbin  'sfx_70.snd'                          
Sfx_71_Snd:
                incbin  'sfx_71.snd'
Sfx_72_Snd:
                incbin  'sfx_72.snd'                          
Sfx_73_Snd:
                incbin  'sfx_73.snd'                
Sfx_74_Snd:
                incbin  'sfx_74.snd' 
Sfx_75_Snd:
                incbin  'sfx_75.snd'                 
Sfx_76_Snd:
                incbin  'sfx_76.snd'                 
Sfx_77_Snd:
                incbin  'sfx_77.snd' 
Sfx_78_Snd:
                incbin  'sfx_78.snd'                 
Sfx_79_Snd:
                incbin  'sfx_79.snd'                
Sfx_7A_Snd:
                incbin  'sfx_7A.snd'   
Sfx_7B_Snd:
                incbin  'sfx_7B.snd'                 
Sfx_7C_Snd:
                incbin  'sfx_7C.snd'                 
Sfx_7D_Snd:
                incbin  'sfx_7D.snd' 
Sfx_7E_Snd:
                incbin  'sfx_7E.snd'                 
Sfx_7F_Snd:
                incbin  'sfx_7F.snd'                
Sfx_80_Snd:
                incbin  'sfx_80.snd'                          
Sfx_81_Snd:
                incbin  'sfx_81.snd'
Sfx_82_Snd:
                incbin  'sfx_82.snd'                          
Sfx_83_Snd:
                incbin  'sfx_83.snd'                
Sfx_84_Snd:
                incbin  'sfx_84.snd' 
Sfx_85_Snd:
                incbin  'sfx_85.snd'                 
Sfx_86_Snd:
                incbin  'sfx_86.snd'                 
Sfx_87_Snd:
                incbin  'sfx_87.snd' 
Sfx_88_Snd:
                incbin  'sfx_88.snd'                 
Sfx_89_Snd:
                incbin  'sfx_89.snd'                
Sfx_8A_Snd:
                incbin  'sfx_8A.snd'   
Sfx_8B_Snd:
                incbin  'sfx_8B.snd'                 
Sfx_8C_Snd:
                incbin  'sfx_8C.snd'                 
Sfx_8D_Snd:
                incbin  'sfx_8D.snd' 
Sfx_8E_Snd:
                incbin  'sfx_8E.snd'                 
Sfx_8F_Snd:
                incbin  'sfx_8F.snd'                              
Sfx_90_Snd:
                incbin  'sfx_90.snd'                          
Sfx_91_Snd:
                incbin  'sfx_91.snd'
Sfx_92_Snd:
                incbin  'sfx_92.snd'                          
Sfx_93_Snd:
                incbin  'sfx_93.snd'                
Sfx_94_Snd:
                incbin  'sfx_94.snd' 
Sfx_95_Snd:
                incbin  'sfx_95.snd'                 
Sfx_96_Snd:
                incbin  'sfx_96.snd'                 
Sfx_97_Snd:
                incbin  'sfx_97.snd' 
Sfx_98_Snd:
                incbin  'sfx_98.snd'                 
Sfx_99_Snd:
                incbin  'sfx_99.snd'                
Sfx_9A_Snd:
                incbin  'sfx_9A.snd'   
Sfx_9B_Snd:
                incbin  'sfx_9B.snd'                 
Sfx_9C_Snd:
                incbin  'sfx_9C.snd'                 
Sfx_9D_Snd:
                incbin  'sfx_9D.snd' 
Sfx_9E_Snd:
                incbin  'sfx_9E.snd'                 
Sfx_9F_Snd:
                incbin  'sfx_9F.snd'                
Sfx_A0_Snd:
                incbin  'sfx_A0.snd'                          
Sfx_A1_Snd:
                incbin  'sfx_A1.snd'
Sfx_A2_Snd:
                incbin  'sfx_A2.snd'                          
Sfx_A3_Snd:
                incbin  'sfx_A3.snd'                
Sfx_A4_Snd:
                incbin  'sfx_A4.snd' 
Sfx_A5_Snd:
                incbin  'sfx_A5.snd'                 
Sfx_A6_Snd:
                incbin  'sfx_A6.snd'                 
Sfx_A7_Snd:
                incbin  'sfx_A7.snd' 
Sfx_A8_Snd:
                incbin  'sfx_A8.snd'                 
Sfx_A9_Snd:
                incbin  'sfx_A9.snd'                
Sfx_AA_Snd:
                incbin  'sfx_AA.snd'   
Sfx_AB_Snd:
                incbin  'sfx_AB.snd'                 
Sfx_AC_Snd:
                incbin  'sfx_AC.snd'                 
Sfx_AD_Snd:
                incbin  'sfx_AD.snd' 
Sfx_AE_Snd:
                incbin  'sfx_AE.snd'                 
Sfx_AF_Snd:
                incbin  'sfx_AF.snd'  
Sfx_B0_Snd:
                incbin  'sfx_B0.snd'                          
Sfx_B1_Snd:
                incbin  'sfx_B1.snd'
Sfx_B2_Snd:
                incbin  'sfx_B2.snd'                          
Sfx_B3_Snd:
                incbin  'sfx_B3.snd'                
Sfx_B4_Snd:
                incbin  'sfx_B4.snd' 
Sfx_B5_Snd:
                incbin  'sfx_B5.snd'                 
Sfx_B6_Snd:
                incbin  'sfx_B6.snd'                 
Sfx_B7_Snd:
                incbin  'sfx_B7.snd' 
Sfx_B8_Snd:
                incbin  'sfx_B8.snd'                 
Sfx_B9_Snd:
                incbin  'sfx_B9.snd'                
Sfx_BA_Snd:
                incbin  'sfx_BA.snd'   
Sfx_BB_Snd:
                incbin  'sfx_BB.snd'                 
Sfx_BC_Snd:
                incbin  'sfx_BC.snd'                 
Sfx_BD_Snd:
                incbin  'sfx_BD.snd' 
Sfx_BE_Snd:
                incbin  'sfx_BE.snd'                 
Sfx_BF_Snd:
                incbin  'sfx_BF.snd'                
Sfx_C0_Snd:
                incbin  'sfx_C0.snd'                          
Sfx_C1_Snd:
                incbin  'sfx_C1.snd'
Sfx_C2_Snd:
                incbin  'sfx_C2.snd'                          
Sfx_C3_Snd:
                incbin  'sfx_C3.snd'                
Sfx_C4_Snd:
                incbin  'sfx_C4.snd' 
Sfx_C5_Snd:
                incbin  'sfx_C5.snd'                 
Sfx_C6_Snd:
                incbin  'sfx_C6.snd'                 
Sfx_C7_Snd:
                incbin  'sfx_C7.snd' 
Sfx_C8_Snd:
                incbin  'sfx_C8.snd'                 
Sfx_C9_Snd:
                incbin  'sfx_C9.snd'                
Sfx_CA_Snd:
                incbin  'sfx_CA.snd'   
Sfx_CB_Snd:
                incbin  'sfx_CB.snd'                 
Sfx_CC_Snd:
                incbin  'sfx_CC.snd'                 
Sfx_CD_Snd:
                incbin  'sfx_CD.snd' 
Sfx_CE_Snd:
                incbin  'sfx_CE.snd'                 
Sfx_CF_Snd:
                incbin  'sfx_CF.snd'                                 
Sfx_D0_Snd:
                incbin  'sfx_D0.snd'                          
Sfx_D1_Snd:
                incbin  'sfx_D1.snd'
Sfx_D2_Snd:
                incbin  'sfx_D2.snd'                          
Sfx_D3_Snd:
                incbin  'sfx_D3.snd'                
Sfx_D4_Snd:
                incbin  'sfx_D4.snd' 
Sfx_D5_Snd:
                incbin  'sfx_D5.snd'                 
Sfx_D6_Snd:
                incbin  'sfx_D6.snd'                 
Sfx_D7_Snd:
                incbin  'sfx_D7.snd' 
Sfx_D8_Snd:
                incbin  'sfx_D8.snd'                 
Sfx_D9_Snd:
                incbin  'sfx_D9.snd'                
Sfx_DA_Snd:
                incbin  'sfx_DA.snd'   
Sfx_DB_Snd:
                incbin  'sfx_DB.snd'                 
Sfx_DC_Snd:
                incbin  'sfx_DC.snd'   
;===============================================================================
; Sonic 3 Sound Driver Data
; [ End ]
;===============================================================================
                                       