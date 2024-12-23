%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    ; 배열과 주소
    
    ; 배열 : 동일한 타입의 데이터 묶음
    ; - 배열을 구성하는 각 값을 배열 요소(element)라고 함
    ; - 배열의 위치를 가리키는 숫자를 인덱스(index)라고 함
    
    ; 주소
    ; [시작 주소 + 인덱스 * 크기]
    
    ; 연습문제
    ; a 배열의 모든 데이터 출력해보기
    xor ecx, ecx ; counter
    
LABEL_PRINT_A:
    PRINT_HEX 1, [a+ecx]
    NEWLINE
    inc ecx
    cmp ecx, 5
    jne LABEL_PRINT_A
    
    NEWLINE
    
    ; b 배열의 모든 데이터 출력해보기
    xor ecx, ecx ; counter
    
LABEL_PRINT_B:
    PRINT_HEX 2, [b+ecx*2]
    NEWLINE
    inc ecx
    cmp ecx, 5
    jne LABEL_PRINT_B
    
    xor rax, rax
    ret
section .data
    a db 0x01, 0x02, 0x03, 0x04, 0x05
    
    ; 0x0001
    b times 5 dw 1
section .bss
    num resb 10;