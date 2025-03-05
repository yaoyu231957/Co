ori $22,$22,4
ori $23,$23,88
ori $24,$24,12348
sw $24,4($0)
addi $24,$24,104
ori $0,$0,20
ori $1,$1,20
ori $2,$2,4
ori $3,$3,20
ori $4,$4,16
ori $5,$5,4
ori $6,$6,20
ori $7,$7,36
ori $8,$8,36
ori $9,$9,28
ori $10,$10,65516
addi $11,$11,-32744
addi $12,$12,-32748
addi $13,$13,-32760
addi $14,$14,-32752
addi $15,$15,-32732
addi $16,$16,-32744
ori $17,$17,65524
addi $18,$18,-32740
addi $19,$19,-32748
addi $20,$20,-32740
ori $21,$21,65500
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
start:
addi $31,$0,12320
jr $24
add $24,$24,$23
jal start
label16:
nop
sltu $31,$4,$31
andi $31,$31,36
add $31,$31,$9
div $31,$18
sh $31,6146($25)
mtlo $31
add $31,$17,$31
ori $31,$31,28
andi $31,$31,20
mfhi $31
andi $31,$31,16
divu $31,$12
mfhi $31
lui $31,5
sltu $31,$31,$17
slt $31,$31,$18
lui $31,6
nop
nop
nop

jal start
nop
multu $1,$31
sh $31,6144($25)
multu $31,$2
mthi $31
mtlo $31
jal label59
add $21,$31,$0
nop
nop
bne $21,$31,label23
lh $25,0($0)
nop
sw $31,6144($25)
add $31,$4,$31
divu $31,$8
nop
mthi $31
jal label77
divu $31,$4
nop

jal start
nop
nop
add $31,$31,$0
mthi $31
jr $31
nop
jal label84
multu $3,$31
jr $31
lw $31,4($0)
nop
jr $31
ori $31,$31,4
bne $31,$7,label23
add $31,$7,$31
sw $31,6144($25)
mthi $31
andi $25,$25,8
nop
sh $31,6146($25)
add $31,$6,$31

jal start
label60:
nop
nop
nop
div $31,$12
lui $31,6
lw $31,6144($25)
lw $31,6144($25)
or $31,$31,$10
or $25,$25,$22
nop
lw $31,6144($25)
mthi $31
sltu $31,$16,$31
lui $31,0
multu $3,$31
mfhi $31
lw $31,6144($25)
nop
lui $31,9
mfhi $31
multu $31,$8

jal start
label2:
nop
slt $31,$8,$31
slt $31,$9,$31
lh $31,6146($25)
mfhi $31
lui $31,0
ori $31,$31,0
addi $31,$31,0
nop
sub $31,$3,$31
add $25,$25,$22
nop
lw $31,6144($25)
lh $31,6144($25)
lui $31,8
lw $31,6144($25)
div $31,$19
and $31,$31,$14
and $25,$25,$22
lh $31,6144($25)
mflo $31

jal start
nop
lui $31,1
nop
sltu $31,$8,$31
andi $31,$31,4
jal label11
nop
mfhi $31
mflo $31
addi $31,$31,36
beq $31,$5,label33
ori $31,$31,4
sltu $31,$0,$31
jal label94
sh $31,6146($25)
beq $31,$14,label80
divu $31,$12
lw $31,6144($25)
lui $31,2
lui $31,3
ori $31,$31,24

jal start
label87:
nop
and $31,$15,$31
lh $31,6144($25)
addi $31,$31,32
lui $25,0
nop
lh $31,6144($25)
lh $31,6146($25)
multu $19,$31
sh $31,6146($25)
slt $31,$31,$10
sub $31,$31,$10
div $31,$11
mult $15,$31
lb $25,0($0)
lb $31,6146($25)
divu $31,$1
addi $31,$31,16
andi $31,$31,36
and $31,$31,$11
mflo $31

jal start
label83:
nop
lh $31,6146($25)
mflo $31
mthi $31
lb $31,6146($25)
sltu $31,$7,$31
nop
multu $15,$31
add $31,$31,$9
add $31,$31,$17
sb $31,6144($25)
slt $31,$14,$31
nop
lui $31,3
and $31,$31,$10
lh $25,0($0)
nop
lw $31,6144($25)
addi $25,$25,4
nop
lh $31,6146($25)

jal start
nop
sub $31,$31,$15
and $31,$31,$0
or $31,$18,$31
andi $31,$31,16
lh $31,6144($25)
or $25,$25,$22
nop
lh $31,6144($25)
andi $25,$25,4
nop
nop
lh $31,6146($25)
mtlo $31
sltu $31,$8,$31
ori $31,$31,12
nop
div $31,$4
or $31,$31,$4
mfhi $31
mthi $31

jal label1011
label1011:
nop
nop
sh $31,-12288($31)
jal start
label24:
nop
nop
divu $31,$3
andi $31,$31,28
andi $25,$25,4
nop
nop
lh $31,6144($25)
lui $31,6
div $31,$6
sb $31,6145($25)
sub $31,$15,$31
sltu $31,$5,$31
lb $25,0($0)
sh $31,6146($25)
mflo $31
lb $31,6147($25)

jal start
label3:
nop
slt $31,$4,$31
lw $31,6144($25)
sw $31,6144($25)
lb $31,6145($25)
lw $31,6144($25)
add $25,$25,$22
mthi $25
mfhi $25
lb $31,6145($25)
addi $31,$31,16
multu $5,$31
lh $31,6144($25)
addi $25,$25,4
nop
sh $31,6146($25)
lh $31,6144($25)
sub $25,$25,$22
nop
nop
lh $31,6146($25)

jal start
label84:
nop
andi $31,$31,32
sub $31,$5,$31
mfhi $31
add $31,$9,$31
nop
lui $25,0
nop
lw $31,6144($25)
lui $31,4
divu $31,$1
andi $31,$31,4
nop
divu $31,$3
mult $7,$31
or $31,$0,$31
mflo $31
multu $31,$5
multu $31,$7
mtlo $31
mflo $31

jal start
label67:
nop
lh $31,6146($25)
sb $31,6144($25)
or $31,$31,$0
lb $25,0($0)
nop
lh $31,6146($25)
lb $31,6144($25)
lui $31,0
sub $31,$31,$0
and $31,$13,$31
sub $31,$7,$31
mthi $31
mult $7,$31
slt $31,$3,$31
add $25,$25,$22
sb $31,6146($25)
div $31,$4
nop
sb $31,6145($25)
sb $31,6146($25)

jal start
label79:
nop
multu $31,$14
mult $31,$3
lb $31,6144($25)
andi $25,$25,4
nop
sw $31,6144($25)
or $31,$31,$1
lb $31,6144($25)
addi $31,$31,36
or $31,$31,$0
add $31,$11,$31
nop
lui $31,1
mflo $31
sltu $31,$7,$31
lui $31,6
andi $31,$31,16
mthi $31
mfhi $31
nop

