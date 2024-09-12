#...........................Ans to No 4................................

#...........................i no.......................................
#Data
Y = c(1.49,1.87,1.86,2.61,2.43,2.44,3.00,3.12)
x1 = c(100,200,300,400,500,600,700,800)
x2 = c(26,50,26,76,51,50,75,74)
# Scater plot Y vs x1
plot(x1,Y, main = "Scatter Plot: Y vs x1", xlab = "x1",ylab="Y",pch = 19, col = "blue")

#Scater plot Y vs x2
plot(x2,Y,main = "Scatter Plot: Y vs x2", xlab = "x2", ylab = "Y", pch = 19, col = "red")




#.............................ii no.................................

#Compute Correlation Coefficients Between Y and x1
 
x1_bar = mean(x1)
Y_bar = mean(Y)

nom = sum((x1 - x1_bar)*(Y - Y_bar))
denom = sum((x1 -x1_bar)^2 )*sum((Y - Y_bar)^2)
#Coreelation Coefficients
r = nom/sqrt(denom);r

#comment:there are strong relationship between x1 and Y

#......................iii no...........................................
data = data.frame(Y,x1,x2)

#Fit Regression Model
model1 = lm(Y ~ x1+x2, data = data)
summary(model1)

#Interpretation of the parameters
coefficients = coef(model1)
cat("Intercept: ",coefficients[1], "\n")
cat("Coefficient for x1: ",coefficients[2], "\n")
cat("Coefficient for x1: ",coefficients[3], "\n")

#Compute residuals
residuals = residuals(model1)
cat("residuals:","\n", residuals, "\n" )

#Interpretation




#.......................iv no..................................
#Coefficient of determination(r Squared)
r_squared = summary(model1)$r.squared
cat("Coefficient of Determination: ",r_squared,"\n")





