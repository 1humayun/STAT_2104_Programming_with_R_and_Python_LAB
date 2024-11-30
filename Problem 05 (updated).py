# Get input from the user
a = 5
b = 7
c = 3

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
