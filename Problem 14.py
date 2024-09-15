def fibonacci_series(n):
    fib_series = [0, 1]
    while len(fib_series) < n:
        fib_series.append(fib_series[-1] + fib_series[-2])
    return fib_series

# Generate the Fibonacci series up to 12 terms (as shown in the problem)
n = 12
fib_sequence = fibonacci_series(n)
print(f"First {n} terms of Fibonacci series: {fib_sequence}")
