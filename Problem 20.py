import numpy as np

# (i) Create a 1-D array with 10 elements set to zero
zeros = np.zeros(10)

# (ii) Create a 1-D array with vowels
vowels = np.array(['a', 'e', 'i', 'o', 'u'])

# (iii) Create a 2-D array with 2 rows and 5 columns filled with 1s
ones = np.ones((2, 5), dtype=int)

# (iv) Create a 2-D array using nested Python lists
myarray = np.array([[2.7, -2, -19],
                   [0, 3.4, 99.9],
                   [10.6, 0, 13]])

# (v) Perform operations on myarray
# (a) Find the transpose
transpose_myarray = myarray.T

# (b) Find the sum of elements in each row and column
row_sum = np.sum(myarray, axis=1)
column_sum = np.sum(myarray, axis=0)

# (c) Find the five number summary
five_number_summary = np.quantile(myarray.flatten(), [0, 0.25, 0.5, 0.75, 1])

print("Zeros array:", zeros)
print("Vowels array:", vowels)
print("Ones array:", ones)
print("Myarray array:", myarray)
print("Transpose of myarray:", transpose_myarray)
print("Row sum:", row_sum)
print("Column sum:", column_sum)
print("Five number summary:", five_number_summary)