ori $t1,0x1111
ori $t2,0x2222
add $t3,$t1,$t2
ori $t3,0x3333
jal loop1
nop
jal loop2
nop
jal loop3
nop
loop1:
ori $t4,$ra,0x4444
jr $ra
nop
loop2:
add $t5,$t1,$t4
jr $ra
nop
loop3:
beq $t1,$t2,loop4
nop
beq $0,$0,loop5
nop
loop4:
ori $a1,0xffff
loop5:
jal loop6
nop
lui $t7,0xaaaa
loop6:
ori $s0,0x3074
sw $s0,100($0)
lw $ra,100($0)
jr $ra
nop
loop7:
lw $s2,100($0)
jal loop8
nop
loop8:
sw $t1,104($0)
jal loop9
nop
jal loop10
nop
loop9:
jr $ra
nop
loop10:
nop

ori $1, $0, 4
ori $2, $0, 0x30a8
jr $2
add $2, $2, $1


jal end1
ori $1, $0, 0x3008
end1:
beq $1, $31, label2
ori $1, $0, 1
ori $3, $1, 2
ori $4, $0, 4
label2:
ori $3, $1, 2
ori $4, $0, 4
jal end2
nop
end2:
beq $0,$0,end2
nop