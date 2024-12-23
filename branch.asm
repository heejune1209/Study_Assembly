%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    ; 분기문
    ; 특정 조건에 따라서 코드 흐름을 제어하는 것
    
    ; CMP dst, src (dst가 기준)
    ; 비교 결과물은 Flag Register에 저장
    
    ; ex) 두 숫자가 같으면 1, 아니면 0을 출력하는 프로그램
    mov rax, 10
    mov rbx, 20
    
    cmp rax, rbx
    
    je LABEL_EQUAL
    
    mov rcx, 0
    
    jmp LABEL_EQUAL_END
    
LABEL_EQUAL:
    mov rcx, 1
    
LABEL_EQUAL_END:
    PRINT_HEX 1, rcx
    NEWLINE
    
    ; 연습 문제
    ; 어떤 숫자(1~100)가 짝수면 1, 홀수면 0을 출력하라
    ;mov ax, 99 ; 홀수
    mov ax, 100 ; 짝수
    mov bl, 2
    
    div bl
    
    cmp ah, 0
    
    je LABEL_EQUAL2
    
    mov rcx, 0
    jmp LABEL_EQUAL_END2
    
LABEL_EQUAL2:
    mov rcx, 1
    
LABEL_EQUAL_END2:
    PRINT_HEX 1, rcx
    NEWLINE

    xor rax, rax
    ret