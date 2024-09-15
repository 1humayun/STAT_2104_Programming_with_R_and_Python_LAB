# Get input from the user
a = float(input("Enter the first number (a): "))
b = float(input("Enter the second number (b): "))
c = float(input("Enter the third number (c): "))

# Use nested if conditions to find the greatest number
if a > b:
  if a > c:
    greatest = a
  else:
    greatest = c
else:
  if b > c:
    greatest = b
  else:
    greatest = c

# Print the greatest number
print("The greatest number is:", greatest)