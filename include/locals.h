#ifndef LOCALS_H
#define LOCALS_H

#include "ast.h"

/**
 * Implementation details for local values (the expression stack)
 * The stack is set up as follows.
 *
 * <EXPRESSION STACK>
 * ...
 * <LOCALS ABOVE 5th POSITION>
 * %r15
 * %r14         These are minimally allocated according to how many
 * %r13         locals there are on the stack.
 * %r12         Their registers are used for the first 5 locals.
 * %rbx         ____
 * %rbp         Base pointer
 */

/**
 * Locals information parsed by locals_prewalk.
 */
typedef struct {
    uint32_t count;
    uint8_t var_loc[26];
} locals_info_t;

/**
 * Walk the AST to determine local allocation information.
 */
locals_info_t locals_prewalk(node_t *node);

/**
 * Find the position of the local variable.
 * Remember to handle special cases where the position < LOCALS_REG_SIZE,
 * since they should be stored in registers instead.
 */
uint8_t find_local_location(locals_info_t locals, char var);

/**
 * Find the register of the local variable.
 * Returns NULL if the local does not belong in a register.
 */
const char *find_local_register(locals_info_t locals, char var);

#endif