/* -- load01.s */

/* -- Data section */
.data

/* Ensure variable is 4-byte aligned */
.balign 4
/* Define storage for myvar1 */
myvar1:
    /* Contents of myvar1 is just '3' */
    .word 3

/* Ensure variable is 4-byte aligned */
.balign 4
/* Define storage for myvar2 */
myvar2:
    /* Contents of myvar2 is just '4' */
    .word 4

/* -- Code section */
.text

/* Ensure function section starts 4 byte aligned */
.balign 4
.global main
main:
    adr x1, myvar1  /* x1 ← &myvar1 */
    ldr x1, [x1]    /* x1 ← *x1 */
    ldr x2, myvar2  /* x2 ← &myvar2 */
    ldr x2, [x2]    /* x1 ← *x2 */
    add x0, x1, x2
    ret
