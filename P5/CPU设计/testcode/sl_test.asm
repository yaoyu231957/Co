ori $1,$0,4
add $2,$1,$2
sw $2,0($2)
add $2,$1,$2
sw $2,0($2)
add $2,$1,$2
sw $2,0($2)
add $2,$1,$2
sw $2,0($2)
add $2,$1,$2
sw $2,0($2)
add $2,$1,$2
sw $2,0($2)

ori $3,$0,0xf
lw $3,0($2)
add $3,$3,$3
sw $3,0($2)

test_end:
beq  $0, $0, test_end
nop