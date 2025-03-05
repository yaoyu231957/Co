.data
symbol: .space 28
array: .space 28
.macro end
	li $v0, 10
	syscall 
.end_macro

.macro scan(%in)
	li $v0, 5
	syscall
	move %in, $v0
.end_macro

.macro print(%out)
	move $a0, %out
	li $v0, 1
	syscall
.end_macro

.macro push(%in)
	sw %in,0($sp)
	subi $sp, $sp, 4
.end_macro

.macro pop(%out)
	addi $sp, $sp, 4
	lw %out,0($sp)
.end_macro
str_enter: .asciiz "\n"
str_space: .asciiz " "


.text
scan($s0)
move $a0, $0
jal FullArray
end

FullArray:
push($ra)
push($t0)
push($t1)
push($t2)

# ÅÐ¶Ï1
move $t0, $a0
sub $t1, $t0, $s0
bltz $t1,if1_end

# Ñ­»·1
move $t1 ,$0
in1_begin:
beq $t1,$s0 ,in1_end
sll $t2, $t1, 2
lw $t3,array($t2)
print($t3)
la $a0,str_space
li $v0, 4
syscall
addi $t1, $t1, 1
j in1_begin
in1_end:
la $a0,str_enter
li $v0, 4
syscall
pop($t2)
pop($t1)
pop($t0)
pop($ra)
jr $ra

if1_end:
#Ñ­»·2
move $t1, $0
in2_begin:
beq $t1,$s0,in2_end
#ÅÐ¶Ï2
sll $t2,$t1,2
lw $t3,symbol($t2)
bnez $t3,if2_end
sll $t3,$t0,2
addi $t4,$t1,1
sw $t4,array($t3)
li $t4,1
sw $t4,symbol($t2)
addi $t4,$t0,1
move $a0,$t4
jal FullArray
sw $0,symbol($t2)
if2_end:
addi $t1,$t1,1
j in2_begin
in2_end:

pop($t2)
pop($t1)
pop($t0)
pop($ra)
jr $ra