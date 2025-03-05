ori $28,$0,0
ori $29,$0,0
ori $1,$0,0x1010
lui $2,0x8732
ori $3,$0,0x7856
lui $4,0x85ff
ori $5,$0,0x0001
lui $6,0xffff
ori $7,$0,0xffff
add $1,$1,$2
add $9,$1,$3
sub $8,$1,$2
sub $0,$7,$0
beq $28,$17,loop1
nop
beq $0,$0,loop2
nop
loop1:
beq $1,$2,loop2
nop
ori $2,$0,0x000c
nop
nop
nop
jal loop4
sw $1,0($2)
beq $0,$0,loop2
add $1,$1,$2
loop4:
add $1,$1,$2
add $1,$1,$2
add $1,$1,$2
sw $31,0($2)
lw $1,0($2)
nop
nop
nop
jr $1,
sw $31,0($2)
loop6:
beq $0,$0,loop6
loop2:
nop
