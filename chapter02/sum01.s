/* -- sum01.s */
.global main

main:
    mov x1, #3
    mov x2, #4
    add x0, x1, x2  /* x0 ← x1 + x2 */
    ret
