import numpy as np
import pandas as pd
import statistics
from scipy.stats import skew, kurtosis, mode as scipy_mode

# Generate 50 random numbers from each distribution
normal_data = np.random.normal(loc=20, scale=5, size=50)
exponential_data = np.random.exponential(scale=1/20, size=50)
uniform_data = np.random.uniform(low=0, high=10, size=50)

# Create a DataFrame
df = pd.DataFrame({'Normal': normal_data, 'Exponential': exponential_data, 'Uniform': uniform_data})

# (ii) Show column two and row six
print("Column two (Exponential):\n", df['Exponential'])
print("Row six:\n", df.iloc[5])

# (iii) Calculate five number summaries
five_number_summaries = {
    'Normal': np.quantile(normal_data, [0, 0.25, 0.5, 0.75, 1]),
    'Exponential': np.quantile(exponential_data, [0, 0.25, 0.5, 0.75, 1]),
    'Uniform': np.quantile(uniform_data, [0, 0.25, 0.5, 0.75, 1])
}

for distribution, summary in five_number_summaries.items():
    print(f"\nFive number summary for {distribution}:")
    print(summary)

# (iv) Calculate mean, median, mode, skewness, and kurtosis
def calculate_stats(data):
    mean = np.mean(data)
    median = np.median(data)
    
    try:
        mode_value = scipy_mode(data).mode[0]  # Handle mode using scipy to avoid errors
    except:
        mode_value = "No unique mode"
    
    skewness = skew(data)
    kurt = kurtosis(data)

    return mean, median, mode_value, skewness, kurt

for distribution in df.columns:
    stats = calculate_stats(df[distribution])
    print(f"\nStatistics for {distribution}:")
    print("Mean:", stats[0])
    print("Median:", stats[1])
    print("Mode:", stats[2])
    print("Skewness:", stats[3])
    print("Kurtosis:", stats[4])
