bits 32
section .text
        align 4
        dd 0x1BADB002
        dd 0x80
        dd - (0x1BADB002 + 0x80)

    global start

    extern kmain

    start:
        cli
        mov esp, stack_space
        call kmain
        hlt

    section .bss
            stack_space:resb 8192