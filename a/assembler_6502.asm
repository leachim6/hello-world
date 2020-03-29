; goodbyeworld.s for C= 8-bit machines, ca65 assembler format.
; String printing limited to strings of 256 characters or less.
 
a_cr	= $0d		; Carriage return.
bsout	= $ffd2		; KERNAL ROM, output a character to current device.
 
	.code
 
	ldx #0		; Starting index 0 in X register.
printnext:
	lda text,x	; Get character from string.
	beq done	; If we read a 0 we're done.
	jsr bsout	; Output character. 
	inx		; Increment index to next character.
	bne printnext	; Repeat if index doesn't overflow to 0.
done:
	rts		; Return from subroutine.
 
	.rodata
 
text:
	.byte	"Hello World", a_cr, 0
