# (i) Normal distribution with mean 50 and standard deviation 5
normal_sample <- rnorm(1000, mean = 50, sd = 5)

# (ii) Binomial distribution with n=50 and p=0.4
binomial_sample <- rbinom(1000, size = 50, prob = 0.4)

# (iii) Poisson distribution with mean 10
poisson_sample <- rpois(1000, lambda = 10)

# Plot density curve, histogram, and cumulative distribution function for normal sample
par(mfrow = c(1, 3))
plot(density(normal_sample), main = "Density Curve (Normal)")
hist(normal_sample, main = "Histogram (Normal)")
plot(ecdf(normal_sample), main = "CDF (Normal)")

# Plot density curve, histogram, and cumulative distribution function for binomial sample
par(mfrow = c(1, 3))
plot(density(binomial_sample), main = "Density Curve (Binomial)")
hist(binomial_sample, main = "Histogram (Binomial)")
plot(ecdf(binomial_sample), main = "CDF (Binomial)")

# Plot density curve, histogram, and cumulative distribution function for Poisson sample
par(mfrow = c(1, 3))
plot(density(poisson_sample), main = "Density Curve (Poisson)")
hist(poisson_sample, main = "Histogram (Poisson)")
plot(ecdf(poisson_sample), main = "CDF (Poisson)")

