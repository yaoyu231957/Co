ori $t0, $0, 0
ori $a0, $0, 1
ori $a1, $0, 2
ori $a2, $0, 1

beq $a0, $a1, loop1     # 不相等
beq $a0, $a2, loop2     # 相等

loop1:sw $a0, 0($t0)
loop2:sw $a1, 4($t0)


loop3:sw $a0, 8($t0)
loop4:sw $a1, 12($t0)
ori $t0, $0 ,8
beq $a0, $a1, loop3    # 不相等
beq $a0, $a2, loop4    # 相等

loop5:
beq $a0, $a1, loop5    # 不相等
loop6:
beq $a0, $a2, loop6    # 相等

