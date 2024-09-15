# Get the total marks from the user
total_marks <- as.numeric(readline("Enter the total marks: "))

# Use nested if conditions to assign the grade
if (total_marks < 40) {
   grade <- "F"
} else if (total_marks < 45) {
   grade <- "D"
} else if (total_marks < 50) {
   grade <- "C"
} else if (total_marks < 55) {
   grade <- "C+"
} else if (total_marks < 60) {
   grade <- "B-"
} else if (total_marks < 65) {
   grade <- "B"
} else if (total_marks < 70) {
   grade <- "B+"
} else if (total_marks < 75) {
   grade <- "A-"
} else if (total_marks < 80) {
   grade <- "A"
} else {
   grade <- "A+"
}

# Print the grade
cat("The grade is:", grade, "\n")
