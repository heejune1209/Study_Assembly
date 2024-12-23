%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    ; mov : 데이터를 이동시켜주는 함수. 
    ;       입력값이 두 개가 필요하고 오른쪽에서 왼쪽으로 데이터를 이동시켜준다.
    ; 예시) mov reg1, cst, mov reg1, reg2
    ; 각각 cst를 reg1에, reg2의 값을 reg1로 이동시켜달라는 의미이다.
    
    mov eax, 0x1234
    mov rbx, 0x12345678
    mov cl, 0xff    ; 최하단 1바이트만 사용
    
    mov al, 0x00
    mov rax, rdx
        
    xor rax, rax
    ret
    
    
