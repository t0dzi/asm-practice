li a7, 5
ecall 
mv t0, a0
li t1, 138 	#group number
li t5, 7	#my number in the group

blt t0, t1, mint
j maxt

mint:
mv t2, t0
mv t3, t1
j start_loop

maxt:
mv t2, t1
mv t3, t0

start_loop:
mv a0, t2
li a7, 1
ecall
li a0, 32	#space
li a7, 11	#symbol!
ecall
add t2, t2, t5
blt t3, t2, end
j start_loop

end:
li a7, 10
ecall