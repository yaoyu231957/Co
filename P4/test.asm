jal loop1
ori $1,$0,100
ori $2,$0,200
ori $0,$0,300
beq $0,$0,out

loop1:
jr $ra

out:
#�洢ָ��
ori $t0,$0,0
ori $s0,$0,4


jal out

ori $a0, $0, 123
sw $a0, 0($t0)       # �� result ���浽�ڴ�λ��
add $t0, $t0, $s0     # ά�� index ָ��

ori $a1, $a0, 456
sw $a1, 0($t0)       # �� result ���浽�ڴ�λ��
add $t0, $t0, $s0     # ά�� index ָ��

ori $0, $0, 123         #����Ŀ��Ĵ�����$0�����
sw $0, 0($t0)       # �� result ���浽�ڴ�λ��
add $t0, $t0, $s0    # ά�� index ָ��

ori $t1, $0, 0          #0 ����������
sw $t1, 0($t0)       # �� result ���浽�ڴ�λ��
add $t0, $t0, $s0     # ά�� index ָ��

ori $t1, $0, 1
sw $t1, 0($t0)       # �� result ���浽�ڴ�λ��
add $t0, $t0, $s0     # ά�� index ָ��

ori $1,$0,1
ori $2,$0,2

nop
jal loop5
nop
beq $1,$2,out1

#ori $t1, $0, -1
#sw $t1,52($0)
ori $t1, $0, 65533 #16λ���߽總������
sw $t1, 0($t0)       # �� result ���浽�ڴ�λ��
add $t0, $t0, $s0     # ά�� index ָ��

ori $t1, $0, 25779
sw $t1, 0($t0)       # �� result ���浽�ڴ�λ��
add $t0, $t0, $s0    # ά�� index ָ��

ori $2,$0,1
nop
jr $31

out1:

lui $a2, 123            # ����λΪ 0
sw $a2, 0($t0)       # �� result ���浽�ڴ�λ��
add $t0, $t0, $s0      # ά�� index ָ��

lui $a3, 0xffff         # ����λΪ 1
sw $a3, 0($t0)       # �� result ���浽�ڴ�λ��
add $t0, $t0, $s0    # ά�� index ָ��

ori $a3, $a3, 0xffff    # $a3 = -1
sw $a3, 0($t0)       
add $t0, $t0, $s0      

add $s1, $a0, $a2      # ����
add $s2, $a0, $a3      # ����
add $s3, $a3, $a3      # ����
sub $s1, $a0, $a2      # ����
sub $s2, $a0, $a3      # ����
sub $s3, $a3, $a3      # ����
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

add $t0,$s0,$t0          #$baseΪ����offsetΪ��
ori $a0, $0, 0x1234
sw $a0, -4($t0)
lui $t0, 0xffff         # ����λΪ 1
ori $t0, $t0, 0xffff    # $a3 = -1     
ori $a0, $0, 0x5678     #$baseΪ����offsetΪ��
sw $a0, 69($t0)

ori $t0, $0, 0
ori $a0, $0, 1
ori $a1, $0, 2
ori $a2, $0, 1

beq $a0, $a1, loop2     # �����
beq $a0, $a2, loop3     # ���

loop2:sw $a0, 36($t0)
loop3:sw $a1, 40($t0)

loop4:
beq $0,$0,loop4



loop5:
ori $10,100
jr $31
nop
ori $11,100