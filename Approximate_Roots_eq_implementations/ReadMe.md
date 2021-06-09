# Finding Approximate Roots methods Implementation
Matlab implementations for finding approximate roots methods. A Solution.m file will test each of the method implementations. 

The solution will output the approximate root and loop until convergence. 

## Solution.m
Some solutions took longer to converge than others. This is a sample of solution which converge in a shorter time. 

```
Newton
n = 0
x:
   1.411764705882353
fx:
   0.917565642173825

n = 1
x:
   1.369336470588235
fx:
   0.011148119412448

n = 2
x:
   1.368808188617532
fx:
     1.704487074950700e-06

n = 3
x:
   1.368808107821375
fx:
     3.986285539884369e-14

n = 4
x:
   1.368808107821373
fx:
     2.180307843651351e-29

convergence
Secant
n = 0
a:
     1
fa:
    -7

n = 1
a:
     2
fa:
    16

n = 2
x:
   1.304347826086957
f(x):
  -1.334757951836936

n = 3
x:
   1.376053620391998
f(x):
   0.153173294866538

n = 4
x:
   1.368671953531342
f(x):
  -0.002872216675836

n = 5
x:
   1.368807822525221
f(x):
    -6.018646870873179e-06

n = 6
x:
   1.368808107832617
f(x):
     2.372038155346940e-10
     
n = 7
x:
   1.368808107821373
f(x):
    -1.958851861432386e-17
convergence
```

# Conclusion
The method with the least number of steps to converge is the Newton's method with 5 steps. The method with the most steps is the Bisection method with 48 steps. 
The rest follow in order of most to fewer steps: Falsi (22 steps), Modified Falsi (9 steps), Secant (8 steps). Bisection method suffers from being the simplest method to implement. Newton's method proves to be the best for this example, the take away is we have to know the deriviation of the equation beforehand to implement it.
