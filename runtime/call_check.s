# This is a custom entry point that calls basic_main() for a compiled BASIC program
# and verifies that it satisfies the x86-64 calling convention.
# This means that the callee-save registers and all memory above %rsp
# at the start of basic_main() must not be modified.

.rodata
check_failed_msg:
    .asciz "ARM64 calling convention violated\n"

.text
.globl main
main:
    # # Put 32 KB of canary data on the stack
    # movq $-0x1000, %rcx
    # leaq (%rsp, %rcx, 8), %rsp
    # movq %rsp, %rdi
    # movq $0x1BF532C94A760E8D, %rax
    # negq %rcx
    # cld
    # rep stosq

    # Put canary values in callee-save registers
    movz x19, #0x58C1
    movk x19, #0x9FA3, lsl #16
    movk x19, #0x07DE, lsl #32
    movk x19, #0xB426, lsl #48

    movz x20, #0xC53D
    movk x20, #0xFAB9, lsl #16
    movk x20, #0x87E6, lsl #32
    movk x20, #0x4120, lsl #48

    movz x21, #0x2B9F
    movk x21, #0x6AE0, lsl #16
    movk x21, #0x387C, lsl #32
    movk x21, #0x514D, lsl #48

    movz x22, #0x9760
    movk x22, #0xC1DA, lsl #16
    movk x22, #0x4238, lsl #32
    movk x22, #0xE5BF, lsl #48

    movz x23, #0x0E71
    movk x23, #0x4A63, lsl #16
    movk x23, #0xD852, lsl #32
    movk x23, #0xCB9F, lsl #48

    movz x24, #0x3618
    movk x24, #0xCEA2, lsl #16
    movk x24, #0xF947, lsl #32
    movk x24, #0xD0B5, lsl #48

    movz x25, #0x58C1
    movk x25, #0x9FA3, lsl #16
    movk x25, #0x07DE, lsl #32
    movk x25, #0xB426, lsl #48

    movz x26, #0xC53D
    movk x26, #0xFAB9, lsl #16
    movk x26, #0x87E6, lsl #32
    movk x26, #0x4120, lsl #48

    movz x27, #0x2B9F
    movk x27, #0x6AE0, lsl #16
    movk x27, #0x387C, lsl #32
    movk x27, #0x514D, lsl #48

    movz x28, #0x9760
    movk x28, #0xC1DA, lsl #16
    movk x28, #0x4238, lsl #32
    movk x28, #0xE5BF, lsl #48

    bl basic_main

    # Check that callee-save registers haven't changed
    movz x0, #0x58C1
    movk x0, #0x9FA3, lsl #16
    movk x0, #0x07DE, lsl #32
    movk x0, #0xB426, lsl #48
    cmp x0, x19
    bne check_failed

    movz x0, #0xC53D
    movk x0, #0xFAB9, lsl #16
    movk x0, #0x87E6, lsl #32
    movk x0, #0x4120, lsl #48
    cmp x0, x20
    bne check_failed

    movz x0, #0x2B9F
    movk x0, #0x6AE0, lsl #16
    movk x0, #0x387C, lsl #32
    movk x0, #0x514D, lsl #48
    cmp x0, x21
    bne check_failed

    movz x0, #0x9760
    movk x0, #0xC1DA, lsl #16
    movk x0, #0x4238, lsl #32
    movk x0, #0xE5BF, lsl #48
    cmp x0, x22
    bne check_failed

    movz x0, #0x0E71
    movk x0, #0x4A63, lsl #16
    movk x0, #0xD852, lsl #32
    movk x0, #0xCB9F, lsl #48
    cmp x0, x23
    bne check_failed

    movz x0, #0x3618
    movk x0, #0xCEA2, lsl #16
    movk x0, #0xF947, lsl #32
    movk x0, #0xD0B5, lsl #48
    cmp x0, x24
    bne check_failed

    movz x0, #0x58C1
    movk x0, #0x9FA3, lsl #16
    movk x0, #0x07DE, lsl #32
    movk x0, #0xB426, lsl #48
    cmp x0, x25
    bne check_failed

    movz x0, #0xC53D
    movk x0, #0xFAB9, lsl #16
    movk x0, #0x87E6, lsl #32
    movk x0, #0x4120, lsl #48
    cmp x0, x26
    bne check_failed

    movz x0, #0x2B9F
    movk x0, #0x6AE0, lsl #16
    movk x0, #0x387C, lsl #32
    movk x0, #0x514D, lsl #48
    cmp x0, x27
    bne check_failed

    movz x0, #0x9760
    movk x0, #0xC1DA, lsl #16
    movk x0, #0x4238, lsl #32
    movk x0, #0xE5BF, lsl #48
    cmp x0, x28
    bne check_failed

    # # Check canary values on stack
    # movq %rsp, %rdi
    # movq $0x1BF532C94A760E8D, %rax
    # movl $0x1000, %ecx
    # repe scasq
    # jne check_failed

    # Checks succeeded; exit with code 0
    mov w0, wzr
    bl exit

    # # Checks failed; print a warning message and exit with error status
    check_failed:
    adrp x8, stderr
    ldr x3, [x8, :lo12:stderr]
    adrp x0, check_failed_msg
    add x0, x0, :lo12:check_failed_msg
    mov w1, #34
    mov w2, #1
    bl fwrite
    mov w0, #1
    bl exit