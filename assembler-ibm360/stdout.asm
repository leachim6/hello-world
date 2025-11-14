         LA    1,MSGAREA     Point Register 1 to message area
         SVC   35            Invoke SVC 35 (Write to Operator) 
         BR    14            Return
MSGAREA  EQU   *             Message Area
         DC    AL2(19)       Total area length = 19 (Prefix length:4 + Data Length:15) 
         DC    XL2'00'       2 bytes binary of zeros
         DC    C'Hello World'  Text to be written to system console
         END
