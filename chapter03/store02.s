/* -- store02.s */

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

/* Ensure variable is 4-byte aligned */
.balign 4
/* Define storage for myvar3 */
myvar3:
    /* Contents of myvar3 is just '0' */
    .word 0

/* -- Code section */
.text

/* Ensure function section starts 4 byte aligned */
.balign 4
.global main
main:
    adr x1, myvar1  /* x1 ← &myvar1 */
    ldr x1, [x1]    /* x1 ← *x1 */
    adr x2, myvar2  /* x2 ← &myvar2 */
    ldr x2, [x2]    /* x1 ← *x2 */
    add x3, x1, x2  /* x3 ← x1 + x2 */
    adr x4, myvar3  /* x4 ← &myvar3 */
    str x3, [x4]    /* *x4 ← x3 */
    /* Clear registers to prove that
       we are actually something
       previously stored */
    mov x0, #0      /* x0 ← 0 */
    mov x1, #0      /* x1 ← 0 */
    mov x2, #0      /* x2 ← 0 */
    mov x3, #0      /* x3 ← 0 */
    mov x4, #0      /* x4 ← 0 */
    
    adr x0, myvar3
    ldr x0, [x0]
    ret
