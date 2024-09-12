#....................ANS to 3 NO.........................

# ........................For Normal Distribution.....................
set.seed(123)
Sample_size = 1000
mean = 50
sd  = 5
Normal_Sample = rnorm(Sample_size,mean,sd)

#Plot Density Curve
plot(density(Normal_Sample),main = "Normal Distribution", col = "blue",lwd = 2)

#Plot Histogram
hist(Normal_Sample, col =rgb(0.2,0.5,0.2,0.5),add = TRUE)

#Plot CDF Curve
plot(ecdf(Normal_Sample),col = "red",lwd = 2, add = TRUE, verticals = TRUE)


#..............For Binomial Distributions.............
set.seed(123)
Sample_size = 1000
n = 50
p = 0.4
binomial_samples = rbinom(Sample_size,n,p)

#Plot Density Curve
plot(density(binomial_samples),main = "Binimial Distribution", col = "blue",lwd =2)

#Plot Histogram
hist(binomial_samples,col = rgb(0.2,0.5,0.2,0.5), add = TRUE)

#Plot CDF curve
plot(ecdf(binomial_samples),col = "red",lwd = 2, add = TRUE, verticals = TRUE)


#...........................For Poisson Distribution.................
set.seed(123)
Sample_size = 1000
m = 10
poison_sample = rpois(Sample_size,m)

#Plot Density Curve..
plot(density(poison_sample),main = "Poisson Distribution",col = "blue", lwd = 2)

#Plot Histogram
hist(poison_sample, col = rgb(0.2,0.5,0.2,0.5), add = TRUE)

#Plot CDF Curve
plot(ecdf(poison_sample),col= "red",lwd = 2, add = TRUE, verticals = TRUE)





