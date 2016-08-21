#COMPILE EXE
#DIM ALL

FUNCTION PBMAIN () AS LONG

    ' ADDS A PCM SAMPLE
    IF COMMAND$ = "" THEN
         PRINT "SMPS 68k Player - SAMPLE adder!"
         PRINT""
         PRINT "addpcm <file> <pitch> where pitch is in decimal"
         PRINT""
         PRINT "warning: filename is either 8.3 or with quotes around it!"

         WHILE INKEY$ = ""
         WEND
         EXIT FUNCTION
    END IF
      DIM file$
      file$ = COMMAND$(1)
      DIM pitch$
      pitch$ = COMMAND$(2)
      CHDIR "..\ASM"
      OPEN file$ FOR INPUT AS #3
      DIM file2$
      file2$ = FILENAME$(3)
      CLOSE #3
      OPEN "PCMSAMPS.ASM" FOR BINARY AS #2
      OPEN "PCM_TABLE.ASM" FOR INPUT AS #1

      DIM filenumber$
      LINE INPUT #1, filenumber$
      filenumber$ = MID$(filenumber$, 2)
      filenumber$ = TRIM$(STR$(VAL(filenumber$)+1))
      CLOSE #1
      OPEN "PCM_TABLE.ASM" FOR BINARY AS #1
      DIM strin$
      strin$ = SPACE$(LOF(1))
      GET #1, , strin$
      DIM peter$
      peter$=CHR$(13)+CHR$(10) + "   pcms    sample" + filenumber$ + ",  sample"+filenumber$+"_end,  " + pitch$ + " ; " + HEX$(127 + 1 + VAL(filenumber$)) + " ("+PATHNAME$(NAME,file$)+")"

      strin$ = SPACE$(LOF(2))
      GET #2 , , strin$
      PUT #1, , peter$
      peter$ = CHR$(13)+CHR$(10) + "sample"+filenumber$+": incbin ./samps/samp"+filenumber$+".snd" + CHR$(13)+CHR$(10) +  "sample"+filenumber$+"_end: even" +CHR$(13)+CHR$(10) + "   align $8000"
      PUT #2, , peter$
      CLOSE #2
      CLOSE #1
      FILECOPY file$, "..\samps\samp"+filenumber$+".snd"
      OPEN "PCM_TABLE.ASM" FOR BINARY AS #1
      IF LEN(filenumber$) = 1 THEN filenumber$ = "0" + filenumber$
      peter$ =  ";" + filenumber$
      PUT #1, , peter$
      CLOSE #1
      CHDIR ".."
      CHDIR "samps"
      PRINT "Sample $" + HEX$(127 + 1 + VAL(filenumber$))+ " added and saved to "+CURDIR$+"\samp"+filenumber$".snd!"

END FUNCTION
