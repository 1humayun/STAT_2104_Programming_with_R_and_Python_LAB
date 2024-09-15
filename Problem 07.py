import statistics
from scipy.stats import skew, kurtosis

def calculate_stats_python(data):
  mean = statistics.mean(data)
  median = statistics.median(data)
  mode = statistics.mode(data)
  sd = statistics.stdev(data)
  skewness = skew(data)
  kurtosis_value = kurtosis(data)

  print("Mean:", mean)
  print("Median:", median)
  print("Mode:", mode)
  print("Standard Deviation:", sd)
  print("Skewness:", skewness)
  print("Kurtosis:", kurtosis_value)


# Calculate statistics in Python
data_python = list(range(1, 51))
calculate_stats_python(data_python)