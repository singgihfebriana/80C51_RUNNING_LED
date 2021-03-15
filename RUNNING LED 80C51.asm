      org   0h
      jmp   Start

;====================================================================
; CODE SEGMENT
;====================================================================

      
Start:	
      MOV A,#1
      MOV R0,#7
KIRI:
      MOV P2,A
      ACALL DELAY
      RL A
      DEC R0
      CJNE R0,#0,KIRI
      MOV R0,#7
KANAN:
      MOV P2,A
      ACALL DELAY
      RR A
      DEC R0
      CJNE R0,#0,KANAN
      SJMP Start
DELAY:
	 MOV R1,#09H
DELAY1:  MOV R2,#09H
DELAY2:  MOV R3,#09H
DELAY3:  NOP
         DJNZ R3,DELAY3
         DJNZ R2,DELAY2
         DJNZ R1,DELAY1
	 RET
   

END
      

      