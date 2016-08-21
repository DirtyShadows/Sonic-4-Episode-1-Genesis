#COMPILE EXE
#DIM ALL

FUNCTION PBMAIN () AS LONG

    DIM filenam$
    INPUT "Filename?",filenam$
    ON ERROR GOTO error404
    OPEN filenam$ FOR INPUT AS #2
    CLOSE #2
    ON ERROR RESUME NEXT
    GOTO ERROR500000
error404:
    RESUME error500000
    REM
error500000:
   ' exit function
    DIM songtype$
SongtypeTest:
    INPUT "Type 1 (ASM) or 2 (BIN)?", songtype$
    IF songtype$ <> "1" AND songtype$ <> "2" THEN GOTO SongtypeTest

    CHDIR "..\ASM"
    OPEN "AMOUNT.ASM" FOR INPUT AS #1
    DIM am1$
    DIM am2$
    LINE INPUT #1, am1$
    LINE INPUT #1, am2$
    CLOSE #1
    KILL "AMOUNT.ASM"
    OPEN "amount.asm" FOR OUTPUT AS #1
    am1$ = MID$(am1$,2)
    am1$ = STR$(VAL(am1$)+1)
    PRINT #1, ";"+am1$
    DIM amounthex$
    amounthex$ = HEX$(VAL(am1$) + 128)
    PRINT #1, "MusicAmount EQU $" + amounthex$
    CLOSE #1
    DIM extension$
    IF songtype$ = "1" THEN extension$ = ".asm" ELSE extension$ = ".bin"
    FILECOPY filenam$, "..\Music\Song"+amounthex$+extension$
    IF songtype$ = "1" THEN PRINT "!!! PLEASE MAKE SURE YOU INCLUDED CORRECT DEFINITIONS !!!"
    DIM sname$
isname:
    INPUT "Song name (max. 32 characters)?", sname$
    IF LEN(sname$) > 32 THEN GOTO isname
    OPEN "songname.asm" FOR BINARY AS #1
    DIM tmpstr$
    tmpstr$ = SPACE$(LOF(1))
    GET #1, , tmpstr$
    tmpstr$ = CHR$(13)+CHR$(10)+"M" + amounthex$ + "Text:"
    tmpstr$ = tmpstr$ + CHR$(13)+CHR$(10)+ "    dc.b 39,  " + CHR$(34) + sname$ + SPACE$(40-LEN(sname$))+ CHR$(34)
    tmpstr$ = tmpstr$ + CHR$(13)+CHR$(10)+ "    even"
    PUT #1, , tmpstr$
    CLOSE #1
    OPEN "mustext.asm" FOR BINARY AS #1
    tmpstr$ = SPACE$(LOF(1))
    GET #1,,tmpstr$
        tmpstr$ = ""
    IF amounthex$ = "81" THEN tmpstr$ = ","
    tmpstr$ = tmpstr$ + " M"+amounthex$+"TEXT"
    PUT #1, , tmpstr$
    CLOSE #1
    OPEN "musicptr.asm" FOR BINARY AS #1
    tmpstr$ = SPACE$(LOF(1))
    GET #1, , tmpstr$
    tmpstr$ = ""
    IF amounthex$ = "81" THEN tmpstr$ = ","
    tmpstr$=tmpstr$ + " Music" + amounthex$
    PUT #1, , tmpstr$
    CLOSE #1
    OPEN "songlist.asm" FOR BINARY AS #1
    tmpstr$ = SPACE$(LOF(1))
    GET #1, , tmpstr$
    tmpstr$ = CHR$(13)+CHR$(10) + "Music"+amounthex$+":"+CHR$(13)+CHR$(10)
    tmpstr$ = tmpstr$+ "    "
    IF songtype$ = "1" THEN tmpstr$ = tmpstr$ + "include ./music/song"+amounthex$+extension$ ELSE tmpstr$ = tmpstr$ + "incbin ./music/song"+amounthex$+extension$
    tmpstr$ = tmpstr$ + CHR$(13) + CHR$(10) + "    even"
    PUT #1 , , tmpstr$
    CLOSE #1
    OPEN "sndtype.bin" FOR BINARY AS #1
    tmpstr$ = SPACE$(LOF(1))
    GET #1,,tmpstr$
    tmpstr$ = CHR$(144)
    PUT #1,,tmpstr$
    CLOSE #1
END FUNCTION
