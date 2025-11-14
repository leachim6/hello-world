
; Hello World for Vectrex computer with 6809 CPU
; by Frog ( http://frog.enlight.ru )
; 24 March 2016

;***************************************************************************
                org     0


                db      "g GCE 2016", $80
                dw      $F600       
                db      $FC, $30, 33, -$2a
                db      "HELLO WORLD", $80 
                db      0


loop:

                jsr     $f192

                ldu     #helloworld
                lda     #10
                ldb     #-45    

                jsr     $f37a  

                bra     loop



helloworld:     db      'Hello World',$80

