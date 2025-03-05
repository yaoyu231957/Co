ori $1,$0,0xffff
lui $2,0xffff
or $1,$1,$2
ori $2,$0,4
sw $1,0($2)
lb $3,0($2)
lh $4,0($2)
