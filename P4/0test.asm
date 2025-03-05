lw $1,0($0)
lw $2,4($0)
lw $3,3072($0)
loop2:
ori $1,$0,0
ori $2,$0,0
add $3,$3,$0
add $3,$1,$2
sub $3,$3,$0
sub $3,$0,$0
sw $3,0($0)
lw $3,0($0)
lui $3,0
ori $4,$0,1
ori $5,$0,2
add $6,$6,$4
beq $6,$5,loop1
jal loop2
loop1:
ori $1,$0,0
ori $2,$0,0
add $3,$3,$0
add $3,$1,$2
sub $3,$3,$0
sub $3,$0,$0
sw $3,0($0)
lw $3,0($0)
lui $3,0
ori $4,$0,1
ori $5,$0,5
add $6,$6,$4
beq $6,$5,loop3
jr $31
loop3:
beq $0,$4,loop4
ori $1,$0,0
ori $2,$0,0
add $3,$3,$0
add $3,$1,$2
sub $3,$3,$0
sub $3,$0,$0
sw $3,0($0)
lw $3,0($0)
lui $3,0
loop4:
