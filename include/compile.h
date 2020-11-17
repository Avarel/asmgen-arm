#ifndef COMPILE_H
#define COMPILE_H

#include <stdbool.h>

#include "ast.h"
#include "locals.h"

/** Number of registers available to store locals. */
extern const size_t LOCALS_REG_SIZE;
/** Registers used to store locals. */
extern const char *LOCALS_REG[];

/**
 * Prints x86-64 assembly code that implements the given TeenyBASIC statement.
 * This function will be called on each statement in the TeenyBASIC program in order.
 *
 * @param node the statement to compile (either a PRINT, LET, label, GOTO, or IF)
 * @return true iff compilation succeeds
 */
bool compile_ast(node_t *node, locals_info_t locals_info);

#endif /* COMPILE_H */
