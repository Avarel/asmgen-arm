#include <inttypes.h>
#include <stddef.h>
#include <stdio.h>

/**
 * Implementation details for expression values (the expression stack):
 * The stack is half-backed by caller-saved registers.
 *
 * REGISTER     DESC                                VALID (stack_len)
 * %rdi         top of the stack, always            1
 * %rax         below top of the stack, always      2
 * ...
 * <ALLOCATED ON STACK MEMORY>
 * ...
 * %r11                                             8
 * %r10                                             7
 * %r9                                              6
 * %r8                                              5
 * %rcx                                             4
 * %rsi         bottom of the stack                 3
 *
 * If the stack size is 0, then all of the stack registers
 * contains garbage values.
 * If the stack size is 1, then %rax and the bottom stack registers
 * contains garbage values.
 * if the stack size is 2, only the bottom stack registers contain
 * garbage values.
 * If the stack size is 3, only %rdx-%r11 contains garbage values.
 * And so on...
 *
 * %rdi and %rax is updated accordingly to the stack counter
 * upon compilation to always form a view of the top two elements
 * of the stack, since they are the most useful for binary operations
 * and such. %rdi is the first since it is used as the first parameter
 * in a function. %rax is used as the second since it conveniently
 * sets up for division without any further changes to the registers.
 */

/**
 * Push a blank space onto the expression stack.
 */
void push_space(size_t *stack_len);

/**
 * Push a known constant onto the stack.
 */
void push_constant(int64_t value, size_t *stack_len);

/**
 * Pop the top value of the stack.
 */
void pop_value(size_t *stack_len);

/**
 * Pop the second value of the top of the stack.
 */
void pop_second_value(size_t *stack_len);
