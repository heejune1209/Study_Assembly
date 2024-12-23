%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging

    ; 사칙 연산-------------------------------
    
    GET_DEC 1, al
    GET_DEC 1, num
    
    ;PRINT_DEC 1, al
    ;NEWLINE
    ;PRINT_DEC 1, num
    
    
    ; 덧셈
    ; add a, b ( a = a + b)
    add al, 1 ; 레지스터 + 상수
    PRINT_DEC 1, al ; 1+1=2
    NEWLINE
    
    mov rax, num
    
    ;add al, num    ; 크래시
    add al, [num]   ; 레지스터 + 메모리
    PRINT_DEC 1, al
    NEWLINE
    
    mov bl, 3   ; 레지스터 + 레지스터
    add al, bl
    PRINT_DEC 1, al
    NEWLINE
    
    add [num], byte 1   ; 메모리 + 상수
    PRINT_DEC 1, [num]
    NEWLINE
    
    add [num], al   ; 메모리 + 레지스터
    PRINT_DEC 1, [num]
    NEWLINE
    
    ; 뺄셈도 동일
    
    ; 곱셈
    ; mul reg
    
    ; 5 * 8 = ?
    mov ax, 0
    mov al, 5
    mov bl, 8
    mul bl
    ;PRINT_DEC 2, ax
    ;NEWLINE
    
    ; 24000 * 628 = ?
    mov dx, 0
    mov ax, 24000
    mov bx, 628
    mul bx
    ;PRINT_DEC 2, dx
    ;NEWLINE
    ;PRINT_DEC 2, ax
    
    ; 나눗셈
    ; div reg
    
    ; 100 / 3 = ?
    mov ax, 100
    mov bl, 3
    div bl
    PRINT_DEC 1, al ; 몫
    NEWLINE
    ;PRINT_DEC 1, ah ; 에러남
    mov cl, ah
    PRINT_DEC 1, cl
    NEWLINE
    
    ; 시프트 연산-------------------------------
    mov eax, 0x12345678
    PRINT_HEX 4, eax
    NEWLINE
    shl eax, 8
    PRINT_HEX 4, eax
    NEWLINE
    shr eax, 8
    PRINT_HEX 4, eax
    NEWLINE
    
    ; 논리 연산-------------------------------
    mov al, 0b10010101
    mov bl, 0b01111100
    
    ; 0b0001 0100 = 0x14
    and al, bl  ; al = al and bl
    PRINT_HEX 1, al
    NEWLINE
    
    ; 0b1110 1011 = 0xeb
    not al
    PRINT_HEX 1, al
    NEWLINE
    
    ; 응용 사례 : bitflag
    mov al, 0b10010101
    mov bl, 0b01111100
    
    NEWLINE
    PRINT_HEX 1, al
    NEWLINE
    xor al, bl
    PRINT_HEX 1, al
    NEWLINE
    xor al, bl
    PRINT_HEX 1, al
    NEWLINE
    ; 동일한 값으로 xor 두 번하면 자기 자신으로 되돌아오는 특성이 있다.
    ; 암호학에서 유용하다. (value xor key)
    
    ; 자기 자신을 xor 연산하면 무조건 0이 나온다.
    ; mov al, 0과 같은 의미이지만 더 빠르다.
    xor al, al
    PRINT_HEX 1, al
    
    xor rax, rax
    ret
section .bss
    num resb 1