jal start
nop
divu $31,$20
add $31,$31,$16
sh $31,6144($25)
divu $31,$18
mthi $31
mthi $31
ori $25,$25,0
nop
nop
lh $31,6146($25)
or $31,$31,$6
jal label34
mtlo $31
mtlo $31
mfhi $31
lh $31,6144($25)
jal label17
mthi $31
lui $31,4
lh $31,6144($25)

jal start
label46:
nop
nop
multu $12,$31
lh $31,6146($25)
nop
mtlo $31
ori $31,$31,4
mult $31,$1
mflo $31
sw $31,6144($25)
andi $25,$25,0
nop
lb $31,6147($25)
lh $31,6146($25)
mtlo $31
mult $31,$3
sub $31,$31,$1
sltu $31,$8,$31
andi $31,$31,4
lui $31,0
divu $31,$16

jal start
nop
mtlo $31
nop
ori $31,$31,28
mult $3,$31
nop
sb $31,6147($25)
bne $31,$8,label23
add $31,$2,$31
add $31,$31,$6
jal label82
mthi $31
addi $31,$31,20
jal label82
divu $31,$2
addi $31,$31,28
bne $31,$2,label63
ori $31,$31,4
addi $31,$31,0
nop
mult $6,$31

jal start
label51:
nop
div $31,$12
andi $31,$31,24
lui $31,9
sw $31,6144($25)
mthi $31
mult $9,$31
addi $31,$31,16
slt $31,$31,$18
ori $31,$31,8
or $31,$31,$15
addi $31,$31,20
sltu $31,$31,$12
multu $31,$14
sw $31,6144($25)
add $25,$25,$22
mthi $25
mfhi $25
lh $31,6146($25)
sw $31,6144($25)
nop

jal start
label41:
nop
nop
mfhi $31
lui $31,4
lh $31,6144($25)
andi $31,$31,36
mult $1,$31
slt $31,$31,$16
mthi $31
lui $31,2
div $31,$4
lb $31,6145($25)
sw $31,6144($25)
sub $25,$25,$22
nop
sw $31,6144($25)
multu $13,$31
mtlo $31
nop
or $31,$31,$0
nop

jal start
label86:
nop
lw $31,6144($25)
nop
addi $31,$31,32
lb $31,6147($25)
sw $31,6144($25)
mfhi $31
nop
ori $25,$25,8
nop
lb $31,6144($25)
mult $31,$7
lh $25,0($0)
nop
lw $31,6144($25)
nop
mthi $31
or $25,$25,$22
lb $31,6144($25)
lw $31,6144($25)
addi $31,$31,28

jal start
label53:
nop
sub $31,$13,$31
lh $31,6144($25)
or $31,$31,$3
nop
or $31,$4,$31
andi $31,$31,0
sltu $31,$31,$15
nop
mflo $31
lui $31,9
mflo $31
addi $25,$25,4
lh $31,6146($25)
nop
addi $31,$31,4
multu $31,$9
mult $3,$31
ori $31,$31,28
lb $31,6146($25)
addi $31,$31,36

jal start
label38:
nop
lw $31,6144($25)
sh $31,6144($25)
nop
addi $31,$31,16
sw $31,6144($25)
addi $31,$31,28
nop
addi $31,$31,4
divu $31,$5
andi $31,$31,16
nop
add $31,$3,$31
andi $31,$31,12
addi $31,$31,16
div $31,$10
sw $31,6144($25)
lh $31,6146($25)
lui $31,7
lw $31,6144($25)
mult $14,$31

jal start
label15:
nop
lui $31,6
nop
nop
mthi $31
mflo $31
sw $31,6144($25)
or $31,$15,$31
mflo $31
mtlo $31
mflo $31
mthi $31
mtlo $31
lui $31,6
addi $31,$31,8
lui $31,1
addi $31,$31,8
addi $31,$31,0
multu $31,$15
divu $31,$19
lb $31,6145($25)

jal start
nop
sb $31,6145($25)
sw $31,6144($25)
sw $31,6144($25)
sub $25,$25,$22
nop
nop
lb $31,6145($25)
lui $31,3
nop
ori $31,$31,32
lui $31,8
div $31,$10
lh $31,6146($25)
or $31,$31,$6
jal label4
add $25,$25,$22
lw $31,6144($25)
mfhi $31
lui $31,8
nop

jal start
label1:
nop
mtlo $31
lui $31,1
and $31,$31,$4
nop
addi $31,$31,24
sh $31,6146($25)
or $25,$25,$22
lh $31,6146($25)
mtlo $31
sub $31,$2,$31
nop
andi $31,$31,4
slt $31,$31,$15
nop
mflo $31
div $31,$1
nop
lb $31,6146($25)
ori $31,$31,36
lw $31,6144($25)

jal start
label85:
nop
multu $31,$13
addi $31,$31,16
lb $31,6147($25)
div $31,$15
lb $31,6144($25)
mfhi $31
addi $31,$31,28
ori $31,$31,24
or $31,$31,$3
mthi $31
ori $31,$31,32
sub $25,$25,$22
lb $31,6144($25)
lh $31,6146($25)
mfhi $31
nop
sub $25,$25,$22
lw $31,6144($25)
sub $31,$31,$18
nop

jal start
label77:
nop
div $31,$5
sub $31,$9,$31
divu $31,$3
andi $31,$31,24
mfhi $31
mult $31,$7
andi $31,$31,0
multu $1,$31
mtlo $31
mtlo $31
lui $31,6
nop
lui $31,0
sw $31,6144($25)
mtlo $31
slt $31,$12,$31
mthi $31
addi $31,$31,32
addi $31,$31,24
nop

jal start
nop
nop
add $31,$31,$16
mthi $31
nop
div $31,$9
lh $31,6146($25)
lw $25,0($0)
lb $31,6144($25)
sub $25,$25,$22
nop
sh $31,6144($25)
lh $31,6144($25)
and $31,$31,$2
nop
add $31,$4,$31
beq $31,$7,label86
mfhi $31
lw $31,6144($25)
lui $31,2
lh $31,6146($25)

jal start
label82:
nop
lw $31,6144($25)
mthi $31
mtlo $31
divu $31,$16
mult $31,$5
and $31,$17,$31
sw $31,6144($25)
add $31,$11,$31
mult $31,$5
sltu $31,$31,$17
lui $31,6
mult $2,$31
div $31,$11
andi $25,$25,8
nop
sw $31,6144($25)
sub $31,$7,$31
divu $31,$6
andi $31,$31,28
and $31,$31,$7

jal start
label8:
nop
mfhi $31
div $31,$2
lb $31,6147($25)
nop
nop
mflo $31
divu $31,$2
addi $31,$31,0
nop
addi $31,$31,32
lh $31,6146($25)
divu $31,$4
add $31,$31,$1
divu $31,$10
lui $31,2
addi $31,$31,32
lh $31,6146($25)
nop
andi $31,$31,12
mflo $31

