# Create matrices A and B
A <- matrix(c(10, 2, 30, 9, -8, 15, 20, 14, 40), nrow = 3)
B <- matrix(c(8, -2, 25, 12, 10, 46, 1, 18, 6), nrow = 3)

# (i) Find the value in the cell [2,1], [3,2], and [2,3] of the matrix A
A[, 2]
A[3, ]
A[2, 3]

# (ii) Find A+B, A-B, A*B, A/B
A_plus_B <- A + B;A_plus_B
A_minus_B <- A - B;A_minus_B
A_times_B <- A %*% B;A_times_B
A_div_B <- A / B;A_div_B 
A+B
# (iii) Find the transpose, determinant, and inverse of A
A_transpose <- t(A)
A_determinant <- det(A)
A_inverse <- solve(A)

# Show that A^T * A = I
A_transpose_times_A <- A_transpose %*% A
print(A_transpose_times_A)

# (iv) Solve the linear equation Ax = b
b <- c(12, 18, 20)
x <- solve(A, b)
x
# Find the value of the quadratic form x^T * A^-1 * x
quadratic_form <- t(x) %*% A_inverse %*% x;quadratic_form

# (v) Create new matrices C and D
C <- rbind(A, B)
D <- cbind(A, B)

# Print the first column of C and the last column of D
C[, 1]
D[, ncol(D)]
D[,-1]

