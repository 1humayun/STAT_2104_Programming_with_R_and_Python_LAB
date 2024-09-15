# Data
y <- c(1.49, 1.87, 1.86, 2.61, 2.43, 2.44, 3.00, 3.12)
x1 <- c(100, 200, 300, 400, 500, 600, 700, 800)
x2 <- c(26, 50, 26, 76, 51, 50, 75, 74)

# (i) Plot y on x1 and x2
par(mfrow = c(1, 2))
plot(x1, y, main = "y vs x1")
plot(x2, y, main = "y vs x2")

# (ii) Compute correlation coefficient between y and x1
cor(y, x1)

# (iii) Fit regression model
model <- lm(y ~ x1 + x2)
summary(model)

# (iv) Find coefficient of determination
summary(model)$r.squared