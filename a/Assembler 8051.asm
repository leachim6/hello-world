ORG 00H
SJMP INIT

INIT:
; Timer1 as the UART1 buadrate generator
        MOV TMOD, #20H  ; Timer1, 8-bit auto-reload mode
        MOV TH1,  #0FDH ; 9600 baudrate at 11.0592MHz
        MOV SCON, #50H  ; Serial mode 1, enable reception
        SETB TR1        ; Start Timer1
        MOV DPTR, #20H  ; Point DPTR to the start of the string

SEND:
        CLR A
        MOVC A, @A+DPTR ; Get the next character
        INC DPTR
        JZ DONE         ; End program if the character is null
        MOV SBUF, A     ; Send the character
        JNB TI, $       ; Wait for transmission to complete
        CLR TI          ; Clear TI flag
        SJMP SEND

DONE:
        SJMP $          ; Endless loop

ORG 20H
DB 'Hello World', 0

END
