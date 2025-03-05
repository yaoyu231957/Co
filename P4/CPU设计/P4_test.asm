ori $28,$0,0
ori $29,$0,0
ori $1,$0,0x3456
add $1,$1,$1
lw $1,4($0)
sw $1,4($0)
lui $2, 0x7878
sub $3,$2,$1
lui $5, 0x1234
ori $4,$0,5
nop
sw $5,-1($4)
lw $3,-1($4)
beq $3, $5, loop1
nop
beq $0, $0, loop2
nop
loop1:
ori $7,$3,0x404
beq $7,$3,loop2
nop
lui $8,0x7777
ori $8,$8,0xffff
sub $0,$0,$8
ori $0,$0,0x1100
add $10,$7,$6
ori $8,$0,0
ori $9,$0,1
ori $10,$0,1
loop4:
add $8,$8,$10
beq $8,$9,loop4
jal loop5
nop
add $10,$10,$10
loop2:
beq $0,$0,loop2
loop5:
add $10, $10, $10
jr $31
nop

