sum1 = 0
sum2 = 0
for i in range(1,100):
    sum1 += i**3
print(sum1)

for i in range(1,100,2):
    sum2 += 1/i**3
print(sum2)
