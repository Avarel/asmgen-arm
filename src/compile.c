#include "compile.h"

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "locals.h"
#include "reg_alloc.h"

/**
 * Result struct for constant folding.
 */
typedef struct {
    bool present;
    int64_t value;
} constant_fold_result_t;

/**
 * Attempt to fold the node as a constant value.
 */
constant_fold_result_t constant_fold(node_t *node) {
    // return (constant_fold_result_t){.present = false, .value = 0};
    switch (node->type) {
        case NUM: {
            num_node_t *n = (num_node_t *) node;
            return (constant_fold_result_t){.present = true, .value = n->value};
        }
        case BINARY_OP: {
            binary_node_t *n = (binary_node_t *) node;
            constant_fold_result_t left = constant_fold(n->left);
            constant_fold_result_t right = constant_fold(n->right);
            int64_t value;
            if (left.present && right.present) {
                switch (n->op) {
                    case '+': {
                        value = left.value + right.value;
                        break;
                    }
                    case '-': {
                        value = left.value - right.value;
                        break;
                    }
                    case '*': {
                        value = left.value * right.value;
                        break;
                    }
                    case '/': {
                        value = left.value / right.value;
                        break;
                    }
                    case '>': {
                        value = left.value > right.value ? 1 : 0;
                        break;
                    }
                    case '<': {
                        value = left.value < right.value ? 1 : 0;
                        break;
                    }
                    case '=': {
                        value = left.value == right.value ? 1 : 0;
                        break;
                    }
                    default: {
                        return (constant_fold_result_t){.present = false, .value = 0};
                    }
                }
                return (constant_fold_result_t){.present = true, .value = value};
            }
        }
        default: {
            return (constant_fold_result_t){.present = false, .value = 0};
        }
    }
}

/**
 * Check if the parameter is a power of two.
 */
bool is_power_of_two(int32_t i) {
    return (i > 0) && ((i & (i - 1)) == 0);
}

/**
 * This bitshifts the input until i == 0 to find
 * the where the nth bit is.
 *
 * Contract: the input must be a power of two.
 */
uint8_t find_twos_power(uint32_t i) {
    uint8_t c = 0;
    while (i > 1) {
        c += 1;
        i >>= 1;
    }
    return c;
}

/** Compilation info struct. */
typedef struct {
    size_t stack_len;
    size_t label_counter;
} compile_info_t;

/**
 * Helper function to compile the AST.
 */
