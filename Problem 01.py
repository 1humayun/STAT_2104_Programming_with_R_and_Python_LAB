import numpy as np

# Create matrices A and B
A = np.array([[10, 9, 20], [2, -8, 14], [30, 15, 40]])
B = np.array([[8, 12, 1], [-2, 10, 18], [25, 46, 6]])

# (i) Find the value in the cell [2,1], [3,2], and [2,3] of the matrix A
print(A[:, 1])
print(A[2,:])
print(A[1, 2])

# (ii) Find A+B, A-B, A*B, A/B
A_plus_B = A + B
A_minus_B = A - B
A_times_B = np.dot(A, B)
A_div_B = A / B  # Element-wise division

# (iii) Find the transpose, determinant, and inverse of A
A_transpose = np.transpose(A)
A_determinant = np.linalg.det(A)
A_inverse = np.linalg.inv(A)

# Show that A^T * A = I
A_transpose_times_A = np.dot(A_transpose, A)
print(A_transpose_times_A)  # Should be an identity matrix

# (iv) Solve the linear equation Ax = b
b = np.array([12, 18, 20])
x = np.linalg.solve(A, b)

# Find the value of the quadratic form x^T * A^-1 * x
quadratic_form = np.dot(np.transpose(x), np.dot(A_inverse, x))

# (v) Create new matrices C and D
C = np.vstack((A, B))
D = np.hstack((A, B))

# Print the first column of C and the last column of D
print(C[:, 0])
print(D[:, -1])
