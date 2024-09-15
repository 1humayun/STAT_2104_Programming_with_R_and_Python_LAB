# Create a data frame with the given data
patient.data <- data.frame(
  Patient.ID = 1:10,
  Sex = c("M", "F", "M", "M", "F", "M", "F", "F", "M", "F"),
  Age = c(23, 25, 39, NA, 36, 25, 22, NA, 60, 46),
  Weight = c(56, 48, 60, 65, 54, 57, 45, 50, 54, 53),
  Diabetes = c("Type I", "No", "Type 2", "Type I", "Type 2", "No", "Type I", "No", "Type 2", "Type I"),
  Blood.group = c("O (+ve)", "B (+ve)", "O (+ve)", "AB (+ve)", "O (+ve)", "B (+ve)", "AB (-ve)", "O (-ve)", "A (+ve)", "B (+ve)"),
  Medical.Expense = c(20000, 15000, 30000, 22000, 24000, 10000, 14000, 30000, 40000, 32000)
)

# (i) Display the variable Age and Blood group
print(patient.data[, c("Age", "Blood.group")])

# (ii) Construct a cross table using the variables Age and Blood group
cross_table <- table(patient.data$Age, patient.data$Blood.group)
print(cross_table)

# (iii) Remove the variable "weight" from the data frame and add the variable Age in the existing data frame with name "New.data"
New.data <- patient.data[, -c(4)]
New.data <- cbind(New.data, Age = patient.data$Age)

# (iv) Replace the missing value of age of the patient by its mean and find the five number of summary for age of the patients
mean_age <- mean(patient.data$Age, na.rm = TRUE)
New.data$Age[is.na(New.data$Age)] <- mean_age
summary(New.data$Age)

# (v) Draw two suitable graph for blood group of the patients
library(ggplot2)

# Bar plot
ggplot(patient.data, aes(x = Blood.group)) +
  geom_bar(fill = "skyblue") +
  labs(title = "Distribution of Blood Groups", x = "Blood Group", y = "Count")

# Pie chart
ggplot(patient.data, aes(x = "", fill = Blood.group)) +
  geom_bar(stat = "count") +
  coord_polar(theta = "y", start = 0) +
  labs(title = "Distribution of Blood Groups")