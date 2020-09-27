/* -- sum02.s */
.global main

main:
    mov x0, #3
    mov x1, #4
    add x0, x0, x1  /* x0 ← x1 + x2 */
    ret