jal start
label14:
nop
lw $31,6144($25)
andi $31,$31,0
andi $31,$31,12
nop
mflo $31
and $31,$31,$9
mthi $31
or $31,$31,$12
andi $25,$25,8
nop
lw $31,6144($25)
sltu $31,$31,$7
slt $31,$0,$31
lui $31,4
and $31,$1,$31
mthi $31
sw $31,6144($25)
andi $31,$31,4
and $31,$31,$16
mflo $31

jal start
label78:
nop
lh $31,6144($25)
nop
sb $31,6147($25)
andi $31,$31,20
nop
mult $31,$7
andi $31,$31,24
div $31,$1
divu $31,$2
lui $25,0
lb $31,6146($25)
multu $31,$12
nop
nop
and $31,$17,$31
sub $31,$31,$8
multu $13,$31
andi $31,$31,4
ori $31,$31,20
slt $31,$19,$31

jal start
nop
sub $31,$31,$1
slt $31,$31,$4
lui $31,6
multu $15,$31
and $25,$25,$22
lw $31,6144($25)
sh $31,6144($25)
mtlo $31
addi $21,$31,0
nop
nop
bne $21,$31,label97
lh $31,6144($25)
mult $31,$2
multu $10,$31
jal label73
lb $31,6145($25)
sub $31,$31,$18
beq $31,$15,label75
lh $31,6146($25)

jal start
label6:
nop
and $31,$31,$12
andi $31,$31,32
nop
mfhi $31
slt $31,$1,$31
or $31,$31,$6
mult $31,$0
multu $31,$0
nop
addi $31,$31,24
div $31,$8
sub $31,$5,$31
add $25,$25,$22
sw $31,6144($25)
mfhi $31
multu $16,$31
sub $31,$31,$12
andi $31,$31,20
addi $31,$31,12
ori $31,$31,12

jal start
nop
sb $31,6146($25)
div $31,$8
or $31,$7,$31
jr $31
sw $31,6144($25)
jal label10
ori $31,$31,16
jal label13
nop
nop
beq $31,$1,label90
mult $31,$3
nop
add $31,$31,$2
or $31,$31,$2
nop
bne $31,$5,label91
divu $31,$2
sub $25,$25,$22
sb $31,6147($25)

jal start
label44:
nop
lb $31,6145($25)
addi $31,$31,28
nop
or $31,$31,$6
nop
ori $31,$31,12
mfhi $31
nop
nop
and $31,$3,$31
lui $31,0
andi $31,$31,20
slt $31,$31,$2
divu $31,$9
or $31,$8,$31
andi $25,$25,0
nop
lh $31,6146($25)
mflo $31
nop

jal start
label25:
nop
mult $2,$31
mtlo $31
ori $31,$31,8
ori $25,$25,0
nop
lw $31,6144($25)
lui $25,0
nop
lw $31,6144($25)
sub $31,$14,$31
nop
and $31,$18,$31
or $31,$5,$31
multu $19,$31
lui $31,8
multu $18,$31
mflo $31
sltu $31,$31,$14
addi $31,$31,24
ori $31,$31,4

jal start
nop
addi $31,$31,36
or $31,$31,$4
sw $31,6144($25)
mult $31,$4
ori $31,$31,0
jal label83
or $31,$4,$31
jal label46
div $31,$8
mthi $31
jal label14
lw $25,0($0)
nop
sw $31,6144($25)
or $31,$31,$2
mtlo $31
jal label65
divu $31,$7
jal label9
multu $6,$31

jal start
label9:
nop
lui $31,3
or $31,$31,$1
lb $31,6144($25)
add $31,$18,$31
mfhi $31
add $31,$16,$31
nop
addi $31,$31,0
and $25,$25,$22
sh $31,6146($25)
addi $31,$31,16
andi $31,$31,8
sub $25,$25,$22
nop
lb $31,6145($25)
sub $31,$31,$13
mthi $31
mtlo $31
nop
nop

jal start
label99:
nop
mfhi $31
sltu $31,$16,$31
nop
lh $31,6144($25)
multu $31,$12
andi $25,$25,8
nop
lh $31,6146($25)
addi $31,$31,20
addi $31,$31,4
lw $31,6144($25)
sh $31,6144($25)
andi $31,$31,16
divu $31,$2
sub $31,$31,$17
slt $31,$12,$31
sltu $31,$31,$6
lui $31,3
multu $31,$18
andi $31,$31,8

jal label1012
nop
label1013:
beq $31,$31,label36
nop
label1012:
jal label1013
nop
jal label1014
label1014:
nop
nop
lb $31,-12285($31)
jal start
label97:
nop
mfhi $31
sltu $31,$31,$12
andi $31,$31,28
mflo $31
lb $31,6146($25)
sh $31,6146($25)
or $25,$25,$22
nop
nop
lh $31,6146($25)

jal start
label62:
nop
addi $31,$31,4
andi $31,$31,36
ori $25,$25,12
nop
nop
lb $31,6145($25)
mfhi $31
nop
lb $31,6145($25)
multu $19,$31
ori $25,$25,4
nop
lh $31,6144($25)
mfhi $31
slt $31,$19,$31
sub $25,$25,$22
nop
sb $31,6144($25)
nop
mthi $31

jal start
nop
mthi $31
nop
nop
jr $31
divu $31,$4
jal label41
add $21,$31,$0
bne $21,$31,label89
or $21,$31,$0
bne $31,$21,label43
sh $31,6144($25)
beq $31,$3,label17
nop
nop
div $31,$6
jal label19
lw $31,4($0)
jr $31
multu $31,$4
nop

jal start
nop
sw $31,6144($25)
nop
sltu $31,$12,$31
nop
jal label38
mtlo $31
mflo $21
nop
beq $31,$21,label90
lui $31,2
andi $31,$31,8
ori $25,$25,0
nop
sb $31,6147($25)
nop
and $31,$31,$14
beq $31,$5,label19
lh $31,6146($25)
or $31,$4,$31
sub $31,$31,$2

jal start
label80:
nop
mtlo $31
lh $31,6146($25)
multu $31,$15
mthi $31
mtlo $31
divu $31,$2
divu $31,$8
add $31,$1,$31
mflo $31
andi $31,$31,32
nop
nop
divu $31,$3
lh $25,0($0)
sw $31,6144($25)
mfhi $31
slt $31,$4,$31
and $31,$31,$1
mtlo $31
nop

jal start
label49:
nop
mtlo $31
div $31,$5
or $31,$7,$31
andi $31,$31,20
nop
sw $31,6144($25)
sub $31,$14,$31
mflo $31
mtlo $31
lui $31,6
multu $16,$31
slt $31,$15,$31
lui $31,3
lw $31,6144($25)
mthi $31
lh $31,6144($25)
lh $31,6146($25)
multu $31,$3
ori $31,$31,24
nop

