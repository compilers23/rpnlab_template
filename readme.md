

file `a.s` is how my oberon-07 compiler translated `a.mod` to x86 assembly.

you have got an expression to calculate by email.

how would you generate the code?

the last part of the code (which you should not change) will get the result from the top of the stack and call exit() syscall with the result as an exit status.
suffix q (addq, pushq, movq, cmpq) means you work with quadword - 64 bit number.
the code in lab.s is for x86_64 cpu.

instruction for integer multiplication is imulq

so when you'll do

```
make
./lab
echo $?
```

you'll see the result of your calculation.

if you do that without changing anything, you'll get the result: 17
because it calculated  (j + 5) - (i + 7) where i = 23 and j = 42.

change the code to calculate the expression you got by email.
by compiling the lab.s to `lab` executable, and running it, you can check if your calculation is correct by doing `echo $?`.

have fun!

p. s. don't push binaries. only push sources.
