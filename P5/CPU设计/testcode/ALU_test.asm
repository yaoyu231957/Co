ori $1,$0,0x4
ori $2,$1,0x8
sw $2,0($1)
lw $3,0($1)
ori $1,$0,0x8
ori $2,$1,0x4c
sw $2,0($1)
lw $3,0($2)
ori $3,$0,0xff00
add $4,$3,$4
ori $4,$4,0x2
sub $5,$4,$0
#ALU与跳转
ori $8,$0,1
lui $6,0xffff
ori $7,$6,0
beq $6,$7,loop1
add $9,$9,$8
add $9,$9,$8 
loop1:
ori $1,$0,0x4
ori $2,$0,0x4
beq $2,$1,loop2
add $9,$9,$8
add $9,$9,$8
loop2:
add $3,$0,$2
beq $3,$1,loop3
add $9,$9,$8
add $9,$9,$8
loop3:
sub $4,$3,$0
beq $4,$1,loop4
add $9,$9,$8
add $9,$9,$8
loop4:
lui $5,0x4
beq $5,$1,loop5
add $9,$9,$8
add $9,$9,$8
loop5:
#ALU与存取
add $9,$9,$8
sw $9,8($0)
lw $10,8($0)
add $10,$10,$8
lui $9,0x6
sw $9,8($0)
lw $10,8($0)
lui $10,0x6
#ALU与ALU

#存取与存取

#存取与跳转

end:
beq $0,$0,end