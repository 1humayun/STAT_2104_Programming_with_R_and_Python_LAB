calculate_stats <- function(data) {
   mean <- mean(data)
   median <- median(data)
   mode <- mode(data)
   sd <- sd(data)
   skew <- skewness(data)
   kurt <- kurtosis(data)
   
   cat("Mean:", mean, "\n")
   cat("Median:", median, "\n")
   cat("Mode:", mode, "\n")
   cat("Standard Deviation:", sd, "\n")
   cat("Skewness:", skew, "\n")
   cat("Kurtosis:", kurt, "\n")
}

# Generate 1st 50 natural numbers
data <- 1:50

# Calculate statistics in R
calculate_stats(data)
