calculate_sum_of_cubes <- function(n) {
   sum_of_cubes <- sum(1:n)^3
   return(sum_of_cubes)
}

calculate_product_of_reciprocals <- function(n) {
   pro_of_recip <- prod(1 / (1:n)^3)
   return(pro_of_recip)
}
n <- 99
result1 <- calculate_sum_of_cubes(n) / (99^3)
result2 <- calculate_product_of_reciprocals(n)

cat("Result 1:", result1, "\n")
cat("Result 2:", result2, "\n")