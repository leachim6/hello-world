; Hello World for Philips Videopac (Magnavox Odyssey 2)
; by Frog ( https://github.com/petersobolev )
; 25 July 2016

	cpu	8048
	org	400h


	jmp     02C3h
	jmp     0009h
	jmp	timer
	jmp	001Ah
	jmp	start
	jmp	0044h
timer:
	ret


start:

	call	011Ch       

	mov	r0,#010h    
	mov	r3,#40                      
	mov	r4,#100
	mov	r1,#hellostr & 0ffh

	mov	r2,#11 

nextchar:
	mov	a,r1
	movp	a,@a             
	mov	r5,a
	inc	r1       
	mov	r6,#0eh
	call	03EAh
	djnz	r2,nextchar

	call	0127h             


loop:
	jmp 	loop           


hellostr:
	db 	01dh, 012h, 00eh, 00eh, 017h, 00ch, 011h, 017h, 013h, 00eh, 01ah
