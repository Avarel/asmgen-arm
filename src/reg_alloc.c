#include "reg_alloc.h"

#include <stdlib.h>

/** Number of registers used to form a view of the top of the stack. */
const size_t STACK_TOP_SIZE = 2;
/** Registers used to store the top of the stack. */
const char *STACK_TOP_REG[] = {"x0", "x1"};
/** Number of registers available to back the bottom of the stack. */
const size_t STACK_BOTTOM_SIZE = 13;
/** Registers used to store the bottom of the stack. */
const char *STACK_BOTTOM_REG[] = {"x2", "x3",  "x4",  "x5",  "x6",  "x7",  "x8",
                                  "x9", "x10", "x11", "x12", "x13", "x14", "x15"};

void push_space(size_t *stack_len) {
    // Update the registers accordingly.
    if (*stack_len >= STACK_TOP_SIZE) {
        if (*stack_len < STACK_TOP_SIZE + STACK_BOTTOM_SIZE) {
            printf("    mov %s, %s\n", STACK_BOTTOM_REG[*stack_len - STACK_TOP_SIZE],
                   STACK_TOP_REG[1]);
        }
        else {
            printf("    str %s, [sp, #-16]!\n", STACK_TOP_REG[1]);
        }
    }

    // Move the top register to the second register.
    if (*stack_len > 0) {
        printf("    mov %s, %s\n", STACK_TOP_REG[1], STACK_TOP_REG[0]);
    }
    *stack_len += 1;
}

void push_constant(int64_t value, size_t *stack_len) {
    push_space(stack_len);

    uint64_t svalue = value;
    if (svalue < 0xffff) {
        printf("    mov %s, #%#lx\n", STACK_TOP_REG[0], value);
    }
    else {
        printf("    movz %s, #%#lx\n", STACK_TOP_REG[0], value & 0xffff);
        printf("    movk %s, #%#lx, lsl 16\n", STACK_TOP_REG[0], value >> 16 & 0xffff);
        if (svalue >= 0xffffffff) {
            printf("    movk %s, #%#lx, lsl 32\n", STACK_TOP_REG[0],
                   value >> 32 & 0xffff);
        }
        if (svalue >= 0xffffffffffff) {
            printf("    movk %s, #%#lx, lsl 48\n", STACK_TOP_REG[0],
                   value >> 48 & 0xffff);
        }
    }
}

void pop_rax_helper(size_t *stack_len) {
    if (*stack_len > STACK_TOP_SIZE) {
        if (*stack_len <= STACK_TOP_SIZE + STACK_BOTTOM_SIZE) {
            printf("    mov %s, %s\n", STACK_TOP_REG[1],
                   STACK_BOTTOM_REG[*stack_len - STACK_TOP_SIZE - 1]);
        }
        else {
            printf("    ldr %s, [sp], #16\n", STACK_TOP_REG[1]);
        }
    }
}

void pop_value(size_t *stack_len) {
    if (*stack_len < 1) {
        fprintf(stderr, "Fatal compilation error\n");
        exit(1);
    }
    switch (*stack_len) {
        case 1:
            break;
        default:
            printf("    mov %s, %s\n", STACK_TOP_REG[0], STACK_TOP_REG[1]);
            break;
    }
    pop_rax_helper(stack_len);
    *stack_len -= 1;
}

void pop_second_value(size_t *stack_len) {
    if (*stack_len < 2) {
        fprintf(stderr, "Fatal compilation error\n");
        exit(1);
    }
    pop_rax_helper(stack_len);
    *stack_len -= 1;
}
