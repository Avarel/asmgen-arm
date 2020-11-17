# The code section of the assembly file
# Declares a string constant to pass to printf()
.section .rodata
intfmt:
    .asciz "%ld\n"

# The code section of the assembly file
.text
    print_int:
    adrp x8, intfmt
    add x8, x8, :lo12:intfmt
    mov x1, x0
    mov x0, x8
    b printf

.globl main
main:
    # The main() function
    stp fp, lr, [sp, #-16]!
    mov fp, sp
    sub sp, sp, #0xd0
    str x19, [fp, #-0x8]
    str x20, [fp, #-0x10]
    str x21, [fp, #-0x18]
    str x22, [fp, #-0x20]
    str x23, [fp, #-0x28]
    str x24, [fp, #-0x30]
    str x25, [fp, #-0x38]
    str x26, [fp, #-0x40]
    str x27, [fp, #-0x48]
    str x28, [fp, #-0x50]
    movz x0, #0xfffb
    movk x0, #0xffff, lsl 16
    movk x0, #0xffff, lsl 32
    movk x0, #0xffff, lsl 48
    mov x19, x0
    movz x0, #0xfc1a
    movk x0, #0xffff, lsl 16
    movk x0, #0xffff, lsl 32
    movk x0, #0xffff, lsl 48
    mov x20, x0
    movz x0, #0xfe36
    movk x0, #0xffff, lsl 16
    movk x0, #0xffff, lsl 32
    movk x0, #0xffff, lsl 48
    mov x21, x0
    mov x0, #0x52
    mov x22, x0
    mov x0, #0xa4
    mov x23, x0
    movz x0, #0xfd10
    movk x0, #0xffff, lsl 16
    movk x0, #0xffff, lsl 32
    movk x0, #0xffff, lsl 48
    mov x24, x0
    mov x0, #0x43
    mov x25, x0
    movz x0, #0xfc91
    movk x0, #0xffff, lsl 16
    movk x0, #0xffff, lsl 32
    movk x0, #0xffff, lsl 48
    mov x26, x0
    movz x0, #0xfddd
    movk x0, #0xffff, lsl 16
    movk x0, #0xffff, lsl 32
    movk x0, #0xffff, lsl 48
    mov x27, x0
    mov x0, #0x1fa
    mov x28, x0
    movz x0, #0xfd21
    movk x0, #0xffff, lsl 16
    movk x0, #0xffff, lsl 32
    movk x0, #0xffff, lsl 48
    str x0, [fp, -0x58]
    mov x0, #0x2cf
    str x0, [fp, -0x60]
    movz x0, #0xfd7e
    movk x0, #0xffff, lsl 16
    movk x0, #0xffff, lsl 32
    movk x0, #0xffff, lsl 48
    str x0, [fp, -0x68]
    mov x0, #0x2ab
    str x0, [fp, -0x70]
    movz x0, #0xfd9f
    movk x0, #0xffff, lsl 16
    movk x0, #0xffff, lsl 32
    movk x0, #0xffff, lsl 48
    str x0, [fp, -0x78]
    movz x0, #0xfc48
    movk x0, #0xffff, lsl 16
    movk x0, #0xffff, lsl 32
    movk x0, #0xffff, lsl 48
    str x0, [fp, -0x80]
    mov x0, #0x14b
    str x0, [fp, -0x88]
    mov x0, #0x233
    str x0, [fp, -0x90]
    movz x0, #0xfdb8
    movk x0, #0xffff, lsl 16
    movk x0, #0xffff, lsl 32
    movk x0, #0xffff, lsl 48
    str x0, [fp, -0x98]
    mov x0, #0x1bd
    str x0, [fp, -0xa0]
    movz x0, #0xff2b
    movk x0, #0xffff, lsl 16
    movk x0, #0xffff, lsl 32
    movk x0, #0xffff, lsl 48
    str x0, [fp, -0xa8]
    mov x0, #0x12
    str x0, [fp, -0xb0]
    mov x0, #0x89
    str x0, [fp, -0xb8]
    mov x0, #0x234
    str x0, [fp, -0xc0]
    movz x0, #0xfe8e
    movk x0, #0xffff, lsl 16
    movk x0, #0xffff, lsl 32
    movk x0, #0xffff, lsl 48
    str x0, [fp, -0xc8]
    mov x0, #0x322
    str x0, [fp, -0xd0]
    ldr x0, [fp, -0xc8]
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x5, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x7
    sdiv x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x21, x0
    ldr x0, [fp, -0xb0]
    mov x1, x0
    ldr x0, [fp, -0x60]
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    mov x0, x28
    mov x5, x1
    mov x1, x0
    mov x0, x19
    mul x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x26, x0
    ldr x0, [fp, -0x80]
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mul x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x5, x1
    mov x1, x0
    mov x0, x28
    mul x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x88]
    mov x0, x19
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mul x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mul x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x23, x0
    ldr x0, [fp, -0x78]
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mul x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x5, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mov x5, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x6, x1
    mov x1, x0
    mov x0, x21
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mul x0, x1, x0
    mov x1, x7
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x7
    mul x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x20, x0
    mov x0, x24
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x5, x1
    mov x1, x0
    mov x0, x22
    mov x6, x1
    mov x1, x0
    mov x0, x19
    mul x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mov x5, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x7
    mul x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xb0]
    mov x0, x26
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mul x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mul x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x28
    mov x5, x1
    mov x1, x0
    mov x0, x24
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mul x0, x1, x0
    mov x1, x6
    mul x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x6, x1
    mov x1, x0
    mov x0, x23
    mul x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x23, x0
    ldr x0, [fp, -0x70]
    mov x1, x0
    ldr x0, [fp, -0x58]
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mul x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    mov x0, x25
    mov x6, x1
    mov x1, x0
    mov x0, x28
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x7
    sdiv x0, x1, x0
    mov x1, x6
    mul x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mul x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x20, x0
    ldr x0, [fp, -0x88]
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mul x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x19, x0
    ldr x0, [fp, -0x88]
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    mov x0, x26
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mul x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x26, x0
    ldr x0, [fp, -0x58]
    mov x1, x0
    ldr x0, [fp, -0x80]
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mov x5, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x25, x0
    ldr x0, [fp, -0x78]
    mov x1, x0
    ldr x0, [fp, -0x98]
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mul x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xa0]
    mov x0, x23
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x78]
    ldr x0, [fp, -0x90]
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x6
    mul x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xb0]
    ldr x0, [fp, -0xc0]
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mov x5, x1
    mov x1, x0
    mov x0, x19
    mov x6, x1
    mov x1, x0
    mov x0, x22
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x7
    mov x7, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x7
    sub x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mov x5, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    str x0, [fp, -0xd0]
    mov x0, x21
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x28
    mul x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x88]
    ldr x0, [fp, -0x68]
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    str x0, [fp, -0x58]
    ldr x0, [fp, -0x78]
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x5, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x28, x0
    ldr x0, [fp, -0x58]
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x5, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x5, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mul x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x22
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x6, x1
    mov x1, x0
    mov x0, x28
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x7
    sdiv x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    str x0, [fp, -0x70]
    mov x0, x21
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mul x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x24
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x28, x0
    ldr x0, [fp, -0xc0]
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mul x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x5, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x25, x0
    mov x0, x20
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x5, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xb0]
    ldr x0, [fp, -0xb0]
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    mov x0, x23
    mul x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x20
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x6, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x22, x0
    ldr x0, [fp, -0x90]
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x5, x1
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x22, x0
    mov x0, x26
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mul x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mul x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x23
    mov x6, x1
    mov x1, x0
    mov x0, x24
    mul x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x20
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mul x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x88]
    ldr x0, [fp, -0x88]
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x22, x0
    mov x0, x28
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mul x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xa0]
    mov x0, x23
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x24, x0
    ldr x0, [fp, -0x88]
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x4, x1
    mov x1, x0
    mov x0, x28
    mov x5, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    mov x0, x24
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mul x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x6
    mul x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x28, x0
    ldr x0, [fp, -0x70]
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x4, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mul x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x90]
    ldr x0, [fp, -0xd0]
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x6, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x5, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xb0]
    ldr x0, [fp, -0x58]
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mul x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x26
    mov x5, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x70]
    mov x0, x19
    mov x1, x0
    ldr x0, [fp, -0x98]
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    mov x0, x23
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x20, x0
    ldr x0, [fp, -0xd0]
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mov x5, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xa8]
    ldr x0, [fp, -0xa0]
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xa0]
    mov x0, x26
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x19
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x6, x1
    mov x1, x0
    mov x0, x21
    mov x7, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x7
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    mov x0, x24
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x26, x0
    ldr x0, [fp, -0x78]
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x90]
    ldr x0, [fp, -0xc0]
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x5, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x22
    mov x5, x1
    mov x1, x0
    mov x0, x27
    mov x6, x1
    mov x1, x0
    mov x0, x24
    mul x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x23, x0
    ldr x0, [fp, -0x60]
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x5, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x78]
    mov x0, x19
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x4, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x5, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x22, x0
    mov x0, x19
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x5, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x80]
    ldr x0, [fp, -0x80]
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mov x5, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x6, x1
    mov x1, x0
    mov x0, x20
    mul x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x24, x0
    ldr x0, [fp, -0x80]
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x5, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mul x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x70]
    mov x0, x24
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x6, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x6
    mul x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x20, x0
    mov x0, x25
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mul x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x5, x1
    mov x1, x0
    mov x0, x24
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xd0]
    ldr x0, [fp, -0x98]
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x19, x0
    ldr x0, [fp, -0xc0]
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x20
    mov x6, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x5, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xb0]
    mov x0, x24
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x23, x0
    mov x0, x20
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xc8]
    mov x0, x27
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x68]
    mov x0, x26
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x23
    mov x6, x1
    mov x1, x0
    mov x0, x21
    mul x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x20, x0
    mov x0, x25
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x27, x0
    ldr x0, [fp, -0x70]
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x90]
    ldr x0, [fp, -0xb8]
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x5, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x28
    mov x6, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x22
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x19, x0
    mov x0, x27
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xa0]
    mov x0, x25
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x5, x1
    mov x1, x0
    mov x0, x19
    mul x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xb0]
    ldr x0, [fp, -0xb0]
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    mov x0, x23
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x88]
    mov x0, x23
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x5, x1
    mov x1, x0
    mov x0, x19
    mov x6, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x24, x0
    ldr x0, [fp, -0xa8]
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x5, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    str x0, [fp, -0xa0]
    mov x0, x23
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    mov x5, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x7, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x7
    sdiv x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    mov x0, x26
    mov x7, x1
    mov x1, x0
    mov x0, x28
    mov x8, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x8
    sub x0, x1, x0
    mov x1, x7
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xc0]
    ldr x0, [fp, -0xa8]
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x24, x0
    ldr x0, [fp, -0x60]
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    mov x0, x23
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mul x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xd0]
    ldr x0, [fp, -0x68]
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mul x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x23, x0
    ldr x0, [fp, -0x98]
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mov x5, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x90]
    mov x0, x20
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x25, x0
    mov x0, x26
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mov x5, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mul x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x25, x0
    ldr x0, [fp, -0xc0]
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    mov x0, x26
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    mov x0, x24
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x7
    mul x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    mov x0, x23
    mov x5, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xa0]
    mov x0, x28
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x27
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x90]
    ldr x0, [fp, -0xb0]
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mul x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x26
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x7
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x5, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x26, x0
    mov x0, x20
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x98]
    mov x0, x27
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x5, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xa0]
    mov x0, x28
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x26, x0
    mov x0, x24
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x5, x1
    mov x1, x0
    mov x0, x21
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    str x0, [fp, -0x88]
    ldr x0, [fp, -0xc0]
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x20
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x6, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x22, x0
    mov x0, x23
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x24, x0
    ldr x0, [fp, -0x98]
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mul x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x4, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x23
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x6, x1
    mov x1, x0
    mov x0, x20
    mov x7, x1
    mov x1, x0
    mov x0, x25
    mov x8, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x8
    sdiv x0, x1, x0
    mov x1, x7
    mul x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x6, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x25, x0
    ldr x0, [fp, -0x98]
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x26, x0
    ldr x0, [fp, -0xd0]
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x5, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x24, x0
    mov x0, x23
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x26, x0
    mov x0, x19
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    mov x0, x24
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x6
    mul x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x6, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mul x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x5, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x26
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x60]
    ldr x0, [fp, -0xc8]
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x6, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x28, x0
    ldr x0, [fp, -0xc0]
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xb8]
    ldr x0, [fp, -0x98]
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x28
    mov x5, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x88]
    mov x0, x23
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x24
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x26, x0
    mov x0, x24
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    mov x0, x19
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x26
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x68]
    ldr x0, [fp, -0xa0]
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xa0]
    ldr x0, [fp, -0x68]
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x70]
    mov x0, x22
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x5, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    mov x5, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x28, x0
    mov x0, x21
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x20
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x5, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x78]
    ldr x0, [fp, -0xc8]
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x90]
    ldr x0, [fp, -0x78]
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x5, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x22
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xa8]
    ldr x0, [fp, -0xa0]
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x5, x1
    mov x1, x0
    mov x0, x28
    mul x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    str x0, [fp, -0xc8]
    mov x0, x25
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mul x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x19, x0
    mov x0, x19
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x27, x0
    mov x0, x27
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mov x5, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    str x0, [fp, -0x78]
    ldr x0, [fp, -0x88]
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x5, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x19
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x6, x1
    mov x1, x0
    mov x0, x23
    mov x7, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x7
    add x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x5, x1
    mov x1, x0
    mov x0, x24
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x6, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x6
    mul x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xc8]
    ldr x0, [fp, -0xd0]
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x26
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xb0]
    mov x0, x25
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x21
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    mov x0, x20
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    mov x0, x23
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x24, x0
    ldr x0, [fp, -0xb8]
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x80]
    mov x0, x26
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x5, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x5, x1
    mov x1, x0
    mov x0, x27
    mov x6, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x68]
    ldr x0, [fp, -0x88]
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mov x5, x1
    mov x1, x0
    mov x0, x22
    mov x6, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mul x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x24, x0
    ldr x0, [fp, -0x60]
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xb0]
    ldr x0, [fp, -0x98]
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x6, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mul x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x68]
    ldr x0, [fp, -0x70]
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    mov x0, x20
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x6, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x8, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x8
    mov x8, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x8
    mov x8, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x8
    sdiv x0, x1, x0
    mov x1, x7
    mul x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xc8]
    mov x0, x23
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x5, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x25, x0
    ldr x0, [fp, -0x88]
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mov x5, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x5, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mul x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x26
    mov x6, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x22, x0
    ldr x0, [fp, -0x98]
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x5, x1
    mov x1, x0
    mov x0, x26
    mov x6, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x28
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x23
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xb8]
    ldr x0, [fp, -0xb8]
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x5, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x19
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x70]
    ldr x0, [fp, -0xc8]
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x5, x1
    mov x1, x0
    mov x0, x20
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mul x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xc8]
    ldr x0, [fp, -0xb0]
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mul x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x5, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x24
    mov x6, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x20, x0
    ldr x0, [fp, -0x80]
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    str x0, [fp, -0xb8]
    ldr x0, [fp, -0xa8]
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    mov x0, x28
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x20
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x19
    mov x5, x1
    mov x1, x0
    mov x0, x22
    mov x6, x1
    mov x1, x0
    mov x0, x25
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x7
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x58]
    mov x0, x20
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x5, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mov x5, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x6, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x98]
    ldr x0, [fp, -0x70]
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x4, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x5, x1
    mov x1, x0
    mov x0, x20
    mul x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x26
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    str x0, [fp, -0xa0]
    ldr x0, [fp, -0x90]
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    mov x0, x21
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x80]
    mov x0, x26
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xc0]
    mov x0, x23
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    mov x5, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x60]
    ldr x0, [fp, -0x78]
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    mov x0, x26
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x26, x0
    ldr x0, [fp, -0xd0]
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x21, x0
    ldr x0, [fp, -0x68]
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x6, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x6
    mul x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    str x0, [fp, -0x90]
    mov x0, x26
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x28
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x7, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x7
    add x0, x1, x0
    mov x1, x6
    mul x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    mov x0, x20
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x8, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x8
    sdiv x0, x1, x0
    mov x1, x7
    sub x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x19, x0
    ldr x0, [fp, -0xc0]
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x23
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    mov x0, x27
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x7
    sdiv x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x28
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x27, x0
    ldr x0, [fp, -0xa8]
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x22
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mul x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x5, x1
    mov x1, x0
    mov x0, x23
    mov x6, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x90]
    ldr x0, [fp, -0xd0]
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mul x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x5, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x27, x0
    ldr x0, [fp, -0xa8]
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x19, x0
    ldr x0, [fp, -0x58]
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    mov x0, x24
    mov x5, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xc0]
    ldr x0, [fp, -0x90]
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x6, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x20, x0
    ldr x0, [fp, -0x80]
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mul x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xa8]
    ldr x0, [fp, -0xb0]
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x6
    mul x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x90]
    ldr x0, [fp, -0x88]
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x27, x0
    ldr x0, [fp, -0x78]
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x6, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    mov x0, x21
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x7
    sub x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x60]
    ldr x0, [fp, -0x60]
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x6, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x19, x0
    ldr x0, [fp, -0x78]
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mov x5, x1
    mov x1, x0
    mov x0, x26
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x28
    mov x5, x1
    mov x1, x0
    mov x0, x19
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x6
    mul x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x23, x0
    ldr x0, [fp, -0xa8]
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x6, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x70]
    ldr x0, [fp, -0x70]
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xb0]
    ldr x0, [fp, -0xc0]
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    str x0, [fp, -0x80]
    mov x0, x21
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x24
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x6, x1
    mov x1, x0
    mov x0, x20
    mov x7, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x7
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x21, x0
    ldr x0, [fp, -0x88]
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    mov x0, x28
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x26, x0
    mov x0, x25
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x5, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x23
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mul x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x6, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    str x0, [fp, -0x98]
    ldr x0, [fp, -0x78]
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x6, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    str x0, [fp, -0x78]
    mov x0, x26
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xd0]
    ldr x0, [fp, -0xc8]
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    mov x0, x22
    mov x5, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x5, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mul x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mul x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x90]
    mov x0, x25
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x5, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x80]
    ldr x0, [fp, -0xb0]
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x5, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x23, x0
    ldr x0, [fp, -0x58]
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    mov x5, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x20
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x7, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x7
    sdiv x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x22, x0
    mov x0, x19
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x58]
    ldr x0, [fp, -0x90]
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x5, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    str x0, [fp, -0x90]
    mov x0, x25
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x5, x1
    mov x1, x0
    mov x0, x20
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x7, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x7
    sub x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x5, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x23, x0
    mov x0, x22
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x26, x0
    mov x0, x22
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x20
    mov x5, x1
    mov x1, x0
    mov x0, x19
    mov x6, x1
    mov x1, x0
    mov x0, x27
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x7
    mul x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x98]
    mov x0, x19
    mov x1, x0
    mov x0, x28
    mul x0, x1, x0
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x28, x0
    mov x0, x19
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x5, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    mov x0, x20
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xa0]
    ldr x0, [fp, -0xd0]
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    mov x0, x22
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x6, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x27, x0
    ldr x0, [fp, -0x60]
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x6, x1
    mov x1, x0
    mov x0, x19
    mov x7, x1
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x7
    sub x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x23, x0
    mov x0, x28
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    mov x0, x19
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x26, x0
    ldr x0, [fp, -0x68]
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x28
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x20
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x60]
    mov x0, x23
    mov x1, x0
    mov x0, x19
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x58]
    mov x0, x20
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x5, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x19
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x60]
    ldr x0, [fp, -0xc0]
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x21, x0
    ldr x0, [fp, -0x88]
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    mov x0, x20
    mul x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x19, x0
    ldr x0, [fp, -0x80]
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    mov x5, x1
    mov x1, x0
    mov x0, x21
    mov x6, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x88]
    mov x0, x21
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x5, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    mov x0, x22
    mov x5, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x22, x0
    ldr x0, [fp, -0xa0]
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x19
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x5, x1
    mov x1, x0
    mov x0, x25
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x7, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x7
    add x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xb0]
    mov x0, x28
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x27, x0
    mov x0, x24
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x6, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    mov x0, x28
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xa0]
    mov x0, x19
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    mov x0, x20
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x26, x0
    ldr x0, [fp, -0x70]
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xa8]
    ldr x0, [fp, -0xc8]
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    mov x0, x26
    mov x5, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x24
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x23
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xa8]
    ldr x0, [fp, -0x78]
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x27
    mul x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x21, x0
    mov x0, x28
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x6, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xc0]
    mov x0, x22
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x26
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x22, x0
    mov x0, x26
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x23
    mov x5, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x6
    mul x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x22, x0
    mov x0, x27
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x5, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x28, x0
    ldr x0, [fp, -0xc8]
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    mov x0, x24
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xb0]
    ldr x0, [fp, -0xc8]
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x5, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x7
    sub x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xa8]
    mov x0, x20
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x28
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mul x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xb0]
    mov x0, x28
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x27, x0
    mov x0, x20
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x6, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x6
    mul x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x19, x0
    ldr x0, [fp, -0x68]
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x5, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x5, x1
    mov x1, x0
    mov x0, x19
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    mov x0, x21
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x7
    add x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    str x0, [fp, -0x68]
    ldr x0, [fp, -0x68]
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mul x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    str x0, [fp, -0x58]
    ldr x0, [fp, -0x90]
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    mov x0, x23
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mov x5, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x88]
    mov x0, x25
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mov x5, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    mov x0, x24
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x7
    sdiv x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    mov x0, x22
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x7
    add x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x7, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x7
    mul x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    str x0, [fp, -0x90]
    ldr x0, [fp, -0xc0]
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x19
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x22, x0
    ldr x0, [fp, -0xb0]
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x23
    mov x5, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    str x0, [fp, -0x98]
    mov x0, x19
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x60]
    ldr x0, [fp, -0xa8]
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x5, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xc0]
    ldr x0, [fp, -0x98]
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x7
    mul x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x20, x0
    mov x0, x19
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mul x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x88]
    ldr x0, [fp, -0x78]
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mul x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x5, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x68]
    ldr x0, [fp, -0x68]
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    mov x5, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x7
    sub x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x25, x0
    ldr x0, [fp, -0x58]
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    mov x0, x26
    mov x5, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x88]
    mov x0, x23
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mov x5, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x5, x1
    mov x1, x0
    mov x0, x28
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x7
    mul x0, x1, x0
    mov x1, x6
    mul x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x20, x0
    ldr x0, [fp, -0x58]
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x5, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mul x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x60]
    mov x0, x20
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mul x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    str x0, [fp, -0x80]
    ldr x0, [fp, -0x98]
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x5, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x28
    mov x6, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x5, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x70]
    ldr x0, [fp, -0x78]
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x4, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x5, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x27, x0
    mov x0, x19
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x28
    mov x5, x1
    mov x1, x0
    mov x0, x24
    mov x6, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x7, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x7
    sdiv x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x24, x0
    ldr x0, [fp, -0xc8]
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x23
    mul x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x22
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x5, x1
    mov x1, x0
    mov x0, x25
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    mov x5, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x80]
    ldr x0, [fp, -0x80]
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    mov x0, x22
    mov x5, x1
    mov x1, x0
    mov x0, x26
    mul x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x5, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x23
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x27, x0
    mov x0, x23
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x5, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mov x5, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x6
    mul x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xb8]
    ldr x0, [fp, -0x68]
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x4, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mul x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xb8]
    ldr x0, [fp, -0xc0]
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x20
    mov x5, x1
    mov x1, x0
    mov x0, x21
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x7, x1
    mov x1, x0
    mov x0, x25
    mov x8, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x8
    sdiv x0, x1, x0
    mov x1, x7
    sdiv x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x26
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x6, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xc8]
    ldr x0, [fp, -0x58]
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x5, x1
    mov x1, x0
    mov x0, x21
    mul x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mov x5, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x19
    mov x5, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x26, x0
    mov x0, x20
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    str x0, [fp, -0x68]
    mov x0, x24
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mul x0, x1, x0
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mul x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x70]
    mov x0, x23
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x20
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mov x5, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x6, x1
    mov x1, x0
    mov x0, x24
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x7
    add x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x78]
    ldr x0, [fp, -0x70]
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mul x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x58]
    mov x0, x24
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mov x5, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x98]
    ldr x0, [fp, -0x88]
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    str x0, [fp, -0xd0]
    mov x0, x23
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x5, x1
    mov x1, x0
    mov x0, x22
    mov x6, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x8, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x8
    sub x0, x1, x0
    mov x1, x7
    sub x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x25
    mov x6, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x7, x1
    mov x1, x0
    mov x0, x21
    mov x8, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x8
    sdiv x0, x1, x0
    mov x1, x7
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x68]
    ldr x0, [fp, -0x78]
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mul x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    str x0, [fp, -0x70]
    mov x0, x22
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x4, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x23
    mov x5, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x21, x0
    mov x0, x27
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mul x0, x1, x0
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mul x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x23, x0
    mov x0, x20
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mov x5, x1
    mov x1, x0
    mov x0, x21
    mov x6, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xc8]
    mov x0, x21
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mov x5, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x5, x1
    mov x1, x0
    mov x0, x23
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x7, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x7
    add x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x25, x0
    mov x0, x28
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x6, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    mov x0, x24
    mov x5, x1
    mov x1, x0
    mov x0, x22
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mul x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x5, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xa8]
    ldr x0, [fp, -0xb8]
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mul x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xc0]
    mov x0, x19
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    mov x0, x22
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x80]
    mov x0, x26
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    str x0, [fp, -0xa8]
    ldr x0, [fp, -0xb8]
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x20
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x6, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x25
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x26, x0
    ldr x0, [fp, -0x60]
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x26
    mov x5, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x26, x0
    ldr x0, [fp, -0x60]
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x7
    sub x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xc8]
    mov x0, x24
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x23
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x5, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x5, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xc8]
    ldr x0, [fp, -0x98]
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    mov x0, x22
    mov x5, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x27
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xa8]
    mov x0, x27
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x6, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x6
    mul x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mul x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x6, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x78]
    ldr x0, [fp, -0x80]
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xb8]
    ldr x0, [fp, -0x58]
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x20
    mul x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x88]
    ldr x0, [fp, -0xc0]
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    mov x0, x19
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mov x5, x1
    mov x1, x0
    mov x0, x22
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    str x0, [fp, -0xa8]
    ldr x0, [fp, -0xc8]
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    mov x0, x22
    mov x5, x1
    mov x1, x0
    mov x0, x28
    mov x6, x1
    mov x1, x0
    mov x0, x20
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x7
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x7, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x7
    sdiv x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x24, x0
    ldr x0, [fp, -0xb8]
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x5, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x6, x1
    mov x1, x0
    mov x0, x20
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x7
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x7
    add x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x6, x1
    mov x1, x0
    mov x0, x24
    mov x7, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x7
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x90]
    ldr x0, [fp, -0x98]
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    mov x0, x28
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    str x0, [fp, -0x58]
    ldr x0, [fp, -0xd0]
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x5, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x60]
    ldr x0, [fp, -0x60]
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x22
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x6, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x19, x0
    ldr x0, [fp, -0xb0]
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mov x5, x1
    mov x1, x0
    mov x0, x25
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x23, x0
    mov x0, x25
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mul x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x26, x0
    ldr x0, [fp, -0x90]
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    mov x5, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    str x0, [fp, -0xa8]
    mov x0, x21
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    mov x0, x28
    mov x5, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x5, x1
    mov x1, x0
    mov x0, x23
    mov x6, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x6
    mul x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x7, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x7
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mul x0, x1, x0
    mov x1, x7
    sdiv x0, x1, x0
    mov x1, x6
    mul x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x23, x0
    mov x0, x21
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    mov x0, x26
    mov x7, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x7
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x7
    add x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x60]
    ldr x0, [fp, -0x88]
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x26
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xa8]
    mov x0, x24
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xc0]
    ldr x0, [fp, -0xc0]
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    mov x0, x24
    mov x5, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x6, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x5, x1
    mov x1, x0
    mov x0, x28
    mov x6, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x98]
    ldr x0, [fp, -0x80]
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    mov x0, x26
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mul x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x7, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x7
    sub x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x19
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xd0]
    mov x0, x28
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x5, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    str x0, [fp, -0x90]
    ldr x0, [fp, -0xa8]
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    mov x0, x20
    mul x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xc0]
    ldr x0, [fp, -0xa8]
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x20
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x5, x1
    mov x1, x0
    mov x0, x27
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x26
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xc8]
    ldr x0, [fp, -0xb8]
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x28
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x24, x0
    ldr x0, [fp, -0x58]
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x23, x0
    mov x0, x19
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    str x0, [fp, -0x98]
    ldr x0, [fp, -0xc8]
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    mov x0, x19
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x8, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x8
    sub x0, x1, x0
    mov x1, x7
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x7
    sub x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xa8]
    ldr x0, [fp, -0xa8]
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x98]
    mov x0, x27
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xa0]
    ldr x0, [fp, -0x80]
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x26, x0
    ldr x0, [fp, -0x78]
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x20, x0
    mov x0, x25
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x27, x0
    ldr x0, [fp, -0xc0]
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x5, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x7
    mul x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mov x5, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x6
    mul x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x22, x0
    ldr x0, [fp, -0xd0]
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x70]
    mov x0, x22
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    str x0, [fp, -0xb8]
    mov x0, x26
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x26, x0
    mov x0, x28
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x5, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xb0]
    mov x0, x25
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mul x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x80]
    ldr x0, [fp, -0xc0]
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x58]
    mov x0, x19
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    mov x0, x22
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    mov x0, x23
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x24, x0
    mov x0, x20
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x22
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x21
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x6, x1
    mov x1, x0
    mov x0, x19
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x7
    sub x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x24, x0
    mov x0, x23
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    mov x0, x24
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mul x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mul x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x68]
    ldr x0, [fp, -0x78]
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xd0]
    ldr x0, [fp, -0x78]
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    mov x0, x23
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x5, x1
    mov x1, x0
    mov x0, x20
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x6, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x23, x0
    ldr x0, [fp, -0x60]
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x2, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x5, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xd0]
    mov x0, x19
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x6, x1
    mov x1, x0
    mov x0, x28
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x7
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x7
    mul x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x98]
    ldr x0, [fp, -0xb8]
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    mov x0, x23
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xb8]
    ldr x0, [fp, -0x58]
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x5, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x25, x0
    ldr x0, [fp, -0x78]
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sdiv x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x27
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x6, x1
    mov x1, x0
    mov x0, x24
    add x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x58]
    mov x0, x21
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x4, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x25, x0
    ldr x0, [fp, -0x58]
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x90]
    mul x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x22
    mov x4, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x28
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    str x0, [fp, -0xc8]
    ldr x0, [fp, -0xa8]
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x24
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    mov x0, x23
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    mov x0, x21
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xb8]
    mov x0, x19
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x20
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mul x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    add x0, x1, x0
    mov x23, x0
    mov x0, x19
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x5, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    str x0, [fp, -0xb0]
    mov x0, x28
    mov x1, x0
    mov x0, x19
    mov x2, x1
    mov x1, x0
    mov x0, x23
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x3, x1
    mov x1, x0
    mov x0, x25
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x24
    mov x5, x1
    mov x1, x0
    mov x0, x26
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    add x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    mov x0, x22
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x7, x1
    mov x1, x0
    mov x0, x20
    add x0, x1, x0
    mov x1, x7
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    add x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0xb0]
    mov x0, x24
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    mov x0, x22
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x25
    mov x2, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    add x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    mov x0, x27
    mov x3, x1
    mov x1, x0
    mov x0, x23
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x21
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x5, x1
    mov x1, x0
    mov x0, x19
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x6
    add x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sub x0, x1, x0
    mov x1, x4
    mul x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x19, x0
    ldr x0, [fp, -0x98]
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x2, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x25
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sdiv x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa0]
    mov x2, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x5, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x90]
    ldr x0, [fp, -0xa8]
    mov x1, x0
    mov x0, x22
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x0
    mov x0, x26
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x1, x0
    mov x0, x20
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x23
    mov x3, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x78]
    mov x0, x22
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0x58]
    mov x2, x1
    mov x1, x0
    mov x0, x28
    sdiv x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x2, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    sub x0, x1, x0
    mov x1, x3
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mul x0, x1, x0
    mov x1, x2
    mul x0, x1, x0
    mov x1, x0
    mov x0, x27
    mov x2, x1
    mov x1, x0
    mov x0, x25
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x4, x1
    mov x1, x0
    mov x0, x24
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    sdiv x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x6
    mul x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x23
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x19
    add x0, x1, x0
    mov x1, x5
    mul x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    mov x23, x0
    ldr x0, [fp, -0xc0]
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    add x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sdiv x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    mov x3, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x19
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    mov x4, x1
    mov x1, x0
    mov x0, x21
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    add x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x6, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x6
    sdiv x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sdiv x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    sub x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    mov x0, x23
    add x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x26
    mov x3, x1
    mov x1, x0
    mov x0, x28
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x20
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0x98]
    mov x0, x20
    mov x1, x0
    mov x0, x23
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x28
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    mov x0, x26
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    add x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    add x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x70]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0x90]
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x24
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x21
    mov x3, x1
    mov x1, x0
    mov x0, x27
    mov x4, x1
    mov x1, x0
    mov x0, x19
    sub x0, x1, x0
    mov x1, x4
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x4, x1
    mov x1, x0
    mov x0, x25
    sub x0, x1, x0
    mov x1, x4
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sdiv x0, x1, x0
    mov x1, x3
    mul x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    mov x0, x22
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    add x0, x1, x0
    mov x1, x3
    mov x3, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    sub x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    add x0, x1, x0
    str x0, [fp, -0x58]
    ldr x0, [fp, -0x70]
    mov x1, x0
    ldr x0, [fp, -0x90]
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0xa0]
    sub x0, x1, x0
    mov x1, x2
    mov x2, x1
    mov x1, x0
    ldr x0, [fp, -0x80]
    mov x3, x1
    mov x1, x0
    mov x0, x20
    mov x4, x1
    mov x1, x0
    mov x0, x25
    sdiv x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xc8]
    mov x5, x1
    mov x1, x0
    mov x0, x23
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xc0]
    sdiv x0, x1, x0
    mov x1, x6
    mul x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0x88]
    mov x6, x1
    mov x1, x0
    mov x0, x26
    sdiv x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xd0]
    sub x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    mov x0, x27
    sdiv x0, x1, x0
    mov x1, x6
    mul x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x24
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x98]
    mov x7, x1
    mov x1, x0
    ldr x0, [fp, -0x58]
    sub x0, x1, x0
    mov x1, x7
    add x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    mov x4, x1
    mov x1, x0
    ldr x0, [fp, -0xa8]
    mov x5, x1
    mov x1, x0
    ldr x0, [fp, -0xb8]
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x28
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x60]
    sub x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    mov x5, x1
    mov x1, x0
    mov x0, x19
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0xb0]
    mov x7, x1
    mov x1, x0
    mov x0, x21
    sub x0, x1, x0
    mov x1, x7
    sdiv x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x68]
    sdiv x0, x1, x0
    mov x1, x6
    mov x6, x1
    mov x1, x0
    ldr x0, [fp, -0x78]
    mov x7, x1
    mov x1, x0
    mov x0, x22
    mul x0, x1, x0
    mov x1, x7
    sdiv x0, x1, x0
    mov x1, x6
    sub x0, x1, x0
    mov x1, x5
    sub x0, x1, x0
    mov x1, x4
    sdiv x0, x1, x0
    mov x1, x3
    sub x0, x1, x0
    mov x1, x2
    sub x0, x1, x0
    str x0, [fp, -0xa0]
    mov x0, x24
    bl print_int
    mov x0, x26
    bl print_int
    mov x0, x19
    bl print_int
    ldr x0, [fp, -0x60]
    bl print_int
    ldr x0, [fp, -0xd0]
    bl print_int
    ldr x0, [fp, -0xb8]
    bl print_int
    ldr x0, [fp, -0x68]
    bl print_int
    ldr x0, [fp, -0xb0]
    bl print_int
    mov x0, x21
    bl print_int
    ldr x0, [fp, -0x70]
    bl print_int
    ldr x0, [fp, -0x88]
    bl print_int
    ldr x0, [fp, -0xa8]
    bl print_int
    mov x0, x27
    bl print_int
    mov x0, x25
    bl print_int
    ldr x0, [fp, -0xa0]
    bl print_int
    ldr x0, [fp, -0xc8]
    bl print_int
    ldr x0, [fp, -0x90]
    bl print_int
    ldr x0, [fp, -0x80]
    bl print_int
    ldr x0, [fp, -0xc0]
    bl print_int
    ldr x0, [fp, -0x58]
    bl print_int
    ldr x0, [fp, -0x78]
    bl print_int
    mov x0, x23
    bl print_int
    mov x0, x28
    bl print_int
    mov x0, x20
    bl print_int
    mov x0, x22
    bl print_int
    ldr x0, [fp, -0x98]
    bl print_int
    ldr x19, [fp, #-0x8]
    ldr x20, [fp, #-0x10]
    ldr x21, [fp, #-0x18]
    ldr x22, [fp, #-0x20]
    ldr x23, [fp, #-0x28]
    ldr x24, [fp, #-0x30]
    ldr x25, [fp, #-0x38]
    ldr x26, [fp, #-0x40]
    ldr x27, [fp, #-0x48]
    ldr x28, [fp, #-0x50]
    add sp, sp, #0xd0
    mov w0, #0
    mov sp, x29
    ldp fp, lr, [sp], #16
    ret
