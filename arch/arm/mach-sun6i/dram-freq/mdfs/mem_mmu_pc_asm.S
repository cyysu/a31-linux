
/**-----------------------------stack point address in sram-----------------------------------------*/
#define SP_IN_SRAM	0xf0007000 //32k
/*save_sp*/
/*restore_sp*/
/*get_sp*/

    .text
    .globl save_sp
save_sp:
    mov r0, r13
    ldr  r13, =SP_IN_SRAM
    mov pc,lr

    .text
    .globl restore_sp
restore_sp:
    mov r13, r0
    mov pc,lr

    .text
    .globl get_sp
get_sp:
    mov r0, r13
    mov pc,lr
