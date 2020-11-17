#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>

#include "compile.h"
#include "locals.h"
#include "parser.h"

void usage(char *program) {
    fprintf(stderr, "USAGE: %s <program file>\n", program);
    exit(1);
}

static uint32_t round_up(uint32_t size, uint32_t n) {
    return (size + (n - 1)) / n * n;
}

/**
 * Prints the start of the the x86-64 assembly output.
 * The assembly code implementing the TeenyBASIC statements
 * goes between the header and the footer.
 */
void header(uint32_t locals_size) {
    printf(
        "# The code section of the assembly file\n"
        "# Declares a string constant to pass to printf()\n"
        ".section .rodata\n"
        "intfmt:\n"
        "    .asciz \"%%" PRId64
        "\\n\"\n"
        "\n"
        "# The code section of the assembly file\n"
        ".text\n"
        ".globl basic_main\n"
        "basic_main:\n"
        "    # The main() function\n"
        "    stp fp, lr, [sp, #-16]!\n"
        "    mov fp, sp\n");

    // Using 16 byte stack slots for simplicity
    uint32_t n = locals_size > LOCALS_REG_SIZE ? LOCALS_REG_SIZE : locals_size;
    if (locals_size > 0) {
        printf("    sub sp, sp, #%#x\n", round_up(locals_size * 8, 16));
    }
    for (uint32_t i = 0; i < n; i++) {
        printf("    str %s, [fp, #-%#x]\n", LOCALS_REG[i], (i + 1) * 8);
    }
}

/**
 * Prints the end of the x86-64 assembly output.
 * The assembly code implementing the TeenyBASIC statements
 * goes between the header and the footer.
 */
void footer(uint32_t locals_size) {
    uint32_t n = locals_size > LOCALS_REG_SIZE ? LOCALS_REG_SIZE : locals_size;
    for (uint32_t i = 0; i < n; i++) {
        printf("    ldr %s, [fp, #-%#x]\n", LOCALS_REG[i], (i + 1) * 8);
    }
    if (locals_size > 0) {
        printf("    add sp, sp, #%#x\n", round_up(locals_size * 8, 16));
    }

    printf(
        "    mov w0, #0\n"
        "    mov sp, x29\n"
        "    ldp fp, lr, [sp], #16\n"
        "    ret\n");
}

int main(int argc, char *argv[]) {
    if (argc != 2) {
        usage(argv[0]);
    }

    FILE *program = fopen(argv[1], "r");
    if (program == NULL) {
        usage(argv[0]);
    }

    node_t *ast = parse(program);
    fclose(program);
    if (ast == NULL) {
        fprintf(stderr, "Parse error\n");
        return 2;
    }

    locals_info_t locals_info = locals_prewalk(ast);

    header(locals_info.count);

    // Display the AST for debugging purposes
    print_ast(ast);

    // Compile the AST into assembly instructions
    if (!compile_ast(ast, locals_info)) {
        free_ast(ast);
        fprintf(stderr, "Compilation error\n");
        return 3;
    }

    free_ast(ast);

    footer(locals_info.count);
}
