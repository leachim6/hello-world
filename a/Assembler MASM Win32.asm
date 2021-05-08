; ---------------------------------------------
; Hello World for Win32 Intel x86 Assembly
;
; by fruel (https://github.com/fruel)
; 13 June 2016
; ---------------------------------------------

.386
.model flat,stdcall
.stack 4096

EXTRN ExitProcess@4 : PROC
EXTRN GetStdHandle@4 : PROC
EXTRN WriteConsoleA@20 : PROC

.data
msg BYTE "Hello World",0
bytesWritten DWORD ?

.code
main PROC
    push -11
    call GetStdHandle@4
 
    push 0   
    push OFFSET bytesWritten
    push LENGTHOF msg - 1
    push OFFSET msg   
    push eax     
    call WriteConsoleA@20

    push 0  
    call ExitProcess@4
main ENDP
END main
