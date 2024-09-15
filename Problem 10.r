# Create a DataFrame from the data
data <- data.frame(
  SI = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
  Height = c(197, 165, 179, 191, 177, 153, 169, 178, 184, 177, 167, 176, 161, 168, 164, 181, 182, 143, 169, 175),
  Weight = c(93, 59, 71, 78, 72, 61, 72, 29, 85, 75, 59, 70, 57, 60, 66, 67, 71, 46, 53, 66),
  Sex = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2)
)

# Function to calculate BMI
calculate_bmi <- function(height, weight) {
  return(weight / ((height / 100) ^ 2))
}

# Using apply function
data$BMI <- apply(data, 1, function(x) calculate_bmi(x['Height'], x['Weight']))

# Display the data
print(data)