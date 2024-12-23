%include "io64.inc"

section .text
global CMAIN
CMAIN:
    
    ; 함수 (프로시저 procedure, 혹은 서브루틴 subroutine이라 부름)
    
    call PRINT_MSG
    
    ; MAX 함수 호출 부분
    mov eax, 10
    mov ebx, 15
    call MAX
    PRINT_DEC 4, ecx
    NEWLINE
    
    xor rax, rax
    ret

PRINT_MSG:
    PRINT_STRING msg
    NEWLINE
    ret
    
; ex) 두 값 중 더 큰 값을 반환하는 MAX 함수 만들기
; eax와 ebx 입력값을 ecx에 반환
MAX:
    cmp eax, ebx
    jg L1
    mov ecx, ebx
    jmp L2
L1:
    mov ecx, eax
L2:
    ret
    
section .data
    msg db 'Hello World', 0x00