/* -- array01.s */
.data

.balign 4
a: .skip 400

.balign 4
b: .skip 8

.text

.global main
main:
    ldr x1, =a              /* x1 ← &a */
    mov x2, #0              /* x2 ← 0 */
loop:
    cmp x2, #100            /* Have we reached 100 yet? */
    beq end                 /* If so, leave the loop, otherwise continue */
    add x3, x1, x2, LSL #2  /* x3 ← x1 + x2 * 4 */
    str x2, [x3]            /* *x3 ← x2 */
    add x2, x2, #1          /* x2 ← x2 + 1 */
    b loop                  /* Go to the beginning of the loop */
end:
    ret

