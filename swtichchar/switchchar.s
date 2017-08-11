.global subs 
subs: 
	stmfd sp!,{v1-v6, lr} 
	mov v1,a1 				@copy pointer address , a1 will be overwritten 
	mov v2,a2 				@copy char we look for 
	mov v3,a3 				@copy char we replace with
	bl strlen 				@get the length of a string into a1
	add a1,a1,#1 			@account for null byte
	mov v4,a1 				@move the stringlength to a1 for counting
	bl malloc 				@allocate memory to make a new string
	mov v5,#0  				@need an iterator for adding to the string
loop:
	ldrb v6,[v1],#1 		@load in characters from argument string arg# 1
	cmp v6,v2 				@compare loaded char to the one we want to match arg# 2
	streqb v3,[a1,v5] 	@if it was a match replace it with arg# 3
	strneb v6,[a1,v5] 	@otherwise give it the same value
	add v5,v5,#1			@increment position counter
	subs v4,v4,#1 		@decrement loop counter
	bne loop 				@continue if loop counter isn't zero
	ldmfd sp!,{v1-v6, pc} 
.end
