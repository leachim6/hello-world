; 8085 Assembly Language program to print "Hello, world!"
MESSAGE:			; Hello world message string end with 0
    DB "Hello World!", 0 
START:
     LXI H, MESSAGE  		; Load HL with address of message
    
LOOP:
    MOV A, M  			; Load accumulator with character from memory pointed by HL
    CPI 00H   			; Check if end of string character 0 is reached
    JZ END    			; If end of string, jump to END

    OUT 80H			; Output the data in A to output port 80H that's connected LCD Screen
    INX H     			; Increment HL to point to next character   
    JNZ LOOP  			; loop back to fetch next character

END:
    HLT       			; Halt the processor
