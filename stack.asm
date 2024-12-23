%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    ; 스택 메모리와 스택 프레임
    
    ; 레지스터는 다양한 용도로 사용된다.
    ; - a, b, c, d 범용 레지스터
    ; - 포인터 레지스터
    ;   - ip (Instruction Pointer) : 다음 수행 명령어의 위치
    ;   - sp (Stack Pointer) : 현재 스택 top 위치(일종의 cursor)
    ;   - bp (Base Pointer) : 스택 상대주소 계산용
    
    ;push 1
    ;push 2
    ;push 3
    
    ;pop rax
    ;pop rbx
    ;pop rcx
    
    ; MAX 함수 스택으로 구현해보기
    ;push rax
    ;push rbx
    push 1
    push 2
    call MAX
    PRINT_DEC 8, rax
    NEWLINE
    add rsp, 16 ; 스택 초기화. 안 해주면 에러남 
    ;pop rbx
    ;pop rax
    
    xor rax, rax;
    ret
    
MAX:
    push rbp
    mov rbp, rsp
    
    mov rax, [rbp+16]
    mov rbx, [rbp+24]
    cmp rax, rbx
    jg L1
    mov rax, rbx
L1: 
    pop rbp
    ret
    
section .data
    msg db 'Hello World', 0x00