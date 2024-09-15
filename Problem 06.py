# Get the total marks from the user
n = float(input("Enter the total marks: "))

# Use nested if conditions to assign the g
if n < 40:
  g = "F"
elif n < 45:
  g = "D"
elif n < 50:
  g = "C"
elif n < 55:
  g = "C+"
elif n < 60:
  g = "B-"
elif n < 65:
  g = "B"
elif n < 70:
  g = "B+"
elif n < 75:
  g = "A-"
elif n < 80:
  g = "A"
else:
  g = "A+"

# Print the grade
print("The grade is:", g)