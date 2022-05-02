echo "Compilando Kernel.asm"
nasm -f elf32 kernel.asm -o kernel.o
gcc -m32 -c kernel.c -o kernelc.o
ld -m elf_i386 -T link.ld -o kernel.ELF kernel.o kernelc.o