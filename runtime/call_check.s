# This is a custom entry point that calls basic_main() for a compiled BASIC program
# and verifies that it satisfies the x86-64 calling convention.
# This means that the callee-save registers and all memory above %rsp
# at the start of basic_main() must not be modified.

.rodata
check_failed_msg:
    .asciz "ARM64 calling convention violated\n"

.text
.globl _start
_start:
    # # Put 32 KB of canary data on the stack
    # movq $-0x1000, %rcx
    # leaq (%rsp, %rcx, 8), %rsp
    # movq %rsp, %rdi
    # movq $0x1BF532C94A760E8D, %rax
    # negq %rcx
    # cld
    # rep stosq

    # Put canary values in callee-save registers
    mov r19, #0xB42607DE9FA358C1
    mov r20, #0x412087E6FAB9C53D
    mov r21, #0x514D387C6AE02B9F
    mov r22, #0xE5BF4238C1DA9760
    mov r23, #0xCB9FD8524A630E71
    mov r24, #0xD0B5F947CEA23618
    mov r25, #0xB42607DE9FA358C1
    mov r26, #0x412087E6FAB9C53D
    mov r27, #0x514D387C6AE02B9F
    mov r28, #0xE5BF4238C1DA9760

    call basic_main

    # Check that callee-save registers haven't changed
    mov x0, #0xB42607DE9FA358C1
    cmp x0, x19
    bne check_failed
    mov x0, #0x412087E6FAB9C53D
    cmp x0, x20
    bne check_failed
    mov x0, #0x514D387C6AE02B9F
    cmp x0, x21
    bne check_failed
    mov x0, #0xE5BF4238C1DA9760
    cmp x0, x22
    bne check_failed
    mov x0, #0xCB9FD8524A630E71
    cmp x0, x23
    bne check_failed
    mov x0, #0xD0B5F947CEA23618
    cmp x0, x24
    bne check_failed
    mov x0, #0xB42607DE9FA358C1
    cmp x0, x25
    bne check_failed
    mov x0, #0x412087E6FAB9C53D
    cmp x0, x26
    bne check_failed
    mov x0, #0x514D387C6AE02B9F
    cmp x0, x27
    bne check_failed
    mov x0, #0xE5BF4238C1DA9760
    cmp x0, x28

    # # Check canary values on stack
    # movq %rsp, %rdi
    # movq $0x1BF532C94A760E8D, %rax
    # movl $0x1000, %ecx
    # repe scasq
    # jne check_failed

    # Checks succeeded; exit with code 0
    movl w0, wzr
    bl exit

    # # Checks failed; print a warning message and exit with error status
    check_failed:
    adrp    x8, stderr
    ldr     x3, [x8, :lo12:stderr]
    adrp    x0, check_failed_msg
    add     x0, x0, :lo12:check_failed_msg
    mov     w1, #34
    mov     w2, #1
    b       fwrite