calculate_correlation_and_regression <- function(x, y) {
  # Calculate correlation coefficient
  correlation <- cor(x, y)

  # Fit linear regression model
  model <- lm(y ~ x)

  # Extract regression coefficients
  intercept <- coef(model)[1]
  slope <- coef(model)[2]

  # Return correlation and regression equation
  list(correlation = correlation, intercept = intercept, slope = slope)
}

x <- c(80, 100, 120, 140, 160, 180, 200, 220, 240, 260)
y <- c(70, 65, 90, 95, 110, 115, 120, 140, 155, 150)

result <- calculate_correlation_and_regression(x, y)
correlation <- result$correlation
intercept <- result$intercept
slope <- result$slope

print(paste("Correlation coefficient:", correlation))
print(paste("Regression equation: Y = ", intercept, " + ", slope, " * X"))