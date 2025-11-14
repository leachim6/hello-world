
* Hello World for TI-99/4a computer with TMS9900 CPU
* by Frog ( http://frog.enlight.ru )
* 15 April 2016
*
****************************************************************************

        DEF     START

WRKSP   EQU     >8300

VDPWD   EQU     >8C00        
VDPWA   EQU     >8C02


START   LIMI    0            
        LWPI    WRKSP

        LI      R0,>0000
        ORI     R0,>4000
        SWPB    R0
        MOVB    R0,@VDPWA
        SWPB    R0
        MOVB    R0,@VDPWA

        LI      R1,HELLOWORLD   
        LI      R2,12          

NEXTCHAR
        MOVB    *R1+,@VDPWD     
        DEC     R2
        JNE     NEXTCHAR

LOOPBACK
        JMP LOOPBACK


HELLOWORLD
        TEXT 'HELLO WORLD'

        BYTE 0

        END