jal start
nop
addi $31,$31,20
multu $2,$31
nop
jr $31
andi $25,$25,12
sh $31,6144($25)
jr $31
addi $31,$31,8
jal label69
mtlo $31
bne $31,$2,label18
multu $31,$6
jr $31
ori $31,$31,36
multu $31,$0
lh $25,0($0)
nop
sb $31,6146($25)
jal label72
mthi $31

jal start
label70:
nop
sw $31,6144($25)
sw $31,6144($25)
lw $31,6144($25)
mthi $31
mtlo $31
divu $31,$2
ori $25,$25,8
lw $31,6144($25)
div $31,$9
addi $25,$25,4
lb $31,6146($25)
andi $31,$31,8
nop
and $31,$9,$31
add $25,$25,$22
nop
sb $31,6147($25)
addi $31,$31,32
sh $31,6144($25)
ori $31,$31,0

jal start
nop
mtlo $31
mtlo $31
addi $31,$31,28
jal label24
sb $31,6144($25)
jal label98
mthi $31
sw $31,6144($25)
ori $25,$25,12
nop
sb $31,6147($25)
div $31,$8
add $31,$31,$8
mthi $31
nop
beq $31,$2,label69
add $31,$7,$31
or $25,$25,$22
nop
sb $31,6146($25)

jal start
label21:
nop
add $31,$9,$31
andi $31,$31,0
sh $31,6146($25)
multu $31,$11
mtlo $31
mflo $31
lw $31,6144($25)
multu $31,$15
sub $31,$31,$18
multu $31,$1
mfhi $31
or $31,$11,$31
andi $25,$25,12
nop
sw $31,6144($25)
lui $25,0
sb $31,6146($25)
add $25,$25,$22
lw $31,6144($25)
lb $31,6145($25)

jal start
label47:
nop
sw $31,6144($25)
nop
lb $31,6146($25)
mflo $31
mtlo $31
ori $31,$31,16
and $31,$31,$1
add $31,$31,$18
mfhi $31
mult $31,$16
add $31,$31,$3
and $25,$25,$22
sh $31,6144($25)
or $25,$25,$22
lb $31,6145($25)
andi $31,$31,0
addi $31,$31,20
add $31,$31,$1
nop
lb $31,6144($25)

jal start
label5:
nop
addi $31,$31,12
sh $31,6144($25)
mtlo $31
sub $31,$31,$19
sw $31,6144($25)
nop
sb $31,6145($25)
lw $31,6144($25)
lui $25,0
nop
lw $31,6144($25)
sb $31,6146($25)
multu $12,$31
addi $31,$31,24
or $31,$0,$31
lui $31,8
mflo $31
lui $25,0
nop
lw $31,6144($25)

jal start
label76:
nop
divu $31,$13
sh $31,6146($25)
sb $31,6144($25)
lh $25,0($0)
nop
lh $31,6146($25)
and $25,$25,$22
lw $31,6144($25)
lw $31,6144($25)
lb $31,6147($25)
div $31,$17
addi $31,$31,16
div $31,$12
sltu $31,$31,$10
mthi $31
and $31,$7,$31
lb $25,0($0)
nop
nop
lh $31,6144($25)

jal start
label57:
nop
addi $31,$31,36
or $31,$31,$15
sltu $31,$31,$16
mfhi $31
nop
nop
addi $31,$31,4
nop
nop
mult $2,$31
sh $31,6146($25)
slt $31,$9,$31
mfhi $31
addi $31,$31,0
mult $31,$16
lui $31,7
andi $31,$31,8
lui $25,0
lb $31,6144($25)
nop

jal label1015
label1015:
nop
sb $31,-12288($31)
jal start
label63:
nop
lui $31,5
lh $31,6146($25)
slt $31,$31,$13
lh $31,6146($25)
mflo $31
lw $31,6144($25)
lui $31,0
sub $25,$25,$22
sw $31,6144($25)
divu $31,$18
sb $31,6147($25)
lh $31,6144($25)
nop
nop
mtlo $31
add $31,$5,$31
nop

jal start
label39:
nop
andi $31,$31,16
mtlo $31
lb $31,6147($25)
lb $31,6147($25)
lh $31,6144($25)
or $31,$31,$7
multu $11,$31
lh $31,6146($25)
addi $31,$31,4
mult $31,$1
mflo $31
mflo $31
multu $8,$31
mfhi $31
mflo $31
ori $31,$31,0
lw $31,6144($25)
sh $31,6144($25)
sb $31,6144($25)
mthi $31

jal label1016
label1016:
nop
sh $31,-12288($31)
jal start
label40:
nop
add $31,$15,$31
mfhi $31
slt $31,$31,$15
divu $31,$11
lh $31,6146($25)
mthi $31
divu $31,$13
mtlo $31
mult $7,$31
andi $31,$31,4
mflo $31
mtlo $31
lh $31,6146($25)
nop
sh $31,6146($25)
multu $31,$19
and $31,$0,$31

jal start
label19:
nop
sb $31,6144($25)
nop
lui $25,0
mthi $25
mfhi $25
lb $31,6145($25)
add $31,$13,$31
ori $25,$25,12
lb $31,6145($25)
slt $31,$14,$31
divu $31,$14
mflo $31
addi $31,$31,0
sb $31,6144($25)
mtlo $31
or $31,$31,$2
andi $31,$31,4
addi $25,$25,4
nop
lb $31,6146($25)

jal start
label32:
nop
sub $31,$31,$18
mflo $31
lui $31,5
sw $31,6144($25)
sltu $31,$31,$2
nop
div $31,$13
lh $31,6146($25)
addi $31,$31,28
nop
and $25,$25,$22
nop
nop
lb $31,6147($25)
lui $31,0
addi $31,$31,24
mthi $31
lui $31,3
add $25,$25,$22
lh $31,6144($25)

jal start
nop
addi $31,$31,20
mult $6,$31
mult $0,$31
sh $31,6146($25)
jal label14
or $31,$31,$3
jal label65
sub $21,$31,$0
nop
nop
bne $31,$21,label67
or $31,$2,$31
jr $31
sh $31,6144($25)
jal label28
div $31,$4
jal label5
sub $21,$31,$0
bne $21,$31,label93
nop

jal start
label71:
nop
mflo $31
lh $31,6146($25)
and $31,$31,$4
lb $31,6145($25)
lh $31,6146($25)
mult $31,$5
nop
lui $31,7
lui $31,1
mfhi $31
lw $25,0($0)
lh $31,6146($25)
multu $31,$5
sub $31,$31,$0
multu $8,$31
andi $31,$31,32
ori $31,$31,8
lw $31,6144($25)
lw $25,0($0)
lw $31,6144($25)

jal start
nop
nop
div $31,$6
nop
divu $31,$3
sb $31,6144($25)
mtlo $31
bne $31,$1,label66
nop
jal label42
mthi $31
bne $31,$3,label31
nop
add $31,$7,$31
div $31,$7
add $31,$8,$31
nop
mthi $31
or $31,$2,$31
nop
mult $5,$31

