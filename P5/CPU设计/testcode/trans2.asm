lui $1,0xff
add $2,$1,$1
jal loop1
loop1:
add $3,$31,$31
sw $31,0($0)
lw $4,0($0)
ori $5,$4,0xf00
sw $5,0x30($0)
ori $4,$0,0xc
sw $4,0x10($0)
nop
nop
jal loop2
nop
add $1,$1,$1
nop
loop2:
lw $6,-0x3008($31)
lw $8,-0x3f00($6)
sw $8,0($8)

lui $2,0xffff
ori $2,0x1234
lui $1,0xffff
ori $1,0x1234
sw $1,12($0)
lw $3,12($0)
beq $2,$3,loop3
nop
add $2,$2,$2
loop3:
end:
beq $0,$0,end
nop

