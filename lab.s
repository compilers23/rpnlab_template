# this code calculates the following expression
#               (j + 5) - (i + 7)
# and puts result to stack

# this will be put in the object file to the special section for variables.
.section .bss

.lcomm i, 8
.lcomm j, 8

.section .text    # .text means - this will go to the program section of the objject file.

.globl _start
_start:

    movq $23, i   # i := 23
    movq $42, j   # j := 42

    # you have got an expression by email
    # instead of the calculation below, how would you calculate
    # the expression you got by email?
    # CHANGE FROM HERE
    pushq j
    pushq $5
    popq  %rax
    popq  %rbx
    addq  %rbx, %rax
    pushq %rax

    pushq i
    pushq $7
    popq  %rax
    popq  %rbx
    addq  %rbx, %rax
    pushq %rax

    popq  %rax
    popq  %rbx
    subq  %rax, %rbx
    pushq %rbx

    # TILL HERE

    # don't change anything below.
    # this takes result of the computation from the top of the stack
    # and exits with that exit status.
    movq (%rsp), %rdi        # assigning result of the computation to i
    movq $60, %rax        # exit() syscall number
    syscall

    # now if you build this code with make
    # and run ./lab
    # then do
    # echo $?
    # you'll get exit status of the program
    # which is the result of this calculation
    # which is 17.
    # when you modify the calculation to calculate your expression
    # you know how to check the result: echo $? to get the exit status
    # of the program.
