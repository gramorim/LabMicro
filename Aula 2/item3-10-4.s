	.text
	.globl main
main:
	LDR	r0, =0xF631024C			
	LDR	r1, =0x17539ABD 
	BL	firstfunc		
	MOV	r0, #0x18		
	LDR	r1, =0x20026		
	SWI	0x123456		
firstfunc:
	EOR	r0, r0, r1
	EOR	r1, r0, r1
	EOR	r0, r0, r1		
	MOV	pc, lr		
