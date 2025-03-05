.data
matrix1: .space 256
matrix2: .space 256
.macro calc_addr(%dst,%row,%column,%rank)
	multu %row, %rank
    mflo %dst
    addu %dst, %dst, %column
    sll %dst, %dst, 2
.end_macro
str_enter:  .asciiz "\n"
str_space:  .asciiz " "

.text
li $v0, 5
syscall
move $s0, $v0
# 循环读入第一个矩阵
move $t0, $0  # 行
in1_i_begin:
move $t1, $0  # 列
beq $t0, $s0, in1_i_end
in1_j_begin:
beq $t1, $s0, in1_j_end
calc_addr($t2,$t0,$t1,$s0)
li $v0, 5
syscall
sw $v0,matrix1($t2)
addi $t1, $t1,1
j in1_j_begin
in1_j_end:
addi $t0, $t0,1
j in1_i_begin
in1_i_end:

# 循环读入第二个矩阵
move $t0, $0  # 行
in2_i_begin:
move $t1, $0  # 列
beq $t0, $s0, in2_i_end
in2_j_begin:
beq $t1, $s0, in2_j_end
calc_addr($t2,$t0,$t1,$s0)
li $v0, 5
syscall
sw $v0,matrix2($t2)
addi $t1, $t1,1
j in2_j_begin
in2_j_end:
addi $t0, $t0,1
j in2_i_begin
in2_i_end:

# 计算乘法
move $t0, $0 # 行数
in3_i_begin:
move $t1, $0 # 列数
beq $t0, $s0, in3_i_end
in3_j_begin:
move $t7, $0 # 位置
move $t2, $0 # 结果
beq $t1, $s0, in3_j_end
in3_k_begin:
beq $t7, $s0, in3_k_end
calc_addr($t3,$t0,$t7,$s0)
lw $t4,matrix1($t3)
calc_addr($t3,$t7,$t1,$s0)
lw $t5,matrix2($t3)
mult $t4, $t5
mflo $t6
add $t2, $t2, $t6
addi $t7, $t7,1
j in3_k_begin
in3_k_end:
move $a0, $t2
li $v0, 1
syscall  # 输出计算结果
la  $a0, str_space
li  $v0, 4
syscall  # 输出一个空格
addi $t1, $t1,1
j in3_j_begin
in3_j_end:
la  $a0, str_enter
li  $v0, 4
syscall  # 输出一个回车
addi $t0, $t0,1
j in3_i_begin
in3_i_end:

li $v0, 10
syscall
