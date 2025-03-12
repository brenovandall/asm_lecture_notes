section .text
  global _start

_start:
	push rbx          ; save rbx
	mov  rbx,5        ; set 5 to rbx
    	mov  rax,rbx      ; move rbx to rax
    	mov  rsi,2        ; set the multiplier 2
	call mult2        ; calls the function
	mov  rbx,rax      ; store the result rbx
	pop  rbx          ; restore the rbx
    	mov  rax,60       ; exit syscall
   	mov  rdi,0        ; exit status
	syscall           ; exit
	
mult2:
  	imul rsi,rax      ; multiply
  	ret               ; return
