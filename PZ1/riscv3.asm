.data
array: .space 92	#max 23 elements, my number 7
.text
li t1, 0		#count
li t2, 23
la t0, array

start_loop:
bge t1, t2, end
li a7, 5
ecall
beq a0, zero, end

sw a0, 0(t0)
addi t0, t0, 4
addi t1, t1, 1
j start_loop

end:
li a7, 10
ecall