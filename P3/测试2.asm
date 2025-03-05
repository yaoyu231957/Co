ori $0,$0,0
ori $1,$0,1
ori $2,$0,2
ori $3,$0,3
ori $4,$0,4
ori $5,$0,5
ori $6,$0,6
ori $7,$0,7
ori $8,$0,8
ori $9,$0,9
ori $10,$0,10
ori $11,$0,11
ori $12,$0,12
ori $13,$0,13
ori $14,$0,14
ori $15,$0,15
ori $16,$0,16
ori $17,$0,17
ori $18,$0,18
ori $19,$0,19
ori $20,$0,20
ori $21,$0,21
ori $22,$0,22
ori $23,$0,23
ori $24,$0,24
ori $25,$0,25
ori $26,$0,26
ori $27,$0,27
ori $28,$0,28
ori $29,$0,29
ori $30,$0,30
ori $31,$0,31

ori $t0,$0,0
ori $s0,$0,4

ori $a0, $0, 123
sw $a0, 0($t0)       # 将 result 保存到内存位置
add $t0, $t0, $s0     # 维护 index 指针

ori $a1, $a0, 456
sw $a1, 0($t0)       # 将 result 保存到内存位置
add $t0, $t0, $s0     # 维护 index 指针

ori $0, $0, 123         #测试目标寄存器是$0的情况
sw $0, 0($t0)       # 将 result 保存到内存位置
add $t0, $t0, $s0    # 维护 index 指针

ori $t1, $0, 0          #0 及附近的数
sw $t1, 0($t0)       # 将 result 保存到内存位置
add $t0, $t0, $s0     # 维护 index 指针

ori $t1, $0, 1
sw $t1, 0($t0)       # 将 result 保存到内存位置
add $t0, $t0, $s0     # 维护 index 指针

#ori $t1, $0, -1
#sw $t1,52($0)
ori $t1, $0, 65533 #16位数边界附近的数
sw $t1, 0($t0)       # 将 result 保存到内存位置
add $t0, $t0, $s0     # 维护 index 指针

ori $t1, $0, 25779
sw $t1, 0($t0)       # 将 result 保存到内存位置
add $t0, $t0, $s0    # 维护 index 指针


lui $a2, 123            # 符号位为 0
sw $a2, 0($t0)       # 将 result 保存到内存位置
add $t0, $t0, $s0      # 维护 index 指针

lui $a3, 0xffff         # 符号位为 1
sw $a3, 0($t0)       # 将 result 保存到内存位置
add $t0, $t0, $s0    # 维护 index 指针

ori $a3, $a3, 0xffff    # $a3 = -1
sw $a3, 0($t0)       
add $t0, $t0, $s0      

add $s1, $a0, $a2      # 正正
add $s2, $a0, $a3      # 正负
add $s3, $a3, $a3      # 负负
sub $s1, $a0, $a2      # 正正
sub $s2, $a0, $a3      # 正负
sub $s3, $a3, $a3      # 负负
nop

sw $a0, 0($t0)
sw $a1, 4($t0)
sw $a2, 8($t0)
sw $a3, 12($t0)
sw $s1, 16($t0)
sw $s2, 20($t0)
sw $s3, 24($t0)
lw $a0, 0($t0)
lw $a1, 12($t0)
sw $a0, 28($t0)
sw $a1, 32($t0)

ori $s0,$0,32
add $t0,$s0,$t0
ori $s0,$0,4

add $t0,$s0,$t0          #$base为正，offset为负
ori $a0, $0, 0x1234
sw $a0, -4($t0)
lui $t0, 0xffff         # 符号位为 1
ori $t0, $t0, 0xffff    # $a3 = -1     
ori $a0, $0, 0x5678     #$base为负，offset为正
sw $a0, 69($t0)

ori $t0, $0, 0
ori $a0, $0, 1
ori $a1, $0, 2
ori $a2, $0, 1

beq $a0, $a1, loop1     # 不相等
beq $a0, $a2, loop2     # 相等

loop1:sw $a0, 36($t0)
loop2:sw $a1, 40($t0)

loop5:
beq $0,$0,loop5