jal label1017
label1017:
nop
sh $31,-12288($31)
jal start
label13:
nop
and $31,$7,$31
nop
add $31,$6,$31
addi $31,$31,4
lb $31,6146($25)
div $31,$20
mfhi $31
divu $31,$2
divu $31,$18
lw $31,6144($25)
mult $31,$17
multu $1,$31
ori $25,$25,8
nop
lh $31,6146($25)
mfhi $31
mfhi $31

jal start
label12:
nop
mthi $31
divu $31,$15
lui $31,9
sb $31,6146($25)
mthi $31
multu $2,$31
sub $25,$25,$22
sh $31,6144($25)
sb $31,6146($25)
nop
lui $25,0
sh $31,6146($25)
sub $31,$7,$31
nop
and $31,$3,$31
lui $31,8
multu $9,$31
nop
multu $6,$31
add $31,$13,$31

jal start
label29:
nop
sh $31,6146($25)
addi $31,$31,4
sw $31,6144($25)
div $31,$12
lw $25,0($0)
lw $31,6144($25)
and $25,$25,$22
nop
sw $31,6144($25)
mtlo $31
lui $31,4
nop
ori $31,$31,32
mthi $31
mflo $31
andi $31,$31,12
lui $31,9
multu $3,$31
mtlo $31
mthi $31

jal start
nop
sub $31,$13,$31
nop
lb $31,6145($25)
andi $31,$31,16
nop
bne $31,$1,label30
mtlo $31
divu $31,$19
beq $31,$5,label50
nop
add $25,$25,$22
nop
lw $31,6144($25)
lb $25,0($0)
nop
nop
lh $31,6146($25)
nop
jal label19
sltu $31,$1,$31

jal start
label28:
nop
divu $31,$13
nop
lh $31,6146($25)
multu $15,$31
andi $31,$31,36
lh $31,6146($25)
nop
mfhi $31
mflo $31
lb $31,6147($25)
lh $25,0($0)
lw $31,6144($25)
lh $25,0($0)
lw $31,6144($25)
mflo $31
lh $25,0($0)
nop
sw $31,6144($25)
addi $31,$31,20
nop

jal start
label98:
nop
nop
or $31,$7,$31
andi $31,$31,0
andi $31,$31,8
andi $31,$31,16
nop
multu $31,$10
sltu $31,$31,$14
and $31,$8,$31
add $31,$11,$31
andi $31,$31,0
andi $25,$25,0
lb $31,6145($25)
mflo $31
mflo $31
div $31,$12
lw $31,6144($25)
nop
div $31,$11
mthi $31

jal start
label59:
nop
and $31,$12,$31
mult $0,$31
lui $31,3
lb $31,6145($25)
lh $31,6146($25)
divu $31,$14
mfhi $31
addi $25,$25,4
sw $31,6144($25)
and $25,$25,$22
nop
lb $31,6147($25)
mthi $31
mtlo $31
add $25,$25,$22
nop
sw $31,6144($25)
mflo $31
lh $31,6144($25)
multu $8,$31

jal start
label61:
nop
divu $31,$17
lb $31,6147($25)
mthi $31
multu $31,$18
lb $25,0($0)
sh $31,6146($25)
divu $31,$11
mtlo $31
and $31,$19,$31
and $25,$25,$22
lh $31,6144($25)
add $31,$16,$31
nop
nop
divu $31,$19
lh $25,0($0)
nop
sw $31,6144($25)
ori $25,$25,4
lb $31,6145($25)

jal start
label43:
nop
sb $31,6147($25)
multu $8,$31
sltu $31,$4,$31
andi $31,$31,28
lh $31,6144($25)
mflo $31
mthi $31
or $31,$12,$31
sub $31,$31,$9
lb $31,6147($25)
addi $31,$31,12
nop
nop
and $31,$31,$6
lui $31,8
mfhi $31
ori $31,$31,8
divu $31,$15
lw $25,0($0)
sb $31,6145($25)

jal start
label54:
nop
andi $31,$31,20
mult $31,$13
divu $31,$9
nop
andi $31,$31,16
and $25,$25,$22
nop
sb $31,6145($25)
addi $31,$31,20
addi $31,$31,36
mflo $31
div $31,$5
add $31,$31,$15
andi $31,$31,24
andi $31,$31,12
and $31,$31,$3
lui $25,0
nop
lw $31,6144($25)
div $31,$11

jal start
label0:
nop
mfhi $31
addi $31,$31,20
mthi $31
mult $31,$7
lui $31,9
lh $25,0($0)
nop
lb $31,6144($25)
nop
sh $31,6146($25)
multu $31,$16
div $31,$12
sub $31,$1,$31
sw $31,6144($25)
andi $31,$31,4
slt $31,$14,$31
mthi $31
mtlo $31
multu $31,$13
mflo $31

jal start
label52:
nop
divu $31,$9
mult $31,$4
or $31,$31,$11
sub $25,$25,$22
nop
sh $31,6144($25)
mflo $31
mfhi $31
add $31,$14,$31
lui $31,9
div $31,$13
addi $31,$31,20
lui $31,3
nop
sltu $31,$31,$0
lui $31,8
mthi $31
sh $31,6146($25)
lb $25,0($0)
lh $31,6146($25)

jal start
label10:
nop
andi $31,$31,28
ori $31,$31,12
multu $18,$31
sb $31,6147($25)
andi $31,$31,16
mfhi $31
nop
div $31,$10
sltu $31,$3,$31
add $31,$31,$0
divu $31,$4
lb $25,0($0)
sw $31,6144($25)
add $31,$4,$31
addi $31,$31,0
addi $25,$25,4
nop
sh $31,6144($25)
mfhi $31
andi $31,$31,36

jal start
label73:
nop
mthi $31
sh $31,6146($25)
lh $31,6144($25)
or $31,$31,$9
mult $31,$8
lw $31,6144($25)
mthi $31
ori $25,$25,8
sh $31,6146($25)
mult $31,$18
or $31,$31,$16
lh $31,6146($25)
slt $31,$17,$31
nop
andi $31,$31,20
nop
lh $31,6146($25)
nop
mthi $31
sub $31,$31,$0

jal start
label18:
nop
sb $31,6144($25)
lui $31,9
mtlo $31
or $31,$31,$14
lb $31,6145($25)
add $31,$11,$31
ori $31,$31,0
div $31,$10
nop
ori $25,$25,0
sw $31,6144($25)
nop
addi $31,$31,20
andi $25,$25,12
lw $31,6144($25)
lui $31,2
and $25,$25,$22
lw $31,6144($25)
nop
sub $31,$2,$31

jal label1018
nop
label1019:
beq $31,$31,label82
nop
label1018:
jal label1019
nop
jal start
label37:
nop
nop
multu $1,$31
sw $31,6144($25)
nop
add $31,$2,$31
nop
nop
nop
mtlo $31
or $31,$1,$31
lui $25,0
nop
lw $31,6144($25)
nop

