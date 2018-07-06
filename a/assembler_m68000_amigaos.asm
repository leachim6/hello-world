; "Hello World" in Motorola 68000 machine language, for AmigaOS

ExecBase     = 4
OpenLibrary  = -552
CloseLibrary = -414
PutStr       = -948

	section "main", code

	; open "dos.library"

	move.l	ExecBase, a6
	lea	lib, a1
	moveq	#0, d0
	jsr	(OpenLibrary, a6)
	move.l	d0, a6

	; print the message

	move.l	#msg, d1
	jsr	(PutStr, a6)

	; close the library, and exit with code 0

	move.l	a6, a1
	move.l	ExecBase, a6
	jsr	(CloseLibrary, a6)

	moveq	#0, d0
	rts

lib	dc.b	"dos.library", 0
msg	dc.b	"Hello World!\n", 0
