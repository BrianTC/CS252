.global charpos 
charpos: 
	stmfd sp!, {v1-v6, lr} 
	mov v1,#0 					@position counter to zero just incase it had junk memory	
	main:
		ldrb v3,[a1],#1 		@load in the next char (only need one word increment)
		
		cmp v3,#0				@compare current character to null 
		moveq v1,#-1			@if current character is null set return value to -1
		beq return			@as well as branch to return & end
		
		cmp v3,a2				@compare current char to what we're looking for
		addne v1,v1,#1		@increment our counter if the comparison wasn't zero
		bne main				@loop back if the character hasn't been found yet
	return:	
		mov a1,v1				@end & return result either -1 or where the character is
	ldmfd sp!, {v1-v6, pc} 
.end
