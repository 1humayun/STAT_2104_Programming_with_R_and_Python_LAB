#..........................10 no.........................................
height = list(males = c(197,165,179,191,177,153,169,178,184,177),
              females = c(167,176,161,168,164,181,182,143,169,175)
              )
weight = list(males = c(93,59,71,78,72,61,72,29,85,75),
              females = c(59,70,57,60,66,67,71,46,53,66)
               )
calc.BMI = function(kg,cm){
         kg/(cm/100)^2
  
}
result = mapply(kg = weight, cm = height , calc.BMI  )
print(result)