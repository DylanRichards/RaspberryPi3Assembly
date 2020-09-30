/* -- rol.s */

.data

.balign 4
value: .int 0x12345678

.global main
.text
main:
    ldr x1, =value
    ldr w1, [x1]
    mov w1, w1, ROR #1  /* rotate right 1 bit*/
    mov w1, w1, ROR #31 /* rotate right 31 bits */

    eor x0, x0, x0      /* bitwise exclusive or */
    ret

