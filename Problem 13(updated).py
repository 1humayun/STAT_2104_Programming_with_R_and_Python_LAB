#..........i. Prime number
def is_prime(n):
    count = 0
    for i in range(0,n):
        if (n%(i+1)) == 0:
            count += 1
    if count>2:
        print("Not Prime!")
    else:
        print("Prime!")


def odd_even(n):
    if n%2 == 0:
        print("Even")
    else:
        print("Odd")


n = int(input("Enter the number: "))
is_prime(n)
odd_even(n)
