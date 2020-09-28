/* -- compare01.s */

.text
.global main
main:
    mov x1, #2       /* x1 ← 2 */
    mov x2, #2       /* x2 ← 2 */
    cmp x1, x2       /* x1 ← x2 */
    beq case_equal   /* branch to case_equal if Z = 1 */
case_different:
    mov x0, #2       /* x0 ← 2 */
    b end            /* branch to end */
case_equal:
    mov x0, #1       /* x0 ← 1 */
end:
    ret
