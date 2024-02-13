section .data

section .text
    global _start   

_start:
    mov ecx, 1

    ; Loop starts here
    loop_start:

        inc ecx

        cmp ecx, 5
        jge loop_end 

        jmp loop_start

    loop_end:
      
        mov eax, 1      ; syscall number for exit
        xor ebx, ebx    ; exit code 0
        int 0x80        ; interrupt to invoke syscall
