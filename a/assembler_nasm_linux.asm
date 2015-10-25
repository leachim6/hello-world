section	.text
    global _start			;must be declared for linker (ld)

_start:					;tell linker entry point

	xor	ebx, ebx
	lea	edx,[ebx+len]	;message length
	mov	ecx,msg		;message to write
	lea	eax,[ebx+4]	;system call number (sys_write)
	inc	ebx		;file descriptor (stdout)
	int	0x80		;call kernel

	mov	al,1		;system call number (sys_exit)
	int	0x80		;call kernel

section	.data

msg	db	'Hello, world!',0xa	;our string
len	equ	$ - msg			;length of our string
