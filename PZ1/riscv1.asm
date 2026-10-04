li a7, 5
ecall

mv t0, a0
li a0, 0
li t1, 7
beq t0, t1, equal
j not_equal


equal:
li a0, 1
li a7, 1
ecall
j end

not_equal:
li a7, 1
ecall

end:
li a7, 10
ecall 