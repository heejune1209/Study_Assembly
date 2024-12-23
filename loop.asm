%include "io64.inc"

section .text
global CMAIN
CMAIN:
     
    ; 반복문
    ; 특정 조건을 만족하는 동안 반복해서 실행한다
    
    ; ex) Hello World를 10번 출력해야 한다면?
    ; loop 미사용
    mov al, 10
    
LABEL_LOOP:
    PRINT_STRING msg
    NEWLINE
    dec al
    cmp al, 0
    jne LABEL_LOOP
    
    NEWLINE
    
    ; ex) 1에서 100까지의 합을 구하는 프로그램
    ; loop 사용
    mov ecx, 100
    xor ebx, ebx    ; 0으로 초기화
LABEL_LOOP_SUM:
    add ebx, ecx
    loop LABEL_LOOP_SUM
    
    PRINT_DEC 4, ebx
    NEWLINE
    
    ; loop 미사용
    mov eax, 100 ; 최종 목적지
    xor ebx, ebx ; mov ebx, 0 / ebx : 결과물
    xor ecx, ecx
    
LABEL_SUM:
    inc ecx ; add ecx, 1과 동일
    add ebx, ecx
    cmp ecx, eax
    jne LABEL_SUM
    
    PRINT_DEC 4, ebx
    NEWLINE

    xor rax, rax
    ret
section .data
    msg db 'Hello World', 0x00