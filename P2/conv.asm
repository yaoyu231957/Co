.data
matrix1: .space 400
matrix2: .space 400
.macro calc_addr(%dst,%row,%column,%rank)
	mult %row,%rank
	mflo %dst
	addu %dst,%dst,%column
	sll %dst,%dst,2
.end_macro
str_enter: .asciiz "\n"
str_space: .asciiz " "

.text
li $v0, 5
syscall
move $s0,$v0 #行数1
li $v0, 5
syscall
move $s1,$v0 #列数1
li $v0, 5
syscall
move $s2,$v0 #行数2
li $v0, 5
syscall
move $s3,$v0 #列数2

#循环读入1
move $t0, $0
in1_begin:
beq $t0, $s0, in1_end
move $t1, $0
in2_begin:
beq $t1, $s1, in2_end
calc_addr($t2,$t0,$t1,$s1)
li $v0, 5
syscall
sw $v0, matrix1($t2)
addi $t1, $t1, 1
j in2_begin
in2_end:
addi $t0, $t0, 1
j in1_begin
in1_end:

#循环读入2
move $t0, $0
in3_begin:
beq $t0, $s2, in3_end
move $t1, $0
in4_begin:
beq $t1, $s3, in4_end
calc_addr($t2,$t0,$t1,$s3)
li $v0, 5
syscall
sw $v0, matrix2($t2)
addi $t1, $t1, 1
j in4_begin
in4_end:
addi $t0, $t0, 1
j in3_begin
in3_end:

#卷积计算
subu $s4,$s0,$s2
subu $s5,$s1,$s3
addi $s4,$s4,1
addi $s5,$s5,1
move $t0, $0
in5_begin:
beq $t0, $s4, in5_end
move $t1, $0
in6_begin:
li $s7,0 # 结果
beq $t1, $s5, in6_end
move $t2, $0
in7_begin:
beq $t2, $s2, in7_end
move $t3, $0
in8_begin:
beq $t3, $s3, in8_end
add $t8, $t0, $t2
add $t9, $t1, $t3
calc_addr($t6,$t8,$t9,$s1)
lw $t4,matrix1($t6)
calc_addr($t6,$t2,$t3,$s3)
lw $t5,matrix2($t6)
mult $t4,$t5
mflo $t7
add $s7, $s7, $t7
addi $t3, $t3, 1
j in8_begin
in8_end:
addi $t2, $t2, 1
j in7_begin
in7_end:
move $a0,$s7
li $v0, 1
syscall
la $a0,str_space
li $v0, 4
syscall
addi $t1, $t1, 1
j in6_begin
in6_end:
la $a0, str_enter
li $v0 ,4
syscall
addi $t0, $t0, 1
j in5_begin
in5_end:

li $v0, 10
syscall
