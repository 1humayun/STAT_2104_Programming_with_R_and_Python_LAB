
a = 5
b = 3
c = 9

if (a > b) {
   if (a > c) {
      greatest = a
   } else {
      greatest = c
   }
} else {
   if (b > c) {
      greatest = b
   } else {
      greatest = c
   }
}


cat("The greatest number is:", greatest, "\n")
