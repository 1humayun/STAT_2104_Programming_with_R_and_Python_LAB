def calculate_sum_of_cubes_python(n):
  sum_of_cubes = sum(range(1, n + 1)) ** 3
  return sum_of_cubes

def calculate_product_of_reciprocals_python(n):
  pro_of_recip = 1
  for i in range(1, n + 1):
    pro_of_recip *= 1 / (i ** 3)
  return pro_of_recip

n = 99
result1 = calculate_sum_of_cubes_python(n) / (99 ** 3)
result2 = calculate_product_of_reciprocals_python(n)

print("Result 1:", result1)
print("Result 2:", result2)