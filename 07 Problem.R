#......................07 no.................................

func_01 = function(x){
  n = length(x)
  mean = sum(x)/n
  median = median(x)
  var = sum((x-mean)^2)/n
  sd = sqrt(var)
  mu.3 = sum((x-mean)^3)/n
  mu.4 = sum((x-mean)^4)/n
  skew = (mu.3)^2/(var)^3
  kurt = (mu.4)/(var)^2
  
  return(c("Mean"=mean, "Median"=median,"Standar Deviation"=sd,
              "Skewness"=skew,"Kurtosis"=kurt ))
  
}
x = 1:50
result = func_01(x)
print(result)






