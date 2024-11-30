first = 0
second = 1
total = 0
while second <= 144:
    total = total + second
    temp = second
    second = first + second
    first = temp
print(total)
    
