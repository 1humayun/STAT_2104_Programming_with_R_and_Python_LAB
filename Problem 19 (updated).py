import numpy as np
import pandas as pd
import statistics as stat
from scipy.stats import skew, kurtosis

norm = np.random.normal(20,5,50)
expo = np.random.exponential(1/20,50)
uni = np.random.uniform(0,10,50)

df = pd.DataFrame({
        "Normal": norm,
        "Exponential": expo,
        "Uniform": uni
    })

#........(ii)...
print(df["Exponential"])
print(df.iloc[6])

#.........(iii)...
summary1 = np.quantile(norm,[0, 0.25, 0.5, 0.75, 1])
print(f"Five number summary for Normal Distribution: {summary1}")
summary2 = np.quantile(expo,[0, 0.25, 0.5, 0.75, 1])
print(f"Five number summary for Exponential Distribution: {summary2}")
summary3 = np.quantile(uni,[0, 0.25, 0.5, 0.75, 1])
print(f"Five number summary for Uniform Distribution: {summary3}")

#........(iv)...
def statistic(data):
    mean = np.mean(data)
    median = np.median(data)
    mode = stat.mode(data)
    skewness = skew(data)
    kurt = kurtosis(data)
    print(f"Mean: {mean}\nMedian: {median}\nMode: {mode}\nSkewness: {skewness}\nKurtosis: {kurt}")

print("\nStatistics for Normal Distribution:")
statistic(norm)
print("\nStatistics for Exponential Distribution:")
statistic(expo)
print("\nStatistics for Uniform Distribution:")
statistic(uni)
