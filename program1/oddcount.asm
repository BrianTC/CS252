.global oddcount 
oddcount: 
stmfd sp!, {v1-v6, lr} 
add a1, a1, a2 
mov a3,#0
main:
	ldr a4,[a1]#4 
	subs 12,12,#1
	bne main
	mov a1,v1
ldmfd sp!, {v1-v6, pc} 
.end