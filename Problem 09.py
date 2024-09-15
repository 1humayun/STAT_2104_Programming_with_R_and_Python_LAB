import numpy as np
import scipy.stats as stats
import statsmodels.api as sm

def calculate_correlation_and_regression(x, y):
  # Calculate correlation coefficient
  correlation = np.corrcoef(x, y)[0, 1]

  # Add a constant term for the intercept
  x = sm.add_constant(x)

  # Fit linear regression model
  model = sm.OLS(y, x).fit()

  # Extract regression coefficients
  intercept = model.params[0]
  slope = model.params[1]

  return correlation, intercept, slope

x = np.array([80, 100, 120, 140, 160, 180, 200, 220, 240, 260])
y = np.array([70, 65, 90, 95, 110, 115, 120, 140, 155, 150])
correlation, intercept, slope = calculate_correlation_and_regression(x, y)