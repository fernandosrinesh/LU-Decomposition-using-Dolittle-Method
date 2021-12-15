**Project 1 Report: LU Decomposition using Dolittle Method**



The process has been discussed step by step and in order to find the Ax = b here I have used both Doolittle’s factorization and forward and back substitution algorithms.

Step 1: First of all, need to assign the matrix A and vector b.

` `Here I took 3X3 size matrix.

Step 2: This step where I apply Doolittle’s LU factorization. A = L \* U. Here I initialize the L and U to be nXn matrix with all zeros.

L IS lower triangular and U is upper triangular.

Then, Perform the Doolittle’s LU factorization and generate the output for the L & U.












And finally, I applied the det(A). Here det(A) function returns the determinant of the square matrix A.

Generated outputs for the Lower matrix, Upper matrix and det(A) are as follows, 


Step 3: In this step I have used the forward substitution algorithm to solve the L \* y = b

First of all I made y as a column vector with the length n with 0 entries. Then I applied the forward substitution on y and generated the output for the y.

Step 4: Back substitution has been used in this step to solve U \* x = y. Here I initialized x as a column vector the same way that I have applied for the y.


After applying all of the above steps, I made the output for the Ax = b.











'I certify that this assignment is entirely my own work, performed independently and without any help from the sources which are not allowed.'
