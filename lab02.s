
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
# Write your code here!
# Do not remove the prog label or write code above it!
#Finding the last index forward
finding_the_last_index_forward:
add s0, zero, zero   #initialize the value of s0 to 0

loop :
    beq s0, a1, done  #if array is null or it is finished
    lw t0, 0(a0)
    bnq t0, a2 ,next_word
    add s0, a0 ,zero

next_word:
    addi a0, a0, 4
    addi a1, a1,-1
    j loop


#-----------------------------
done:
    addi a7, zero, 10 
    ecall
