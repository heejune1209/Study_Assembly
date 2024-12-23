%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging

    PRINT_STRING msg    ; msg 출력
    
    xor rax, rax
    ret

section .data
    ; msg db 'Hello World', 0x00  ; 문자 타입 변수 선언
    msg db 0x48,0x65,0x6c,0x6c,0x6f,0x20,0x57,0x6f,0x72,0x6c,0x64,0x0   ; ascii code
    
    a db 0x11, 0x22, 0x33, 0x44 ; 여러개의 수를 한 번에 선언할 수 있다.
    
    b dd 0x12345678 ; 리틀 엔디언 방식으로 저장됨

section .bss
    e resb 10