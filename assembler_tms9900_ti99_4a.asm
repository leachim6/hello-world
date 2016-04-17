
* Hello World for TI-99/4a computer with TMS9900 CPU
* by Frog ( http://frog.enlight.ru )
* 15 April 2016
*
****************************************************************************

        DEF     START

WRKSP   EQU     >8300

VDPWD   EQU     >8C00           * VDP RAM write data
VDPWA   EQU     >8C02           * VDP RAM read/write address


START   LIMI    0               * disable interrupts
        LWPI    WRKSP           * set default workspace

* set VDP RAM start address (low and high byte)

        LI      R0,>0000
        ORI     R0,>4000
        SWPB    R0
        MOVB    R0,@VDPWA
        SWPB    R0
        MOVB    R0,@VDPWA

        LI      R1,HELLOWORLD   * ascii string address
        LI      R2,12           * total chars

NEXTCHAR
        MOVB    *R1+,@VDPWD     * put next char on screen
        DEC     R2
        JNE     NEXTCHAR

LOOPBACK
        JMP LOOPBACK            * stop and do nothing


HELLOWORLD
        TEXT 'HELLO WORLD!'     * string data
        BYTE 0

        END
