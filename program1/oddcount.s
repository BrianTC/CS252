.global numodd 
numodd: 
stmfd sp!, {v1-v6, lr} 
mov a3,#0 @initialize our odd counter to zero 
main:
	ldr a4,[a1],#4 @load in the next intiger into a4
	lsl a4,#31 @exploit the properties of binary numbers
	cmp a4,#0 @if a number was even the 'one' bit would be zero
	@so shifting left 31 times will give a result of zero while a negitive number will 
	@give us -(2^32)
	addne a3,a3,#1	@increment our counter if the comparison wasn't zero
	subs a2,a2,#1	@decriment our index counter
	bne main	@if we still have indices to use loop otherwise continue out of the program
	mov a1,a3	@end loop return result
ldmfd sp!, {v1-v6, pc} 
.end