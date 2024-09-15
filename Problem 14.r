# Function to generate Fibonacci series
fibonacci_series <- function(n) {
  fib_ser <- c(0, 1)
  while (length(fib_ser) < n) {
    fib_ser <- c(fib_ser, fib_ser[length(fib_ser)] + fib_ser[length(fib_ser) - 1])
  }
  return(fib_ser)
}

# Generate the Fibonacci series up to 12 terms (as shown in the problem)
n <- 12
fib_seq <- fibonacci_series(n)
cat("First", n, "terms of Fibonacci series:", fib_seq, "\n")
