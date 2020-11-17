#include "locals.h"

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/** Number of registers available to store locals. */
const size_t LOCALS_REG_SIZE = 10;
/** Registers used to store locals. */
const char *LOCALS_REG[] = {"x19", "x20", "x21", "x22", "x23",
                            "x24", "x25", "x26", "x27", "x28"};

/**
 * Helper to walk the AST to determine local allocation information.
 */
void locals_prewalk_impl(node_t *node, locals_info_t *locals_info) {
    if (node == NULL) {
        return;
    }

    switch (node->type) {
        case SEQUENCE: {
            sequence_node_t *n = (sequence_node_t *) node;
            for (size_t i = 0; i < n->statement_count; i++) {
                locals_prewalk_impl(n->statements[i], locals_info);
            }
            break;
        }
        case IF: {
            if_node_t *n = (if_node_t *) node;
            locals_prewalk_impl(n->if_branch, locals_info);
            locals_prewalk_impl(n->else_branch, locals_info);
            break;
        }
        case WHILE: {
            while_node_t *n = (while_node_t *) node;
            locals_prewalk_impl(n->body, locals_info);
            break;
        }
        case LET: {
            let_node_t *n = (let_node_t *) node;
            int16_t i = n->var - 'A';
            if (i < 0 || i >= 26) {
                fprintf(stderr, "Error: invalid var name %c %i\n", n->var, i);
                exit(1);
            }
            if (locals_info->var_loc[i] == UINT8_MAX) {
                locals_info->var_loc[i] = locals_info->count++;
            }
            break;
        }
        default:
            break;
    }
}

locals_info_t locals_prewalk(node_t *node) {
    locals_info_t locals_info = (locals_info_t){.count = 0, .var_loc = {}};

    memset(locals_info.var_loc, UINT8_MAX, 26 * sizeof(bool));
    locals_prewalk_impl(node, &locals_info);

    return locals_info;
}

uint8_t find_local_location(locals_info_t locals, char var) {
    int16_t i = var - 'A';
    if (i < 0 || i >= 26) {
        fprintf(stderr, "Critical error: invalid variable name %c\n", var);
        exit(1);
    }

    uint8_t location = locals.var_loc[i];

    if (location >= 26) {
        fprintf(stderr, "Referenced undeclared variable: '%c'\n", var);
        exit(1);
    }

    return location;
}

const char *find_local_register(locals_info_t locals, char var) {
    int16_t i = var - 'A';
    if (i < 0 || i >= 26) {
        fprintf(stderr, "Critical error: invalid variable name %c\n", var);
        exit(1);
    }

    uint8_t location = locals.var_loc[i];

    if (location >= 26) {
        fprintf(stderr, "Referenced undeclared variable: '%c'\n", var);
        exit(1);
    }

    return location < LOCALS_REG_SIZE ? LOCALS_REG[location] : NULL;
}