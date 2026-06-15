#!/bin/bash

# Compilar e Depurar

manter="$2" # Sem limpar para manter arquivo -l ou -o

if [ -z $1 ]; then
    echo "Uso esse comando: bash ./auto.sh <asmMainFile>"
    exit 1
fi

# Verificar existe um arquivo de assembly entrada
if [ ! -e "$1.asm" ]; then
    echo "ERRO: $1.asm não encontrado"
    exit 1
fi


# Compilar YASM e link
yasm -g dwarf2 -f elf64 "$1.asm" -l "$1.lst"

# Verificar erro pós compilar
if [ ! -e "$1.lst" ]; then
    echo "ERRO: Corrige os erros acima."
    exit 1
fi

# Limpar arquivo lista
if [ "-l" != "$manter" ] && [ -e "$1.lst" ]; then
    rm "$1.lst"
fi

ld -g -o "$1.out" "$1.o"

# Limpar arqurvo objeto
if [ "-o" != "$manter" ] && [ -e "$1.o" ]; then
    rm "$1.o"
fi

# Depurar GDB
chmod +x "$1.out"

gdb "$1.out" \
    -ex "break _start" -ex "layout asm" -ex "layout regs" -ex "run"