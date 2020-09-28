/* -- branch01.s */

.text
.global main
main:
case_a:
    mov x0, #2
    b end
case_b:
    mov x0, #3
end:
    ret
