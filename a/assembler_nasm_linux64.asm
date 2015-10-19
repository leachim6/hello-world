section	.text
    global _start			;must be declared for linker (ld)

_start:					;tell linker entry point

	xor	eax,eax		; eax:=0
	lea	edx,[rax+len]	;message length
	mov	esi,msg		;message to write
	mov	al,1		;system call number (sys_write)
	mov	edi,eax		;file descriptor (stdout)
	syscall			;call kernel
	
	mov	al,60		;system call number (sys_exit)
	syscall			;call kernel

section	.data

msg	db	'Hello, world!',0xa	;our string
len	equ	$ - msg			;length of our string
