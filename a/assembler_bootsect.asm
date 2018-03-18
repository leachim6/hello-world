[ORG	0x7C00]

	mov	si,HelloWorld
	call	print_string

	jmp	$
	
	HelloWorld	db	"Hello world!",0xD,0xA,0
	
print_string:
	mov	ah,0xE
.repeat:
	lodsb
	cmp	al,0
	je	.done
	int	0x10
	jmp	.repeat
.done:
	ret
	
	times	510-($-$$)	db	0
	dw	0xAA55