jal start
label55:
nop
lb $31,6147($25)
mthi $31
lb $25,0($0)
mthi $25
mfhi $25
lh $31,6146($25)
lb $31,6147($25)
mflo $31
mult $5,$31
and $25,$25,$22
nop
sw $31,6144($25)
lui $31,5
mflo $31
lui $31,3
sh $31,6144($25)
addi $31,$31,12
nop
lh $31,6144($25)
divu $31,$6

jal start
label69:
nop
sltu $31,$0,$31
mult $5,$31
mthi $31
andi $31,$31,8
nop
sb $31,6144($25)
nop
sb $31,6145($25)
lb $31,6147($25)
slt $31,$31,$15
divu $31,$1
add $25,$25,$22
lh $31,6144($25)
mult $7,$31
lb $31,6146($25)
div $31,$4
addi $31,$31,24
lw $31,6144($25)
nop
and $31,$19,$31

jal start
label50:
nop
lb $31,6144($25)
nop
lb $31,6146($25)
lb $31,6147($25)
lw $31,6144($25)
sltu $31,$31,$1
addi $31,$31,4
nop
mthi $31
add $31,$8,$31
or $25,$25,$22
mthi $25
mfhi $25
lb $31,6147($25)
lb $31,6145($25)
slt $31,$31,$15
or $31,$31,$3
mfhi $31
ori $31,$31,16
slt $31,$19,$31

jal start
label58:
nop
mult $31,$3
mfhi $31
andi $31,$31,20
lui $25,0
nop
sb $31,6146($25)
sub $31,$31,$5
add $25,$25,$22
lb $31,6145($25)
div $31,$10
div $31,$8
addi $31,$31,32
add $25,$25,$22
lb $31,6145($25)
lw $25,0($0)
lw $31,6144($25)
lh $31,6144($25)
nop
mfhi $31
add $31,$0,$31

jal start
label93:
nop
mflo $31
or $31,$31,$9
addi $31,$31,16
slt $31,$31,$2
ori $25,$25,4
sb $31,6146($25)
slt $31,$18,$31
and $31,$31,$2
multu $31,$8
slt $31,$2,$31
mflo $31
lh $31,6144($25)
and $25,$25,$22
nop
lh $31,6144($25)
mflo $31
multu $2,$31
multu $14,$31
add $31,$31,$8
lui $31,1

jal start
label64:
nop
sub $31,$12,$31
nop
lw $31,6144($25)
addi $31,$31,36
mtlo $31
nop
nop
lh $31,6144($25)
mult $7,$31
multu $31,$2
lh $31,6146($25)
addi $31,$31,0
mthi $31
lw $31,6144($25)
mult $7,$31
sub $25,$25,$22
lw $31,6144($25)
andi $31,$31,28
ori $31,$31,32
nop

jal start
label7:
nop
lw $31,6144($25)
mthi $31
div $31,$11
div $31,$18
lui $31,4
addi $25,$25,4
mthi $25
mfhi $25
lh $31,6144($25)
andi $25,$25,0
lw $31,6144($25)
nop
add $31,$17,$31
sw $31,6144($25)
addi $31,$31,16
mfhi $31
slt $31,$2,$31
lw $31,6144($25)
andi $31,$31,20
lb $31,6145($25)

jal label1020
label1020:
nop
lw $31,-12288($31)
jal start
label75:
nop
nop
lw $31,6144($25)
andi $31,$31,36
addi $31,$31,20
slt $31,$31,$5
lw $25,0($0)
nop
sh $31,6146($25)
andi $31,$31,20
nop
mult $13,$31
and $25,$25,$22
mthi $25
mfhi $25
lb $31,6147($25)
add $31,$6,$31
nop

jal start
label23:
nop
mtlo $31
sb $31,6147($25)
nop
nop
sb $31,6146($25)
mflo $31
mfhi $31
div $31,$11
andi $25,$25,12
nop
lh $31,6146($25)
andi $25,$25,4
lw $31,6144($25)
andi $31,$31,24
lh $25,0($0)
nop
lh $31,6144($25)
divu $31,$9
nop
mtlo $31

jal start
nop
addi $31,$31,16
multu $3,$31
lh $31,6144($25)
sh $31,6144($25)
jal label41
sltu $31,$31,$5
sb $31,6146($25)
lw $31,6144($25)
addi $31,$31,16
sub $31,$31,$6
lui $31,3
or $25,$25,$22
nop
lh $31,6144($25)
mtlo $31
jal label18
add $31,$5,$31
beq $31,$0,label14
or $31,$31,$10
addi $31,$31,4

jal start
label68:
nop
mthi $31
add $31,$31,$12
lb $31,6145($25)
nop
sub $31,$31,$1
sltu $31,$12,$31
mthi $31
lw $31,6144($25)
mfhi $31
lui $31,3
divu $31,$6
mfhi $31
and $31,$31,$14
mult $3,$31
sw $31,6144($25)
div $31,$9
lb $31,6147($25)
add $25,$25,$22
sh $31,6144($25)
andi $31,$31,28

jal start
nop
add $31,$1,$31
sub $21,$31,$0
nop
beq $31,$21,label71
andi $21,$31,65535
nop
nop
bne $21,$31,label13
mthi $31
addi $31,$31,32
mult $31,$7
add $31,$31,$8
beq $31,$8,label32
nop
addi $31,$31,24
divu $31,$8
mult $1,$31
div $31,$8
mthi $31
mtlo $31

jal start
label48:
nop
andi $31,$31,28
andi $31,$31,36
addi $31,$31,28
lh $31,6144($25)
or $31,$2,$31
mult $4,$31
add $25,$25,$22
sb $31,6146($25)
andi $31,$31,4
lui $31,2
addi $25,$25,4
nop
nop
lh $31,6144($25)
andi $31,$31,12
mflo $31
andi $31,$31,20
and $31,$31,$19
sub $31,$31,$12
lui $31,4

jal start
label72:
nop
div $31,$7
lw $31,6144($25)
sb $31,6145($25)
nop
andi $31,$31,20
div $31,$9
and $31,$31,$6
div $31,$4
sw $31,6144($25)
lh $31,6146($25)
and $31,$14,$31
mfhi $31
andi $31,$31,32
mthi $31
mtlo $31
slt $31,$31,$13
nop
andi $31,$31,0
nop
nop

jal start
nop
ori $31,$31,12
sh $31,6146($25)
mult $31,$6
jal label74
mtlo $31
addi $31,$31,12
mthi $31
mthi $31
ori $31,$31,0
mfhi $31
nop
nop
jr $31
or $21,$31,$0
nop
nop
beq $21,$31,label32
lw $25,0($0)
nop
sb $31,6147($25)

jal start
label22:
nop
mflo $31
ori $31,$31,24
div $31,$17
nop
addi $31,$31,8
andi $31,$31,24
divu $31,$20
mthi $31
divu $31,$12
lw $31,6144($25)
mflo $31
divu $31,$15
sub $25,$25,$22
sw $31,6144($25)
andi $31,$31,36
or $31,$9,$31
ori $25,$25,8
lh $31,6146($25)
mult $14,$31
or $31,$31,$16

