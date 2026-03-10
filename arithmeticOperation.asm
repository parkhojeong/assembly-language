%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    GET_DEC 1, a
    GET_DEC 1, b
    
    mov al, [a]
    add al, [b]
    mov [addRes], al
    
    mov al, [a]
    sub al, [b]
    mov [subRes], al
    
    mov al, [a]
    mov bl, [b]
    mul bl
    mov [mulRes], ax
    
    mov ax, 0
    mov al, [a]
    mov bl, [b]
    div bl
    mov [divQRes], al
    mov [divRRes], ah
   
    PRINT_DEC 1, a
    NEWLINE
    PRINT_DEC 1, b
    NEWLINE
    NEWLINE
    
    PRINT_DEC 1, addRes
    NEWLINE
    NEWLINE
    PRINT_DEC 1, subRes
    NEWLINE
    NEWLINE
    PRINT_DEC 2, mulRes
    NEWLINE
    NEWLINE
    PRINT_DEC 1, divQRes
    NEWLINE
    PRINT_DEC 1, divRRes
    
    xor rax, rax
    ret
    
section .bss
    a resb 1
    b resb 1
    addRes resb 1
    subRes resb 1
    mulRes resw 1
    divQRes resb 1
    divRRes resb 1
