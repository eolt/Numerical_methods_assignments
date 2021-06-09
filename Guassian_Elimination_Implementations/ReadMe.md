# Guassian Elimination Implementations 
The implementations are of Guassian Elimination with partial pivoting and GE without partial pivoting. The programs are tested using the matlab files: Practice_1 and Practice_2.

Both files call the initalize_matrix.m file, which generates a 1000 x 1000 matrix of random numbers and a 1000 x 1 matrix of ones. 
The Guassian Elimination finds our constants x for our matrices A and B, so that Ax = B.

The practices will output the mean square and square root errors of calculation in both single and double precison. 

## Practice_1.m
(without Partial Pivot)
```
>> Practice_1
---------Single Precision-----------
Elapsed time is 0.817128 seconds.

mean squared error =    0.0308

square root thereof =    0.1754

---------Double Precision-----------
Elapsed time is 1.028978 seconds.

mean squared error =   1.2557e-20

square root thereof =   1.1206e-10
```

## Practice_2.m
(with Partial Pivot)
```
>> Practice_2
---------Single Precision-----------
Elapsed time is 1.002644 seconds.

mean squared error =   4.3990e-08

square root thereof =   2.0974e-04

---------Double Precision-----------
Elapsed time is 2.538428 seconds.

mean squared error =   5.6280e-26

square root thereof =   2.3723e-13
```
