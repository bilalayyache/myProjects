.data
A:	.word 10     # Length of i
B:	.word 4		 # Length og j

message: .asciiz "Program is complete"
newline: .asciiz "\n"
array:	.word 0:50

.text
	main:
		lw $t6, A				#Loads A into s0
		addi $t6, $t6, -1		#Increment A by 1
		lw $t7, B				#Loads B into s1
		addi $t7, $t7, -1		#Increment B by 1
		
		la $t4, array		#Load address of array into t4
		addi $t0, $zero, 0		# i = 0
		addi $t1, $zero, 0 		# j = 0
		
		loop1:
			blt $t6, $t0, exit	#For(i = 0; i < A; i++)
			addi $t0, $t0, 1	# i++
			li $t1, 0       	# Sets j = 0 after Each itteration
			
			j loop2
			
		loop2:
			blt $t7, $t1, loop1	#for (j = 0 ; j < B; j++)
			
			addi $t2, $t0, -1
			add  $t3, $t2, $t1  #t3 = i + j
			jal  printNumber
			sll  $t5, $t2, 4 	#t5 = i * 16 (provide offset)
			add  $t5, $t5, $t4	#t5 = address of save + offset
			sw 	 $t3, 0($t5)
			
			
			addi $t1, $t1, 1
			j loop2
			
		exit:
	
			li $v0, 4
			la $a0, message
			syscall
	
		li $v0, 10
		syscall           #tells program im done
		
	printNumber:
		li $v0, 1
		add $a0, $t3, $zero
		syscall
		
		li $v0, 4
		la $a0, newline
		syscall
		
		jr $ra
		