jal start
label11:
nop
and $31,$14,$31
andi $31,$31,32
sb $31,6144($25)
nop
sltu $31,$31,$13
andi $31,$31,20
mult $31,$13
lw $31,6144($25)
lui $31,5
divu $31,$15
slt $31,$3,$31
lh $31,6146($25)
lui $31,2
addi $31,$31,28
div $31,$17
multu $31,$15
lb $25,0($0)
lw $31,6144($25)
sltu $31,$31,$10
mfhi $31

jal start
label92:
nop
ori $31,$31,8
lui $31,0
lb $31,6144($25)
mthi $31
addi $25,$25,4
nop
lw $31,6144($25)
ori $31,$31,32
mult $31,$1
lui $31,8
mfhi $31
mult $31,$2
nop
sb $31,6145($25)
divu $31,$1
div $31,$2
and $31,$31,$13
addi $25,$25,4
nop
lh $31,6146($25)

jal start
label26:
nop
lui $31,6
lw $31,6144($25)
multu $31,$10
mult $11,$31
lui $31,3
andi $31,$31,12
lui $31,0
mtlo $31
nop
multu $31,$8
addi $31,$31,8
ori $31,$31,8
nop
mflo $31
mult $12,$31
div $31,$11
lh $31,6146($25)
div $31,$14
add $25,$25,$22
lw $31,6144($25)

jal start
label35:
nop
lw $31,6144($25)
addi $31,$31,16
mfhi $31
andi $31,$31,12
add $31,$31,$9
nop
addi $31,$31,28
lui $25,0
lb $31,6144($25)
add $25,$25,$22
nop
lh $31,6146($25)
divu $31,$10
nop
and $31,$4,$31
lui $25,0
nop
lw $31,6144($25)
or $25,$25,$22
sh $31,6146($25)

jal start
label65:
nop
andi $31,$31,8
mtlo $31
div $31,$3
nop
lw $31,6144($25)
ori $31,$31,28
andi $31,$31,4
sub $25,$25,$22
lb $31,6147($25)
mtlo $31
div $31,$17
sub $31,$31,$3
lh $25,0($0)
lb $31,6147($25)
nop
mflo $31
and $31,$6,$31
nop
multu $9,$31
lui $31,3

jal start
nop
mflo $31
slt $31,$31,$7
lui $31,8
nop
andi $31,$31,32
sh $31,6144($25)
nop
andi $25,$25,0
sb $31,6147($25)
lb $25,0($0)
nop
lh $31,6146($25)
nop
mflo $31
lh $31,6146($25)
nop
lw $31,6144($25)
beq $31,$14,label21
addi $31,$31,32
lh $31,6146($25)

jal label1021
label1021:
nop
sh $31,-12286($31)
jal start
label36:
nop
lb $31,6145($25)
mtlo $31
mfhi $31
nop
mtlo $31
mflo $31
mfhi $31
lh $31,6144($25)
add $31,$31,$7
add $31,$11,$31
multu $1,$31
lb $31,6147($25)
mult $31,$17
sh $31,6146($25)
or $31,$5,$31
mtlo $31
mult $13,$31

jal start
label95:
nop
lw $31,6144($25)
div $31,$9
sh $31,6146($25)
nop
ori $25,$25,12
nop
lh $31,6144($25)
add $31,$0,$31
lb $25,0($0)
nop
sh $31,6144($25)
lui $31,4
multu $3,$31
multu $31,$10
ori $31,$31,8
lb $31,6145($25)
addi $25,$25,4
lh $31,6146($25)
nop
mflo $31

jal start
label34:
nop
mtlo $31
addi $31,$31,16
nop
mfhi $31
mthi $31
lui $31,4
addi $31,$31,4
lui $31,3
lh $25,0($0)
nop
nop
lb $31,6147($25)
lb $31,6147($25)
lw $25,0($0)
lh $31,6144($25)
add $25,$25,$22
nop
nop
lb $31,6146($25)
div $31,$5

jal start
label20:
nop
mfhi $31
andi $31,$31,32
sltu $31,$31,$11
andi $31,$31,28
andi $31,$31,36
and $31,$4,$31
lw $31,6144($25)
div $31,$20
or $31,$10,$31
mfhi $31
mflo $31
nop
lh $31,6144($25)
multu $31,$7
mult $12,$31
lui $31,1
lui $31,1
div $31,$13
andi $31,$31,4
nop

jal start
label88:
nop
mthi $31
slt $31,$31,$9
addi $31,$31,16
addi $31,$31,20
mult $31,$14
mthi $31
nop
mtlo $31
mtlo $31
andi $31,$31,24
add $25,$25,$22
nop
nop
lb $31,6146($25)
multu $1,$31
mult $13,$31
lw $25,0($0)
lb $31,6146($25)
sh $31,6144($25)
multu $31,$14

jal start
nop
sub $31,$31,$9
mtlo $31
mtlo $31
add $25,$25,$22
nop
lb $31,6147($25)
mflo $31
mflo $31
jal label1
or $31,$4,$31
jal label24
slt $31,$7,$31
divu $31,$12
andi $21,$31,65535
bne $31,$21,label57
sltu $31,$31,$10
slt $31,$13,$31
divu $31,$5
beq $31,$4,label35
add $31,$19,$31

jal start
label74:
nop
mult $11,$31
sub $31,$18,$31
or $31,$9,$31
lw $31,6144($25)
nop
mtlo $31
multu $7,$31
mthi $31
andi $31,$31,32
add $31,$19,$31
add $25,$25,$22
lw $31,6144($25)
sub $31,$31,$5
and $31,$31,$6
sw $31,6144($25)
multu $31,$17
mthi $31
lui $31,9
mflo $31
mult $6,$31

jal start
label31:
nop
mtlo $31
sh $31,6146($25)
addi $31,$31,16
divu $31,$20
or $25,$25,$22
nop
lb $31,6146($25)
addi $31,$31,28
or $31,$31,$11
nop
mflo $31
lb $31,6144($25)
mfhi $31
mult $19,$31
nop
mfhi $31
sub $31,$31,$3
and $31,$6,$31
nop
sub $31,$4,$31

jal start
label45:
nop
divu $31,$17
lb $31,6144($25)
mflo $31
or $31,$31,$18
or $25,$25,$22
nop
lb $31,6144($25)
sltu $31,$31,$11
mthi $31
andi $25,$25,8
sh $31,6144($25)
nop
nop
sb $31,6147($25)
divu $31,$2
slt $31,$31,$8
mflo $31
lw $31,6144($25)
mult $31,$10
divu $31,$6

