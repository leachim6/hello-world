
; Hello World for Philips Videopac (Magnavox Odyssey 2)
; by Frog ( https://github.com/petersobolev )
; 25 July 2016

	cpu	8048
	org	400h

; interrupt vectors
	jmp     02C3h                           ; selectgame (RESET)
	jmp     0009h                           ; irq
	jmp	timer                           ; timer
	jmp	001Ah                           ; vsyncirq
	jmp	start                           ; after selectgame
	jmp	0044h                           ; soundirq

timer:
	ret                                     ; no timer needed


start:

	call	011Ch                           ; gfxoff

	mov	r0,#010h                        ; pointer in VDC - which char to display (one of 12)
	mov	r3,#40                          ; x
	mov	r4,#100                         ; y
	mov	r1,#hellostr & 0ffh             ; string to print (should be on same 255 bytes page)

	mov	r2,#11                          ; string length

nextchar:
	mov	a,r1
	movp	a,@a                            ; get char located at @r1
	mov	r5,a
	inc	r1                              ; inc addr of char
	mov	r6,#0eh                         ; white color
	call	03EAh                           ; printchar bios subroutine (increases r0, r3)
	djnz	r2,nextchar

	call	0127h                           ; gfxon (show what is written to VDC)


loop:
	jmp 	loop                            ; just wait and do nothing

; 'HELLO WORLD' (ascii not supported by assembler)
hellostr:
	db 	01dh, 012h, 00eh, 00eh, 017h, 00ch, 011h, 017h, 013h, 00eh, 01ah

