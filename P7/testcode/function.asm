ori $1,$0,0xfc01
mtc0 $1,$12

addi $1,$0,3
#cal

andi $2,$1,1
add $3,$1,$2
ori $2,$0,7
and $4,$1,$2
or $5,$1,$3
addi $1,$0,-3
andi $2,$1,-1
add $3,$1,$2
ori $2,$0,-7
and $4,$1,$2
or $5,$1,$3
ori $1,$0,1
ori $2,$0,2
slt $3,$1,$2
sltu $3,$2,$1
ori $2,$0,-1
slt $3,$2,$1
sltu $3,$1,$2

#l/s

lui $1,0x1234
ori $2,$0,0x5678
or $1,$1,$2
ori $2,$0,4
sw $1,0($2)
sh $1,4($2)
sb $1,8($2)
lw $3,0($2)
lh $3,4($2)
lb $3,8($2)

#mult/div

ori $1,$0,10
ori $2,$0,5
mult $1,$2
mfhi $3
mflo $4
multu $1,$2
mfhi $3
mflo $4
mthi $4
mtlo $3

ori $1,$0,-10
ori $2,$0,-5
mult $1,$2
mfhi $3
mflo $4
multu $1,$2
mfhi $3
mflo $4
mthi $4
mtlo $3

ori $1,$0,10
ori $2,$0,5
div $1,$2
mfhi $3
mflo $4
divu $1,$2
mfhi $3
mflo $4
mthi $4
mtlo $3

ori $1,$0,-10
ori $2,$0,-5
div $1,$2
mfhi $3
mflo $4
divu $1,$2
mfhi $3
mflo $4
mthi $4
mtlo $3

#b/j
