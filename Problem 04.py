import pandas as pd
import statsmodels.formula.api as smf

# Create a DataFrame
data = {
    'Y': [1.49, 1.87, 1.86, 2.61, 2.43, 2.44, 3.00, 3.12],
    'x1': [100, 200, 300, 400, 500, 600, 700, 800],
    'x2': [26, 50, 26, 76, 51, 50, 75, 74]
}
df = pd.DataFrame(data)

# (i) Plot y on x1 and x2
import matplotlib.pyplot as plt
plt.scatter(df['x1'], df['Y'])
plt.xlabel('x1')
plt.ylabel('Y')
plt.show()

plt.scatter(df['x2'], df['Y'])
plt.xlabel('x2')
plt.ylabel('Y')
plt.show()

# (ii) Compute correlation coefficients
cor_y_x1 = df['Y'].corr(df['x1'])
cor_y_x2 = df['Y'].corr(df['x2'])
print("Correlation between Y and x1:", cor_y_x1)
print("Correlation between Y and x2:", cor_y_x2)

# (iii) Fit regression model
model = smf.ols(formula='Y ~ x1 + x2', data=df).fit()
print(model.summary())

# (iv) Compute coefficient of determination
r_squared = model.rsquared
print("Coefficient of determination:", r_squared)