jal start
label27:
nop
addi $31,$31,16
slt $31,$31,$7
divu $31,$4
div $31,$13
lh $31,6146($25)
ori $31,$31,4
mflo $31
add $31,$31,$16
nop
mtlo $31
lw $31,6144($25)
lb $31,6144($25)
addi $25,$25,4
nop
lb $31,6144($25)
sltu $31,$31,$15
andi $31,$31,24
addi $31,$31,24
or $31,$13,$31
lui $31,7

jal start
label42:
nop
addi $31,$31,12
sltu $31,$31,$14
and $31,$10,$31
multu $4,$31
addi $31,$31,16
nop
or $25,$25,$22
lw $31,6144($25)
sub $31,$31,$10
sltu $31,$31,$14
or $25,$25,$22
sb $31,6147($25)
lh $31,6144($25)
sb $31,6147($25)
and $31,$31,$18
ori $31,$31,16
divu $31,$1
lb $31,6144($25)
divu $31,$3
mthi $31

jal start
label94:
nop
mflo $31
slt $31,$31,$15
nop
nop
slt $31,$31,$7
addi $31,$31,24
lw $31,6144($25)
mflo $31
lh $31,6144($25)
sb $31,6145($25)
div $31,$1
lui $31,4
multu $31,$2
addi $31,$31,36
and $31,$15,$31
add $31,$14,$31
addi $31,$31,12
addi $31,$31,36
mfhi $31
mflo $31

jal start
label30:
nop
div $31,$6
or $31,$31,$19
slt $31,$31,$12
slt $31,$31,$12
add $25,$25,$22
sw $31,6144($25)
nop
sb $31,6145($25)
or $31,$31,$10
div $31,$12
multu $31,$16
lui $31,7
sub $31,$31,$11
divu $31,$16
multu $1,$31
sh $31,6144($25)
lui $25,0
nop
sh $31,6146($25)
div $31,$3

jal start
label81:
nop
sub $31,$9,$31
slt $31,$14,$31
divu $31,$10
sltu $31,$31,$14
div $31,$2
mthi $31
divu $31,$10
lw $31,6144($25)
lh $31,6144($25)
divu $31,$11
and $31,$16,$31
lw $25,0($0)
mthi $25
mfhi $25
lh $31,6144($25)
divu $31,$4
nop
mtlo $31
slt $31,$31,$1
sub $31,$19,$31

jal start
label56:
nop
add $31,$17,$31
lui $31,2
nop
mflo $31
addi $31,$31,12
lui $31,6
lw $31,6144($25)
mflo $31
div $31,$19
sltu $31,$31,$0
ori $31,$31,16
mtlo $31
nop
mtlo $31
lb $25,0($0)
nop
lb $31,6147($25)
sw $31,6144($25)
mtlo $31
lui $31,3

jal start
label90:
nop
nop
ori $31,$31,32
lh $31,6144($25)
addi $31,$31,24
nop
lb $31,6144($25)
lh $31,6144($25)
mtlo $31
and $31,$14,$31
nop
div $31,$1
lb $31,6147($25)
mult $31,$13
mflo $31
mthi $31
sub $31,$31,$10
mtlo $31
sltu $31,$13,$31
mfhi $31
and $31,$18,$31

jal start
nop
sh $31,6144($25)
lw $31,6144($25)
mfhi $31
addi $31,$31,12
nop
addi $31,$31,0
nop
andi $31,$31,36
lh $31,6144($25)
lui $31,9
div $31,$9
lui $25,0
nop
nop
lh $31,6144($25)
sub $31,$31,$2
jal label37
nop
jal label43
andi $31,$31,28

jal start
label66:
nop
add $31,$12,$31
and $31,$31,$17
lh $31,6144($25)
lh $31,6144($25)
mthi $31
addi $31,$31,8
or $31,$3,$31
andi $25,$25,4
nop
lh $31,6144($25)
addi $31,$31,8
div $31,$9
add $31,$31,$8
ori $31,$31,16
sub $31,$31,$10
addi $31,$31,16
lui $31,6
lh $25,0($0)
nop
lb $31,6144($25)

jal start
label96:
nop
lui $31,8
nop
nop
lb $31,6144($25)
sub $31,$31,$0
div $31,$3
divu $31,$2
div $31,$11
div $31,$8
nop
sw $31,6144($25)
lui $25,0
sb $31,6146($25)
slt $31,$31,$8
lw $25,0($0)
sh $31,6146($25)
ori $31,$31,0
mtlo $31
lh $31,6144($25)
ori $31,$31,0

jal start
label17:
nop
sltu $31,$13,$31
lui $31,0
slt $31,$1,$31
lui $31,5
nop
mult $4,$31
lb $25,0($0)
lh $31,6144($25)
div $31,$9
lui $25,0
mthi $25
mfhi $25
lb $31,6144($25)
multu $31,$18
lb $31,6146($25)
mtlo $31
mfhi $31
lui $25,0
lw $31,6144($25)
or $31,$31,$9

jal start
label89:
nop
mtlo $31
lw $31,6144($25)
lui $31,6
divu $31,$13
nop
sb $31,6146($25)
lw $25,0($0)
nop
nop
lb $31,6147($25)
nop
lui $31,7
or $31,$31,$1
addi $31,$31,4
and $25,$25,$22
lh $31,6144($25)
div $31,$5
multu $12,$31
sh $31,6146($25)
andi $31,$31,12

jal start
label4:
nop
sw $31,6144($25)
sb $31,6145($25)
addi $31,$31,0
ori $31,$31,16
andi $31,$31,16
lh $25,0($0)
nop
sh $31,6144($25)
multu $6,$31
mult $4,$31
multu $31,$19
nop
and $31,$31,$4
mflo $31
mflo $31
sh $31,6144($25)
mflo $31
divu $31,$1
addi $31,$31,36
addi $31,$31,32

jal label1022
nop
label1023:
jr $31
nop
nop
label1022:
jal label1023
nop
jal start
label91:
nop
lui $31,7
add $31,$16,$31
nop
divu $31,$3
lb $31,6144($25)
mult $31,$13
lui $31,7
andi $31,$31,4
add $31,$31,$2
mult $31,$8
mtlo $31
nop
mthi $31

jal start
label33:
nop
lw $31,6144($25)
mflo $31
andi $31,$31,32
or $31,$31,$0
multu $13,$31
add $31,$31,$17
lw $31,6144($25)
div $31,$15
mult $31,$0
multu $31,$2
sh $31,6146($25)
slt $31,$17,$31
multu $8,$31
divu $31,$15
mult $31,$8
mult $31,$8
sltu $31,$13,$31
mult $31,$15
lh $31,6144($25)
sh $31,6146($25)

jal start
nop
sh $31,6144($25)
nop
add $31,$31,$1
jal label58
lw $31,4($0)
nop
nop
jr $31
ori $21,$31,0
bne $31,$21,label69
multu $1,$31
jal label23
ori $21,$31,0
beq $31,$21,label82
multu $8,$31
div $31,$6
addi $31,$31,32
addi $31,$31,12
mthi $31
nop


test_end:
beq  $0, $0, test_end
nop