TITLE PROGRAM FOR ARRAY ADD THROUGH PROC
DATA SEGMENT
        NUM1 DB 2H,4H,8H
DATA ENDS
CODE SEGMENT
START:
        ASSUME CS:CODE,DS:DATA
	    MOV AX,DATA
        MOV DS,AX
        CALL ADDP 
        MOV AX,4C00H
        INT 21H
        ADDP PROC NEAR
                MOV AX,00H
                MOV CX,03
                LEA DI,NUM1
A20:            ADD AL,[DI]
                INC DI
                LOOP A20
         RET
         ADDP ENDP

CODE ENDS
        END START

