# Given tuples
tuple1 = (1, 2, 3, 4)
tuple2 = (3, 5, 2, 1)
tuple3 = (2, 2, 3, 1)

# Initialize an empty list to store the sum
element_wise_sum = []

for i in range(len(tuple1)):
    element_wise_sum.append(tuple1[i] + tuple2[i] + tuple3[i])

# Output the result
print("Element-wise sum of the given tuples:", element_wise_sum)
