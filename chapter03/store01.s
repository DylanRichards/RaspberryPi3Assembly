/* -- store01.s */

/* -- Data section */
.data

/* Ensure variable is 4-byte aligned */
.balign 4
/* Define storage for myvar1 */
myvar1:
    /* Contents of myvar1 is just '0' */
    .word 0

/* Ensure variable is 4-byte aligned */
.balign 4
/* Define storage for myvar2 */
myvar2:
    /* Contents of myvar2 is just '0' */
    .word 0

/* -- Code section */
.text

/* Ensure function section starts 4 byte aligned */
.balign 4
.global main
main:
    adr x1, myvar1  /* x1 ← &myvar1 */
    mov x3, #3      /* x3 ← 3 */
    str x3, [x1]    /* *x1 ← x3 */
    adr x2, myvar2  /* x2 ← &myvar2 */
    mov x3, #4      /* x3 ← 3 */
    str x3, [x2]    /* *x2 ← x3 */

    adr x1, myvar1  /* x1 ← &myvar1 */
    ldr x1, [x1]    /* x1 ← *x1 */
    adr x2, myvar2  /* x2 ← &myvar2 */
    ldr x2, [x2]    /* x2 ← *x2 */
    add x0, x1, x2
    ret
