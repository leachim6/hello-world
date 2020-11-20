
; Hello World for Vectrex computer with 6809 CPU
; by Frog ( http://frog.enlight.ru )
; 24 March 2016

;***************************************************************************
                org     0

; this header required to identify ROM by Vectrex hardware (only year allowed to change)
                db      "g GCE 2016", $80       ; 'g' is copyright sign
                dw      $F600                   ; music from the rom (no music)
                db      $FC, $30, 33, -$2a      ; height, width, rel y, rel x for app title
                db      "HELLO WORLD", $80      ; app title, ending with $80
                db      0                       ; end of header

; main loop (required to redraw vectors on CRT screen)
loop:

; recalibrate CRT, reset beam to 0,0 (center of the screen)
                jsr     $f192                   ; Wait_Recal subroutine in ROM

                ldu     #helloworld             ; string address
                lda     #10                     ; Y
                ldb     #-45                    ; X

                jsr     $f37a                   ; Print_Str_d subroutine in ROM

                bra     loop

; Text data ($80 - end of line)

helloworld:     db      'HELLO WORLD!',$80