bool compile_ast_impl(node_t *node, compile_info_t *ci, locals_info_t li) {
    switch (node->type) {
        case NUM: {
            num_node_t *n = (num_node_t *) node;
            push_constant(n->value, &ci->stack_len);
            return true;
        }
        case PRINT: {
            print_node_t *n = (print_node_t *) node;
            // Compile argument first
            if (!compile_ast_impl(n->expr, ci, li)) {
                return false;
            }
            printf("    bl print_int\n");
            pop_value(&ci->stack_len);
            return true;
        }
        case SEQUENCE: {
            // Translates statements verbatim sequentially
            sequence_node_t *n = (sequence_node_t *) node;
            for (size_t i = 0; i < n->statement_count; i++) {
                if (!compile_ast_impl(n->statements[i], ci, li)) {
                    return false;
                }
            }
            // Assert that we are keeping the stack clean.
            assert(ci->stack_len == 0);
            return true;
        }
        case BINARY_OP: {
            binary_node_t *n = (binary_node_t *) node;

            // Attempt constant folding on the current node.
            constant_fold_result_t cf = constant_fold(node);
            // Success! Directly emit the constant.
            if (cf.present) {
                push_constant(cf.value, &ci->stack_len);
                return true;
            }

            // Emit left as a constant if possible.
            constant_fold_result_t cf_left = constant_fold(n->left);
            if (cf_left.present) {
                push_constant(cf_left.value, &ci->stack_len);
            }
            else if (!compile_ast_impl(n->left, ci, li)) {
                return false;
            }

            // Emit right as a constant if possible.
            constant_fold_result_t cf_right = constant_fold(n->right);
            if (cf_right.present) {
                // Special case with multiplication of power of two
                if (n->op == '*' && is_power_of_two(cf_right.value)) {
                    // We can operate on the top of the stack since
                    // its logically guaranteed that reaching here
                    // means that the left operand was not constant folded.
                    uint8_t c = find_twos_power(cf_right.value);
                    printf("    add x0, xzr, x0, lsl #%hhu\n", c);
                    return true;
                }

                push_constant(cf_right.value, &ci->stack_len);
            }
            else if (!compile_ast_impl(n->right, ci, li)) {
                return false;
            }

            switch (n->op) {
                // The two relevant operands should already be in
                // r0 (a) and r1 (b), so it should be trivial
                // to operate on them.
                case '+': {
                    printf("    add x0, x1, x0\n");
                    pop_second_value(&ci->stack_len);
                    break;
                }
                case '-': {
                    printf("    sub x0, x1, x0\n");
                    pop_second_value(&ci->stack_len);
                    break;
                }
                case '*': {
                    printf("    mul x0, x1, x0\n");
                    pop_second_value(&ci->stack_len);
                    break;
                }
                case '/': {
                    printf("    sdiv x0, x1, x0\n");
                    pop_second_value(&ci->stack_len);
                    break;
                }
                case '>': {
                    printf("    cmp x1, x0\n");
                    printf("    mov x0, #1\n");
                    printf("    csel x0, x0, xzr, GT\n");
                    pop_second_value(&ci->stack_len);
                    break;
                }
                case '<': {
                    printf("    cmp x1, x0\n");
                    printf("    mov x0, #1\n");
                    printf("    csel x0, x0, xzr, LT\n");
                    pop_second_value(&ci->stack_len);
                    break;
                }
                case '=': {
                    printf("    cmp x1, x0\n");
                    printf("    mov x0, #1\n");
                    printf("    csel x0, x0, xzr, EQ\n");
                    pop_second_value(&ci->stack_len);
                    break;
                }
                default: {
                    return false;
                }
            }

            return true;
        }
        case LET: {
            let_node_t *n = (let_node_t *) node;

            constant_fold_result_t cf = constant_fold(n->value);

            const char *local_register = find_local_register(li, n->var);
            uint8_t local_location = find_local_location(li, n->var);

            if (cf.present) {
                push_constant(cf.value, &ci->stack_len);
            }
            else if (!compile_ast_impl(n->value, ci, li)) {
                // Evaluate the argument, which is then put
                // on top of the stack
                return false;
            }

            if (local_register != NULL) {
                // Pop and write into the designated local register
                printf("    mov %s, x0\n", local_register);
            }
            else {
                // Pop and write into the designated local space on the stack
                printf("    str x0, [fp, -%#x]\n", (local_location + 1) * 8);
            }
            pop_value(&ci->stack_len);

            return true;
        }
        case VAR: {
            var_node_t *n = (var_node_t *) node;

            push_space(&ci->stack_len);

            const char *local_register = find_local_register(li, n->name);
            uint8_t local_location = find_local_location(li, n->name);

            if (local_register != NULL) {
                // Read and push the value from the local register to the stack
                printf("    mov x0, %s\n", local_register);
            }
            else {
                // Read and push the value from the designated local space to the stack
                printf("    ldr x0, [fp, -%#x]\n", (local_location + 1) * 8);
            }

            return true;
        }
        case IF: {
            if_node_t *n = (if_node_t *) node;

            size_t tmp = ci->label_counter;
            ci->label_counter += 1;

            // Evaluate the condition,
            // which is supposed to put 0 or 1 (or not 0) on top of the stack
            if (!compile_ast_impl(n->condition, ci, li)) {
                return false;
            }

            // Compare the popped condition with 0 (FALSE), since
            // any value != 0 is TRUE. We jump if the condition is
            // false to the else branch.
            printf(
                "    cmp xzr, x0\n"
                "    beq .IF_ELSE%zu\n",
                tmp);
            pop_value(&ci->stack_len);

            if (!compile_ast_impl(n->if_branch, ci, li)) {
                return false;
            }
            if (n->else_branch != NULL) {
                // If there exist an else branch, we need to jump
                // to the end of the if statement.
                printf("    b .IF_END%zu\n", tmp);
            }
            // Else might be empty or leading to normal code
            printf(".IF_ELSE%zu:\n", tmp);

            if (n->else_branch != NULL) {
                if (!compile_ast_impl(n->else_branch, ci, li)) {
                    return false;
                }
                // if there is an else branch, then the if-then
                // branch will attempt to jump to the end
                // and we must add another label
                printf(".IF_END%zu:\n", tmp);
            }
            return true;
        }
        case WHILE: {
            while_node_t *n = (while_node_t *) node;

            size_t tmp = ci->label_counter;
            ci->label_counter += 2;

            // Label to jump back to when the condition reaches
            // the end of its body.
            printf(".WHILE_START%zu:\n", tmp);

            // Evaluate the condition,
            // which is supposed to put 0 or 1 on top of the stack
            if (!compile_ast_impl(n->condition, ci, li)) {
                return false;
            }

            // Compare the popped condition with 0 (FALSE), since
            // any value != 0 is TRUE. We jump if the condition is
            // false to the else branch.
            printf(
                "    cmp xzr, x0\n"
                "    b.eq .WHILE_END%zu\n",
                tmp);
            pop_value(&ci->stack_len);

            // Run the code in the body.
            if (!compile_ast_impl(n->body, ci, li)) {
                return false;
            }

            // Jump back to the start of the while loop.
            printf("    b .WHILE_START%zu\n", tmp);

            printf(".WHILE_END%zu:\n", tmp);

            return true;
        }
        default: {
            return false;
        }
    }
}

bool compile_ast(node_t *node, locals_info_t locals_info) {
    compile_info_t compile_info = (compile_info_t){.stack_len = 0, .label_counter = 0};
    return compile_ast_impl(node, &compile_info, locals_info);
}