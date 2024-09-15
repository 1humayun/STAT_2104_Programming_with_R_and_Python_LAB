# Get input from the user
a <- as.numeric(readline("Enter the first number (a): "))
b <- as.numeric(readline("Enter the second number (b): "))
c <- as.numeric(readline("Enter the third number (c): "))

# Use nested if conditions to find the greatest number
if (a > b) {
   if (a > c) {
      greatest <- a
   } else {
      greatest <- c
   }
} else {
   if (b > c) {
      greatest <- b
   } else {
      greatest <- c
   }
}

# Print the greatest number
cat("The greatest number is:", greatest, "\n")