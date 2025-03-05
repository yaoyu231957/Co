.data
array: .space 80

.text
li $v0, 5
syscall
move $s0, $v0

#将字符串录入数组
move $t0, $0
in1_begin:
beq $t0, $s0 in1_end
sll $t1, $t0, 2
li $v0, 12
syscall
sw $v0,array($t1)
addi $t0, $t0, 1
j in1_begin
in1_end:

#头尾遍历比较
li $s2,1 #输出
move $t0, $0
li $s1, 2
div $s0, $s1
mflo $s1
in2_begin:
beq $t0,$s1, in2_end
sub $t1, $s0, $t0
subi $t1, $t1, 1
sll $t2, $t0, 2
sll $t3, $t1, 2
lw $t4,array($t2)
lw $t5,array($t3)
bne $t4, $t5 ,nequal
addi $t0,$t0, 1
j in2_begin
nequal:
li $s2, 0
in2_end:
move $a0, $s2
li $v0, 1
syscall

