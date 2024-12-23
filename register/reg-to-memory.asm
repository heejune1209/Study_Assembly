%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    ; 메모리 <-> 레지스터
    ;mov rax, a     ; a 변수의 메모리 주소값을 rax에 복사
    ;mov rax, [a]    ; a 변수 데이터 자체를 rax에 복사
    
    ; mov eax, 0x0000
    ; mov al, [a]
    
    ; 변수에 값 넣기
    ; 상수를 변수에 복사
    mov [a], byte 0x55
    mov [a], word 0x6666
    ; mov [a], cl
    
    xor rax, rax
    ret
    
    ; 초기화 된 데이터가 들어가는 곳
section .data
    a db 0x11   ; 1바이트
    b dw 0x2222 ; 2바이트
    c dd 0x33333333 ; 4바이트
    d dq 0x4444444444444444 ; 8바이트

    ; 초기화 되지 않은 데이터가 들어가는 곳
section .bss
    e resb 10   ; 1바이트 변수 e를 10개 할당
    
    
    
    
    
    
    
    
    
    
    
    
    
    