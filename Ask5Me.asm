.MODEL SMALL
.STACK 100h

;-----------------------------------------------------------------------------------------------------------------------------

.DATA

Q1 DB '1) Who invented the computer? 1)Tesla 2)Babbage 3)Einstein? ','$'
Ans1 DB '2'

Q2 DB '2) Who is the all-time top scorer in football? 1)Messi 2)Ronaldo 3)Pele? ','$'
Ans2 DB '2'

Q3 DB '3) Architect of Khufu Pyramid? 1)Hemiunu 2)Imhotep 3)Senenmut ','$'
Ans3 DB '1'

Q4 DB '4) What is the closest planet to the Sun? 1)Earth 2)Venus 3)Mercury? ','$'
Ans4 DB '3'

Q5 DB '5) What is the chemical symbol for water? 1)H2O 2)CO2 3)O2? ','$'
Ans5 DB '1'

MsgCorrect DB 13,10, '(Correct)-----------------------------------------------------------------------','$'
MsgWrong   DB 13,10, '(Wrong)-------------------------------------------------------------------------','$'
MsgScore   DB 13,10, 'Score = ','$'

Total DB 0  

;------------------------------------------------------------------------------------------------------------------------------

.CODE

MAIN PROC

    ;MOV AX,@Data
    ;MOV DS,AX
    .STARTUP

    CALL DisplayQ1
    CALL DisplayQ2
    CALL DisplayQ3
    CALL DisplayQ4
    CALL DisplayQ5

   
    MOV AH,9H
    LEA DX,MsgScore
    INT 21H

    
    
    
    MOV DL,Total
    ADD DL,30H
    MOV AH,2H
    INT 21H
    
    ;MOV AH,4CH
    ;MOV AL,0
    ;INT 21H
    
    .EXIT
    
MAIN ENDP

;------------------------------------
DisplayQ1 PROC

    MOV AH,9H
    LEA DX,Q1
    INT 21H

    MOV AH,1H
    INT 21H        

    CMP AL,[Ans1]
    JE Correct1
    JMP Wrong1

Correct1:
    
    INC Total
    MOV AH,9H
    LEA DX,MsgCorrect
    INT 21H
    RET

Wrong1:
    
    MOV AH,9H
    LEA DX,MsgWrong
    INT 21H
    RET
    
DisplayQ1 ENDP

;------------------------------------------ 
DisplayQ2 PROC

    MOV AH,9H
    LEA DX,Q2
    INT 21H

    MOV AH,1H
    INT 21H

    CMP AL,[Ans2]
    JE Correct2
    JMP Wrong2

Correct2:
    INC Total
    MOV AH,9H
    LEA DX,MsgCorrect
    INT 21H
    RET

Wrong2:
    
    MOV AH,9H
    LEA DX,MsgWrong
    INT 21H
    RET
DisplayQ2 ENDP

;---------------------------
DisplayQ3 PROC

    MOV AH,9H
    LEA DX,Q3
    INT 21H

    MOV AH,1H
    INT 21H

    CMP AL,[Ans3]
    JE Correct3
    JMP Wrong3

Correct3:
    INC Total
    MOV AH,9H
    LEA DX,MsgCorrect
    INT 21H
    RET

Wrong3:
    MOV AH,9H
    LEA DX,MsgWrong
    INT 21H
    RET
DisplayQ3 ENDP

;---------------------------
DisplayQ4 PROC
    MOV AH,9H
    LEA DX,Q4
    INT 21H

    MOV AH,1H
    INT 21H

    CMP AL,[Ans4]
    JE Correct4
    JMP Wrong4

Correct4:
    INC Total
    MOV AH,9H
    LEA DX,MsgCorrect
    INT 21H
    RET

Wrong4:
    MOV AH,9H
    LEA DX,MsgWrong
    INT 21H
    RET
DisplayQ4 ENDP

;---------------------------
DisplayQ5 PROC
    MOV AH,9H
    LEA DX,Q5
    INT 21H

    MOV AH,1H
    INT 21H

    CMP AL,[Ans5]
    JE Correct5
    JMP Wrong5

Correct5:
    
    INC Total
    MOV AH,9H
    LEA DX,MsgCorrect
    INT 21H
    RET

Wrong5:
    MOV AH,9H
    LEA DX,MsgWrong
    INT 21H
    RET
DisplayQ5 ENDP


END MAIN



