section .rodata
    msg db "Hello World", 0xA     
    len equ $- msg           
section	.text
    global _start            

_start:
	mov	eax, 1        
	mov	edi, eax             
	mov	esi, msg           
    mov edx, len
	syscall                  

    mov eax, 60                 
	xor	edi, edi              
	syscall              
