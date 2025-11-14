section	.text
    global _start		

_syscall:		
	int	0x80	
	ret

_start:			

	push	dword len
	push	dword msg
	push	dword 1
	mov	eax,0x4
	call	_syscall	


	add	esp,12	

	push	dword 0	
	mov	eax,0x1	
	call	_syscall	

section	.data

msg	db	"Hello World",0xa
len	equ	$ - msg