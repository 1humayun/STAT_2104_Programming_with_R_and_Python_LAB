#.................09 No............................................
fun2 = function(x,y){
  x.bar = mean(x)
  y.bar = mean(y)
  nom =sum((x - x.bar)*(y - y.bar))
  denom = sum((x - x.bar)^2)*sum((y - y.bar)^2)
  r1 = nom/sqrt(denom)
  r2 = nom/sum((x - x.bar)^2)
  
  return(list("Correlation coefficient"= r1, "Regression Coefficient y on x"=r2))
  
}
x = c(80,100,120,140,160,180,200,220,240,260)
y = c(70,65,90,95,110,115,120,140,155,150)
result = fun2(x,y)
print(result)


